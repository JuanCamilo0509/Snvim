local Os = package.config:sub(1, 1) == "/" and "Linux" or "Windows"
if Os == "Windows" then
  local user_home = os.getenv("USERPROFILE")
  local gcc_path = user_home .. "\\scoop\\apps\\gcc\\current\\bin\\g++.exe"
  vim.lsp.config( "clangd" , {
    cmd = { "clangd", "--query-driver=" .. gcc_path }
  })
  vim.lsp.enable('clangd')
else
  vim.lsp.enable('ccls')
end
vim.lsp.enable("neocmake")
