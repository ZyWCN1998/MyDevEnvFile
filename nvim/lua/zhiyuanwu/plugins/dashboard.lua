-- import gitsigns plugin safely
local setup, dashboard = pcall(require, "dashboard")
if not setup then
  return
end

-- setup dashboard
dashboard.setup()
