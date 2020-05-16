#  End-to-end Speech Recognition
#  @source_code{
#      title={Character-unit based End-to-end Korean Speech Recognition},
#      author={Soohwan Kim, Seyoung Bae, Cheolhwang Won},
#      link={https://github.com/sooftware/End-to-End-Korean-Speech-Recognition},
#      year={2020}
#  }

BATCH_SIZE=32
NUM_WORKERS=4
NUM_EPOCHS=20
AUGMENT_NUM=1
HIDDEN_DIM=256
DROPOUT=0.3
NUM_HEADS=4
LABEL_SMOOTHING=0.1
LISTENER_LAYER_SIZE=5
SPELLER_LAYER_SIZE=3
RNN_TYPE='gru'
CONV_TYPE='increase'
LR=3e-04
MIN_LR=3e-05
LR_PATIENCE=1
TEACHER_FORCING_RATIO=0.99
VALID_RATIO=0.003
MAX_LEN=151
WINDOW_SIZE=20
STRIDE=10
N_MELS=80
FEATURE_EXTRACT_BY='librosa'
TIME_MASK_PARA=50
FREQ_MASK_PARA=12
TIME_MASK_NUM=2
FREQ_MASK_NUM=2
SAVE_RESULT_EVERY=1000
SAVE_MODEL_EVERY=10000
PRINT_EVERY=10
MODE='train'

# N.B.: assumes las is called from parent directory, as described in README.md
cd las
python ./main.py --batch_size $BATCH_SIZE --num_workers $NUM_WORKERS --num_epochs $NUM_EPOCHS --use_bidirectional \
--input_reverse --use_augment --use_cuda --augment_num $AUGMENT_NUM --hidden_dim $HIDDEN_DIM \
--dropout $DROPOUT --num_heads $NUM_HEADS --label_smoothing $LABEL_SMOOTHING \
--listener_layer_size $LISTENER_LAYER_SIZE --speller_layer_size $SPELLER_LAYER_SIZE --rnn_type $RNN_TYPE \
--lr $LR --teacher_forcing_ratio $TEACHER_FORCING_RATIO --valid_ratio $VALID_RATIO --max_len $MAX_LEN \
--window_size $WINDOW_SIZE --stride $STRIDE --n_mels $N_MELS --normalize --del_silence \
--feature_extract_by $FEATURE_EXTRACT_BY --time_mask_para $TIME_MASK_PARA --freq_mask_para $FREQ_MASK_PARA \
--time_mask_num $TIME_MASK_NUM --freq_mask_num $FREQ_MASK_NUM --save_result_every $SAVE_RESULT_EVERY \
--save_model_every $SAVE_MODEL_EVERY --print_every $PRINT_EVERY --min_lr $MIN_LR --lr_patience $LR_PATIENCE \
--conv_type $CONV_TYPE --use_multi_gpu --init_uniform --mode $MODE
