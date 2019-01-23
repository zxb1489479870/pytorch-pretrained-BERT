export KMP_AFFINITY=compact,1,0,granularity=fine
export OMP_NUM_THREADS=56
#export OMP_NUM_THREADS=40
export KMP_BLOCKTIME=1
export SQUAD_DIR=SQUAD
python run_squad.py \
    --bert_model bert-base-uncased \
    --do_train \
    --do_predict \
    --do_lower_case \
    --train_file $SQUAD_DIR/train-v1.1.json \
    --predict_file $SQUAD_DIR/dev-v1.1.json \
    --train_batch_size 12 \
    --learning_rate 3e-5 \
    --num_train_epochs 1.0 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir /tmp/debug_squad/