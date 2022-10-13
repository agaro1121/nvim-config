local wk = require("which-key")

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
  m = {
    name = "Menu",
    q =  { ":q<cr>", "Quit" },
    W =  { ":wq<cr>", "Save and Quit" },
    w =  { ":w<cr>", "Save" },
    Q =  { ":qa<cr>", "Quit All" },
    x =  { ":bdelete<cr>", "Close Buffer" },
    E =  { ":e ~/.config/nvim/init.lua <cr>", "Edit Config" },
    t =  { ":18sp|:term <cr>", "Terminal" }
  },
	l = {
		name = "LSP",
		d  = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
		k  = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
    i  = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
		I  = { [[<cmd>lua require"telescope.builtin".lsp_implementations()<CR>]], "Custom Implementations" },
    r  = { "<cmd>lua vim.lsp.buf.references()<CR>", "Reference" },
		R  = { [[<cmd>lua require"telescope.builtin".lsp_references()<CR>]], "Custom Reference" },
		s  = { "<cmd>lua vim.lsp.buf.document_symbol()<CR>", "Document Symbols" },
		S  = { [[<cmd>lua require"telescope.builtin".lsp_document_symbols()<CR>]], "Custom Document Symbols" },
		w  = { "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "Workspace Symbol" },
    W  = { [[<cmd>lua require"telescope.builtin".lsp_dynamic_workspace_symbols()<CR>]], "Custom Dynamic Workspace Symbol" },
    ru = { [[<cmd>lua vim.lsp.codelens.run()<CR>]], "Run" },
		sh = { [[<cmd>lua vim.lsp.buf.signature_help()<CR>]], "Signature Help" },
		rn = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
		f  = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Formatting" },
		ca = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
		kw = { '<cmd>lua require"metals".hover_worksheet()<CR>', "Hover Worksheet" },
    da = { [[<cmd>lua vim.diagnostic.setqflist()<CR>]], "Workspace Diagnostics" },
		de = { [[<cmd>lua vim.diagnostic.setqflist({severity = "E"})<CR>]], "Workspace Errors" },
		dw = { [[<cmd>lua vim.diagnostic.setqflist({severity = "W"})<CR>]], "Workspace Warnings" },
		db = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "Better Workspace Diagnostics" },
		dp = { "<cmd>lua vim.diagnostic.goto_prev { wrap = false }<CR>", "Previous Diagnostic" },
		dn = { "<cmd>lua vim.diagnostic.goto_next { wrap = false }<CR>", "Next Diagnostic" },
		p =  { [[<cmd>lua require "telescope.builtin".lsp_definitions { jump_type = "never" }<cr>]], "Peek Definition" },
		o =  { ":SymbolsOutline<cr>", "Symbols Outline" }
	},
	mm = {
    name = "Coercion",
    crc = { "<Plug>(abolish-coerce-word)", "Camel Case" },
		crm = { "<Plug>(abolish-coerce-word)", "Pascal Case" },
		crs = { "<Plug>(abolish-coerce-word)", "Snake Case" }
	}
}

wk.register(mappings, opts)
