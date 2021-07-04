#!/bin/sh

install_dir='/usr/local/'
versoin='1.16.5'
os='linux'
arch='amd64'

if [ ! -d ${install_dir}/go ];then
  curl -o /tmp/go${versoin}.${os}-${arch}.tar.gz -L https://golang.org/dl/go${versoin}.${os}-${arch}.tar.gz
  sudo tar -C ${install_dir} -xzf /tmp/go${versoin}.${os}-${arch}.tar.gz
fi
