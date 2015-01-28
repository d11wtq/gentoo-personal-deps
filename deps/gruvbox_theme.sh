gruvbox_theme() {
  new_config=$p/gruvbox_theme/gruvbox.sh
  old_config=~/.bashrc.d/gruvbox.sh

  is_met() {
    diff $old_config $new_config
  }

  meet() {
    cp -f $new_config $old_config
  }
}
