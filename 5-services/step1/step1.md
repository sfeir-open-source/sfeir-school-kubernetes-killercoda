> Un fichier `monolith.yaml` est présent dans le répertoire : service.
<br>

## 1/ Explorer le fichier `monolith.yaml`
Afficher le contenu du fichier
```
cat service/monolith.yaml
```{{exec}}

## 2/ Créer le service à partir du fichier
Utiliser kubectl pour créer le service à partir du fichier
```
kubectl apply -f service/monolith.yaml
```{{exec}}

## Questions ?
Que signifie le bloc suivant :
```
  ports:
    - protocol: "TCP"
      port: 443
      targetPort: 443
```

Combien de pods sont lancés dans le namespace default ?
> ecrire le résultat dans le fichier /tmp/res-step1 avec la commande `echo <Mon chiffre> > /tmp/res-step1`