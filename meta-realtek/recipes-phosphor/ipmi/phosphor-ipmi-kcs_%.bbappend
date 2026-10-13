KCS_DEVICE = "ipmi-kcs1"
SYSTEMD_SERVICE:${PN}:append:rts4931a-escm = " ${PN}@ipmi-kcs2.service"
SYSTEMD_SERVICE:${PN}:append:rts4932a-escm = " ${PN}@ipmi-kcs2.service"
