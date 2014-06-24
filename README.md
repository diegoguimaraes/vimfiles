Vimfiles
========

My vim setup that I'm used to work with.


## How to use it
Clone the repository inside the folder ```~/vimfiles```:

```sh
$ git clone https://github.com/diegoguimaraes/vimfiles.git ~/vimfiles
```
Link to the vimrc file in the repository:

```sh
ln -s vimfiles/vimrc ~/.vimrc
```

Install Vundle plugin manager:

```sh
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install the plugins listed in vimrc:

```sh
$ vim +PluginInstall +qall
```

Ps: To get the instant markdown plugin working, needs to follow these instructions: [Vim instant markdown.](https://github.com/suan/vim-instant-markdown)


<b>Enjoy!</b>
