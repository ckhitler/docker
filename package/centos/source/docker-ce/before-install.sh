if [ $1 -gt 0 ] ; then
    # package upgrade scenario, before new files are installed

    # clear any old state
    rm -f /var/lib/rpm-state/docker-is-active > /dev/null 2>&1 || :

    # check if docker service is running
    if systemctl is-active docker > /dev/null 2>&1; then
        systemctl stop docker > /dev/null 2>&1 || :
        touch /var/lib/rpm-state/docker-is-active > /dev/null 2>&1 || :
    fi
fi
