return {
  "mfussenegger/nvim-dap",
  optional = true,
  -- stylua: ignore
  keys = {
    { "<leader>td", function() require("neotest").run.run({strategy = "integrated"}) end, desc = "Debug Nearest" },
  },
}
