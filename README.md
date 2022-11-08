# um-inventory: University Museum Collections Inventory

This repository contains the code to build a searchable interface for museum collections that are stored in a [PastPerfect](https://museumsoftware.com/){target="_blank"} database.

> **Note** Several key parts of the project data are not included in this repository. There are two reasons for this: 1) some of the data are sensitive and not appropriate for public display, 2) the original uncompressed images are large and would clutter the repository.

To use this repository:

1.  Clone the repository
2.  Within the project root, create the following directories:
    -   `data/`
    -   `data/images_full/`
    -   `data/images_thums/`
    -   `data/tables`
3.  Export the Object List from PastPerfect
4.  Save the file as an `.xlsx` file and place it into `./data/tables`
5.  From PastPerfect, copy the `Images` directory into the `./data` directory such that it is `./data/Images`.
