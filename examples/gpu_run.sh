export SQUAD_DIR=SQUAD
python run_squad.py \
    --bert_model bert-base-uncased \
    --do_train \
    --do_lower_case \
    --train_file $SQUAD_DIR/train-v1.1.json \
    --train_batch_size 12 \
    --learning_rate 3e-5 \
    --num_train_epochs 1.0 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir output/squad/
