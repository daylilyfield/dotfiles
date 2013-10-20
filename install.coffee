#!/usr/bin/env coffee

HOME = process.env.HOME
path = require('path')
exec = require('child_process').exec

link = (src, dest) ->
    s = path.resolve src
    d = path.join HOME, dest or src
    exec "ln -svf #{s} #{d}", (err, stdout, stderr) ->
        console.log err or stdout

link '.vimrc'
link '.gvimrc'
link '.vim'

link '.tmux.conf'

link '.inputrc'

link '.gitignore-global', '.gitignore'
