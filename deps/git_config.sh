git_config() {
  config() {
    key=$1
    val=$2

    echolog "$key=$val"

    is_met() {
      [[ `git config "$key"` = "$val" ]]
    }

    meet() {
      git config --global "$key" "$val"
    }
  }

  require config user.name    d11wtq
  require config user.email   chris@w3style.co.uk
  require config color.ui     true
  require config push.default matching
  require config alias.st     status
  require config alias.co     checkout
}
