
# MK-Fst-Phylo - 000-BCF\_to\_BED

## Dependencies

- [PLINK](http://www.cog-genomics.org/plink2) v1.9

*NOTE: PLINK must be imported in to the path and must be executed with the order "plink1.9".*

## Module objective

This module converts a multi-sample VCF file into binary files used by software PLINK. Those files are necessary for the PLINK software, EigenSoft and other software that infer population genetics analysis.


## Module Configuration

Create a folder *data/* that contains the files to be converted to BED format, those most have the extension BCF.


## Input data format

The input VCF to phase, should be in version v4.2 and in either VCF format or BCF.

NOTE: The **bin/targets** script takes only as input files with the termination ".bcf". If your file has a different extension, change this in the target script and the *mkfile*.


## Output data format

The output data generated are the next binary files:

- BED file: PLINK binary biallelic genotype table. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#bed). 
- BIM file: PLINK extended MAP file. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#bim). 
- FAM file: PLINK sample information file. For more information see this [link](http://www.cog-genomics.org/plink/1.9/formats#fam). 

Also are generated the next plain text files:

- nosex file: List of samples with ambiguous sex codes. For more information see this [link](https://www.cog-genomics.org/plink/1.9/output). 
- LOG file: Log for the execution.

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

