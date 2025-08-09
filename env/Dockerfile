# Reproducible environment for course
FROM rocker/verse:4.3.2

# Install Quarto
RUN apt-get update && apt-get install -y wget gdebi-core &&     wget -q https://quarto.org/download/latest/quarto-linux-amd64.deb &&     gdebi -n quarto-linux-amd64.deb && rm -f quarto-linux-amd64.deb &&     apt-get clean && rm -rf /var/lib/apt/lists/*

# Set up project
WORKDIR /home/rstudio/project
COPY . /home/rstudio/project

# Preinstall R packages via renv (best effort)
RUN R -e "install.packages('renv'); renv::init(bare = TRUE); renv::restore(repos = c(CRAN='https://cloud.r-project.org'))" || true

EXPOSE 8787
