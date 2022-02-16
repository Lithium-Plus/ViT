export CUDA_VISIBLE_DEVICES=0,1
python run_image_classification.py \
    --dataset_name cifar100 \
    --model_name_or_path ./cifar100_best/ \
    --output_dir ./cifar100_retrain1/ \
    --remove_unused_columns False \
    --do_train True\
    --do_eval \
    --learning_rate 2e-5 \
    --num_train_epochs 2 \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 8 \
    --logging_strategy steps \
    --logging_steps 20 \
    --weight_decay 0.01 \
    --evaluation_strategy epoch \
    --save_strategy epoch \
    --save_total_limit 3 \
    --overwrite_output_dir