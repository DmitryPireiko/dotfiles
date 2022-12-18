#!/usr/bin/zsh
 
layout() {
    current_layout=$(xkb-switch)
    echo "⌨  $current_layout"
}

getbattery() {
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$STATUS" = "Charging" ]; then
        echo "🔌" "$CHARGE""%"
    else
        echo "🔋" "$CHARGE""%"
    fi
}

fdate() {
    date +"%r"
}

getlight() {
    light_value=$(light -G)
    out_value=${light_value/\.*/}
    echo "☀ " $out_value"%"
}


volume() {
    current_vol=$(pamixer --get-volume-human)
    echo "🔈  $current_vol"
}

generate_content(){
    echo "   $(getlight)  |  $(volume)  |  $(layout)  |  $(getbattery)  |  $(fdate)   "
}
 

while true; do
    xsetroot -name "$(generate_content)"
    sleep .1s
done
