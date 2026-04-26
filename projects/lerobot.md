---
layout: project
title: "LeRobot Framework Contributions"
description: "Contributions to HuggingFace's LeRobot framework for robot learning"
github: https://github.com/1905185430/lerobot_workdocs
status: Active Development
technologies: [Python, PyTorch, HuggingFace, Datasets, Transformers]
---

# LeRobot Framework Contributions

## Overview

LeRobot is HuggingFace's framework for robot learning, providing standardized tools for dataset management, policy training, and model deployment. I contribute to this project and maintain comprehensive documentation.

## Key Contributions

### 1. Dataset Management Tools
- Dataset conversion utilities
- Quality checking scripts
- Visualization tools
- HuggingFace Hub integration

### 2. Training Pipeline Improvements
- Configuration management
- Training scripts for various policies
- Hyperparameter tuning utilities
- Distributed training support

### 3. Deployment Tools
- Model export utilities
- Inference optimization
- Edge device deployment
- Real-time control scripts

### 4. Documentation
- Comprehensive guides
- API documentation
- Troubleshooting guides
- Example notebooks

## Features

### Dataset Format
LeRobot uses a standardized dataset format:
```
dataset/
├── data/
│   ├── episode_000000.parquet
│   ├── episode_000001.parquet
│   └── ...
├── videos/
│   ├── observation.images.top/
│   │   ├── episode_000000.mp4
│   │   └── ...
│   └── observation.images.wrist/
│       ├── episode_000000.mp4
│       └── ...
├── meta/
│   ├── info.json
│   └── stats.json
└── tasks.parquet
```

### Supported Policies
- **ACT**: Action Chunking with Transformers
- **SmolVLA**: Small Vision-Language-Action model
- **Diffusion Policy**: Diffusion-based policy
- **TD-MPC**: Temporal Difference Model Predictive Control

## Usage Examples

### Dataset Conversion
```python
from lerobot.scripts.convert_dataset import convert_dataset

# Convert from custom format to LeRobot format
convert_dataset(
    input_path="/path/to/custom/data",
    output_path="/path/to/lerobot/dataset",
    fps=30
)
```

### Policy Training
```bash
# Train ACT policy
python -m lerobot.scripts.train \
    --dataset.repo_id=your-username/your-dataset \
    --policy=act \
    --output_dir=outputs/act_training
```

### Model Evaluation
```python
from lerobot.scripts.evaluate import evaluate_policy

# Evaluate trained policy
results = evaluate_policy(
    policy_path="outputs/act_training/checkpoints/005000",
    dataset_repo_id="your-username/your-dataset",
    num_episodes=10
)
```

## Configuration

### Training Configuration
```yaml
# training_config.yaml
dataset:
  repo_id: "your-username/your-dataset"
  root: "/path/to/local/dataset"

policy:
  type: "act"
  chunk_size: 10
  n_action_steps: 10
  
training:
  batch_size: 8
  num_steps: 10000
  lr: 1e-4
  save_freq: 1000
```

## Integration with SO-101

The LeRobot framework integrates seamlessly with the SO-101 robot system:

1. **Data Collection**: SO-101 records data in LeRobot format
2. **Training**: LeRobot trains policies on collected data
3. **Deployment**: Trained policies are deployed back to SO-101

## Troubleshooting

### Common Issues

1. **Dataset loading errors**
   ```python
   # Check dataset structure
   from lerobot.common.datasets.lerobot_dataset import LeRobotDataset
   dataset = LeRobotDataset("your-username/your-dataset")
   print(f"Number of episodes: {dataset.num_episodes}")
   ```

2. **Training convergence issues**
   - Reduce learning rate
   - Increase batch size
   - Check data quality
   - Verify policy configuration

3. **Deployment errors**
   - Verify model compatibility
   - Check input/output shapes
   - Test with dummy data first

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## License

This project is licensed under the Apache 2.0 License.

## Acknowledgments

- **HuggingFace Team** for the LeRobot framework
- **LeRobot Community** for contributions and feedback
- **Dian Team** for testing and validation

---

*For more information, visit the [GitHub repository](https://github.com/1905185430/lerobot_workdocs).*