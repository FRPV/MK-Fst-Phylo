# MK-Fst-Phylo - 002-NeighbourPhylip

## Dependencies

- [neighbor](http://evolution.genetics.washington.edu/phylip/doc/neighbor.html) 

*NOTE: The program comes with the package [PHYLIP](http://evolution.genetics.washington.edu/phylip/)  and must be imported in to the path.*

## Module objective

The module construct Neighbor-Joining phylogeny trees in [newick format](http://evolution.genetics.washington.edu/phylip/newicktree.html), taking as input distance matrix. 

## Module description

This module takes as input a a distance matrix in the Phylyp format. Those files most contains the suffix *.dist.phylip* . For each input file is executed a Neighbor-Joining phylogeny inference with the program *neighbor* from Phylip package. The user needs to give the sample that will be the out-group in the inference.

## Module Configuration

Create a folder *data/* that contains the distance matrix with the suffix *.dist.phylip*. 

In the config.mk add the variable **OUT** and the number of sample that will be the outgroup sample in the phylogenetic inference.

## Input data format

The input file is a distance Matrix, those distances could be Fst, IBD or any kind of distance between two samples. The input must contain the suffix  *.dist.phylip*. The adequate format required is described in the next link: http://evolution.genetics.washington.edu/phylip/doc/distance.html

## Output data format

The module construct Neighbor-Joining phylogeny trees in newick format. This is a plain text file. For more information about the newick format see the next link: http://evolution.genetics.washington.edu/phylip/newicktree.html 

## Execution Parameters

The program *neighbor* when is executed opens a terminal that receives the input parameters and needs to confirm those to execute them. That´s why the parameters are given by an *echo*. The only parameter set is **O ** that indicates the sample number to be used as out-group sample (to try to root the tree generated).

## References

Felsenstein, J. (1993). *_PHYLIP (phylogeny inference package), version 3.5 c_*. Joseph Felsenstein.

### Author Info
Developed by: [Fernando Perez](https://www.linkedin.com/in/fernandorpv/)

email: [fperez@inmegen.edu.mx](mailto:fperez@inmegen.edu.mx)

