#!/bin/sh
# Standalone touchscreen remapper for ASUS Zenbook Duo (UX8406MA).
# Run after any layout change if you're not using the bundled `duo` helper.

xinput map-to-output "ELAN9008:00 04F3:425B" eDP-1
xinput map-to-output "ELAN9009:00 04F3:425A" eDP-2
