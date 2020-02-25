#!/bin/bash

gpiorgb () {
  if [[ "$1" == "init" ]]; then
    if [[ ! -d /sys/class/gpio/gpio$2 ]]; then
      echo "$VOLUME_UP_GPIO" > /sys/class/gpio/export
      sleep 1 
    fi
    echo "out" > /sys/class/gpio/gpio$2/direction
    if [[ ! -d /sys/class/gpio/gpio$VOLUME_UP_GPIO ]]; then
      echo "$VOLUME_UP_GPIO" > /sys/class/gpio/export
      sleep 1 
    fi
    echo "out" > /sys/class/gpio/gpio$3/direction
    if [[ ! -d /sys/class/gpio/gpio$VOLUME_UP_GPIO ]]; then
      echo "$VOLUME_UP_GPIO" > /sys/class/gpio/export
      sleep 1 
    fi
    echo "out" > /sys/class/gpio/gpio$4/direction
  fi
}
