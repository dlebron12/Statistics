install.packages('ssizeRNA')

library(ssizeRNA)
# number of genes 10,000
# proportion of non differential genes 0.8
# FDR level cutoff 0.05
# power = 0.8
# average count for each gene in control group = 10
# dispersion parameter for each gene: disp = 0.01
# fold change for each gene fc = 2 

size_out <- ssizeRNA_single(nGenes = 10000,
			    pi0 = 0.8,
			    fdr = 0.05,
			    mu = 10,
			    disp = 0.1,
			    fc = 2)
							
