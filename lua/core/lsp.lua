-- LSP servers contained in root/lsp
-- Add to the list below for them to be enabled
vim.lsp.enable({
  "lua-language-server",
  "rust-analyzer"
})

-- Native completion
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end

  end,
})

vim.cmd("set completeopt+=noselect")

vim.o.winborder = "rounded"

-- Native diagnostics
vim.diagnostic.config({
  -- Use the default configuration
  virtual_lines = true

  -- Alternatively, customize specific options
  -- virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor lline
    -- current_line = true,
  -- },
})

-- Enables inlay hints
vim.lsp.inlay_hint.enable(true)


-- RURST ONLY
-- Rungs `cargo fmt` on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

