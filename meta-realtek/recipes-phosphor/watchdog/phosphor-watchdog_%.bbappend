FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

OBMC_HOST_WATCHDOG_INSTANCES:rts4931a-escm = ""
OBMC_HOST_WATCHDOG_INSTANCES:rts4932a-escm = ""

SRC_URI:append:rts4931a-escm = " \
    file://phosphor-watchdog.service \
    file://phosphor-watchdog-host-reset.service \
    file://phosphor-watchdog-host-poweroff.service \
    file://phosphor-watchdog-host-cycle.service \
"
SRC_URI:append:rts4932a-escm = " \
    file://phosphor-watchdog.service \
    file://phosphor-watchdog-host-reset.service \
    file://phosphor-watchdog-host-poweroff.service \
    file://phosphor-watchdog-host-cycle.service \
"

SYSTEMD_SERVICE:${PN}:append:rts4931a-escm = " \
    phosphor-watchdog.service \
    phosphor-watchdog-host-reset.service \
    phosphor-watchdog-host-poweroff.service \
    phosphor-watchdog-host-cycle.service \
"
SYSTEMD_SERVICE:${PN}:append:rts4932a-escm = " \
    phosphor-watchdog.service \
    phosphor-watchdog-host-reset.service \
    phosphor-watchdog-host-poweroff.service \
    phosphor-watchdog-host-cycle.service \
"
