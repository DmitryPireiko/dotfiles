local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache";
    };
  }
}
