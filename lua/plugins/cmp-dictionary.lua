return {
	"uga-rosa/cmp-dictionary",
	ft = 'lilypond',
	opts = {
		paths = {
			"/opt/homebrew/share/lilypond/2.24.3/vim/syntax/lilypond-words",
		},
		exact_length = 2,
		first_case_insensitive = true,
		document = {
			enable = true,
			command = { "wn", "${label}", "-over" },
		},
	},
}
