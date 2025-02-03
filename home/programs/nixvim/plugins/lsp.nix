{ ... }:
{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings = {
            event = [ "BufReadPre" ];
          };
        };
        onAttach = # lua
          ''
            			local keymap = vim.keymap
            			local opts = { noremap = true, silent = true, buffer = bufnr }
            			keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
            			keymap.set("n", "go", "<cmd>Lspsaga outline<CR>", opts) -- show LSP outine of current buffer
            			keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
            			keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
            			keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
            			keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
            		'';
        servers = {
          lua_ls = {
            enable = true;
            settings = {
              runtime.version = "LuaJIT";
              diagnostics.globals = [ "vim" ];
              workspace = {
                library = [ ''vim.api.nvim_get_runtime_file("",true)'' ];
                checkThirdParty = false;
              };
              telementry.enable = true;
            };
          };
          rust_analyzer = {
            enable = true;
            installCargo = false;
            installRustc = false;
            installRustfmt = false;
            settings = {
              files.excludeDirs = [ "target" "node_modules" ];
            };
          };
          clangd.enable = true;
          cssls.enable = true;
          ts_ls.enable = true;
          eslint.enable = true;
          html.enable = true;
          svelte.enable = true;
          tailwindcss.enable = true;
          gopls.enable = true;
          templ.enable = true;
          nil_ls.enable = true;
        };
        luaConfig.content = ''
          					vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
          						signs = false,
          					})
          				'';
      };
      lspsaga = {
        enable = true;
        symbolInWinbar.enable = false;
        lightbulb.enable = false;
        ui = {
          border = "rounded";
          title = false;
        };
      };
    };
  };
}
