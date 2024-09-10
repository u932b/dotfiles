" Set Vim to look in ~/.vim and ~/.vim/after for its plugin files and data
set runtimepath^=~/.vim runtimepath+=~/.vim/after
" Also make the packpath (a shorthand for runtimepath) point to the same
" location
let &packpath=&runtimepath

source ~/.vimrc
" Require Lua file named 'init' which contain configuration settings for Vim
" lua require('init')
