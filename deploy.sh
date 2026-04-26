#!/bin/bash

# Jiaxuan Wang's Personal Website - Deployment Script
# This script builds and deploys the website to GitHub Pages

set -e  # Exit on error

echo "🚀 Starting deployment process..."

# Configuration
REPO_URL="git@github.com:1905185430/1905185430.github.io.git"
BRANCH="main"
BUILD_DIR="_site"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check prerequisites
check_prerequisites() {
    log_info "Checking prerequisites..."
    
    # Check Ruby
    if ! command -v ruby &> /dev/null; then
        log_error "Ruby is not installed. Please install Ruby 2.7 or higher."
        exit 1
    fi
    
    # Check Jekyll
    if ! command -v jekyll &> /dev/null; then
        log_warn "Jekyll not found. Installing..."
        gem install jekyll
    fi
    
    # Check Bundler
    if ! command -v bundle &> /dev/null; then
        log_warn "Bundler not found. Installing..."
        gem install bundler
    fi
    
    log_info "Prerequisites check completed."
}

# Install dependencies
install_dependencies() {
    log_info "Installing dependencies..."
    bundle install
    log_info "Dependencies installed."
}

# Build the website
build_website() {
    log_info "Building website..."
    
    # Clean previous build
    if [ -d "$BUILD_DIR" ]; then
        log_warn "Cleaning previous build..."
        rm -rf "$BUILD_DIR"
    fi
    
    # Build with Jekyll
    bundle exec jekyll build
    
    if [ ! -d "$BUILD_DIR" ]; then
        log_error "Build failed. $BUILD_DIR directory not found."
        exit 1
    fi
    
    log_info "Website built successfully."
}

# Deploy to GitHub Pages
deploy_to_github() {
    log_info "Deploying to GitHub Pages..."
    
    # Check if git repository exists
    if [ ! -d ".git" ]; then
        log_warn "Initializing git repository..."
        git init
        git remote add origin "$REPO_URL"
    fi
    
    # Add all files
    git add .
    
    # Commit changes
    COMMIT_MSG="Update website $(date +'%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG" || log_warn "No changes to commit."
    
    # Push to GitHub
    log_info "Pushing to GitHub..."
    git push origin "$BRANCH" --force
    
    log_info "Deployment completed successfully!"
    log_info "Your website will be available at: https://1905185430.github.io"
    log_info "Note: It may take a few minutes for changes to appear."
}

# Main deployment function
main() {
    echo "=========================================="
    echo "  Personal Website Deployment Script"
    echo "=========================================="
    echo ""
    
    # Check if we're in the right directory
    if [ ! -f "_config.yml" ]; then
        log_error "Please run this script from the website root directory."
        exit 1
    fi
    
    # Run deployment steps
    check_prerequisites
    install_dependencies
    build_website
    deploy_to_github
    
    echo ""
    echo "=========================================="
    echo "  Deployment completed successfully!"
    echo "=========================================="
}

# Run main function
main "$@"