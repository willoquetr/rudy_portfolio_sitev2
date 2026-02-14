# Mettre Le Portfolio En Ligne (GitHub Pages Ou Netlify)

Ce document explique comment publier ce portfolio pour qu'il soit accessible par n'importe qui, avec tous les assets (images, videos, `.glb`, etc.).

## Option 1 — GitHub Pages (gratuit, simple)

1. Cree un repository GitHub **public** (ex: `portfolio`).
2. Mets le site **a la racine** du repo :
   `index.html`, `assets/`, `CV_Rudy_Willoquet.pdf`, etc.
3. Pousse tout sur GitHub.
4. Sur GitHub : `Settings` > `Pages`.
5. Dans `Build and deployment`, choisis **Deploy from a branch**.
6. Selectionne la branche (ex: `main`) et le dossier **/(root)**.
7. Clique `Save`.
8. Attends quelques secondes/minutes : l'URL publique apparait.

Notes importantes :
1. GitHub bloque les fichiers **> 100 MB**. Si un `.glb` est trop lourd, utilise **Git LFS** ou heberge le fichier ailleurs.
2. Le repo peut etre volumineux, mais reste dans des tailles raisonnables pour eviter des lenteurs.

## Option 2 — Netlify (gratuit, rapide)

1. Cree un compte Netlify.
2. `Add new site` > `Import an existing project`.
3. Connecte ton GitHub et choisis le repo du portfolio.
4. Quand Netlify demande le **Publish directory**, choisis la **racine** (celle qui contient `index.html`).
5. Clique `Publish`.
6. Netlify fournit une URL publique immediatement.

Option alternative : tu peux aussi faire un **drag & drop** du dossier du site directement dans Netlify (deploiement manuel).

## Checklist assets (important)

1. Tous les assets doivent etre **dans le repo** et references en **chemins relatifs**.
   Exemple : `assets/avatar.glb`.
2. Verifie qu'aucun fichier ne depasse **100 MB** si tu passes par GitHub.
3. Teste en local avant de publier : lance un serveur simple et charge la page.

## Depannage rapide

1. Si un asset ne charge pas en ligne, verifie l'orthographe exacte du fichier (majuscules/minuscules).
2. Si un `.glb` est trop gros, passe par Git LFS ou heberge le `.glb` ailleurs et change son URL.
3. Si la page est blanche, ouvre la console du navigateur et regarde les erreurs de chargement.

## Docs utiles

1. GitHub Pages : https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site
2. Limites GitHub : https://docs.github.com/en/repositories/creating-and-managing-repositories/repository-limits
3. Netlify deploy : https://docs.netlify.com/welcome/quickstarts/deploy-from-your-repository/
