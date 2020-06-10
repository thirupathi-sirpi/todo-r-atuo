FROM rocker/shiny
MAINTAINER thirupathi-chintu

## install R package dependencies (and clean up)
RUN apt-get update && apt-get install -y gnupg2 \
    libssl-dev \
    && apt-get clean \ 
    && rm -rf /var/lib/apt/lists/ \ 
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
    
## install packages from CRAN (and clean up)
RUN R -e "install.packages(c('shiny', 'shinydashboard'), repos='http://cran.rstudio.com/')"

## install phantomjs
#RUN Rscript -e "webdriver::install_phantomjs()"

## assume shiny app is in build folder /app2
COPY ./app /srv/shiny-server/todo/
