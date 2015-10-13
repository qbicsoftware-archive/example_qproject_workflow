#!/bin/sh
#PBS -q cfc
#PBS -A qbic
#PBS -l nodes=1:ppn=10:cfc
#PBS -l walltime=40:00:00
#PBS -e ../logs/jobscript.e$PBS_JOBID
#PBS -o ../logs/jobscript.o$PBS_JOBID

set -e
module load qbic/anaconda
module load math/R/3.1.0

Rscript main.R

exit 0
