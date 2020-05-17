#!/bin/bash

SPOOLDIR=/var/spool/imap-mta
GROUP=mail

sudo mkdir "$SPOOLDIR"
sudo chown root:"$GROUP" "$SPOOLDIR"
sudo chmod 2770 "$SPOOLDIR"
