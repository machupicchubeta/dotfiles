#!/bin/bash
set -eu

defaults write org.n8gray.QLColorCode textEncoding UTF-16
defaults write org.n8gray.QLColorCode webkitTextEncoding UTF-16
defaults write org.n8gray.QLColorCode font 'VictorMono Nerd Font Mono'
defaults write org.n8gray.QLColorCode fontSizePoints 9
defaults write org.n8gray.QLColorCode lightTheme solarized-light
defaults write org.n8gray.QLColorCode darkTheme solarized-dark
defaults write org.n8gray.QLColorCode hlThumbTheme solarized-dark
defaults write org.n8gray.QLColorCode maxFileSize 1000000
defaults write org.n8gray.QLColorCode extraHLFlags '-l -W'
defaults write org.n8gray.QLColorCode pathHL "$(command -v highlight)"
defaults write org.n8gray.QLColorCode rtfRender true
