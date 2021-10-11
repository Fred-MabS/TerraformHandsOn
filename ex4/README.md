* utilisation de workspace
* utilisation d'informations présentes dans d'autres ressources

```
source bash_aliases
tf init
tf workspace new ws1
tf workspace list
tf workspace show
tfp
tfaa
```

décommenter le code dans `main.tf`

```
tfp
tfaa
```

changer le `account_replication_type`, `tfp`, `tfaa`

changer de workspace
```
tf workspace new ws_import
```
créer manuellement :
* un resource-group
* un storage account
* une table

Récupérer les id et importer les ressources

Voir https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer
```
tf import -var-file=ws_import.tfvars random_integer.unique_id <valeur>,10000,100000
tfp
tfaa
```

```
tf import -var-file=ws_import.tfvars azurerm_resource_group.rg_mabfactory /subscriptions/8bacc096-ebd7-420c-82b8-a306db177e26/resourceGroups/rg-handson-29171
tfp
tfaa
```

Importer le reste
```
tf import -var-file=ws_import.tfvars azurerm_storage_account.mabfactory_stio /subscriptions/8bacc096-ebd7-420c-82b8-a306db177e26/resourceGroups/rg-handson-29171/providers/Microsoft.Storage/storageAccounts/rghandson29171
tf import -var-file=ws_import.tfvars azurerm_storage_table.MAbFactoryExperiments "https://rghandson29171.table.core.windows.net/Tables('MAbFactoryExperiments')"
tf show
```