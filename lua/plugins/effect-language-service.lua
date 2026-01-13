return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local vtsls = opts.servers and opts.servers.vtsls
      if not vtsls then
        return
      end

      vtsls.init_options = vtsls.init_options or {}
      vtsls.init_options.tsExtLogPath =
        vtsls.init_options.tsExtLogPath or (vim.fn.stdpath("state") .. "/vtsls-tsserver")

      vtsls.settings = vtsls.settings or {}

      vtsls.settings.vtsls = vtsls.settings.vtsls or {}
      vtsls.settings.typescript = vtsls.settings.typescript or {}
      vtsls.settings.typescript.tsserver = vtsls.settings.typescript.tsserver or {}

      -- Ensure tsserver can resolve project-local plugins like @effect/language-service.
      vtsls.settings.typescript.tsserver.pluginPaths =
        vtsls.settings.typescript.tsserver.pluginPaths or { "./node_modules" }

      -- Keep workspace TypeScript enabled for vtsls.
      vtsls.settings.vtsls.autoUseWorkspaceTsdk = true

      -- Enable tsserver logging for inspection.
      vtsls.settings.typescript.tsserver.log = vtsls.settings.typescript.tsserver.log or "verbose"
    end,
  },
}
