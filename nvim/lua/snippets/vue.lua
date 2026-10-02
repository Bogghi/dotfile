-- custom/snippets/vue.lua (o dove preferisci)
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("vue", {
  s("vsfc", {
    t({'<script setup lang="ts">', ''}),
    t({'</script>', '', '<template>', '  '}),
    i(1),
    t({'', '</template>', '', '<style scoped>', '</style>'}),
  }),
})
