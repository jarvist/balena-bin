#!/bin/bash
 
# set the account to be used for the job
#SBATCH --account=free
 
# set name of job
#SBATCH --job-name=VASP
#SBATCH   --output=VASP.sdout
#SBATCH    --error=VASP.sderr
 
# set the number of nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
 
# set max wallclock time
#SBATCH --time=04:00:00

module purge
module load intel/compiler intel/mkl slurm openmpi/intel  vasp

vasp 

