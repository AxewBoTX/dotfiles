{ pkgs, ... }:
{
  home.packages = with pkgs; [
    stylua
    goimports-reviser
    golines
    gofumpt
    prettierd
    jq
    yamlfmt
    isort
    black
    mdformat
    shfmt
  ];
  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          event = [ "BufReadPre" ];
        };
      };
      settings = {
        format_on_save = # lua
          ''
                    function(bufnr)
            			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            				return
            			end

            			-- Disable autoformat for files in a certain path
            			local bufname = vim.api.nvim_buf_get_name(bufnr)
            			if bufname:match("/node_modules/") then
            				return
            			end
            			return { timeout_ms = 1000, lsp_fallback = true }
                    end
          '';
        formatters_by_ft = {
          "_" = [ "trim_whitespace" ];
          lua = [ "stylua" ];
          nix = [ "nixpkgs-fmt" ];
          rust = [ "rustfmt" ];
          go = [ "goimports-reviser" "golines" "gofmt" "gofumpt" ];
          javascript = [ "prettierd" "prettier" ];
          typescript = [ "prettierd" "prettier" ];
          svelte = [ "prettierd" "prettier" ];
          css = [ "prettierd" "prettier" ];
          html = [ "prettierd" "prettier" ];
          cpp = [ "clang-format" ];
          json = [ "jq" ];
          yaml = [ "yamlfmt" ];
          python = [ "isort" "black" ];
          markdown = [ "mdformat" ];
          sh = [ "shfmt" ];
        };
      };
    };
  };
}
