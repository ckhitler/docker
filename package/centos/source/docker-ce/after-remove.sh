systemctl daemon-reload >/dev/null 2>&1 || :
if [ $1 -ge 1 ] ; then
        # Package upgrade, not uninstall
        systemctl try-restart docker >/dev/null 2>&1 || :
fi
