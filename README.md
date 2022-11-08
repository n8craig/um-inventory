# um-inventory: University Museum Collections Inventory

This repository contains the code to build a searchable interface for museum collections that are stored in a [PastPerfect](https://museumsoftware.com/) database. A working model can be found [here](https://univmuseum.nmsu.edu/pages/collections/inventory/).

> **Note** Several key parts of the project data are not included in this repository. There are two reasons for this: 1) some of the data are sensitive and not appropriate for public display, 2) the original uncompressed images are large and would clutter the repository.

## To use this repository:

1.  Clone the repository
2.  Within the project root, create the following directories:
    -   `data/`
    -   `data/images_full/`
    -   `data/images_thums/`
    -   `data/tables`
3.  Export the Object List from PastPerfect
4.  Save the export output as an `.xlsx` file and place it into `./data/tables`
5.  From PastPerfect, copy the `Images` directory into the `./data` directory such that it is `./data/Images`.
6.  Within the `index.qmd` file, nativate to the `data-read` chunk, and find the line that reads `df <- read_excel(here::here("data/tables/EXPORTED_FILE_NAME.xlsx")) %>% janitor::clean_names()` .
7.  In this line of code, insert the name of the export file that was saved to `./data/tables` . It is suggested to use a date stamped file name like `inventory_2022_10_26.xlsx` but any name should work.
8.  While developing the site it is recommended to sample the records. To do this, navigate to the code chunk called `df-sample` and set `eval: true` and then select the sample size under `slice_sample(n=XX)`. When you want to render the entire table, set `eval: false` for the `df-sample` code chunk.
9.  When you want to observe the output, render the project.
10. Small projects can be rendered to Quarto Pubs with the terminal command: `quarto publish quarto-pub` .
11. Larger projects can be rendered to Netlify with the terminal command: `quarto publish netlify` .
12. Alternatively, the contents of the `_site` directory can be pushed to any web server.
13. Further customization options are documented at [Quarto](https://quarto.org/) and [`DT`](https://rstudio.github.io/DT/).
