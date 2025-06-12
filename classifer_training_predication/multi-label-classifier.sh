export train_data="/path/to/train/data/train.csv"
export validation_data="/path/to/validation/data/val.csv"
export test_data="/path/to/test/data/test.csv"
export output_dir="/path/to/output/directory"

#Select Base pre-trained model. Modify as needed
export modelcheckpoint="Roberta-base"

python -u llm_multiclassifier.py \
    --model_name_or_path ${modelcheckpoint} \
    --train_file ${train_data} \
    --validation_file ${validation_data} \
    --test_file ${test_data} \
    --shuffle_train_dataset \
    --text_column_name "question" \
    --label_column_name "maj_2_model" \
    --do_train \
    --do_eval \
    --max_seq_length 128 \
    --per_device_train_batch_size 128 \
    --learning_rate 1e-6 \
    --num_train_epochs 30 \
    --do_predict \
    --logging_steps 50 \
    --eval_steps 100 \
    --save_steps 100 \
    --output_dir ${output_dir} \
    --save_total_limit 1 \
    --load_best_model_at_end True \
    --evaluation_strategy steps \
    
    
    
