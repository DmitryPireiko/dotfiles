#!/usr/bin/bash
 
layout(){
    t=$(xset -q | grep LED)
    code=${t##*mask:  }
    if [[ $code -eq "00000002" ]]; then
            result="⌨   US"
    else
            result="⌨   RU"
    fi
    echo $result
}

getbattery () {
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$STATUS" = "Charging" ]; then
        echo "🔌" "$CHARGE""%"
    else
        echo "🔋" "$CHARGE""%"
    fi
}

fdate(){
    date +"%r"
}

getlight(){
    light_value=$(light -G)
    out_value=${light_value/\.*/}
    echo "☀ " $out_value"%"
}


volume(){
    full_str=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
    state=${full_str##*\[}
    if [[ $state == "off]" ]]; then
            echo off
    else
            state=${full_str#*\[}
            echo "🔈 " ${state%%\]*}
    fi
}
 
generate_content(){
    echo "   $(getlight)  |  $(volume)%  |  $(layout)  |  $(getbattery)  |  $(fdate)   "
}
 

while true; do
    xsetroot -name "$(generate_content)"
    sleep .5s
done
