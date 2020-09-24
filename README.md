Install the Fish package on your machine:
`pacman -S fish`
And optionally the ohmyfish package:
`curl -L https://get.oh-my.fish | fish`

Copy the repository to your .config directory in your user home:
`git clone git@github.com:Nishnha/fish-config.git ~/.config/fish`

The config files includes a fix to the rvm.fish script which previously displayed the PATH when RVM launched.
