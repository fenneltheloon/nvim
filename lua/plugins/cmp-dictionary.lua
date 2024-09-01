return {
	"uga-rosa/cmp-dictionary",
	ft = 'lilypond',
	opts = {
		paths = {
			"/opt/homebrew/Cellar/lilypond/2.24.4/share/lilypond/2.24.4/vim/syntax/lilypond-words"
		},
		exact_length = 2,
		first_case_insensitive = true,
		document = {
			enable = true,
			command = { "wn", "${label}", "-over" },
		},
	},
}
