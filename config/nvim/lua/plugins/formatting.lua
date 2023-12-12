-- Format shell scripts to 2 spaces
return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}
