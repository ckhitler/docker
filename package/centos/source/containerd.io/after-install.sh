if [ $1 -eq 1 ] ; then
        # Initial installation
        systemctl preset containerd.service >/dev/null 2>&1 || :
fi
