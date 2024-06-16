# App creation

This app was created with:

```sh
$ npx create-next-app@latest
✔ What is your project named? … rescript-next-react-tailwind
✔ Would you like to use TypeScript? … No / [Yes]
✔ Would you like to use ESLint? … No / [Yes]
✔ Would you like to use Tailwind CSS? … No / [Yes]
✔ Would you like to use `src/` directory? … No / [Yes]
✔ Would you like to use App Router? (recommended) … No / [Yes]
✔ Would you like to customize the default import alias (@/*)? … [No] / Yes
```

And to add ReScript:

```sh
$ npm create rescript-app@latest
┌  create-rescript-app 1.7.1
│
◇  Welcome to ReScript! ─────────────────────────────────╮
│                                                        │
│  Fast, Simple, Fully Typed JavaScript from the Future  │
│  https://rescript-lang.org                             │
│                                                        │
├────────────────────────────────────────────────────────╯
│
◇  Detected a package.json file. Do you want to add ReScript to
"rescript-next-react-tailwind"?
│  ● Yes / ○ No
│
◇  Versions loaded.
│
◇  ReScript version?
│  11.1.1
│
◇  ReScript Core version?
│  1.5.0
│
◇  Where will you put your ReScript source files?
│  src
│
◇  What module system will you use?
│  ES Modules
│
◇  Do you want to check generated .res.mjs files into git?
│  Yes
│
◇  Added ReScript to your project.
│
└  Happy hacking!
```

```sh
$ npm install --save-dev @rescript/react npm-run-all
```

Then the `package.json` file was edited to have the script:

```json
  "scripts": {
    "next:dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "res:build": "rescript",
    "res:clean": "rescript clean",
    "res:dev": "rescript -w",
    "dev": "run-p *:dev"
  },
```

And the `rescript.json` file now has:

```json
  "suffix": ".mjs",
  "jsx": {
    "version": 4,
    "mode": "automatic"
  },
  "bs-dependencies": [
    "@rescript/core",
    "@rescript/react"
  ],
```
