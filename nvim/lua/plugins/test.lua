return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "sidlatau/neotest-dart",
      "olimorris/neotest-phpunit",
    },
    opts = {
      adapters = {
        "neotest-dart",
        "neotest-phpunit",
      },
    },
  },
}
