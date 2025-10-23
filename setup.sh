echo "WARNING!!! SETUP.SH IS NOT TESTED"
echo "COMMANDS ARE TAKEN FROM \x1b[94mhttps://huggingface.co/docs/lerobot/installation\x1b[0m"

wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

conda create -y -n lerobot python=3.10
conda activate lerobot
conda install ffmpeg -c conda-forge

pip install lerobot
pip install 'lerobot[feetech]'
