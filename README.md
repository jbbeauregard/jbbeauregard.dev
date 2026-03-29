# jbbeauregard.dev

Personal portfolio and freelance landing page for Jérémy-Benjamin Beauregard.

Built with **Blazor WebAssembly (.NET 10)** and **Tailwind CSS**, deployed globally on **Cloudflare Pages**.

## Tech stack

| Layer | Choice |
|---|---|
| Framework | Blazor WebAssembly (.NET 10) |
| Styling | Tailwind CSS (CDN for now) |
| Hosting | Cloudflare Pages |
| CI/CD | GitHub Actions (via Cloudflare Pages integration) |

## Local development

```bash
# Requires .NET 10 SDK
dotnet run --project jbbeauregard.dev/jbbeauregard.dev.csproj
```

Then open `https://localhost:5001` in your browser.

## Production build

```bash
dotnet publish jbbeauregard.dev/jbbeauregard.dev.csproj -c Release -o release
```

Static output lands in `release/wwwroot/`.

## Deployment

Every push to `main` triggers a Cloudflare Pages build automatically.  
Build command: see above. Build output directory: `release/wwwroot`.

The `wwwroot/_redirects` file rewrites every route to `index.html` so Blazor's client-side router handles navigation.

## Project structure

```
jbbeauregard.dev/
├── Pages/
│   ├── Home.razor        # Single-page portfolio (hero, about, portfolio, contact)
│   └── NotFound.razor    # Styled 404 page
├── Layout/
│   └── MainLayout.razor
├── wwwroot/
│   ├── _redirects        # Cloudflare Pages SPA rewrite rule
│   ├── index.html        # Entry point + SEO meta tags + Tailwind config
│   ├── css/app.css       # Loading spinner + Blazor error UI
│   ├── images/           # Profile photo and project thumbnails
│   ├── icons/            # Favicons and PWA icons
│   └── site.webmanifest
├── App.razor
├── _Imports.razor
└── Program.cs
```

## License

© Jérémy-Benjamin Beauregard — all rights reserved.
