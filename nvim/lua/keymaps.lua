local keymap = vim.keymap
--Opening Files
keymap.set('n','<C-o>',':edit . <Return>',{silent = true})
--Opening Files in VSPLIT
keymap.set('n','<C-a>',':vsplit . <Return>',{silent = true})
--Opening Files in SPLIT
keymap.set('n','<S-a>',':split . <Return>',{silent = true})
--Opening Files in TABS
keymap.set('n','<S-t>',':tabedit . <Return>',{silent = true})
--Switching To Next TAB
keymap.set('n','<Tab>',':tabnext <Return>',{silent = true})
--Switching To Previous TAB
keymap.set('n','<S-Tab>',':tabprevious <Return>',{silent = true})
--Getting Rid Of Search Highlighting
keymap.set('n',';m',':noh <Return>',{silent = true})
--Running Code With Code-Runner
keymap.set('n',';q',':RunCode <Return>',{silent = true})
--Changing The Home And End Key
keymap.set({'n','v'},'H','^')
keymap.set({'n','v'},'L','$')
