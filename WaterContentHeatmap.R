
install.packages("G:pheatmap_1.0.12.tar.gz", repos=NULL, type="source")
install.packages("G:gridExtra_2.3.tar.gz", repos=NULL, type="source")
install.packages("G:viridis_0.6.1.tar.gz", repos=NULL, type="source")

library("pheatmap")
library("RColorBrewer")
library("gridExtra")
library("viridisLite")

attach(AedesHeatmap)
head(AedesHeatmap)

Anum=as.matrix(AedesHeatmap[,2:6])
Anum
rownames(Anum)=sapply(AedesHeatmap$Treatment,function(x)
  strsplit(as.character(x),split="\\\\")[[1]][1])
Anum
as.matrix(Anum)

AHeat <- pheatmap(
  mat = Anum[,1:5],
  border_color = "grey",
  color = viridis(2000, option = "viridis", begin = .625, end = 0.1),
  show_colnames = TRUE,
  show_rownames = TRUE,
  drop_levels = FALSE,
  fontsize = 15,
  main = "Water Content (mg)",
  cluster_cols = FALSE,
  clustering_distance_rows ="maximum",
  cluster_rows = FALSE,
  clustering_distance_cols = "maximum",
  display_numbers = TRUE,
  number_color = "white",
  labels_row = AedesHeatmap$Treatment,
  cutree_rows = 1,
  legend = TRUE,
  angle_col = 0,
  legend_breaks = c(0, 0.25, 0.50, 0.75, 1.00, 1.25, 1.50),
  legend_labels = c("0","0.25","0.50","0.75","1.00","1.25","1.50"),
  fontsize_number = 12,
  na_col = "#FFFFFF",
  height = 8,
  width = 7,
  filename = "G:AedesHeatmap2.png"
)
AHeat

#CULEX

attach(CulexHeatmap)
head(CulexHeatmap)

Cnum=as.matrix(CulexHeatmap[,2:6])
Cnum
rownames(Cnum)=sapply(CulexHeatmap$Treatment,function(x)
  strsplit(as.character(x),split="\\\\")[[1]][1])
Cnum
as.matrix(Cnum)

CHeat <- pheatmap(
  mat = Cnum[,1:5],
  border_color = "grey",
  color = viridis(2000, option = "viridis", begin = .625, end = 0.1),
  show_colnames = TRUE,
  show_rownames = TRUE,
  drop_levels = FALSE,
  fontsize = 15,
  main = "Water Content (mg)",
  cluster_cols = FALSE,
  clustering_distance_rows ="maximum",
  cluster_rows = FALSE,
  clustering_distance_cols = "maximum",
  display_numbers = TRUE,
  number_color = "white",
  labels_row = CulexHeatmap$Treatment,
  cutree_rows = 1,
  legend = TRUE,
  angle_col = 0,
  legend_breaks = c(0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0),
  legend_labels = c("0","0.5","1.0","1.5","2.0","2.5","3.0"),
  fontsize_number = 12,
  na_col = "#FFFFFF",
  height = 8,
  width = 7,
  filename = "G:CulexHeatmap2.png"
)
CHeat

#COMBINED

attach(CombinedHeatmap)
head(CombinedHeatmap)

Conum=as.matrix(CombinedHeatmap[,2:6])
Conum
rownames(Conum)=sapply(CombinedHeatmap$Treatment,function(x)
  strsplit(as.character(x),split="\\\\")[[1]][1])
Conum
as.matrix(Conum)

CoHeat <- pheatmap(
  mat = Conum[,1:5],
  border_color = "grey",
  color = viridis(2000, option = "viridis", begin = .625, end = 0.1),
  show_colnames = TRUE,
  show_rownames = TRUE,
  drop_levels = FALSE,
  fontsize = 10,
  main = "Water Content (mg)",
  cluster_cols = FALSE,
  clustering_distance_rows ="maximum",
  cluster_rows = FALSE,
  clustering_distance_cols = "maximum",
  display_numbers = TRUE,
  number_color = "white",
  #treeheight_row = 100,
  #cellwidth = 30,
  #cellheight = 20,
  labels_row = CombinedHeatmap$Treatment,
  cutree_rows = 1,
  legend = TRUE,
  #annotation_col = Adat
  #annotation_row = Adat
  filename = "G:CombinedHeatmapUpdated.png"
)

CoHeat


ftoBibtex(citation("MGCV"))
toBibtex(citation("ecotox"))
toBibtex(citation("emmeans"))
toBibtex(citation("pheatmap"))
