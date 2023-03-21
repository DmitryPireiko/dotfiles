#!/usr/bin/zsh
 
getLayout() {
    current_layout=$(xkb-switch)
    echo "⌨  $current_layout"
}

getBattery() {
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$STATUS" = "Charging" ]; then
        echo "🔌" "$CHARGE""%"
    else
        echo "🔋" "$CHARGE""%"
    fi
}

getDate() {
    date +"  %I:%M %p"
}

getLight() {
    light_value=$(light -G)
    out_value=${light_value/\.*/}
    echo "☀ " $out_value"%"
}

getCpuTemperature() {
    current_temperature=$(cat /sys/class/thermal/thermal_zone1/temp | column -s $'\t' -t | sed 's/\(.\)..$/ \°C/')
    #current_temperature=$(sensors | sed -n '15p' | cut -c17-23)
    echo "  $current_temperature "
}

getVolume() {
    current_volume=$(pamixer --get-volume-human)
    echo "🔈  $current_volume"
}

generateContent(){
    echo "   $(getLight)  |  $(getVolume)  |  $(getLayout)  |  $(getBattery)  |  $(getCpuTemperature)  |  $(getDate)   "
}
 
while true; do
    xsetroot -name "$(generateContent)"
    sleep .1s
done
