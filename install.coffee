#!/usr/bin/env coffee

# {{{
home = process.env.HOME
platform = process.platform
path = require 'path'
{exec} = require 'child_process'
fs = require 'fs'

link = (src, dest) ->
  f = if platform is 'win32' then link.mklink else link.ln
  f src, dest, (err, stdout, stderr) ->
    console.log err or stdout
 
link.ln = (src, dest, cb) ->
  s = path.resolve src
  d = path.join home, dest or src
  exec "ln -svf #{s} #{d}", cb
 
link.mklink = (src, dest, cb) ->
  s = path.resolve src
  d = path.join home, dest or src
  c = 'mklink'
  p = if fs.statSync(src).isDirectory() then '/d' else ''
  exec "mklink #{p} #{d} #{s}", cb
# }}}

link '.vimrc'
link '.gvimrc'
link '.vim'
link '.vim', 'vimfiles' if platform is 'win32'

link '.tmux.conf'

link '.inputrc'

link '.gitignore-global', '.gitignore'
