# EXERCICE SEMAINE 6 -- JOUR 4
## Concours d'inscriptions à un site

-------------

### Introduction : Présentation de l'équipe (@pseudo_slack)
- Berangere (@ekkhi)
- Manu (@tinoun)

-------------

### Arborescence du projet

- Dossier **landingpage** : dossier pour la réalisation d'une landing page The Hacking Project
- Dossier **mailer** : dossier pour la recuperation d'adresse mail et l'envoi de mail
	- Fichier **mailer.rb** : fichier permettant l'envoi de mail à toute les mairies
	- Fichier **mailer-test** : fichier vous permettant de tester l'envoi d'email en renseignant votre propre adresse mail dans le hash de la méthode ```gethtml```


- Fichier **README.md** : Retrouvez ici toutes les informations necessaire

------------

### Version de prod

**https://thpeastcoast.herokuapp.com/index.html**
<p>C'est par ici si tu veux voir notre superbe landing page !</p>


------------

### Informations 

#### Choix du design
<p>Nous avons choisi un design sobre. Berangere s'est occupé de faire toute la partie front avec l'utilisation de Bootstrap. </p>
<p>
	Le header contient une belle image facon workingspace, et du texte . En jouant avec position relative/absolute , nous avons pu inclure le texte directement sur l'image.<br>
	Le premiere bouton CAT est crée à l'aide de bootstrap et personnalisé dans le css.
</p>
<p>
	L'utilisation d'un paragraphe simple reprennant la philosophie de THP permet d'accrocher le visiteur.
</p>
<p>
	Quelques images et d'autres informations sur THP pour renseigner le visiteur.
</p>
<p>
	Le second bouton CAT sur lequel va cliquer le visiteur si nous avons réussi à le convaincre!
</p>
#### Acquisition
    l'acquisition : nous avons mis un formulaire sur la landing page dans lequel l'utilisateur peut renseigner son email afin d'obtenir une base mail depuis Mailchimp. 
    
    les metrics : Google analytics est installé sur la version statique du site Heroku permettant d'obtenir des stats sur les visiteurs en cours ainsi que les sessions passées sur notre landing page. 
    
#### Piste d'amélioration
    pistes d'amélioration : 
    
    - ajout d'un google tag manager sur le CTA afin de voir le taux de clic sur le bouton subscribe. 
    - récupération d'un annuaire / scrapper récupérant les adresses mail d'étudiants d'écoles afin de pouvoir partager l'ensemble de la landing page à un public plus ciblé. 
    - la véritable amélioration aurait été d'avoir une base Mailchimp contenant une vraie newsletter THP 
    - assez chaud d'utiliser google analytics sur une app rails. 


## Merci pour la correction ! 


![alt tag](https://user-images.githubusercontent.com/37908682/38898586-acc9ed70-4295-11e8-9433-fa83027043be.png)
