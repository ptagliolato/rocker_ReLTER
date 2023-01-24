# rocker_ReLTER
docker image for ReLTER package (https://github.com/ropensci/ReLTER)

## About
Run RStudio with preinstalled ReLTER package through Docker.

## Install a different branch of ReLTER package
Edit the Dockerfile and modify the last line, using the name of your preferred branch as the ref= parameter value:

    R -e "devtools::install_github('https://github.com/ropensci/ReLTER',ref = '<branchName>',dependencies = FALSE)"
  
## Build the image

    docker build . -t rocker_relter

Or with buildx use:

    docker buildx build -t rocker_relter -f ./Dockerfile --platform=linux/amd64 .

Note: rocker_relter is based on rocker whose RStudio image does not support other platforms (e.g. arm64) at the moment.

## Usage
Run locally on port 8080 (change port as you like).
You can change "yourpasswordW with the password you prefer.

    docker run -e PASSWORD=yourpassword -p 8080:8787 rocker_relter

Open browser at localhost:8080 and login with

    user: rstudio
    password: youpassword

You can also use the precompiled image from docker hub:

    docker pull ptagliolato/rocker_relter
    docker run -e PASSWORD=yourpassword -p 8080:8787 ptagliolato/rocker_relter
