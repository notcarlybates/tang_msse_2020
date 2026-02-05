#!/bin/bash
#SBATCH --job-name=tang_msse
#SBATCH --partition=short
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32GB
#SBATCH --time=8:00:00
#SBATCH --output=reproduce_%j.out
#SBATCH --error=reproduce_%j.err

cd /home/bates.car/github/tang_msse_2020

poetry run reproduce --parallel --force-fresh-data=True