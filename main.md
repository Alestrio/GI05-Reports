---
note_type: plan
writing_type: draft 
title: "TX7676 - Rapport Final"
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

# Introduction {.unnumbered .unlisted}

Le Challenge UTAC est une compétition internationale qui rassemble universités, écoles d'ingénieurs et Instituts Universitaires de Technologie (IUT) autour des défis de la mobilité future. Organisée par des acteurs de l'industrie automobile, dont la Société des Ingénieurs de l'Automobile (SIA), cette compétition encourage les étudiants à innover dans des domaines tels que la conduite autonome, la connectivité et la cybersécurité. Les démonstrations et présentations se déroulent sur le circuit de Linas-Montlhéry, offrant une plateforme pour les innovations étudiantes.

Le projet UTonome, porté par l'association éponyme de l'Université de Technologie de Compiègne (UTC), vise à représenter l'UTC lors de ce challenge. L'association, structurée en quatre pôles spécialisés — Simulation, Planification, Ordonnancement et Perception — regroupe des étudiants intéressés par les technologies de mobilité. En tant qu'étudiant, j'ai contribué au développement d'un module de planification et de décision pour un véhicule autonome.

Ce module, intégré dans un système basé sur le framework ROS (Robot Operating System), permet au véhicule de naviguer de manière autonome et sécurisée dans des environnements dynamiques. Il inclut des fonctionnalités telles que la gestion des obstacles, la planification de trajectoires optimales, et la visualisation en temps réel des données de navigation.

Ce rapport présente les étapes de développement du module de planification et de décision, ainsi que les résultats obtenus lors des tests sur simulateur. Il détaille les choix techniques, les algorithmes implémentés, et les perspectives d'amélioration pour les prochaines itérations du projet.

\newpage

