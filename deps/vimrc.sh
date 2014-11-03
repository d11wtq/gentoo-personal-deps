vimrc() {
  repo() {
    require git_repo git@github.com:d11wtq/dot-vim.git ~/.vim
  }

  setup() {
    is_met() {
      [[ `readlink ~/.vimrc` = `realpath ~/.vim/vimrc` ]]
    }

    meet() {
      log "Running setup"
      vim -u ~/.vim/setup
    }
  }

  require repo
  require setup
}
