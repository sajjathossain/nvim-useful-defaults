local opt = vim.opt -- global/buffer/windows-scoped options

local function setOptions(options)
  for option, value in pairs(options) do opt[option] = value end
end

return {
  setOptions = setOptions,
  opt = opt
}
