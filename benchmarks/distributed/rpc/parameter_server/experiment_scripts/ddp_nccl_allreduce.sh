#!/bin/sh

cd "$(dirname "$0")"
cd ..

python -u launcher.py \
    --master_addr="localhost" \
    --master_port="29500" \
    --trainer="DdpTrainer" \
    --ntrainer=2 \
    --ncudatrainer=0 \
    --filestore="/tmp/tmpn_k_8so02" \
    --nserver=0 \
    --ncudaserver=0 \
    --rpc_timeout=30 \
    --backend="nccl" \
    --epochs=10 \
    --batch_size=10 \
    --data="DummyData" \
    --model="DummyModel" \
    --data_config_path="configurations/data_configurations.json" \
    --model_config_path="configurations/model_configurations.json"
