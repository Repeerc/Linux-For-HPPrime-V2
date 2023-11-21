#!/bin/sh

dd if=/dev/zero bs=1M count=63 | tr '\000' '\377' > LINUX.DAT
dd if=zImage of=LINUX.DAT seek=0 conv=notrunc
dd if=rootfs.jffs2 of=LINUX.DAT bs=1M seek=8 conv=notrunc

