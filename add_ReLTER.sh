#!/bin/bash
set -e

# always set this for scripts but don't declare as ENV..
export DEBIAN_FRONTEND=noninteractive

## build ARGs
NCPUS=${NCPUS:--1}

# https://cran.r-project.org/web/packages/keyring/readme/README.html
# needed by keyring (zen4R <= atom4R <= keyring)
apt-get update -qq && apt-get install -y --no-install-recommends \
   libsecret-1-dev libsodium-dev
#  libjq-dev

install2.r --error --skipinstalled -n $NCPUS \
	jqr \
	leaflet \
	qrcode \
	taxize \
	waffle \
	worrms \
	xslt \
	spocc \
	ggforce \
	rosm \
	MODIStsp \
	httr2 \
	rworldmap \
	rnaturalearth \
	RCurl \
	Rdpack \
	countrycode \
	atom4R \
	zen4R

#R -e "install.packages('zen4R')"
#R -e "devtools::install_github('https://github.com/ropensci/ReLTER',dependencies = FALSE)"
