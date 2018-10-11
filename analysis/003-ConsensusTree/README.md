# MK-Fst-Phylo - 003-ConsensusTree

## Dependencies

- [consense](http://evolution.genetics.washington.edu/phylip/doc/consense.html) 

*NOTE: The program comes with the package [PHYLIP](http://evolution.genetics.washington.edu/phylip/)  and must be imported in to the path.*

## Module objective

The module construct a Consensus tree in [newick format](http://evolution.genetics.washington.edu/phylip/newicktree.html), taking as input many newick tress in the folder *data/*.

## Module description

This module takes as input a folder (*data/*) that contains many phylogeny trees in newick format. With those trees is made a single file that contain those, this file serves as input for the consense program that is then executed. 

## Module Configuration

Create a folder *data/* that contains phylogenetic trees with the extension *.tree.nwk*.

## Input data format

The module takes as input phylogeny trees in newick format. This is a plain text file. For more information about the newick format see the next link: http://evolution.genetics.washington.edu/phylip/newicktree.html 

Every newick file must contain the same number of samples and same sample ids.

## Output data format

The module construct phylogeny trees in newick format. This is a plain text file. This final tree will contain the number the percentage of time that was observed a topology in the tree. For more information about the newick format see the next link: http://evolution.genetics.washington.edu/phylip/newicktree.html 

## Execution Parameters

The program *consense* when is executed opens a terminal that receives the input parameters and needs to confirm those to execute it. That´s why the parameters are given by an *echo*. The only parameter set is **R ** that indicates the input trees are rooted by an out-group sample.

## References

Felsenstein, J. (1993). *_PHYLIP (phylogeny inference package), version 3.5 c_*. Joseph Felsenstein.

### Author Info
Developed by: [Fernando Perez](https://www.linkedin.com/in/fernandorpv/)

email: [fperez@inmegen.edu.mx](mailto:fperez@inmegen.edu.mx)
