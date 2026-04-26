# 📝 网站编辑指南

## 🗂️ 网站结构说明

```
~/github-website/
├── _config.yml          # Jekyll配置文件
├── index.md             # 首页内容
├── about.md             # 关于页面
├── projects.md          # 项目概览页面
├── blog.md              # 博客页面
├── docs.md              # 文档页面
├── contact.md           # 联系页面
├── _posts/              # 博客文章目录
│   └── 2026-04-26-welcome-to-my-website.md
├── projects/            # 项目详情页面
│   ├── so101.md
│   ├── lerobot.md
│   └── vla-finetune.md
├── assets/              # 静态资源
│   ├── css/style.css    # 样式文件
│   ├── js/main.js       # JavaScript文件
│   └── images/          # 图片目录
├── _layouts/            # 页面布局模板
│   ├── default.html
│   ├── post.html
│   └── project.html
├── _includes/           # 可复用组件
│   ├── header.html      # 页眉
│   └── footer.html      # 页脚
└── *.md                 # 文档文件
```

## ✏️ 如何编辑现有页面

### 1. 编辑首页
```bash
# 进入网站目录
cd ~/github-website

# 编辑首页文件
nano index.md

# 修改内容后保存
# 然后提交更新
git add index.md
git commit -m "更新首页内容"
git push
```

### 2. 编辑关于页面
```bash
# 编辑关于页面
nano about.md

# 在文件中修改个人信息、教育背景、研究经历等
# 保存后提交
git add about.md
git commit -m "更新关于页面"
git push
```

### 3. 编辑项目概览
```bash
# 编辑项目概览页面
nano projects.md

# 修改项目列表和描述
# 保存后提交
git add projects.md
git commit -m "更新项目概览"
git push
```

## 📝 如何添加新博客文章

### 博客文章格式
博客文章需要放在 `_posts/` 目录下，文件名格式：`YYYY-MM-DD-标题.md`

### 创建新博客文章
```bash
# 进入网站目录
cd ~/github-website

# 创建新博客文章
cat > _posts/2026-04-26-我的第一篇技术博客.md << 'EOF'
---
layout: post
title: "我的第一篇技术博客"
date: 2026-04-26 10:00:00 +0800
categories: [机器人, 人工智能]
tags: [SO-101, LeRobot, VLA]
author: Jiaxuan Wang
---

# 我的第一篇技术博客

## 引言
在这里写你的博客引言...

## 技术背景
介绍相关的技术背景...

## 实践过程
详细描述你的实践过程...

```python
# 示例代码
def hello_world():
    print("Hello, World!")
```

## 遇到的问题
描述你遇到的问题和解决方案...

## 总结
总结你的经验和收获...

## 参考资料
- [参考链接1](https://example.com)
- [参考链接2](https://example.com)
EOF

# 提交新博客
git add _posts/2026-04-26-我的第一篇技术博客.md
git commit -m "添加新博客文章：我的第一篇技术博客"
git push
```

## 🚀 如何添加新项目

### 项目页面格式
项目页面需要放在 `projects/` 目录下，文件名格式：`项目名称.md`

### 创建新项目页面
```bash
# 进入网站目录
cd ~/github-website

# 创建新项目页面
cat > projects/新项目名称.md << 'EOF'
---
layout: project
title: "项目名称"
description: "项目简要描述"
github: https://github.com/1905185430/项目仓库
status: 开发中/已完成/维护中
technologies: [Python, PyTorch, ROS, OpenCV]
---

# 项目名称

## 项目简介
详细介绍你的项目...

## 主要功能
- 功能1：描述功能1
- 功能2：描述功能2
- 功能3：描述功能3

## 技术架构
```bash
项目结构说明...
```

## 安装方法
```bash
# 克隆仓库
git clone https://github.com/1905185430/项目仓库.git

# 安装依赖
pip install -r requirements.txt

# 运行项目
python main.py
```

## 使用示例
```python
# 使用示例代码
from project import MainClass

# 初始化
project = MainClass()

# 运行
result = project.run()
print(result)
```

## 演示效果
![项目截图](/assets/images/项目截图.png)

## 相关论文
- [论文标题](https://arxiv.org/abs/论文ID)

## 团队成员
- 成员1：负责内容
- 成员2：负责内容

## 许可证
本项目采用 MIT 许可证。
EOF

# 提交新项目
git add projects/新项目名称.md
git commit -m "添加新项目：项目名称"
git push
```

## 🎨 如何添加图片

### 1. 添加图片到网站
```bash
# 进入网站目录
cd ~/github-website

# 创建图片目录（如果不存在）
mkdir -p assets/images

# 复制图片到网站
cp ~/图片/你的图片.jpg assets/images/

# 提交图片
git add assets/images/你的图片.jpg
git commit -m "添加图片：你的图片.jpg"
git push
```

### 2. 在页面中引用图片
```markdown
# 在Markdown中引用图片
![图片描述](/assets/images/你的图片.jpg)

# 示例
![个人照片](/assets/images/profile.jpg)
![项目截图](/assets/images/project-screenshot.png)
```

## 🎨 如何修改网站样式

### 1. 修改颜色主题
编辑 `assets/css/style.css` 文件中的CSS变量：

```bash
# 编辑样式文件
nano assets/css/style.css
```

找到 `:root` 部分，修改颜色变量：

```css
:root {
    /* 修改主色调 */
    --primary-color: #2563eb;    /* 蓝色 */
    --primary-dark: #1d4ed8;     /* 深蓝色 */
    --primary-light: #3b82f6;    /* 浅蓝色 */
    
    /* 修改次要颜色 */
    --secondary-color: #64748b;  /* 灰色 */
    
    /* 修改强调色 */
    --accent-color: #f59e0b;     /* 橙色 */
}
```

### 2. 修改字体
在CSS文件中修改字体设置：

```css
body {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

/* 修改代码字体 */
code {
    font-family: 'Roboto Mono', monospace;
}
```

### 3. 修改布局
编辑 `_layouts/` 目录下的HTML文件：

```bash
# 编辑默认布局
nano _layouts/default.html

# 编辑博客布局
nano _layouts/post.html

# 编辑项目布局
nano _layouts/project.html
```

## ⚙️ 如何修改网站配置

### 1. 修改网站基本信息
编辑 `_config.yml` 文件：

```bash
# 编辑配置文件
nano _config.yml
```

修改以下内容：

```yaml
# 修改网站标题
title: "你的名字 | 你的职位"

# 修改网站描述
description: "你的网站描述"

# 修改作者信息
name: "你的名字"
email: "你的邮箱"

# 修改社交媒体链接
github_username: 你的GitHub用户名
linkedin_username: 你的LinkedIn用户名
twitter_username: 你的Twitter用户名
```

### 2. 修改导航菜单
在 `_config.yml` 中修改 `header_pages` 部分：

```yaml
# 修改导航菜单
header_pages:
  - about.md
  - projects.md
  - blog.md
  - docs.md
  - contact.md
  - 新页面.md  # 添加新页面
```

## 🔄 如何更新网站

### 更新流程
```bash
# 1. 进入网站目录
cd ~/github-website

# 2. 查看当前状态
git status

# 3. 添加所有更改
git add .

# 4. 提交更改
git commit -m "更新说明"

# 5. 推送到GitHub
git push

# 6. 等待GitHub Pages构建（通常1-3分钟）
# 访问 https://1905185430.github.io 查看更新
```

### 查看构建状态
```bash
# 查看GitHub Pages构建状态
gh api repos/1905185430/1905185430.github.io/pages

# 查看构建日志
gh run list --repo 1905185430/1905185430.github.io
```

## 🛠️ 本地预览网站

### 安装Jekyll
```bash
# 安装Ruby和Jekyll
sudo apt update
sudo apt install ruby ruby-dev build-essential

# 安装Jekyll
gem install jekyll bundler

# 安装依赖
cd ~/github-website
bundle install
```

### 本地运行
```bash
# 启动本地服务器
bundle exec jekyll serve

# 访问 http://localhost:4000
# 按 Ctrl+C 停止服务器
```

## ❓ 常见问题解答

### Q1: 网站更新后没有立即显示？
A1: GitHub Pages需要1-3分钟构建，请耐心等待。可以查看构建状态：
```bash
gh api repos/1905185430/1905185430.github.io/pages
```

### Q2: 图片无法显示？
A2: 检查图片路径是否正确：
1. 图片应放在 `assets/images/` 目录
2. 引用格式：`![描述](/assets/images/图片名.jpg)`
3. 检查文件名大小写是否一致

### Q3: 如何添加新页面？
A3: 
1. 创建新的 `.md` 文件
2. 在文件开头添加YAML front matter：
```yaml
---
layout: default
title: "页面标题"
permalink: /页面路径/
---
```
3. 在 `_config.yml` 的 `header_pages` 中添加页面路径

### Q4: 如何修改网站域名？
A4: 
1. 购买域名
2. 在域名提供商设置CNAME记录
3. 在仓库中创建 `CNAME` 文件，内容为你的域名
4. 在 `_config.yml` 中修改 `url` 为你的域名

### Q5: 如何备份网站？
A5: 
```bash
# 备份整个网站目录
tar -czf ~/website-backup-$(date +%Y%m%d).tar.gz ~/github-website

# 或者使用Git备份
git clone https://github.com/1905185430/1905185430.github.io.git ~/website-backup
```

## 📚 学习资源

### Markdown语法
- [Markdown指南](https://guides.github.com/features/mastering-markdown/)
- [Markdown教程](https://www.markdowntutorial.com/)

### Jekyll文档
- [Jekyll官方文档](https://jekyllrb.com/docs/)
- [Jekyll模板](https://jekyllrb.com/docs/themes/)

### GitHub Pages
- [GitHub Pages文档](https://docs.github.com/en/pages)
- [GitHub Pages主题](https://pages.github.com/themes/)

## 🆘 获取帮助

### 技术支持
- **GitHub Issues**: 在仓库中提交问题
- **邮箱**: 1905185430@qq.com
- **GitHub**: https://github.com/1905185430

### 社区支持
- **Stack Overflow**: 搜索相关问题
- **GitHub Discussions**: 参与讨论
- **Reddit**: r/webdev, r/github

---

**记住**: 每次修改后都要 `git add . && git commit -m "说明" && git push` 来更新网站！

**祝你的网站越来越完善！** 🚀