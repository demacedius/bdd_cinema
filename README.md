# bdd_cinema

# mise en place de la base de donnée

**pour cette base de donnée, vérifier que vous avez bien mysql et mariadb**

## Premièrement ##
connectez vous a mysql
```
mysql -u root -p
```

**puis lancez le script**
```
source create_database_and_table.sql
```

### Enfin ###
lancez le script de remplissage fake_data.sql
```
source fake_data.sql
```

### Sauvegarder la base de donnée ###

pour sauvegarder votre base de donnée faite la procédure suivante

__quittez mysql__

puis taper cette commande dans votre terminal

```
mysqldump -u root -p cinema_2 > [le chemin du fichier ou vous voulez sauvegarder]
```
