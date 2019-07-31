if [ `xrandr | grep -c ' connected '` -eq 2 ]; then
    autorandr -l dual
else
    autorandr -l one
fi

