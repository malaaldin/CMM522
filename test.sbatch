#!/bin/bash
### Don't change unless you know why
#SBATCH --partition=standard
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=10gb
#SBATCH --time=01:00:00

### Change as you see fit
#SBATCH --account=lemos
#SBATCH --job-name=write_results
#SBATCH --output=write_results-%j.out
#SBATCH --mail-type=END
#SBATCH --mail-user=malaaldin@arizona.edu
 
# ---- while loop: write 10 files ----
 
i=1                                      # start the counter at 1
while [ $i -le 10 ]                      # keep going while i is less than or equal to 10
do
    echo "Our hypothesis is right" > important_results$i.txt
    i=$((i+1))                           # add 1 to the counter each pass
done
 
echo "Done. Wrote $((i-1)) files."
 