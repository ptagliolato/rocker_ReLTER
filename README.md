# rocker_ReLTER
docker image for ReLTER package (https://github.com/oggioniale/ReLTER)

Build:

docker build . -t rocker_relter

Run locally on port 8080 (change port as you like).
You can change "yourpasswordW with the password you prefer.

docker run -e PASSWORD=yourpassword -p 8080:8787 rocker_relter

Open browser at localhost:8080 and login with
user: rstudio
password: youpassword

You can also use the precompiled image from docker hub:
docker pull ptagliolato/rocker_relter
docker run -e PASSWORD=yourpassword -p 8080:8787 ptagliolato/rocker_relter
