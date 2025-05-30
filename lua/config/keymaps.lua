-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })
map("n", "<leader>gd", require("telescope.builtin").git_bcommits, { noremap = true, silent = true, desc = "File commits" })
-- map("n", "<leader>gC", require("telescope.builtin").git_commits, { noremap = true, silent = true, desc = "Commits" })

map("n", "<leader>gb", require("gitsigns").blame, { noremap = true, silent = true, desc = "Blame" })

-- page up/down with centering
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<leader>rr", require("kulala").run, { noremap = true, silent = true, desc = "Execute the request" })
map("n", "<leader>ri", require("kulala").inspect, { noremap = true, silent = true, desc = "Inspect the current request" })
-- local helm_mappings = {
--   k = {
--     name = "Kubernetes", -- Main title for all Kubernetes related commands
--
--     -- Helm Commands
--     h = {
--       name = "+Helm",
--       d = { "<cmd>HelmDeployFromBuffer<CR>", "Helm Deploy Buffer to Context" },
--       r = { "<cmd>RemoveDeployment<CR>", "Helm Remove Deployment From Buffer" },
--       T = { "<cmd>HelmDryRun<CR>", "Helm DryRun Buffer" },
--       u = { "<cmd>HelmDependencyUpdateFromBuffer<CR>", "Helm Dependency Update" },
--       b = { "<cmd>HelmDependencyBuildFromBuffer<CR>", "Helm Dependency Build" },
--       t = { "<cmd>HelmTemplateFromBuffer<CR>", "Helm Template From Buffer" },
--     },
--
--     -- Kubectl Commands
--     k = {
--       name = "+Kubectl",
--       a = { "<cmd>KubectlApplyFromBuffer<CR>", "Kubectl Apply From Buffer" },
--       D = { "<cmd>DeleteNamespace<CR>", "Kubectl Delete Namespace" },
--       K = { "<cmd>OpenK9s<CR>", "Open K9s" },
--       k = { "<cmd>OpenK9sSplit<CR>", "Split View K9s" },
--       l = { "<cmd>ToggleYamlHelm<CR>", "Toggle YAML/Helm" },
--       c = { "<cmd>SelectCRD<CR>", "Download CRD" },
--       C = { "<cmd>SelectSplitCRD<CR>", "Download CRD Split" },
--     },
--
--     -- Logs Commands
--     l = {
--       name = "+Logs",
--       f = { "<cmd>JsonFormatLogs<CR>", "Format JSON" },
--       v = { "<cmd>ViewPodLogs<CR>", "View Pod Logs" },
--     },
--   },
-- }

-- Register the Helm keybindings with a specific prefix
-- require("which-key").register(helm_mappings, { prefix = "<leader>" })

-- vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }
-- -- map("n", "gd",  vim.lsp.buf.definition, { desc = "Goto Definition"} )
-- -- map("n", "K",  vim.lsp.buf.hover, { desc = "Hover"} )
-- -- map("n", "gi", vim.lsp.buf.implementation)
-- -- map("n", "gr", vim.lsp.buf.references)
-- -- map("n", "<leader>su", vim.lsp.buf.document_symbol)
map("n", "<leader>ss", require("telescope.builtin").lsp_document_symbols, { desc = "Goto symbol" })
map("n", "<leader>sS", require("telescope.builtin").lsp_dynamic_workspace_symbols, { desc = "Goto symbol (Workspace)" })
-- map("n", "<leader>cL", vim.lsp.codelens.run)
-- map("n", "<leader>sh", vim.lsp.buf.signature_help)
-- map("n", "<leader>rn", vim.lsp.buf.rename)
-- map("n", "<leader>f", vim.lsp.buf.format)
-- map("n", "<leader>ca", vim.lsp.buf.code_action)
--
-- map("n", "<leader>ws", function()
--   require("metals").hover_worksheet()
-- end)
--
-- -- all workspace diagnostics
-- map("n", "<leader>aa", vim.diagnostic.setqflist)
--
-- -- all workspace errors
-- map("n", "<leader>ae", function()
--   vim.diagnostic.setqflist({ severity = "E" })
-- end)
--
-- -- all workspace warnings
-- map("n", "<leader>aw", function()
--   vim.diagnostic.setqflist({ severity = "W" })
-- end)
--
-- -- buffer diagnostics only
-- map("n", "<leader>d", vim.diagnostic.setloclist)
--
-- map("n", "[c", function()
--   vim.diagnostic.goto_prev({ wrap = false })
-- end)
--
-- map("n", "]c", function()
--   vim.diagnostic.goto_next({ wrap = false })
-- end)

-- map("n", "<c-/>",      function() Snacks.terminal("", { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
