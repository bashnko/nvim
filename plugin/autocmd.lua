local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
-- vim.cmd(":hi statusline guibg=#232136")
-- vim.cmd([[set noswapfile]])

autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({
            timeout = 40,
        })
	end,
})

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({async = false})
  end
})


-- autocmd("ColorScheme", {
--     desc = "Show ~ on empty lines",
--     group = augroup("show-eob", { clear = true }),
--     callback = function()
--         vim.opt.fillchars = vim.opt.fillchars + { eob = "~" }
--     end,
-- })

autocmd('LspAttach', {
    group = augroup('LSP actions',{}),
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>ci", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[j", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "[k", function() vim.diagnostic.goto_prev() end, opts)
    end
})

