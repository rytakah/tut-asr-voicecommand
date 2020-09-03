#!/bin/sh

#$ -cwd                      ## Execute a job in current directory
#$ -l q_node=1               ## Use number of node
#$ -l h_rt=00:10:00          ## Running job time

echo "start runtsubame.sh"
/usr/bin/env
. /etc/profile.d/modules.sh  ## Initialize module commands
module load cuda/9.0.176     ## Use GPU
module load intel
module load cudnn/7.1
module load nccl/2.2.13
module load openmpi/2.1.2-pgi2018

echo "finish load module"
export PATH="/gs/hs0/tga-tslecture/local/anaconda3/bin:$PATH"

/usr/bin/env
source activate

echo "activated environment"
/usr/bin/env
export PYTHONPATH=     ##remove PYTHONPATH if it have some path

echo "run ./run.sh"
./run.sh
