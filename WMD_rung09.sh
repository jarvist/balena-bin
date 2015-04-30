#!/bin/bash
 
# set the account to be used for the job
#SBATCH --account=free
 
# set name of job
#SBATCH --job-name=G09
#SBATCH   --output=G09.sdout
#SBATCH    --error=G09.sderr
 
# set the number of nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
 
# set max wallclock time
#SBATCH --time=04:00:00

module purge
module load intel/compiler/64/11.1.080 intel/mkl/64/10.2.7 intel-mpi/64/4.1.3/049 slurm gaussian09

g09 ... Job name ... 

