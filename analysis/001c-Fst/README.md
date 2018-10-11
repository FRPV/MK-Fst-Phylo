# MK-Fst-Phylo - 001c-Fst

## Dependencies

- [Eigensoft](https://github.com/DReichLab/EIG) v1.9

*NOTE: The program used is smartpca and must be imported in to the path.*

## Module objective
This module takes as input BED, FAM and BIM PLINK format files and calculates Fst values for each pair of samples. 

## Module description

This module creates a simbolyc link to the BIM file but with the extension *pedind* required by smartpca. Then adequate the FAM file in a format required by Eigensoft, create a *par file* which describes the options to be used and finally executes smartpca to calculate Fst values in each pair of individuals.

The module is optimized to use as input files with the extension "_bs#.bed" which are generated by module **000b-BCFBootsBED**. 

## Module Configuration

Create a folder *data/* that contains the BED, BIM and FAM files to be used to calculate Fst values. For each of those tree files will be produced and output file.


## Input data format

The input are PLINK format files, BED, BIM and FAM, each of those must contain the extension *.bed*, *.bim* and *.fam* respectively. 

## Output data format

For each of the number of bootstrap replicates  will be generated a file called *dist.phylip*. Those contain in plain text format the Fst genetic distance in each pair of populations.

Also are generated the next plain text files:

- pedsnp file: List of bootstraped regions used to calculate Fst values.
- pedind: List of individuals in eigensoft required format, this format is similar of the fam file generated by PLINK.
- par: List of parameters used to run smartpca

## Execution Parameters

The next are parameters used by smartpca in the parameters file:


             genotypename -> PLINK bed file to use
                  snpname -> List of genetic variants to use for the Fst analysis.
	           indivname  -> Allow extra chromosomes in the header
           numoutlieriter -> Flag (0) to do not remove outliers samples.
                  fstonly -> If set to YES, then skip PCA and just calculate FST values
            phylipoutname -> Output file name with the Fst
               numthreads ->  Number of threads to use

## References

Price, A. L., Patterson, N. J., Plenge, R. M., Weinblatt, M. E., Shadick, N. A., & Reich, D. (2006). *Principal components analysis corrects for stratification in genome-wide association studies.* _Nature genetics_, _38_(8), 904.


### Author Info
Developed by: [Fernando Perez](https://www.linkedin.com/in/fernandorpv/)

email: [fperez@inmegen.edu.mx](mailto:fperez@inmegen.edu.mx)
