#!/bin/sh

# $'\Ufa98'
# ""
get_icon() {
    for i in $1
    do
        case $i in
            01d) icon+=$'\Ufa98';;
            01n) icon+=$'\Ue32b';;
            02d) icon+=$'\Ue302';;
            02n) icon+=$'\Ue32e';;
            03*) icon+=$'\Ue21d';;
            04*) icon+=$'\Ufa8f';;
            09d) icon+=$'\Ue309';;
            09n) icon+=$'\Ue334';;
            10d) icon+=$'\Ue308';;
            10n) icon+=$'\Ue333';;
            11d) icon+=$'\Ue30f';;
            11n) icon+=$'\Ue338';;
            13*) icon+=$'\Ue31a';;
            50*) icon+=$'\Ue35d';;
            *) icon+=$'\Ue345';
        esac
        icon+=' '
    done

    echo $icon
}

get_duration() {

    osname=$(uname -s)

    case $osname in
        *BSD) date -r "$1" -u +%H:%M;;
        *) date --date="@$1" -u +%H:%M;;
    esac

}

KEY=""
CITY="$1"
UNITS="metric"
SYMBOL="°"

if [ ! -z $CITY ]; then
    current=$(curl -sf "http://api.openweathermap.org/data/2.5/weather?APPID=$KEY&id=$CITY&units=$UNITS")
    forecast=$(curl -sf "http://api.openweathermap.org/data/2.5/forecast?APPID=$KEY&id=$CITY&units=$UNITS&cnt=1")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ ! -z "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        current=$(curl -sf "http://api.openweathermap.org/data/2.5/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
        forecast=$(curl -sf "http://api.openweathermap.org/data/2.5/forecast?APPID=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS&cnt=1")
    fi
fi

if [ ! -z "$current" ] && [ ! -z "$forecast" ]; then
    current_temp=$(echo "$current" | jq ".main.temp" | cut -d "." -f 1)
    current_icon=$(echo "$current" | jq -r ".weather[].icon")
    
    forecast_temp=$(echo "$forecast" | jq ".list[].main.temp" | cut -d "." -f 1)
    forecast_icon=$(echo "$forecast" | jq -r ".list[].weather[].icon")

    if [ "$current_temp" -gt "$forecast_temp" ]; then
        trend=$'\Ufa32'
    elif [ "$forecast_temp" -gt "$current_temp" ]; then
        trend=$'\Ufa34'
    else
        trend=$'\Ufa33'
    fi

    sun_rise=$(echo "$current" | jq ".sys.sunrise")
    sun_set=$(echo "$current" | jq ".sys.sunset")
    now=$(date +%s)

    if [ "$sun_set" -gt "$now" ]; then
        daytime=$'\Ue34d'" $(get_duration "$((sun_set-now))")"
    else
        daytime=$'\Ue34c'" $(get_duration "$((sun_rise-now))")"
    fi

    OUTPUT="$(get_icon "$current_icon") $current_temp$SYMBOL  $trend  $(get_icon "$forecast_icon") $forecast_temp$SYMBOL"

    echo $OUTPUT
fi
