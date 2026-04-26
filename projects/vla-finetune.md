---
layout: project
title: "VLA Model Fine-tuning Pipeline"
description: "Tools and pipelines for fine-tuning Vision-Language-Action models"
github: https://github.com/1905185430/vla-finetune
status: Active Development
technologies: [Python, PyTorch, Transformers, SmolVLA, LoRA]
---

# VLA Model Fine-tuning Pipeline

## Overview

This project provides a complete pipeline for fine-tuning Vision-Language-Action (VLA) models like SmolVLA for specific robotic tasks. It includes data preparation, training infrastructure, and evaluation frameworks.

## Key Features

### 1. Data Preparation
- Dataset conversion tools
- Data augmentation
- Quality checking
- Format validation

### 2. Training Infrastructure
- Distributed training support
- Mixed precision training
- Gradient checkpointing
- Checkpoint management

### 3. Model Architectures
- SmolVLA fine-tuning
- LoRA adaptation
- Custom model heads
- Multi-modal fusion

### 4. Evaluation Framework
- Real-time inference
- Performance metrics
- Visualization tools
- A/B testing

## VLA Models

### SmolVLA
A small but powerful Vision-Language-Action model:
- **Vision Encoder**: SigLIP (400M parameters)
- **Language Model**: SmolLM (135M parameters)
- **Action Decoder**: Transformer decoder
- **Total Size**: ~500M parameters

### Supported Tasks
- **Pick and Place**: Object manipulation
- **Tool Use**: Using tools to complete tasks
- **Multi-step Tasks**: Complex manipulation sequences
- **Language-conditioned**: Following natural language instructions

## Installation

```bash
# Install dependencies
pip install torch torchvision transformers
pip install accelerate peft
pip install wandb  # Optional for experiment tracking

# Clone the repository
git clone https://github.com/1905185430/vla-finetune.git
cd vla-finetune
pip install -e .
```

## Quick Start

### 1. Prepare Dataset
```bash
# Convert dataset to VLA format
python scripts/prepare_dataset.py \
    --input-dir /path/to/raw/data \
    --output-dir /path/to/vla/dataset \
    --task "pick_and_place"
```

### 2. Fine-tune Model
```bash
# Fine-tune SmolVLA with LoRA
python scripts/train.py \
    --model-name "smolvla" \
    --dataset-path "/path/to/vla/dataset" \
    --output-dir "outputs/smolvla_finetuned" \
    --lora-rank 16 \
    --batch-size 8 \
    --num-epochs 10
```

### 3. Evaluate Model
```bash
# Evaluate fine-tuned model
python scripts/evaluate.py \
    --model-path "outputs/smolvla_finetuned" \
    --test-dataset "/path/to/test/data" \
    --output-dir "evaluation_results"
```

## Configuration

### Training Configuration
```yaml
# config/training.yaml
model:
  name: "smolvla"
  pretrained: "HuggingFaceTB/SmolVLA-Base"
  lora:
    rank: 16
    alpha: 32
    dropout: 0.1

dataset:
  path: "/path/to/dataset"
  task: "pick_and_place"
  augmentation: true

training:
  batch_size: 8
  num_epochs: 10
  learning_rate: 1e-4
  warmup_steps: 100
  weight_decay: 0.01
  gradient_checkpointing: true
  mixed_precision: "bf16"

evaluation:
  batch_size: 4
  num_episodes: 10
  metrics: ["success_rate", "completion_time", "path_efficiency"]
```

## Usage Examples

### Custom Training Script
```python
from vla_finetune import VLATrainer, SmolVLA
from vla_finetune.dataset import VLADataset

# Load model
model = SmolVLA.from_pretrained("HuggingFaceTB/SmolVLA-Base")

# Load dataset
dataset = VLADataset(
    path="/path/to/dataset",
    task="pick_and_place"
)

# Create trainer
trainer = VLATrainer(
    model=model,
    dataset=dataset,
    config={
        "batch_size": 8,
        "learning_rate": 1e-4,
        "num_epochs": 10
    }
)

# Start training
trainer.train()
```

### Inference Script
```python
from vla_finetune import SmolVLA
import torch

# Load fine-tuned model
model = SmolVLA.from_pretrained("outputs/smolvla_finetuned")
model.eval()

# Prepare input
image = torch.randn(1, 3, 224, 224)  # Camera image
language = "Pick up the red cube"     # Language instruction

# Run inference
with torch.no_grad():
    actions = model.generate(
        image=image,
        language=language,
        max_length=10
    )

print(f"Predicted actions: {actions}")
```

## Performance Optimization

### Memory Optimization
- **Gradient Checkpointing**: Reduce memory usage by 60%
- **Mixed Precision**: Use BF16 for faster training
- **LoRA**: Train only 0.1% of parameters

### Training Speed
- **Distributed Training**: Multi-GPU support
- **Data Loading**: Parallel data loading
- **Compilation**: PyTorch 2.0 compilation

## Results

### Benchmark Performance
| Model | Task | Success Rate | Training Time |
|-------|------|--------------|---------------|
| SmolVLA-Base | Pick and Place | 45% | - |
| SmolVLA-LoRA | Pick and Place | 78% | 2 hours |
| SmolVLA-LoRA | Tool Use | 65% | 3 hours |

### Real-world Deployment
- **Inference Time**: 50ms per action
- **Memory Usage**: 2GB GPU memory
- **Success Rate**: 70-80% on simple tasks

## Troubleshooting

### Common Issues

1. **Out of memory errors**
   ```bash
   # Reduce batch size
   python scripts/train.py --batch-size 4
   
   # Enable gradient checkpointing
   python scripts/train.py --gradient-checkpointing
   ```

2. **Training instability**
   ```bash
   # Reduce learning rate
   python scripts/train.py --learning-rate 5e-5
   
   # Increase warmup steps
   python scripts/train.py --warmup-steps 200
   ```

3. **Poor convergence**
   - Check data quality
   - Verify task alignment
   - Adjust LoRA rank
   - Increase training epochs

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License.

## Acknowledgments

- **HuggingFace Team** for SmolVLA and Transformers
- **LeRobot Community** for dataset tools
- **Dian Team** for testing and validation

---

*For more information, visit the [GitHub repository](https://github.com/1905185430/vla-finetune).*