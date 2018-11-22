include(utils.m4)dnl Include utility macros
_FEATURE_GUARD_

-- Tools
Install("tcpdump", { priority = 40 })
Install("relayd", { priority = 40 })
Install("openvpn-openssl", { priority = 40 })

-- 3G
Install("br2684ctl", "comgt", "uqmi", { priority = 40 })
Install("ppp-mod-pppoe", "pptpd", { priority = 40 })
Install("usb-modeswitch", { priority = 40 })

-- IPv6
Install("ds-lite", "6in4", "6rd", "6to4", { priority = 40 })

-- Kernel
forInstall(kmod,nf-nathelper-extra,usb-net-rndis,usb-net-qmi-wwan,usb-serial-option)

-- Luci
Install("luci-app-ddns", "luci-proto-3g", { priority = 40 })
_LUCI_I18N_(ddns)

_END_FEATURE_GUARD_
