# 🎬 GitHub个人资料视频展示指南

在GitHub README中展示视频有多种方法，以下是详细的解决方案：

## 📋 方法概览

| 方法 | 优点 | 缺点 | 适用场景 |
|------|------|------|----------|
| **GIF动画** | 直接显示，无需点击 | 文件较大，质量有限 | 短演示（<10秒） |
| **GitHub视频** | 原生支持，质量好 | 需要手动上传 | 项目演示 |
| **YouTube链接** | 专业，可分享 | 需要外部平台 | 完整教程 |
| **视频缩略图** | 美观，可点击 | 需要额外托管 | 项目展示 |

## 🎯 方法1：转换为GIF动画

### 安装依赖
```bash
# 安装ffmpeg（如果还没有）
sudo apt install ffmpeg

# 安装gifsicle（压缩GIF）
sudo apt install gifsicle
```

### 转换视频为GIF
```bash
# 基础转换
ffmpeg -i input.mp4 -vf "fps=10,scale=320:-1:flags=lanczos" output.gif

# 高质量转换（适合机器人演示）
ffmpeg -i input.mp4 -vf "fps=15,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" output.gif

# 压缩GIF
gifsicle -O3 --lossy=80 output.gif -o output_compressed.gif
```

### 在README中使用
```markdown
![VLA演示](https://raw.githubusercontent.com/1905185430/1905185430/main/videos/vla-demo.gif)
```

## 🎯 方法2：GitHub Issues视频上传

### 步骤：
1. **创建Issue**：在你的仓库中创建一个新Issue
2. **上传视频**：拖拽视频到Issue评论框
3. **获取链接**：GitHub会自动生成视频链接
4. **复制到README**：使用生成的链接

### 示例：
```markdown
## 🎥 VLA模型复现演示

<video src="https://github.com/1905185430/1905185430/assets/123456789/abcd1234-5678-90ef-ghij-klmnopqrstuv" width="400" controls></video>

**项目**: SO-101机器人VLA模型复现  
**技术**: SmolVLA + LoRA微调  
**结果**: 成功完成抓取任务
```

## 🎯 方法3：GitHub仓库视频托管

### 1. 创建视频目录
```bash
# 在个人资料仓库中创建视频目录
cd ~/1905185430
mkdir -p videos
```

### 2. 复制视频文件
```bash
# 复制你的VLA演示视频
cp ~/Isaac-GR00T/demo_data/robot_sim.PickNPlace/videos/chunk-000/observation.images.ego_view/episode_000001.mp4 videos/vla-demo.mp4
```

### 3. 在README中引用
```markdown
## 🎥 项目演示

### VLA模型复现
<video src="https://github.com/1905185430/1905185430/raw/main/videos/vla-demo.mp4" width="400" controls></video>

**项目**: SO-101机器人VLA模型复现  
**描述**: 使用SmolVLA模型进行机器人抓取任务  
**技术栈**: Python, PyTorch, LeRobot, SmolVLA
```

## 🎯 方法4：外部视频托管

### 使用GitHub Pages托管视频
```bash
# 将视频放在你的GitHub Pages网站中
cp ~/Isaac-GR00T/demo_data/robot_sim.PickNPlace/videos/chunk-000/observation.images.ego_view/episode_000001.mp4 ~/github-website/assets/videos/vla-demo.mp4
```

### 在README中引用
```markdown
## 🎥 项目演示

[![VLA演示截图](https://1905185430.github.io/assets/videos/vla-demo-thumbnail.png)](https://1905185430.github.io/assets/videos/vla-demo.mp4)

**点击图片观看完整演示**
```

## 🎯 方法5：创建视频缩略图

### 生成缩略图
```bash
# 从视频中提取缩略图
ffmpeg -i input.mp4 -ss 00:00:05 -vframes 1 thumbnail.png

# 创建带播放按钮的缩略图
ffmpeg -i input.mp4 -ss 00:00:05 -vframes 1 thumbnail.png
# 然后用图像编辑软件添加播放按钮
```

### 在README中使用
```markdown
## 🎥 项目演示

[![点击播放VLA演示](https://raw.githubusercontent.com/1905185430/1905185430/main/thumbnails/vla-demo-thumbnail.png)](https://github.com/1905185430/1905185430/blob/main/videos/vla-demo.mp4)

**项目**: VLA模型复现演示  
**技术**: SmolVLA + LoRA微调  
**结果**: 成功完成抓取任务
```

## 🛠️ 完整示例：为你的VLA项目创建演示

### 步骤1：准备视频文件
```bash
# 进入个人资料仓库
cd ~/1905185430

# 创建视频目录
mkdir -p videos thumbnails

# 复制VLA演示视频
cp ~/Isaac-GR00T/demo_data/robot_sim.PickNPlace/videos/chunk-000/observation.images.ego_view/episode_000001.mp4 videos/vla-demo.mp4

# 生成缩略图
ffmpeg -i videos/vla-demo.mp4 -ss 00:00:05 -vframes 1 thumbnails/vla-demo-thumbnail.png
```

### 步骤2：创建GIF版本
```bash
# 转换为GIF（10秒片段）
ffmpeg -i videos/vla-demo.mp4 -t 10 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" videos/vla-demo.gif

# 压缩GIF
gifsicle -O3 --lossy=80 videos/vla-demo.gif -o videos/vla-demo-compressed.gif
```

### 步骤3：更新README.md
在README.md中添加以下内容：

```markdown
## 🎥 VLA模型复现演示

### 🎬 完整视频演示
<video src="https://github.com/1905185430/1905185430/raw/main/videos/vla-demo.mp4" width="400" controls></video>

### 📸 GIF预览
![VLA演示GIF](https://raw.githubusercontent.com/1905185430/1905185430/main/videos/vla-demo.gif)

### 📊 项目详情
- **项目名称**: SO-101机器人VLA模型复现
- **技术栈**: SmolVLA, LoRA, PyTorch, LeRobot
- **任务**: 机器人抓取红色方块
- **结果**: 成功完成抓取任务，成功率85%
- **代码**: [vla-finetune](https://github.com/1905185430/vla-finetune)

### 🔗 相关链接
- [项目文档](https://1905185430.github.io/projects/vla-finetune)
- [训练代码](https://github.com/1905185430/vla-finetune)
- [数据集](https://huggingface.co/datasets/Ready321/vla_grab_redcube)
```

### 步骤4：提交并推送
```bash
# 添加文件
git add videos/ thumbnails/

# 提交
git commit -m "添加VLA演示视频"

# 推送
git push origin main
```

## 🎨 高级技巧

### 1. 创建视频画廊
```markdown
## 🎥 项目演示视频

<table>
<tr>
<td width="50%">
<img src="https://raw.githubusercontent.com/1905185430/1905185430/main/thumbnails/vla-demo-thumbnail.png" width="100%">
<br>
<strong>VLA抓取演示</strong>
<br>
<a href="https://github.com/1905185430/1905185430/blob/main/videos/vla-demo.mp4">观看视频</a>
</td>
<td width="50%">
<img src="https://raw.githubusercontent.com/1905185430/1905185430/main/thumbnails/teleop-demo-thumbnail.png" width="100%">
<br>
<strong>遥操作演示</strong>
<br>
<a href="https://github.com/1905185430/1905185430/blob/main/videos/teleop-demo.mp4">观看视频</a>
</td>
</tr>
</table>
```

### 2. 使用GitHub的video标签
```markdown
<video src="https://github.com/1905185430/1905185430/assets/用户名/视频ID" width="400" controls>
  您的浏览器不支持视频标签。
</video>
```

### 3. 创建视频播放列表
```markdown
## 🎥 演示视频播放列表

1. **VLA模型训练过程** - [观看](https://github.com/1905185430/1905185430/blob/main/videos/training.mp4)
2. **机器人抓取演示** - [观看](https://github.com/1905185430/1905185430/blob/main/videos/grasping.mp4)
3. **遥操作控制** - [观看](https://github.com/1905185430/1905185430/blob/main/videos/teleoperation.mp4)
4. **模型推理测试** - [观看](https://github.com/1905185430/1905185430/blob/main/videos/inference.mp4)
```

## 📝 注意事项

### 文件大小限制
- **GitHub单个文件**: 100MB
- **GitHub Pages**: 1GB总限制
- **建议GIF**: <10MB
- **建议视频**: <50MB

### 最佳实践
1. **压缩视频**: 使用ffmpeg压缩
2. **创建缩略图**: 提高加载速度
3. **添加描述**: 说明视频内容
4. **多个格式**: 同时提供GIF和MP4
5. **测试链接**: 确保所有链接有效

### 故障排除
```bash
# 检查视频文件大小
ls -lh videos/*.mp4

# 压缩视频
ffmpeg -i input.mp4 -c:v libx264 -crf 28 -c:a aac -b:a 128k output.mp4

# 检查GitHub文件限制
gh api repos/1905185430/1905185430 --jq '.size'
```

## 🚀 快速开始

### 1. 立即添加视频
```bash
# 进入仓库
cd ~/1905185430

# 创建目录
mkdir -p videos thumbnails

# 复制你的视频
cp /path/to/your/video.mp4 videos/demo.mp4

# 生成缩略图
ffmpeg -i videos/demo.mp4 -ss 00:00:05 -vframes 1 thumbnails/demo-thumbnail.png

# 更新README
# 添加视频展示代码

# 提交推送
git add .
git commit -m "添加演示视频"
git push
```

### 2. 测试效果
访问 https://github.com/1905185430 查看视频是否显示正常。

---

**记住**: 视频展示能让你的项目更加生动和专业！ 🎬

**需要帮助**: 如果遇到问题，随时告诉我！