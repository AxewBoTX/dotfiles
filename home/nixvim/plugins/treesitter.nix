{ ... }:
{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      settings = {
        ensure_installed = [
          "rust"
          "go"
          "c"
          "cpp"
          "javascript"
          "typescript"
          "html"
          "css"
          "templ"
          "tsx"
          "python"
          "lua"
          "java"
          "markdown"
          "markdown_inline"
          "zig"
          "prisma"
          "yaml"
          "toml"
          "json"
          "sql"
          "astro"
          "http"
          "hyprlang"
          "latex"
          "nix"
          "just"
        ];
        highlight = {
          enable = true;
        };
      };
    };
  };
}
