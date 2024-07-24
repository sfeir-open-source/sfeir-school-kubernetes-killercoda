> Un fichier secure-monolith.yaml est présent à la racine du scénario.
<br>

## 1/ Decortiquer le fichier `secure-monolith.yaml`
Dans un premier temps, avant de déployer le pod secure-monolith, nous allons essayer de comprendre son contenu.  
Afficher le contenu du fichier.

```
cat secure-monolith.yaml
```{{exec}}

## Questions ?
Comment le secret est-il injecté dans le pod ?  
Comment le configmap est-il injecté dans le pod ?  
Ecrire dans le fichier `/tmp/res-step3` le nom du secret et le nom de la configmap.  
> vous pouvez utiliser la commande `echo -e "<mon secret>\n<ma configmap>" >> /tmp/res-step3`

## 2/ Déployer le pod
Utiliser kubectl pour créer le pod secure-monolith
```
kubectl apply -f secure-monolith.yaml
```{{exec}}

## 3/ Exposer le pod en local
Exposer le port en local avec la commande port-forward
```
kubectl port-forward secure-monolith 10443:443 &
```{{exec}}

## 4/ Test l'accès via curl
Faites une requête avec curl
```
curl https://127.0.0.1:10443
```{{exec}}

Essayer la même chose en fournissant la CA.
```
curl --cacert configuration/tls/ca.pem https://127.0.0.1:10443
```{{exec}}