# MK-Fst-Phylo - 000b-BCFBootsBED

## Dependencies

- [PLINK](http://www.cog-genomics.org/plink2) v1.9

*NOTE: PLINK must be imported in to the path and must be executed with the order "plink1.9".*

## Module objective
This module generates bootstrap of genetic variants, taking as input a BCF file and generates a BED file. And example of the bootstrap performed is next:
   ![Bootstrap example](https://github.com/FRPV/planets/blob/master/Bootstrap.jpeg)

## Module description

This module takes an BCF file as input. Select from it random variants with replacement (make bootstrap replicate), sort those variants and put the header to finally generate a vcf file. This vcf file is used by Plink to create a BED file. In the process all intermediate files are deleted.

## Module Configuration

Create a folder *data/* that contains the files to be converted to BED format, those most have the extension BCF.

In the config.mk add the variable **bots**, this will indicate how many bootstrap replicates will be generated. 


## Input data format

The input BCF to convert, should be in version v4.2 and in either VCF format or BCF.

NOTE: The **bin/targets** script takes only as input files with the termination ".bcf". If your file has a different extension, change this in the target script and the *mkfile*.


## Output data format

For each of the number of bootstrap replicates  will be generated the next tree file:

- BED file: PLINK binary biallelic genotype table. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#bed). 
- BIM file: PLINK extended MAP file. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#bim). 
- FAM file: PLINK sample information file. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#fam). 

Also are generated the next plain text files:

- nosex file: List of samples with ambiguous sex codes. For more information see this [link](https://www.cog-genomics.org/plink/1.9/output). 
- LOG file: Log for the execution.

The files will have the extension *\_bs88.bed*, in this example the number indicates that is the replicate 88.

## Execution Parameters


              plink1.9 -> Command to ejecute PLINK
                 --bcf -> Input multi-sample BCF file to convert
	--allow-extra-chr  -> Allow extra chromosomes in the header
                 --out -> Prefix for the output files
            --make-bed -> FLAG to execute the comand for VCF to PLINK format conversion


## References

Purcell, S., Neale, B., Todd-Brown, K., Thomas, L., Ferreira, M. A., Bender, D., ... & Sham, P. C. (2007). PLINK: a tool set for whole-genome association and population-based linkage analyses. _The American Journal of Human Genetics_, _81_(3), 559-575. [https://doi.org/10.1086/519795](https://doi.org/10.1086/519795 "Persistent link using digital object identifier")

PLINK user manual: http://www.cog-genomics.org/plink2

### Author Info
Developed by: [Fernando Perez](https://www.linkedin.com/in/fernandorpv/)

email: [fperez@inmegen.edu.mx](mailto:fperez@inmegen.edu.mx)

