accelerate launch run_clm.py \
	--model_name_or_path=state-spaces/mamba-2.8b \
	--tokenizer EleutherAI/gpt-neox-20b \
	--dataset_name=wikimedia/wikipedia \
	--dataset_config_name=20231101.en \
	--do_train=1 \
	--output_dir=output/training \
	--learning_rate=1e-5 \
	--block_size=2048 \
	--logging_steps=50 \
	--save_steps=5000 \
	--per_device_train_batch_size=1 \
	--overwrite_output_dir=1 \
	--torch_dtype=bfloat16 \
	--optim=adamw_8bit \
	--bf16=1\
	--tf32=1 \
	--streaming=1 \
 	--max_steps=15000 \
	--num_train_epochs=1

# Remove streaming and max_steps to process the whole dataset.
# Beware: Preprocessing takes place when not streaming and it can be a long time on large datasets
