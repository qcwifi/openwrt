#!/bin/sh
#
# Copyright (C) 2010-2013 OpenWrt.org
#

ramips_board_detect() {
	local machine
	local name

	machine=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /machine/ {print $2}' /proc/cpuinfo)

	case "$machine" in
	*"GL-MT300A")
		name="gl-mt300a"
		;;
	*"GL-MT300N")
		name="gl-mt300n"
		;;
	*"GL-MT750")
		name="gl-mt750"
		;;
	*"GL-MT300N-V2")
		name="gl-mt300n-v2"
		;;
	*"HC5661")
		name="hc5661"
		;;
	*"HC5661A")
		name="hc5661a"
		;;
	*"HC5761")
		name="hc5761"
		;;
	*"HC5861")
		name="hc5861"
		;;
	*"HC5962")
		name="hc5962"
		;;
	*"HG255D")
		name="hg255d"
		;;
	*"K2P")
		name="k2p"
		;;
	*"M3")
		name="m3"
		;;
	*"M4 (4M)")
		name="m4-4M"
		;;
	*"M4 (8M)")
		name="m4-8M"
		;;
	*"MediaTek LinkIt Smart 7688")
		name="linkits7688"
		;;
	*"MiWiFi Mini")
		name="miwifi-mini"
		;;
	*"MiWiFi Nano")
		name="miwifi-nano"
		;;
	*"MT7620a + MT7530 evaluation"*)
		name="mt7620a_mt7530"
		;;
	*"MT7620a V22SG"*)
		name="mt7620a_v22sg"
		;;
	*"MT7621 evaluation"*)
		name="mt7621"
		;;
	*"MT7628AN evaluation"*)
		name="mt7628"
		;;
	*"MT7688 evaluation"*)
		name="mt7688"
		;;
	*"Newifi-D1")
		name="newifi-d1"
		;;
	*"PBR-D1")
		name="pbr-d1"
		;;
	*"PBR-M1")
		name="pbr-m1"
		;;
	*"PSG1208")
		name="psg1208"
		;;
	*"PSG1218 rev.A")
		name="psg1218a"
		;;
	*"PSG1218 rev.B")
		name="psg1218b"
		;;
	*"TL-WR840N v4")
		name="tl-wr840n-v4"
		;;
	*"TL-WR840N v5")
		name="tl-wr840n-v5"
		;;
	*"TL-WR841N v13")
		name="tl-wr841n-v13"
		;;
	*"U7628-01 (128M RAM/16M flash)")
		name="u7628-01-128M-16M"
		;;
	*"UBNT-ERX")
		name="ubnt-erx"
		;;
	*"UBNT-ERX-SFP")
		name="ubnt-erx-sfp"
		;;
	*"Y1")
		name="y1"
		;;
	*"Y1S")
		name="y1s"
		;;
	*"YK1")
		name="youku-yk1"
		;;
	esac

	# use generic board detect if no name is set
	[ -z "$name" ] && return

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$name" > /tmp/sysinfo/board_name
	echo "$machine" > /tmp/sysinfo/model
}
