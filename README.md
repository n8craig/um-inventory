# Searchable Collections Inventory from PastPerfect Export

This repository contains the code to build a searchable interface for museum collections that are stored in a [PastPerfect](https://museumsoftware.com/) database. A working model based on collections from the [University Museum](https://univmuseum.nmsu.edu/) of the [New Mexico State University](https://nmsu.edu/) can be found [here](https://univmuseum.nmsu.edu/pages/collections/inventory/).

> **Note** Several key parts of the project data are not included in this repository. There are two reasons for this: 1) some of the data stored in museum databases are sensitive and not appropriate for public display, 2) the original uncompressed images are large and would clutter the repository. The project only selects images that are rendered and these are resized to a max of 1000 px.

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
10. After rendering, it is a good idea to compress the images in the output `_site` directory. For this task, the [Caesium Image Compressor](https://saerasoft.com/caesium) is recommended (though this could also be done with `magick`). I found that JPG compression of 75 works well.
11. After image compression, the site is ready to send to the server..
12. Small projects can be posted to Quarto Pubs with the terminal command: `quarto publish quarto-pub --no-render` . If you want to re-render at publish, leave off the last argument.
13. Larger projects can be rendered to Netlify with the terminal command: `quarto publish netlify --no-render` . If you want to re-render at publish, leave off the last argument.
14. Alternatively, the contents of the `_site` directory can be pushed to any web server. This is what we've done with `univmuseum.nmsu.edu` .
15. Further customization options are documented at [Quarto](https://quarto.org/) and [`DT`](https://rstudio.github.io/DT/).
