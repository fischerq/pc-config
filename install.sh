#!/bin/sh

# find current dir
export SRC_DIR=$(cd "$(dirname "$0")"; pwd)

#set up the emacs daemon
#systemctl link $SRC_DIR/emacsd.service    #apparently broken atm, see https://github.com/systemd/systemd/issues/3010
cp $SRC_DIR/emacsd.service /etc/systemd/system/emacsd.service
systemctl enable emacsd.service # want --user, apparently bugged 

ln -s $SRC_DIR/emacs_config.el ~/.emacs