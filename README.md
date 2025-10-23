## Installation

LeRobot works with Python 3.10+ and PyTorch 2.2+.

### Environment Setup

Create a virtual environment with Python 3.10 and activate it, e.g. with [`miniforge`](https://conda-forge.org/download/):

```bash
conda create -y -n lerobot python=3.10
conda activate lerobot
```

When using `conda`, install `ffmpeg` in your environment:

```bash
conda install ffmpeg -c conda-forge
```

> **NOTE:** This usually installs `ffmpeg 7.X` for your platform compiled with the `libsvtav1` encoder. If `libsvtav1` is not supported (check supported encoders with `ffmpeg -encoders`), you can:
>
> - _[On any platform]_ Explicitly install `ffmpeg 7.X` using:
>
> ```bash
> conda install ffmpeg=7.1.1 -c conda-forge
> ```
>
> - _[On Linux only]_ Install [ffmpeg build dependencies](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu#GettheDependencies) and [compile ffmpeg from source with libsvtav1](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu#libsvtav1), and make sure you use the corresponding ffmpeg binary to your install with `which ffmpeg`.

### Installation from PyPI

**Core Library:**
Install the base package with:

```bash
pip install lerobot
```

_This installs only the default dependencies._

**Extra Features:**
To install additional functionality, use one of the following:

```bash
pip install 'lerobot[all]'          # All available features
pip install 'lerobot[aloha,pusht]'  # Specific features (Aloha & Pusht)
pip install 'lerobot[feetech]'      # Feetech motor support
```

_Replace `[...]` with your desired features._

**Available Tags:**
For a full list of optional dependencies, see:
https://pypi.org/project/lerobot/

### Troubleshooting
If you encounter build errors, you may need to install additional dependencies: cmake, build-essential, and ffmpeg libs. To install these for linux run:
```bash
sudo apt-get install cmake build-essential python-dev pkg-config libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libswresample-dev libavfilter-dev pkg-config
```
