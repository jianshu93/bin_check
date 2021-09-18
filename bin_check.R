### mmgenome2
if(!require(remotes))
  install.packages("remotes")
remotes::install_github("kasperskytte/mmgenome2")
library(mmgenome2)

setwd("/Users/jianshuzhao")
library(mmgenome2)
library(Rtsne.multicore)
library(Rtsne)
mm <- mmload(
  assembly = "Manganese/final_assembly.fasta",
  list(
    nameofcoverage1 = read.csv("/Users/jianshuzhao/Manganese/rosella_coverages.csv"),
    nameofcoverage2 = read.csv("/Users/jianshuzhao/Manganese/rosella_coverages_metabat.csv")
  ),
  taxonomy = "Manganese/taxonomy.csv",
  verbose = TRUE,
  kmer_pca = TRUE,
  kmer_BH_tSNE = TRUE,
  num_threads = 8
)

head(mm$tSNE1)
mmstats(mm)
mm$cov_nameofcoverage1


a=mmplot(mm,
       x = "tSNE1",
       y = "cov_nameofcoverage1",
       y_scale = "log10",
       color_by = "phylum",
       color_vector=c("#AECDE1", "#CC7AA6",
                      "#644194", "#8569D5","#F5E369","#999999", "#B3DE8C",
                      "#652926", "#C2CCD6","#8569D5", "#D14285","#4AF2A1",
                      "#C7BAA6", "#F7CCAD","#599861","#666666",
                      "#FCFAF0","#AD6F3B","black",
                      "#5F7FC7","#F5B369","#DA5724",
                      "#508578","#CD9BCD","#599861","#666666",
                      "#FCFAF0","#AD6F3B","black",
                      "#5F7FC7","#F5B369","#DA5724",
                      "#508578","#CD9BCD","#8569D5", "#D14285","#599861"))
source("theme_js.R")
a+theme_js_classic()


b=mmplot(mm,
         x = "PC1",
         y = "cov_nameofcoverage1",
         y_scale = "log10",
         color_by = "phylum",
         color_vector=c("#AECDE1", "#CC7AA6",
                        "#644194", "#8569D5","#F5E369","#999999", "#B3DE8C",
                        "#652926", "#C2CCD6","#8569D5", "#D14285","#4AF2A1",
                        "#C7BAA6", "#F7CCAD","#599861","#666666",
                        "#FCFAF0","#AD6F3B","black",
                        "#5F7FC7","#F5B369","#DA5724",
                        "#508578","#CD9BCD","#599861","#666666",
                        "#FCFAF0","#AD6F3B","black",
                        "#5F7FC7","#F5B369","#DA5724",
                        "#508578","#CD9BCD","#8569D5", "#D14285","#599861"))
b+theme_js_classic()


c=mmplot(mm,
         x = "gc",
         y = "cov_nameofcoverage1",
         y_scale = "log10",
         color_by = "phylum",
         color_vector=c("#AECDE1", "#CC7AA6",
                        "#644194", "#8569D5","#F5E369","#999999", "#B3DE8C",
                        "#652926", "#C2CCD6","#8569D5", "#D14285","#4AF2A1",
                        "#C7BAA6", "#F7CCAD","#599861","#666666",
                        "#FCFAF0","#AD6F3B","black",
                        "#5F7FC7","#F5B369","#DA5724",
                        "#508578","#CD9BCD","#599861","#666666",
                        "#FCFAF0","#AD6F3B","black",
                        "#5F7FC7","#F5B369","#DA5724",
                        "#508578","#CD9BCD","#8569D5", "#D14285","#599861"))
c+theme_js_classic()

