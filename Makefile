# Usage
#
#   sbatch make.sh
#

all: ep_vs_mhcn.png ep_vs_mhcn_log.png ep_vs_mhcn_perc.png

data: ep_vs_mhcn.csv

ep_vs_mhcn.png: create_figures.R
	Rscript create_figures.R

ep_vs_mhcn_log.png: create_figures.R
	Rscript create_figures.R

ep_vs_mhcn_perc.png: create_figures.R
	Rscript create_figures.R

ep_vs_mhcn.csv: create_dataset.R
	Rscript create_dataset.R

zip: 
	zip ep_vs_mhcn.zip *.csv *.png *.R *.sh *.log Makefile

clean:
	rm -f *.png *.latex *.csv *.pdf *.log *.zip
