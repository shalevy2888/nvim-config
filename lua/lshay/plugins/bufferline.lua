local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		numbers = "ordinal",
		indicator = {
			style = "underline",
		},
		diagnostics = "nvim_lsp",
		offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
	},
})
