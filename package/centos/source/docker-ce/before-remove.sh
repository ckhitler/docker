if [ $1 -eq 0 ] ; then
        # Package removal, not upgrade
        systemctl --no-reload disable docker > /dev/null 2>&1 || :
        systemctl stop docker > /dev/null 2>&1 || :
fi

update-alternatives --remove dockerd /usr/bin/dockerd || true
