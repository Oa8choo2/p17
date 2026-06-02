Plug 'dense-analysis/ale'
let g:ale_linters = {
    \ 'markdown': ['harper']
    \}
let g:ale_markdown_harper_config = {
\   'harper-ls': {
\       'diagnosticSeverity': 'warning',
\       'dialect': 'American',
\       'linters': {
\           'SpellCheck': v:false,
\           'SentenceCapitalization': v:true,
\           'RepeatedWords': v:true,
\           'LongSentences': v:true,
\           'AnA': v:true,
\           'Spaces': v:true,
\           'SpelledNumbers': v:false,
\           'WrongQuotes': v:false,
\       },
\   },
\}

