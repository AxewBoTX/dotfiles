{ ... }:
{
  programs.nixvim = {

    plugins = {
      cmp-nvim-lsp.enable = true;
      lspkind = {
        enable = true;
        cmp.enable = true;
        cmp.maxWidth = 50;
      };
      luasnip = {
        enable = true;
      };
      cmp-buffer.enable = true;
      cmp-path.enable = true;
      cmp = {
        enable = true;
        luaConfig.content = ''vim.opt.completeopt = "menu,menuone,noselect"'';
        settings = {
          completion.autocomplete = false;
          snippets.expand = {
            __raw = ''
              					  function(args)
              						require("luasnip").lsp_expand(args.body)
              						end
              						'';
          };
          mapping = {
            "<C-n>" = ''cmp.mapping.select_prev_item()'';
            "<C-p>" = ''cmp.mapping.select_next_item()'';
            "<C-b>" = ''cmp.mapping.scroll_docs(-4)'';
            "<C-f>" = ''cmp.mapping.scroll_docs(4)'';
            "<C-Space>" = ''cmp.mapping.complete()'';
            "<C-e>" = ''cmp.mapping.abort()'';
            "<Tab>" = ''cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				})'';
          };
          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            { name = "buffer"; }
            { name = "path"; }
            { name = "nvim_lsp"; }
          ];
        };
      };
    };
  };
}
