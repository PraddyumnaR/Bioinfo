# Read the SNPeff annotated VCF file
vcf_file <- "SNPeff.ann.vcf"
vcf_lines <- readLines(vcf_file)

# Initialize empty vectors to store variant types and gene symbols
variant_types <- character(0)
gene_symbols <- character(0)

# Extract variant types and gene symbols from each line
for (line in vcf_lines) {
  # Check if the line contains SNPeff annotation
  if (grepl("ANN=", line)) {
    # Extract ANN field
    ann_field <- gsub(".*ANN=(.*?)(?:\\|\\||$).*", "\\1", line)
    
    # Split ANN field by pipe (|) characters
    ann_fields <- unlist(strsplit(ann_field, "\\|"))
    
    # Extract variant type (second field) and gene symbol (fifth field)
    variant_type <- ann_fields[2]
    gene_symbol <- ann_fields[5]
    
    # Append variant type and gene symbol to vectors
    variant_types <- c(variant_types, variant_type)
    gene_symbols <- c(gene_symbols, gene_symbol)
  }
}

# Combine variant types and gene symbols into a data frame
variants_df <- data.frame(Variant_Type = variant_types, Gene_Symbol = gene_symbols)

# Remove duplicates
variants_df <- unique(variants_df)

# Save the data frame to a new text file
write.table(variants_df, "variants_summary.txt", sep = "\t", row.names = FALSE)
