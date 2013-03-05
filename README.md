# PeteMS boxen

This is a Boxen project forked to my tastes.

## Getting Started

1. Install the Xcode Command Line Tools (full Xcode install optional).
1. Do the following:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:admin /opt/boxen
git clone https://github.com/petems/our-boxen.git /opt/boxen/repo
cd /opt/boxen/repo
script/boxen

# add boxen to your shell config, at the end, eg.
echo '[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh'
```

Open a new terminal, `boxen --env` to confirm.

## What You Get

This template project contains the following:

## Boxen Defaults
* Homebrew
* Git
* Hub
* DNSMasq w/ .dev resolver for localhost
* NVM
* RBenv
* Full Disk Encryption requirement
* NodeJS 0.4
* NodeJS 0.6
* NodeJS 0.8
* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* Ack
* Findutils
* GNU-Tar

## PeteMS custom shizzle
* Mou
* League of Legends