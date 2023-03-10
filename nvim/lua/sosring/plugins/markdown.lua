mkdp_auto_start = 0
mkdp_auto_close = 1
mkdp_refresh_slow = 0
mkdp_command_for_global = 0
mkdp_open_to_the_world = 1

mkdp_open_ip = '127.0.0.1'
mkdp_port = '8080'
mkdp_browser = 'chrome-unstable'

mkdp_echo_preview_url = 0

mkdp_browserfunc = ''
mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

--use a custom markdown style must be absolute path
--like '/Users/username/markdown.css' or expand('~/markdown.css')
mkdp_markdown_css = ''

--use a custom highlight style must absolute path
--like '/Users/username/highlight.css' or expand('~/highlight.css')
mkdp_highlight_css = ''

--se a custom port to start server or empty for random
mkdp_port = ''

--preview page title
--${name} will be replace with the file name
mkdp_page_title = 'Preview'

--recognized filetypes
--these filetypes will have MarkdownPreview... commands
mkdp_filetypes = ['markdown']

--set default theme (dark or light)
--By default the theme is define according to the preferences of the system
mkdp_theme = 'dark'
