## 4/ Interagir avec le Pod
Il est possible de créer un tunnel entre un cluster Kubernetes et sa machine locale, avec la commande `kubectl port foward`

KillerCoda utilise un principe d'affichage au travers d'une page web, mais le principe reste le même.

### Créer le port forward
Le `&` à la fin de la commande permet de lancer le forward en arrière plan.
```
kubectl port-forward monolith 10080:80 &
```{{exec}}
Une fois le port forward effectué, il faut faire Ctrl + C afin de reprendre la main.

Tester un curl sur le pod
```
curl http://127.0.0.1:10080
```{{exec}}

Essayer le endpoint sécurisé, il est normalement protégé par un token
```
curl http://127.0.0.1:10080/secure
```{{exec}}

S'authentifier en ligne de commande et récupérer le token
> Le mot de passe est : 'password'
```
curl -u user http://127.0.0.1:10080/login
```{{exec}}

Utiliser le token récupéré précédement
```
curl -H "Authorization: Bearer <token>" http://127.0.0.1:10080/secure
```{{copy}}

### Regarder les logs du pod
La commande `kubectl logs <mon_pod>` permet de voir les logs du container tournant dans le pod. Les logs sont ceux depuis le dernier démarrage du pod. Si un restart a eu lieu, les précédents ne sont pas affichés.
```
kubectl logs monolith
```{{exec}}

### Ouvrir un shell dans un pod.
Il est possible de rentrer dans un pod pour vérifier le contenu d'un fichier, les variables d'environement, etc...
```
kubectl exec monolith -it [-c monolith] -- /bin/sh
```{{exec}}