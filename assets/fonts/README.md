# Web fonts

Self-hosted so every visitor sees the same fonts, including visitors in
mainland China, where Google Fonts is often blocked.

| File | Font | Weights | Source |
| --- | --- | --- | --- |
| `inter-latin-wght-normal.woff2` | Inter (variable, Latin subset) | 100–900 | [Fontsource](https://fontsource.org/fonts/inter) `@fontsource-variable/inter@5.1.0` |
| `source-serif-4-latin-wght-normal.woff2` | Source Serif 4 (variable, Latin subset) | 200–900 | [Fontsource](https://fontsource.org/fonts/source-serif-4) `@fontsource-variable/source-serif-4@5.1.0` |

Both fonts are licensed under the [SIL Open Font License 1.1](https://openfontlicense.org):

- Inter: Copyright 2016 The Inter Project Authors (https://github.com/rsms/inter)
- Source Serif 4: © 2014–2021 Adobe Systems Incorporated (http://www.adobe.com/),
  with Reserved Font Name "Source"

The `@font-face` rules are at the top of `_sass/layout/_site.scss`.
Chinese text uses the visitor's system fonts (PingFang SC, Microsoft YaHei, Noto Sans SC).
