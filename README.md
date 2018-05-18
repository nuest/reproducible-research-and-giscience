# Reproducible research and GIScience: Computational Environment

Ready to use R Markdown notebook for the paper "Reproducible research and GIScience: an evaluation using AGILE conference papers".

[![](https://img.shields.io/badge/PeerJ-https%3A%2F%2Fpeerj.com%2Fpreprints%2F26561v1%2F-brightgreen.svg)](https://peerj.com/preprints/26561v1/)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1227260.svg)](https://doi.org/10.5281/zenodo.1227260)

## Reproduce Online

Click the "Binder" button below to open the notebook on [binder.org](https://mybinder.org/).

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/nuest/reproducible-research-and-giscience/2)

On the Jupyter page that opens, select "New > RStudio".

![](binder-screenshot-01.png)

In RStudio, open the file `agile-rr-paper-corpus.Rmd`, the _main analysis file_.

Then select "Knit > Knit to PDF" to render the document. You may use other output formats, like HTML, but not that the tables are bespoke for PDF output.

![](binder-screenshot-02.png)

For all analysis code to work you have to complete two prerequisite steps as described in the main analysis file:

- Configure a Springer API key
- Upload data to the workspace

Wihtout data and API key, only some figures can be reproduced.

![](binder-screenshot-03.png)

## Reproduce locally

Install [Docker CE](https://www.docker.com/community-edition) or a compatible tool for building an image based on a `Dockerfile` and running a container based on the image.
Download the project files, open a command line in the root directory (where this file is), and run the following commands:

```bash
# build the image
docker build --tag rr-giscience .
# run the image
docker run -it -p 8888:8888 rr-giscience
```

Open a browser at http://localhost:8888 or click on the login link shown in the console.
It will show the Jupyter start page as shown in the first screenshot of the instructions in [Reproduce online](#reproduce-online), which you can use as described in that section.

## Files in this repository

- `Paper_Evaluation.csv`: Results of manual paper evaluation.
- `Reproducibility_Survey.csv`: Anonymised responses of author survey.
- `agile-rr-paper-corpus.Rmd`: R Markdown document with the code to conduct the analysis and create the figures of the paper.
- `agile-rr-paper-corpus.pdf`: A PDF rendering or he analysis document for viewing.
- `Dockerfile`: A recipe for the computational environment using [Docker](https://en.wikipedia.org/wiki/Docker_(software)).
- `install.R`: R script file executed during creation of the Docker image to install required dependencies.

## Deposition on Zenodo

This repository is archived on Zenodo: [https://doi.org/10.5281/zenodo.1227260](https://doi.org/10.5281/zenodo.1227260)

The Zenodo repository includes the complete git repository so that readers may investigate the history of the analysis starting with [the supplemental information of the PeerJ preprint](https://peerj.com/preprints/26561/#supplementary-material).

The deposited archive was created based on the tag `4` (matching the Zenodo version number) with the following commands:

```bash
git clone https://github.com/nuest/reproducible-research-and-giscience.git
cd reproducible-research-and-giscience
git checkout 4
zip -r reproducible-reserach-and-giscience.zip .
```

## License

The documents in this repository are licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

All contained code is licensed under the [Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/).

The data used is licensed under a [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/).
