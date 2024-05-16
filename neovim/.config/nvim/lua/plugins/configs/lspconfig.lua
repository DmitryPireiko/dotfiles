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
lspconfig.jdtls.setup{}
lspconfig.omnisharp.setup {
    cmd = { "dotnet", "/usr/lib/omnisharp-roslyn/OmniSharp.dll" },

    settings = {
      FormattingOptions = {
        EnableEditorConfigSupport = true,
        OrganizeImports = nil,
      },
      MsBuild = {
        LoadProjectsOnDemand = nil,
      },
      RoslynExtensionsOptions = {
        EnableAnalyzersSupport = nil,
        EnableImportCompletion = nil,
        AnalyzeOpenDocumentsOnly = nil,
      },
      Sdk = {
        IncludePrereleases = true,
      },
    },
}
lspconfig.denols.setup{}
