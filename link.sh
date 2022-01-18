#/bin/sh
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
git -C "$SCRIPT_DIR" pull

echo "WARNING! WARNING! WARNING!"
echo "This will replace SpaceVim, Tmuxinator, Tmux and GIT conf files with symlinks"
echo "Read this script to see what files will be replaced"
read -p "Do you want to proceed? (Y/N) " -n 1
echo
echo

files=(".SpaceVim.d/init.toml" ".SpaceVim.d/autoload/init.vim" ".tmuxinator" ".tmuxinator.zsh" ".gitconfig" ".tmux.conf")

if [[ $REPLY =~ ^[Yy]$ ]]; then
  for file in "${files[@]}"; do
    if test -e ~/$file; then
      rm -rf  ~/$file
    fi
    ln -s $SCRIPT_DIR/$file ~/$file
  done
fi
