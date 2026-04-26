# Jiaxuan Wang's Personal Website

This repository contains the source code for my personal website, built with Jekyll and hosted on GitHub Pages.

## Website URL

**https://1905185430.github.io**

## Features

- **Responsive Design**: Works on desktop, tablet, and mobile devices
- **Project Showcase**: Detailed project pages with descriptions and links
- **Technical Blog**: Blog posts on robotics, AI, and software development
- **Documentation**: Comprehensive guides and tutorials
- **Contact Information**: Easy ways to get in touch

## Local Development

### Prerequisites

- Ruby (version 2.7 or higher)
- Jekyll (version 4.0 or higher)
- Bundler

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/1905185430/1905185430.github.io.git
   cd 1905185430.github.io
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Start local server**
   ```bash
   bundle exec jekyll serve
   ```

4. **View in browser**
   Open http://localhost:4000 in your browser

### Build for Production

```bash
bundle exec jekyll build
```

The built site will be in the `_site` directory.

## Deployment

This site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch.

### Manual Deployment

1. **Build the site**
   ```bash
   bundle exec jekyll build
   ```

2. **Push to GitHub Pages**
   ```bash
   git add .
   git commit -m "Update website"
   git push origin main
   ```

## Adding Content

### Blog Posts

1. Create a new file in `_posts/` with the format:
   ```
   YYYY-MM-DD-title.md
   ```

2. Add front matter:
   ```yaml
   ---
   layout: post
   title: "Your Post Title"
   date: YYYY-MM-DD HH:MM:SS +0800
   categories: [category1, category2]
   tags: [tag1, tag2]
   author: Jiaxuan Wang
   ---
   ```

3. Write your content in Markdown.

### Project Pages

1. Create a new file in `projects/` with the format:
   ```
   project-name.md
   ```

2. Add front matter:
   ```yaml
   ---
   layout: project
   title: "Project Title"
   description: "Project description"
   github: https://github.com/1905185430/project-repo
   status: Active Development
   technologies: [Python, PyTorch, OpenCV]
   ---
   ```

3. Write your project documentation in Markdown.

## Customization

### Colors and Styling

Edit `assets/css/style.css` to customize:
- Colors (CSS variables in `:root`)
- Typography
- Spacing
- Component styles

### Navigation

Edit `_config.yml` to modify navigation:
```yaml
header_pages:
  - about.md
  - projects.md
  - blog.md
  - docs.md
  - contact.md
```

### Social Links

Edit `_includes/footer.html` to update social media links.

## Structure

```
.github-website/
├── _config.yml          # Jekyll configuration
├── _layouts/            # Page layouts
├── _includes/           # Reusable components
├── _posts/              # Blog posts
├── assets/              # CSS, JS, images
├── projects/            # Project pages
├── index.md             # Homepage
├── about.md             # About page
├── projects.md          # Projects overview
├── blog.md              # Blog listing
├── docs.md              # Documentation
└── contact.md           # Contact page
```

## Technologies Used

- **Jekyll**: Static site generator
- **GitHub Pages**: Hosting
- **CSS3**: Styling with custom properties
- **JavaScript**: Interactive features
- **Font Awesome**: Icons
- **Google Fonts**: Typography

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## Contributing

This is a personal website, but suggestions are welcome! Please open an issue or pull request.

## License

This project is open source. Feel free to use it as a template for your own website.

## Contact

- **Email**: 1905185430@qq.com
- **GitHub**: [github.com/1905185430](https://github.com/1905185430)

---

*Built with ❤️ using Jekyll and GitHub Pages*