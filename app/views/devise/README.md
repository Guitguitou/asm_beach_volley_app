# Vues Devise - Structure Refactorisée

## 🎨 Couleurs personnalisées

Les couleurs du club sont maintenant définies dans `tailwind.config.js` et peuvent être utilisées directement :

- `bg-club-red` - Rouge principal (#e21e22)
- `text-club-red` - Texte rouge
- `border-club-red` - Bordure rouge
- `focus:ring-club-red` - Anneau de focus rouge
- `hover:bg-club-red-600` - Hover plus foncé

## 📁 Structure des partiales

### Layout principal
- `_devise_layout.html.erb` - Layout de base pour toutes les pages Devise

### Composants réutilisables
- `_form_field.html.erb` - Champ de formulaire standardisé
- `_submit_button.html.erb` - Bouton de soumission
- `_icons.html.erb` - Toutes les icônes SVG

### Liens
- `_links.html.erb` - Liens de navigation (déjà existant)

## 🔧 Utilisation

### Pour créer une nouvelle page Devise :

```erb
<% content_for :icon do %>
  <%= render "devise/shared/icons" %>
  <%= yield :user_icon %>
<% end %>

<% content_for :title do %>
  Titre de la page
<% end %>

<% content_for :subtitle do %>
  Sous-titre descriptif
<% end %>

<% content_for :form do %>
  <%= form_for(resource, as: resource_name, url: path, html: { class: "space-y-6" }) do |f| %>
    <%= render "devise/shared/form_field", 
        f: f, 
        field_name: :email, 
        field_type: :email_field, 
        label_text: "Email",
        options: { placeholder: "votre@email.com" } %>
    
    <%= render "devise/shared/submit_button", f: f, button_text: "Action" %>
  <% end %>
<% end %>

<%= render "devise/shared/devise_layout" %>
```

### Icônes disponibles :
- `:user_icon` - Utilisateur
- `:signup_icon` - Inscription
- `:key_icon` - Clé (mot de passe oublié)
- `:lock_icon` - Cadenas (changement mot de passe)
- `:email_icon` - Enveloppe (confirmation)
- `:unlock_icon` - Cadenas ouvert (déverrouillage)

## 🎯 Avantages

1. **DRY (Don't Repeat Yourself)** - Plus de répétition de code
2. **Cohérence** - Design uniforme sur toutes les pages
3. **Maintenabilité** - Modifications centralisées
4. **Couleurs personnalisées** - Utilisation directe des couleurs du club
5. **Fichiers plus courts** - Code plus lisible et maintenable 
