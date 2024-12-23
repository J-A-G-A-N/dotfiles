return {
      {
    "ptdewey/tex-compile-nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("tex-compile-nvim").setup()
    end,
}
}
