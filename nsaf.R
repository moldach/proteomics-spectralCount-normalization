df1 <- read.csv("raw-spcs.csv") # Load raw spectral counts (no column of protein names)
df2 <- read.csv("protein-lengths.csv") # Load the protein lengths (ordered for the protein names)

df2 <- unlist(df2) # Unlist your protein lengths before you sweep
df3 <- sweep(df1,1,df2,"/") # Divide spectral counts (SpC) for a protein by its length (L)

df4 <- colSums(df3) # Get the column sums for each cell-line/treatment
df4 <- as.data.frame(df4)
df4 <- df4[,1]

df3 <- sweep(df3,2,df4,"/") # Normalize by dividing by the sum of all SpC/L for all proteins identified 
