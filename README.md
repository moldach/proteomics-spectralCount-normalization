# Normalized Spectral Abundance Factor (NSAF) for quantitative Liquid Chromatography Mass Spectrometry-Based Proteomics 

Normalized spectral abundance factors (NSAFs) provides an improved measure for relative abundance, by factoring the length of the protein 
into subsequent calculations. A NSAF value for a given protein is calculated by dividing the spectral counts (SpC) for a protein by its length (L). This value is then normalized by dividing by the sum of all SpC/L for all proteins identiﬁed in a complex mixture.
NSAF values provide a measure of relative abundance and the ability to compare the abundance of proteins within a 
sample The dynamic range for NSAF values is approximately 3.6–3.8 orders of magnitude, allowing the measurement of abun-
dance of a wide range of proteins present in a data set. When NSAF values are log-transformed they follow a normal distribu-
tion, facilitating analysis of statistically signiﬁcant changes in expression. NSAF values have also been shown to have very 
similar statistical properties to comparable RNA transcript abundance values (1)

$(NSpC)*k* = (SpC/*L*)/\sigma(SpC/*L*)*i*$

![](https://latex.codecogs.com/gif.latex?\bg_black&space;(NSpC)k=(SpC/L)k/\sum(SpC/L)i)

(1) Neilson, Karlie & Keighley, Tim & Pascovici, Dana & Cooke, Brett & Haynes, Paul. (2013). Label-Free Quantitative Shotgun Proteomics Using Normalized Spectral Abundance Factors. Methods in molecular biology (Clifton, N.J.). 1002. 205-22. 10.1007/978-1-62703-360-2_17. 

## WARNING: This method should only be used if you don't have access to intensity data!

Spectral counting has become rather obsolete for MS-based quantification. With spectral counts, precision is an issue. This is especially true for low-abundant proteins (e.g. 1 count in sample A vs. 3 counts in sample B **OR** 1 count in sample A vs. 4 counts in sample B is already a big difference as there is nothing in between - there can't be 3.5 counts). Moreover, dynamic exclusion settings of the mass spectrometer (i.e. the machine is going to exclude peaks at masses that it already framented before in order to increase peptide coverage) will completely obscure the relationship between the number counts and protein abundance. If machine settings are changed the runs will also become incomparable. See the following references: 

W.M. Old, K. Meyer-Arendt, L. Aveline-Wolf, K.G. Pierce, A. Mendoza, J.R. Sevinsky, K.A.Resing, N.G. AhnComparison of label-free methods for quantifying human proteins by shotgun proteomics
Mol. Cell. Proteomics, 4 (10) (2005), pp. 1487-1502

Y. Zhang, Z. Wen, M.P. Washburn, L. FlorensEffect of dynamic exclusion duration on spectral count based quantitative proteomics
Anal. Chem., 81 (15) (2009), pp. 6317-6326

M. Bantscheff, S. Lemeer, M. Savitski, B. KusterQuantitative mass spectrometry in proteomics: critical review update from 2007 to the present

### If you have access to LC-MS intensity data I would suggest trying MSqRob: https://github.com/statOmics/MSqRob
