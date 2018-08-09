if [ -d ~/scripts ]; then
  rm -rf ~/scripts
fi

cp -r App/ .zshrc scripts ~
