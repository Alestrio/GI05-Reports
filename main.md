---
note_type: plan
writing_type: draft 
title: "AI34 - Rendu TD2 Réseau"
subtitle : "FISA"
author: Alexis LEBEL
date: "A24"
titlepage: true 
titlepage-rule-color: "006a9e" 
titlepage-text-color: "080808" 
titlepage-background : "templates/titlepage_utc.png"
page-background : "templates/pagebg_utc.png"
colorlinks: "ff0d8a"
toc: true
listing: true
listingTitle: Extrait de code
codeBlockCaptions: true
toc-title : Table des Matières
lofTitle : Table des Illustrations
lolTitle : Table des Extraits de Code
toc-own-page: true
toc-depth : 3
mainfont: DejaVuSerif sans
numbersections: true
documentclass: extarticle
fontsize: 11pt
linkcolor: magenta
urlcolor: magenta
listings-no-page-break: true
code-block-font-size: \scriptsize
header-includes: |
  \makeatletter
  \def\fps@figure{H}
  \makeatother
geometry:
	- top=25mm
	- left=20mm
	- right=20mm
	- bottom=25mm
output: 
    pdf: 
        pdf-engine: pdflatex
        output: Untitled.pdf
        from: markdown
        template: eisvogel
        listings: true
---

# 1. Topologie
- La topologie est un **mesh localement**, et une **topologie en étoile** pour la dorsale. (**Backbone** : communication de Local Control Center à Remote Grid Control Center). 

# 2. Dorsale
- La dorsale **WiMax** permet de communiquer sur de longues distances (surtout avec **Line of Sight**) et avec des débits importants (**Gbit/s**).

# 3. Comparaison des technologies

| Catégorie             | Technologie   | Description                                                          | Standard          |
| --------------------- | ------------- | -------------------------------------------------------------------- | ----------------- |
| **Backbone**          | **WiMax**     | Réseau Point à Point (étoile) Longue Distance Sans fil et haut-débit | **802.16**        |
| **Neighborhood Mesh** | **802.11s**   | Réseau maillé                                                        | -                 |
|                       | **SUNs**      | Réseau maillé                                                        | -                 |
| **HAN**               | **Zigbee**    | Réseau maillé, faible consommation                                   | **802.15.4**      |
|                       | **WiFi**      | Réseau étoile haut-debit                                             | **802.11**        |
|                       | **Bluetooth** | Réseau bas débit, faible portée (PAN)                                | **basé 802.15.1** |

# 4. Caractéristiques

- **Backbone** :
  - **Haut débit**, **longue distance**.

- **802.11s, SUNs** (Neighborhood Mesh) :
  - **Self-healing** (autocorrection).
  - Équilibrage de la charge des liens (**load balancing**).

- **HAN** (Home Area Network) :
  - **Zigbee** : faible consommation d’énergie, autocorrection (**self-healing**).
  - **WiFi** : basé sur des technologies existantes.
  - **Bluetooth** : compatibilité avec les smartphones et autres devices (Smartwatches, etc)

# 5. Réseaux hybrides
- Les réseaux hybrides sont utilisés pour tirer parti des **avantages** de chaque technologie.
