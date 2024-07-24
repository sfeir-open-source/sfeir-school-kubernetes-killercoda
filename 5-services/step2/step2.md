## Exercice
Le service n'est actuellement pas fonctionnel. Il faut trouver la cause, et réparer celui-ci.  
Il semble qu'il n'y ait pas de endpoint sur notre service.  
Pour pourvoir vérifier cela, utilier la commande :
```
kubectl get endpoints monolith
```{{exec}}

Pour vous aider, voici deux commandes afin de trouver ce qu'il manque:
1. Lister les selectors de mon service: 
```
kubectl get service monolith -n default -o jsonpath='{.spec.selector}' | jq
```{{exec}}

2. Lister les labels de mes pods
```
kubectl get pod --show-labels
```{{exec}}

> Le TP est validé quand la commande `kubectl get endpoints monolith` retourne une adresse IP