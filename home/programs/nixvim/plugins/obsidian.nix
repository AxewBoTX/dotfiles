{ ... }:
{
	programs.nixvim = {
		plugins.obsidian = {
			enable = true;
			lazyLoad = {
			  enable = true;
			  settings = {
			  	ft = ["markdown"];
			  };
			};
			settings = {
				workspaces = [
					{name = "bookshelf"; path = "~/living_room/bookshelf";}
				];
				ui = {
					enable = false;
				};
				mappings = {
					"<leader>ogf" = {
						action = "require('obsidian').util.gf_passthrough";
						opts = {
							buffer = true;
							expr = true;
							noremap = false;
						};
					};
				};
			};
		};
	};
}
