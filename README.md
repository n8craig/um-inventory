# um-inventory
University Museum Collections Inventory

This repository contains the code to build a searchable interface for museum collections that are stored in a PastPerfect database.

> **Note**
> Several key parts of the data are not included in this repository. There are two reasons: some of the data are sensitive and not appropriate for public display, 2) the original uncompressed images are large.

To use this repository:
1. Clone to local
2. Within the project root, create the following directories:
   - data/
   - data/images_full/
   - data/images_thums/
   - data/tables
1. Export the Object List from PastPerfect
1. Save the file as an `.xlsx` file and place it into `./data/tables`
1. From PastPerfect, copy the `Images` directory into the `./data` directory such that it is `./data/Images`.
