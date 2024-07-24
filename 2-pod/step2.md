## 3/ Information sur le Pod
Avec l'aide de kubectl, nous allons retrouver des informations sur le pod précédement créé.

### Quelle est l'ip du pod ?
```
kubectl get pod -o wide
```{{exec}}

### Sur quel node s'execute le pod ?
```
kubectl get pod -o wide
```{{exec}}

### Quelle est l'image qui est lancée à l'intérieur du pod ?
```
kubectl describe pod monolith
```{{exec}}

### Dans quel namespace est le pod ?
```
kubectl get pod -A 
```{{exec}}

