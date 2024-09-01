local function os_path()
	if vim.loop.os_uname().sysname == "Darwin" then
		return "/opt/homebrew/Cellar/lilypond/2.24.4/share/lilypond/2.24.4/vim/syntax/lilypond-words"
	else
		return "/usr/share/vim/vimfiles/syntax/lilypond-words"
	end
end

return {
	"uga-rosa/cmp-dictionary",
	ft = 'lilypond',
	opts = {
		paths = {
			os_path()
		},
		exact_length = 2,
		first_case_insensitive = true,
		document = {
			enable = true,
			command = { "wn", "${label}", "-over" },
		},
	},
}
