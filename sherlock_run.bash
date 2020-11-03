	#!/bin/bash
	#SBATCH --time=24:00:00
	#SBATCH --job-name=pretrain-pointnet2
	#SBATCH --cpus-per-task=2
	#SBATCH --mem=4G
	#SBATCH -p gpu
	#SBATCH -G 1
    #SBATCH --mail-type=FAIL
    source ~/.bashrc
    conda activate /scratch/users/akanhere/conda_envs/deep-icp-pose 
    cd $HOME/Pointnet2_PyTorch
    git pull
    python pointnet2/train.py task=cls