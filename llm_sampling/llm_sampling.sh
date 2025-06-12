#!/bin/bash

# ----------------------------------------
# Script to generate samples using LLMs
# ----------------------------------------

# Choose a model (uncomment only one)
# Chat-optimized models
# MODEL_NAME="llama2-13b-chat"
# MODEL_NAME="mistral-7b-inst"
# MODEL_NAME="metamath-7b"
# MODEL_NAME="gemma-7b-it"
# MODEL_NAME="qwen2-7b-chat"
# MODEL_NAME="llama2-70b-chat"
MODEL_NAME="gemma-2b-it"

# Standard language models
# MODEL_NAME="llama2-13b-lm"
# MODEL_NAME="mistral-7b-lm"
# MODEL_NAME="falcon-7b"
# MODEL_NAME="vicuna-13b"
# MODEL_NAME="gemma-7b"
# MODEL_NAME="gemma-2b"

# Generation parameters
TEMPERATURE="0.7"
REPETITION_PENALTY="1.0"
MAX_LEN="750"
CHAT_MODE="1"                 # 1 for chat models, 0 for standard LMs
QUERY_FIELD="question"
QUERY_PATH="data/path"  # Relative path to input JSON file
UUID="1"                      # Unique identifier for the session
INF_MODE="zero-shot"          # Options: few-shot | zero-shot

# Run the generation script
python3 sample_gen.py \
  --model-name "$MODEL_NAME" \
  --batch-size 1 \
  --query-limit 5 \
  --n-seq 10 \
  --seed "$RANDOM" \
  --temperature "$TEMPERATURE" \
  --repetition-penalty "$REPETITION_PENALTY" \
  --uuid "$UUID" \
  --max-len "$MAX_LEN" \
  --chat-mode "$CHAT_MODE" \
  --query-field "$QUERY_FIELD" \
  --query-paths "$QUERY_PATH" \
  --inference_mode "$INF_MODE"


