> kubectl est installé de base sur l'environment Killercoda.
<br>

## 1/ Vérifier la présence de kubectl et sa version
```
kubectl version
```{{exec}}

Il existe un alias de kubectl, k. Tester la commande avec l'alias
```
k version
```{{exec}}

## 2/ Lister les namespaces
Commande permettant de voir l'ensemble des namespaces sur le cluster
```
k get namespace
```{{exec}}

## 3/ Quelques mot clefs plus 'courts'  
Il est possible de remplacer `namespace` par `ns` dans la commande précédente. Pour connaitre la liste des mots clefs (endpoints de l'api kubernetes):
```
kubectl api-resources
```{{exec}}

### Questions ?
Quel est le nom du context dans lequel vous vous trouvez ?  
Ecrire dans le fichier `/tmp/res-step1` le nom du context.  
> vous pouvez utiliser la commande `echo '<nom du context>' > /tmp/res-step1`