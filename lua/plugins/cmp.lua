return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  config = function()
    -- local function border(hl_name)
    --   return {
    --     { "╭", hl_name },
    --     { "─", hl_name },
    --     { "╮", hl_name },
    --     { "│", hl_name },
    --     { "╯", hl_name },
    --     { "─", hl_name },
    --     { "╰", hl_name },
    --     { "│", hl_name },
    --   }
    -- end

    local cmp = require("cmp")

    local luasnip = require("luasnip")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "path" }, -- file system paths
        { name = "buffer" }, -- text within current buffer
      }),
      formatting = {
        fields = { "abbr", "kind", "menu" },
        format = function(entry, item)
          local n = entry.source.name
          if n == "nvim_lsp" then
            item.menu = "[LSP]"
          elseif n == "nvim_lua" then
            item.menu = "[nvim]"
          else
            item.menu = string.format("[%s]", n)
          end
          return item
        end,
      },
      window = {
        -- completion = {
        --   side_padding = 1,
        --   winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
        --   scrollbar = false,
        --   border = border("CmpBorder"),
        -- },
        -- documentation = {
        --   winhighlight = "Normal:CmpDoc",
        --   border = border("CmpDocBorder"),
        -- },
        completion = cmp.config.window.bordered({ scrollbar = false }),
        documentation = cmp.config.window.bordered(),
      },
    })
  end,
}
