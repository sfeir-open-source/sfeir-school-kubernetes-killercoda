## 3/ Information sur la readiness/liveness
Les informations sur la readiness/liveness ne sont pas visibles de manière triviale. Il va falloir utiliser la commande `kubectl describe` pour les connaitre.

Après avoir fait un describe : 
```
kubectl describe pod healthy-monolith
```{{exec}}

Comment est configurée la sonde readiness ?  
Comment est configurée la sonde liveness ?  
à quelle fréquence la surveillance readiness est effectuée ?  
à partir de combien de secondes la sonde liveness est effectuée ?  

## 4/ Tester la readiness
Il est possible à l'aide d'un appel sur l'api du pod de forcer le passage à failed de la readiness.  
Forward de l'api vers le terminal
```
kubectl port-forward healthy-monolith 10081:81 &
```{{exec}}

Passage de la readiness à failed
```
curl http://127.0.0.1:10081/readiness/status
```{{exec}}

Vérfier l'état du pod avec la commande describe : 
```
kubectl describe pods healthy-monolith
```{{exec}}

## 5/ Tester la liveness
Nous allons faire pareil avec la liveness
```
curl http://127.0.0.1:10081/healthz/status
```{{exec}}

Que se passe t'il quand la liveness est KO ? 