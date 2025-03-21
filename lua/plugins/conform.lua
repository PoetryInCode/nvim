return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      java = { "astyle_java" },
      c = { "astyle_c_cpp" },
      cpp = { "astyle_c_cpp" },
    },
    ft_parsers = {
      javascriptreact = "babel",
      typescript = "typescript",
      typescriptreact = "typescript",
    },
    formatters = {
      injected = {
        options = {
          ignore_errors = true,

          java = "java",
          c = "c",
          cpp = "cpp",
        },
      },

      astyle_java = {
        stdin = true,
        inherit = false,
        command = "astyle",
        args = { "--style=java" },
      },
      astyle_c_cpp = {
        stdin = true,
        inherit = false,
        command = "astyle",
        args = {
          "--style=kr",
          "--break-return-type",
          "--indent-labels",
          "--indent-preproc-block",
          "--indent-col1-comments",
          "--indent=spaces=2",
        },
      },
    },
  },
}
