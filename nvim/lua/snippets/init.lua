local ls = require('luasnip')
local s = ls.snippet;
local t = ls.text_node;
local i = ls.insert_node;

vim.keymap.set({ "i", "s" }, "<c-k>", function()
 if ls.expand_or_jumpable() then
   ls.expand_or_jump()
 end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
 if ls.jumpable(-1) then
   ls.jump(-1)
 end
end, { silent = true })

ls.config = {
  history = true,
  updateevents = "TextChanged,TextChangedI",
};

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
