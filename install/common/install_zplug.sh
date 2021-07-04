#!/bin/bash

zplug_repo_url='https://github.com/zplug/zplug'
zplug_home=~/.zplug

if [ ! -d $zplug_home ];then
  git clone $zplug_repo_url $zplug_home
fi
