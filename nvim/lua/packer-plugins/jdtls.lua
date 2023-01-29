local _jdtls, jdtls = pcall(require, "jdtls")

if not _jdtls then
    return
end

local function on_init(client)
    if client.config.settings then
        client.notify("workspace/didChangeConfiguration", {
            settings = client.config.settings
        })
    end
end

local border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}
local signature_cfg = {
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    -- If you want to hook lspsaga or other signature handler, pls set to false
    doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
    -- set to 0 if you DO NOT want any API comments be shown
    -- This setting only take effect in insert mode, it does not affect signature help in normal
    -- mode, 10 by default

    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
    hint_enable = false, -- virtual hint enable
    hint_prefix = "🐼 ", -- Panda for parameter
    hint_scheme = "String",
    use_lspsaga = false, -- set to true if you want to use lspsaga popup
    hi_parameter = "Search", -- how your parameter will be highlight
    max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    -- to view the hiding contents
    max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    handler_opts = {
        border = "single" -- double, single, shadow, none
    }
    -- deprecate !!
    -- decorator = {"`", "`"}  -- this is no longer needed as nvim give me a handler and it allow me to highlight active parameter in floating_window
}

local function set_document_higlighting(client)
    local dfp = client.server_capabilities.documentFormattingProvider
    if dfp == true or (type(dfp) == "table" and next(dfp) ~= nil) then
        require("illuminate").on_attach(client)
    end
end

local function set_signature_helper(client, bufnr)
    local shp = client.server_capabilities.signatureHelpProvider
    if shp == true or (type(shp) == "table" and next(shp) ~= nil) then
        require("lsp_signature").on_attach(signature_cfg, bufnr)
    end
end

local function set_hover_border(client)
    local hp = client.server_capabilities.hoverProvider
    if hp == true or (type(hp) == "table" and next(hp) ~= nil) then
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
            border = border
        })
    end
end

local share_dir = os.getenv("HOME") .. "/.local/share"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = share_dir .. "/eclipse/" .. project_name
-- Set proper Java executable
local java_cmd = 'java'

local on_attach = function(client, bufnr)
    set_document_higlighting(client)
    set_signature_helper(client, bufnr)
    set_hover_border(client)
    if client.name == "jdtls" then
        jdtls = require("jdtls")
        jdtls.setup_dap({
            hotcodereplace = "auto"
        })
        jdtls.setup.add_commands()
    end
end

local config = {
    cmd = {java_cmd, '-Declipse.application=org.eclipse.jdt.ls.core.id1', '-Dosgi.bundles.defaultStartLevel=4',
           '-Declipse.product=org.eclipse.jdt.ls.core.product', '-Dlog.protocol=true', '-Dlog.level=ALL', '-Xms256m',
           '-Xmx2048m', '--add-modules=ALL-SYSTEM', '--add-opens', 'java.base/java.util=ALL-UNNAMED', '--add-opens',
           'java.base/java.lang=ALL-UNNAMED', '-jar',
           LSP_ROOT_PATH .. '/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar', '-configuration',
           LSP_ROOT_PATH .. '/jdtls/config_linux', '-data', workspace_dir},
    flags = {
        debounce_text_changes = 150,
        allow_incremental_sync = true
    },
    -- root_dir = require("jdtls.setup").find_root({"build.gradle", "pom.xml", ".git"}),
    -- Using .metadata dir (Eclipse workspace) as reference for setting root dir
    root_dir = jdtls.setup.find_root({".metadata", "pom.xml", ".git"}),

    on_init = on_init,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = on_attach,
    settings = {
        java = {
            signatureHelp = {
                enabled = true
            },
            saveActions = {
                organizeImports = true
            },
            completion = {
                maxResults = 20,
                favoriteStaticMembers = {"org.hamcrest.MatcherAssert.assertThat", "org.hamcrest.Matchers.*",
                                         "org.hamcrest.CoreMatchers.*", "org.junit.jupiter.api.Assertions.*",
                                         "java.util.Objects.requireNonNull", "java.util.Objects.requireNonNullElse",
                                         "org.mockito.Mockito.*"}
            },
            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999
                }
            },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                }
            }
        }
    }
}

local M = {}

M.start = function()
    jdtls.start_or_attach(config)
end

return M
