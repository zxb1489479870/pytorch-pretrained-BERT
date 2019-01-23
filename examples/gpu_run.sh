export GLUE_DIR=glue_data
python run_classifier.py \
    --task_name MRPC \
    --do_train \
    --do_lower_case \
    --data_dir $GLUE_DIR/MRPC/  \
    --bert_model bert-base-uncased \
    --max_seq_length 128 \
    --train_batch_size 32 \
    --learning_rate 2e-5 \
    --num_train_epochs 1.0 \
    --output_dir output/mrpc_output/
