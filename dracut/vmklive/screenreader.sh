#!/bin/sh -x
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

type getargbool >/dev/null 2>&1 || . /lib/dracut-lib.sh

if getargbool 0 live.screenreader && [ -d "${NEWROOT}/etc/sv/espeakup" ]; then
	ln -s /etc/sv/espeakup "${NEWROOT}/etc/runit/runsvdir/current/"
fi
