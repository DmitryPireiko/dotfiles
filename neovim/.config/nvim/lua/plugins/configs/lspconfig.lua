local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.ccls.setup {
    init_options = {
        cache = {
            directory = ".ccls-cache";
        };
    }
}
lspconfig.arduino_language_server.setup {
    cmd = {
        "arduino-language-server",
        "-fqbn", "arduino:avr:nano"
    }
}
