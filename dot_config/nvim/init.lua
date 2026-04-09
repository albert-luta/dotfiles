# Fix special characters (shift + num) not working in vscode + nvim
if vim.env.TERM_PROGRAM == "vscode" then
  vim.api.nvim_create_autocmd("UIEnter", {
    once = true,
    callback = function()
      -- Tell the terminal to disable kitty keyboard protocol
      io.stdout:write("\x1b[>0u")
    end,
  })
end
