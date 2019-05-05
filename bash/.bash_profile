export SHELL=/bin/zsh
exec /bin/zsh -l

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi
