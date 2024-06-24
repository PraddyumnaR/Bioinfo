# Gene Expression Analysis and Variant Annotation Scripts

This repository contains R language scripts for gene expression analysis and variant annotation tasks. The scripts are designed to perform Differential Gene Expression (DGE) analysis, filter Differentially Expressed Genes (DEGs) based on log fold change, retrieve a summary of all types of variants from an annotated VCF file, and convert gene symbols from Ensembl.

## Scripts

### 1. Differential Gene Expression Analysis

The `DGE_Analysis.Rmd` script performs Differential Gene Expression (DGE) analysis using RNA-Seq data. It utilizes R packages such as DESeq2 or edgeR for statistical analysis and identifies genes that are significantly differentially expressed between experimental conditions.

#### Requirements

- R programming environment
- DESeq2 or edgeR R packages
- Input files: gene count data, experimental metadata

#### Usage

1. Install R and required packages (DESeq2 or edgeR).
2. Prepare gene count data and experimental metadata.
3. Run the `DGE_Analysis.Rmd` script in RStudio or command line.

### 2. DEG Filtering Based on Log Fold Change

The `DEG_filtering.R` script filters Differentially Expressed Genes (DEGs) based on log fold change (LFC). It reads the results from a DGE analysis (e.g., DESeq2 or edgeR output) and applies a threshold to retain only significant DEGs with a minimum LFC.

#### Requirements

- R programming environment
- DESeq2 or edgeR output files

#### Usage

1. Run a DGE analysis to obtain DEG results.
2. Prepare the DEG results file.
3. Modify the LFC threshold in `DEG_filtering.R` as needed.
4. Run the script in RStudio or command line.

### 3. Variant Annotation Summary

The `variant_annotation_summary.R` script generates a summary of all types of variants from an annotated VCF (Variant Call Format) file. It utilizes bioinformatics packages such as VariantAnnotation in R to extract variant information and provides a summary report.

#### Requirements

- R programming environment
- VariantAnnotation R package
- Annotated VCF file

#### Usage

1. Install R and VariantAnnotation package.
2. Obtain an annotated VCF file from variant calling analysis.
3. Run the `variant_annotation_summary.R` script in RStudio or command line.

### 4. Gene Symbol Conversion from Ensembl

The `Gene_symbol_conversion to ensembl.Rmd` script converts gene symbols from Ensembl IDs to human-readable gene symbols. It uses annotation databases or APIs to map Ensembl IDs to gene symbols and generates an updated gene symbol file.

#### Requirements

- R programming environment
- Annotation databases or APIs (e.g., biomaRt)
- Ensembl gene ID file

#### Usage

1. Install R and required packages (e.g., biomaRt).
2. Obtain an Ensembl gene ID file.
3. Modify the script to specify the Ensembl ID column and output gene symbol file path.
4. Run the `Gene_symbol_conversion to ensembl.Rmd` script in RStudio or command line.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- The scripts make use of various R packages for bioinformatics analysis.
- Data processing and analysis are based on established methodologies in the field.

---

Feel free to contribute to this repository by opening issues or submitting pull requests.
