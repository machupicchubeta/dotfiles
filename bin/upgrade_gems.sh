#!/bin/bash

# gem
gem update --system
gem update
gem cleanup

rbenv rehash
