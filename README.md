# 

## Setup

- `pnpm install`

## Local Preview

- To preview an individual slide:
	- `pnpm dev slides/<slide-name>/slides.md`
	- Example: `pnpm dev slides/sample/slides.md`

## How to Add Slides

- Create a new slide at `slides/<slide-name>/slides.md`
- Optionally add a `slidev.config.ts` for per-slide configuration

## Build (Multi-slide Support)

- To build all slides at once:
	- `pnpm build:all`
	- Each slide will be output to `dist/<slide-name>/`

## Deployment (GitHub Pages)

- When you push to the `main` branch, `.github/workflows/deploy.yaml` will automatically publish the contents of `dist/` to GitHub Pages
- Example public URL: `https://<username>.github.io/<repo-name>/<slide-name>/`

## More Info

- [Slidev Documentation](https://sli.dev/)


