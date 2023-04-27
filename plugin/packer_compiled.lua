-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/voc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/voc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/voc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/voc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/voc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n×\5\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\3\0005\5\a\0>\5\1\0045\5\b\0>\5\2\4=\4\t\3=\3\n\2B\0\2\1K\0\1\0\vconfig\vcenter\1\0\3\ticon\nï™™  \vaction\6q\tdesc\tQuit\1\0\3\ticon\nï…›  \vaction\21DashboardNewFile\tdesc\rNew File\vheader\1\0\0\1\f\0\0\5\5K  _____  U _____ u   ____      ____   __     __              __  __   K |_ ' _| \\| ___'|/U |  _'\\ u U|  _'\\ u\\ \\   /'/u   ___     U|' \\/ '|u K   | |    |  _|'   \\| |_) |/ \\| |_) |/ \\ \\ / //   |_'_|    \\| |\\/| |/ K  /| |\\   | |___    |  _ <    |  __/   /\\ V /_,-.  | |      | |  | |  K u |_|U   |_____|   |_| \\_\\   |_|     U  \\_/-(_/ U/| |\\u    |_|  |_|  K _// \\\\_  <<   >>   //   \\\\_  ||>>_     //    .-,_|___|_,-.  ,-,,-.   K(__) (__)(__) (__) (__)  (__)(__)__)   (__)    \\_)-` `-(_/  (./  \\.)  \5\5\1\0\1\ntheme\tdoom\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/voc/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  nvim = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvimS\1\0\4\0\5\0\n6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0003\2\4\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\22CatppuccinCompile\bcmd\bvimá\2\1\2\b\0\20\0%6\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\1\0B\2\2\0016\2\3\0009\2\4\2'\3\6\0=\3\5\0026\2\3\0009\2\4\0029\2\a\2\14\0\2\0X\2\f€6\2\0\0'\4\b\0B\2\2\0029\2\2\0025\4\n\0005\5\t\0=\5\v\4B\2\2\0016\2\3\0009\2\f\2'\4\r\0B\2\2\0016\2\3\0009\2\14\0029\2\15\2\18\3\2\0'\5\16\0005\6\17\0003\a\18\0=\a\19\6B\3\3\1K\0\1\0\rcallback\0\1\0\1\fpattern\22PackerCompileDone\tUser\24nvim_create_autocmd\bapi\27colorscheme catppuccin\bcmd\foptions\1\0\0\1\0\1\ntheme\15catppuccin\flualine\fneovide\nlatte\23catppuccin_flavour\6g\bvim\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/voc/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim
time([[Config for nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvimS\1\0\4\0\5\0\n6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0003\2\4\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\22CatppuccinCompile\bcmd\bvimá\2\1\2\b\0\20\0%6\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\1\0B\2\2\0016\2\3\0009\2\4\2'\3\6\0=\3\5\0026\2\3\0009\2\4\0029\2\a\2\14\0\2\0X\2\f€6\2\0\0'\4\b\0B\2\2\0029\2\2\0025\4\n\0005\5\t\0=\5\v\4B\2\2\0016\2\3\0009\2\f\2'\4\r\0B\2\2\0016\2\3\0009\2\14\0029\2\15\2\18\3\2\0'\5\16\0005\6\17\0003\a\18\0=\a\19\6B\3\3\1K\0\1\0\rcallback\0\1\0\1\fpattern\22PackerCompileDone\tUser\24nvim_create_autocmd\bapi\27colorscheme catppuccin\bcmd\foptions\1\0\0\1\0\1\ntheme\15catppuccin\flualine\fneovide\nlatte\23catppuccin_flavour\6g\bvim\nsetup\15catppuccin\frequire\0", "config", "nvim")
time([[Config for nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
