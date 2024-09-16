# nvim custom setup for python

Note: Remove the previous installed neovim before cloning the repository. 
Remove unnecessary files from this locations using this command

I have used this github as a reference: https://github.com/nvim-lua/kickstart.nvim . For any changes or need to add new plugs use this as a reference.

# required
rm -rf ~/.config/nvim{,.bak}

# optional but recommended
rm -rf ~/.local/share/nvim{,.bak}
rm -rf ~/.local/state/nvim{,.bak}
rm -rf ~/.cache/nvim{,.bak}


or you can backup them with these commands in terminal

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}


1. Clone the git repository to the .config folder
2. Add the . to the lua style file as it is a dot file
3. Then run the nvim command in the terminal
4. It will download all the plugins for the neovim setup
