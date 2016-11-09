# vim-usa-president-2016

Indicate USA President 2016 in Vim

## Usage

set `usa_president_2016#status()` into you `statusline` like below.

```vim
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\[%{usa_president_2016#status()}\]\ %P
```

## Requirements

* https://github.com/mattn/webapi-vim

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
