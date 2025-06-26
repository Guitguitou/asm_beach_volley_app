# ASM Beach Volley App

Application Rails pour la gestion des sessions de beach volley.

## Prérequis

- Ruby 3.2+
- Node.js 20.11.1+ (spécifié dans `.nvmrc`)
- Yarn 1.22+
- PostgreSQL

## Installation

1. Cloner le repository
```bash
git clone <repository-url>
cd asm_beach_volley_app
```

2. Installer les dépendances Ruby
```bash
bundle install
```

3. Installer les dépendances JavaScript
```bash
yarn install
```

4. Configurer la base de données
```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

## Développement

### Démarrer le serveur de développement
```bash
bin/dev
```

Cette commande démarre :
- Le serveur Rails (`bin/rails server`)
- La compilation JavaScript en mode watch (`yarn build --watch`)
- La compilation CSS en mode watch (`yarn build:css --watch`)

### Commandes utiles

- **Compilation JavaScript** : `yarn build`
- **Compilation CSS** : `yarn build:css`
- **Compilation en mode watch** : `yarn build:watch` et `yarn build:css:watch`
- **Développement complet** : `yarn dev`

## Structure du projet

- `app/javascript/` : Code JavaScript (Stimulus, Turbo)
- `app/assets/stylesheets/` : Styles Tailwind CSS
- `app/assets/builds/` : Fichiers compilés (générés automatiquement)

## Technologies utilisées

- **Backend** : Ruby on Rails 7
- **Frontend** : Hotwire (Turbo + Stimulus)
- **CSS** : Tailwind CSS 4
- **Build** : esbuild + Yarn
- **Base de données** : PostgreSQL
