# Barebone - Minimal wnode WebApp

A minimal starter template for building web applications with the _wnode_ framework. This project demonstrates the basic structure and anatomy of a wnode webapp, making it an ideal starting point for developers who want to build their own wnode-based applications.

## What is wnode?

wnode is a web application framework that uses a component-based architecture with server-side HTML generation and client-side interaction control. It emphasizes code reusability through "palets" (reusable HTML fragments) and provides a clean separation between view logic and control logic.

## Project Structure

```
barebone/
├── themes/default/
│   ├── layout/
│   │   └── default.xs          # Default layout template
│   ├── pages/
│   │   └── index.xs            # Home page
│   └── palets/                 # Reusable HTML fragments (empty in this minimal app)
├── assets/                     # Static files (CSS, JS, images)
├── doc/references/             # wnode coding patterns and documentation
├── CLAUDE.md                   # AI coding assistant configuration
└── package.json
```

## Architecture Overview

### Layout
This app uses a single default layout located at `themes/default/layout/default.xs`. Layouts define the overall page structure (header, footer, navigation) that wraps around page content.

### Pages
Currently includes one page: `themes/default/pages/index.xs`. Pages are the entry points accessible via URLs and typically compose multiple palets to create complete views.

### Palets
Palets are reusable HTML fragments that can be embedded within pages. They help keep pages simple and maintainable by breaking down complex UIs into smaller, focused components.

Since this is a minimal starter app with just a home page, the `palets` directory is empty. As your application grows, you'll create palets for common UI components like forms, tables, navigation menus, etc.

## Vibe Coding (AI-Assisted Development)

This project is optimized for AI-assisted development (sometimes called "Vibe Coding"). It includes a `CLAUDE.md` file and comprehensive wnode documentation in the `doc/references/` directory to help AI coding tools like Claude Code understand wnode's coding patterns and architecture.

If you use AI coding tools other than Claude Code, you can adapt the `CLAUDE.md` file to match your tool's convention:
- **Cursor**: `.cursorrules`
- **GitHub Copilot**: `.github/copilot-instructions.md`
- **Other tools**: Check your tool's documentation for the appropriate filename
