FROM rocker/geospatial:4.2.1

LABEL org.opencontainers.image.authors="Paolo Tagliolato <ptagliolato@irea.cnr.it>"
COPY add_ReLTER.sh /rocker_scripts/add_ReLTER.sh
RUN chown root:root /rocker_scripts/add_ReLTER.sh
RUN chmod +x /rocker_scripts/add_ReLTER.sh
RUN /rocker_scripts/add_ReLTER.sh
RUN R -e "devtools::install_github('https://github.com/ropensci/ReLTER@2.1.0',dependencies = FALSE)"

