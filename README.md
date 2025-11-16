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

Push to `main` branch triggers `.github/workflows/deploy.yaml` to publish all built slides in `dist/` to GitHub Pages.

### 公開URL構成

- トップページ: `https://<username>.github.io/<repo-name>/` → ルート `slides.md` の内容
- サブスライド: `https://<username>.github.io/<repo-name>/<slide-name>/` → `slides/<slide-name>/slides.md` の内容

例:
- `https://arluqh.github.io/mneme/` → `slides.md`
- `https://arluqh.github.io/mneme/sample/` → `slides/sample/slides.md`

## More Info

- [Slidev Documentation](https://sli.dev/)


