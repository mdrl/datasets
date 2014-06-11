datasets
========

ILP datasets collection

Repository structure:
- aleph
-- Folders with datasets
--- folds
- gilps
-- Folders with datasets

The datasets for Aleph and GILPS are separated due to different ways the systems accept the background knowledge and the sets of positive / negative exxamples.

The real-world datasets for GILPS are initially available from [http://www.doc.ic.ac.uk/~jcs06/GILPS/datasets.tar.bz2](http://www.doc.ic.ac.uk/~jcs06/GILPS/datasets.tar.bz2). Some of the datasets where examples do not have assigned folds in the original dataset, are now partitioned into folds to enable reproducibility of results.

In the Aleph folder, the datases are available both as whole datasets (i.e. all examples in single .f or .n files) and partitioned into folds (in the folds folder), which can be used with the Perl script written by M. Reid, available at [http://www.comlab.ox.ac.uk/oucl/research/areas/machlearn/Aleph/misc/xval_pl.txt](http://www.comlab.ox.ac.uk/oucl/research/areas/machlearn/Aleph/misc/xval_pl.txt).
