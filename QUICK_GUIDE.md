# 🎯 网站使用指南

## 🌐 访问你的网站
**https://1905185430.github.io**

## 📝 如何更新网站

### 1. 修改现有页面
```bash
cd ~/github-website

# 编辑首页
nano index.md

# 编辑关于页面
nano about.md

# 编辑项目页面
nano projects.md
```

### 2. 添加新博客文章
```bash
# 创建新文章
cat > _posts/2026-04-26-文章标题.md << 'EOF'
---
layout: post
title: "你的文章标题"
date: 2026-04-26 10:00:00 +0800
categories: [机器人, 人工智能]
tags: [SO-101, LeRobot, VLA]
author: Jiaxuan Wang
---

在这里写你的文章内容...

## 小标题

正文内容...

### 代码示例
```python
print("Hello, World!")
```

## 总结
文章总结...
EOF
```

### 3. 添加新项目
```bash
# 创建新项目页面
cat > projects/新项目名.md << 'EOF'
---
layout: project
title: "项目名称"
description: "项目描述"
github: https://github.com/1905185430/项目仓库
status: 开发中/已完成/维护中
technologies: [Python, PyTorch, ROS]
---

# 项目名称

## 项目简介
简要介绍项目...

## 主要功能
- 功能1
- 功能2
- 功能3

## 技术架构
```bash
项目结构说明...
```

## 使用方法
```bash
# 安装
pip install 项目名

# 使用
python main.py
```

## 演示效果
![项目截图](/assets/images/项目截图.png)

## 相关链接
- [GitHub仓库](项目GitHub链接)
- [文档](项目文档链接)
EOF
```

### 4. 更新网站
```bash
# 添加所有更改
git add .

# 提交更改
git commit -m "更新网站内容"

# 推送到GitHub
git push

# 等待几分钟，网站会自动更新
```

## 🎨 自定义网站

### 修改颜色主题
编辑 `assets/css/style.css` 文件中的CSS变量：
```css
:root {
    --primary-color: #2563eb;    /* 主色调 */
    --secondary-color: #64748b;  /* 次要颜色 */
    --accent-color: #f59e0b;     /* 强调色 */
}
```

### 修改导航菜单
编辑 `_config.yml` 文件中的 `header_pages` 部分：
```yaml
header_pages:
  - about.md
  - projects.md
  - blog.md
  - docs.md
  - contact.md
```

### 添加社交媒体链接
编辑 `_includes/footer.html` 文件中的社交媒体部分。

## 📊 网站状态检查

### 检查网站是否在线
```bash
curl -I https://1905185430.github.io
```

### 检查GitHub Pages构建状态
```bash
gh api repos/1905185430/1905185430.github.io/pages
```

### 查看网站日志
访问：https://github.com/1905185430/1905185430.github.io/actions

## 🔧 常见问题

### Q: 网站更新后没有立即显示？
A: GitHub Pages需要几分钟构建，请耐心等待。

### Q: 如何添加图片？
A: 将图片放在 `assets/images/` 目录下，然后在Markdown中引用：
```markdown
![图片描述](/assets/images/图片文件名.jpg)
```

### Q: 如何修改网站标题？
A: 编辑 `_config.yml` 文件中的 `title` 字段。

### Q: 如何添加Google Analytics？
A: 在 `_config.yml` 中添加：
```yaml
google_analytics: UA-XXXXXXXX-X
```

## 📚 学习资源

### Jekyll文档
https://jekyllrb.com/docs/

### GitHub Pages文档
https://docs.github.com/en/pages

### Markdown指南
https://guides.github.com/features/mastering-markdown/

## 🎉 恭喜！
你的个人网站已经成功制作完成！现在可以开始完善内容，为你的求学深造增添亮点！

**记住**: 定期更新网站内容，让它保持活跃和有价值！

---

**祝你的网站展示顺利！** 🚀