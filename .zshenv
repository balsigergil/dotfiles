typeset -U PATH path
path=(
	"$HOME/.cargo/bin"
	"$HOME/.yarn/bin"
	"$HOME/opt/cross/bin"
	"$HOME/flutter/bin"
	"$HOME/.symfony/bin"
	"$HOME/.config/composer/vendor/bin"
	"$path[@]"
)
export PATH
