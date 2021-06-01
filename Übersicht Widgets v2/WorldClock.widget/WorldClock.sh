#!/bin/sh
echo "Bangkok;`export TZ='Asia/Bangkok';date +'%-l:%M %p';unset TZ`"
echo "Tokyo;`export TZ='Asia/Tokyo';date +'%-l:%M %p';unset TZ`"
echo "Central;`export TZ='US/Central';date +'%-l:%M %p';unset TZ`"
