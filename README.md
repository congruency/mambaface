# mambaface
A mamba language model fine-tuning script entirely dependent on Hugging Face libraries

run_clm.py is from the transformers examples. It was adapted to work with the mamba model and play nicely with multiple formatting options.

The shell scripts are examples of what I was able to run on a 4090

The following options were added as issues came up:
* --chat_template=<repo:str>
* --column_name=<name:str>
* --train_split=<name:str>

# Getting Started

## With virtual environments (preferred for sharing caches)
```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
./train_data.sh or ./train_chat.sh
```

## With docker (preferred for isolation)
```
docker run --gpus all -v $(pwd):/workspace -it pytorch/pytorch:2.1.1-cuda12.1-cudnn8-devel
apt update && apt install git
pip install -r requirements.txt
./train_data.sh or ./train_chat.sh
```

While you shouldn't need to modify any code, this software is only intended for developers. The parameters are not expected to be optimal, so please tune to your liking.

# License
Apache 2.0

# Hugging Face libraries used
* [Accelerate](https://github.com/huggingface/accelerate)
* [Datasets](https://github.com/huggingface/datasets)
* [Evaluate](https://github.com/huggingface/evaluate)
* [Transformers](https://github.com/huggingface/transformers)
