#!/bin/bash

# Project Configuration
PROJECT_NAME="AI-Powered Machine Learning Model Controller"
PROJECT_DIR=/opt/ml-controller
MODEL_DIR=$PROJECT_DIR/models
DATA_DIR=$PROJECT_DIR/data

# AI Framework Configuration
AI_FRAMEWORK=tensorflow
FRAMEWORK_VERSION=2.5.0

# Model Configuration
MODEL_NAME=my_model
MODEL_TYPE=neural_network
MODEL_INPUT_SHAPE=(28, 28)
MODEL_OUTPUT_SHAPE=10

# Training Configuration
TRAIN_BATCH_SIZE=32
TRAIN_EPOCHS=10
TRAIN_LEARNING_RATE=0.001

# Data Configuration
DATA_SOURCE=/data/datasets/mnist
DATA_FORMAT=csv

# Create project directory
mkdir -p $PROJECT_DIR
mkdir -p $MODEL_DIR
mkdir -p $DATA_DIR

# Install AI framework
pip install $AI_FRAMEWORK==$FRAMEWORK_VERSION

# Create model directory
mkdir -p $MODEL_DIR/$MODEL_NAME

# Create data directories
mkdir -p $DATA_DIR/raw
mkdir -p $DATA_DIR/processed

# Set environment variables
export AI_FRAMEWORK=$AI_FRAMEWORK
export FRAMEWORK_VERSION=$FRAMEWORK_VERSION
export MODEL_NAME=$MODEL_NAME
export MODEL_TYPE=$MODEL_TYPE
export MODEL_INPUT_SHAPE=$MODEL_INPUT_SHAPE
export MODEL_OUTPUT_SHAPE=$MODEL_OUTPUT_SHAPE
export TRAIN_BATCH_SIZE=$TRAIN_BATCH_SIZE
export TRAIN_EPOCHS=$TRAIN_EPOCHS
export TRAIN_LEARNING_RATE=$TRAIN_LEARNING_RATE
export DATA_SOURCE=$DATA_SOURCE
export DATA_FORMAT=$DATA_FORMAT

echo "Project configuration complete!"