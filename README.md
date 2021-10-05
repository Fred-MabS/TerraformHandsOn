# Hands on Terraform

## Présentation

- outil open-source d'IaC (Infrastructure as Code) développé par Hashicorp
- HCL : langage déclaratif proche du json (conversions de/vers json possibles)
- notions de :
    - provider
    - ressource (ressource d'infrastructure et ressource locale → [https://www.terraform.io/docs/language/resources/behavior.html](https://www.terraform.io/docs/language/resources/behavior.html))
    - data-source
    - module
    - workspace
- terraform vs ansible
    - points communs
        - hashicorp
        - des modules cloud d'ansible permettent de faire la même chose que terraform
    - différences
        - déclaratif vs procédural (état final attendu vs succession de tâches)
        - orienté infra/provisionning vs déploiement/configuration
        - HCL vs yaml

## Fonctionnement

- des fichiers .tf
    
    exemple d'un fichier simpliste
    
- pas d'ordre, pas de hiérarchie, on découpe comme on veut
- tf les lit et construit un arbre de dépendances (voir aussi `depends_on`)
    
    exemple de plusieurs ressources liées
    

## Les commandes

- init, validate, plan, apply, destroy
- voir les fichiers créés par tf

## Les variables

- `output`
- définitions simples et plus complexes
- utilisation de `locals`

## Les workspaces

- `terraform workspace —help`
- voir les répertoires
- utilisation d'aliases

## L'import d'une infra existante

## Les sources de données
