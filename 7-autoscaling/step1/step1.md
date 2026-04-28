## 1/ Déployer un déploiement sur le cluster
Création du déploiement
```
kubectl apply -f deployments/hpa-example.yaml
```{{exec}}

Création du service avec la méthode impérative
```
kubectl expose deployment/hpa-example --port 80
```{{exec}}

## 2/ Créer le HorizontalPodAutoscaler sur le déploiement
La commande suivante permet de mettre automatiquement le déploiement à l'échelle, en fonction de la charge CPU
```
kubectl autoscale deployment hpa-example --cpu=50% --min=1 --max=2
```{{exec}}

# Question ? 
Quel est le nombre maximal de pods pour le déploiement `hpa-example` ?  
Lister les objets de type `hpa` (horizontalPodAutoscaler) à l'aide d'une commande `kubectl` et placer le résultat dans le fichier `/tmp/res-step1`

> vous pouvez utiliser la commande `echo kubectl... > /tmp/res-step1`
