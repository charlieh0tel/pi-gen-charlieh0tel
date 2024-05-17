#!/bin/bash -e

on_chroot <<- EOF
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_serial_hw 1
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_serial_cons 1
EOF
