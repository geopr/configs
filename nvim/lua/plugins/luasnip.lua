return {
  -- snippets engine
  {
    'saadparwaiz1/cmp_luasnip',
    commit = '18095520391186d634a0045dacaa346291096566',
    lazy = false,
    dependencies = {'L3MON4D3/LuaSnip'},

    config = function()
      local ls = require('luasnip')
      local s = ls.snippet;
      local t = ls.text_node;
      local i = ls.insert_node;

      -- "" - new line

      ls.add_snippets("all", {
        s("cl", {
          t("console.log("),
          i(0),
          t(");"),
        }),

        s("ea", {
          t("export * from '"),
          i(0),
          t("';"),
        }),

        s("jsdoc", {
          t("/**"),
          t({ "", " * " }),
          i(0),
          t({ "", " */" }),
        }),
      })
    end
  }
}
