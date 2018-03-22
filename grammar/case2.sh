#!/bin/bash

echo "This program will print your selection!"

case $1 in
    "one")
        echo "Your choice is one"
        ;;
     "two")
        echo "Your choice is two"
      ;;
     "three")
        echo "Your choice is three"
        ;;
     *)
        echo "Usage $0 {one|two|three}"
       ;;
esac
