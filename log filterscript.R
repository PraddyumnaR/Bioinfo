library(dplyr)
# Read the DESeq2 results CSV file into a data frame
# Replace "Deseq3C_result.csv" with the actual filename
deseq_results <- read.csv("Deseq3C_result.csv", header = TRUE, row.names = 1)
# Filter genes based on log fold change values here we kept genes showing log fold change value greater than +1 and less than -1
filtered_results <- deseq_results %>%
  filter(log2FoldChange > 1 | log2FoldChange < -1)
# Print the first few rows of the filtered results
head(filtered_results)
# Save the filtered results to a new CSV file
# Replace "filtered_deseq_results.csv" with the desired output filename
write.csv(filtered_results, file = "log2Fold_filtered_deseq_results.csv", row.names = TRUE)
