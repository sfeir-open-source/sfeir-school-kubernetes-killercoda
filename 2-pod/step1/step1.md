> Un fichier monolith.yaml est présent à la racine du scénario.
<br>

## 1/ Explorer le fichier `monolith.yaml`
Afficher le contenu du fichier
```
cat monolith.yaml
```{{exec}}

## 2/ Créer le pod
Utiliser kubectl pour créer le pod à partir du fichier

```
k apply -f monolith.yaml
```{{exec}}

## Question ?
Quelle est le nom de l'image qui sera lancée dans le pod ?
Ecrire dans le fichier `/tmp/res-step1` le nom de l'image.  
> vous pouvez utiliser la commande `echo '<nom de l'image>' > /tmp/res-step1`