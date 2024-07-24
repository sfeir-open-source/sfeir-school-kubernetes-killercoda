# Mide à l'echelle automatique

Dans Kubernetes, un _HorizontalPodAutoscaler_ met automatiquement à jour une ressource de charge de travail (telle qu'un Déploiement ou un StatefulSet), dans le but de faire évoluer automatiquement sa capacité à répondre à la demande.

La mise à l'échelle horizontale consiste à adapter le nombre de pods automatiquement en fonction de la demande.

Si la charge diminue et que le nombre de Pods est supérieur au minimum configuré, le HorizontalPodAutoscaler demande à la ressource de charge de travail (le déploiement, le StatefulSet ou une autre ressource similaire) de s'adapter à la baisse.

- Les tests vont s’effectuer sur l’image docker k8s.gcr.io/hpa-example.
- Cette image contient un apache+php. La home page de cette apache est un script php qui calcule les racines carrées des nombres de 1 à 1 million.
- L’appel à cette page va provoquer une forte consommation CPU.
