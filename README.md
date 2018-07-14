Question 1 :

Étant donné une table SKILLS où un enregistrement peut être un enfant ou un parent d'un autre enregistrement de cette même table, essayer d'obtenir :

- Pour chaque enregistrement parent la somme totale des points obtenus par les utilisateurs associés à ce parent ou à ses enfants
- Ajouter à la requête précédente pour chaque enregistrement parent le nombre totale d'utilisateurs associés à ce parent ou à ses enfants

Par exemple, dans cette table, l'enregistrement avec l'id 3 est un enfant de l'enregistrement ayant l'id 1, idem pour l'enregistrement 5 :

SKILLS
+-----------------------+
|ID|NAME      |PARENT_ID|
+-----------------------+
|1 |Football  |         |
+-----------------------+
|2 |Basketball|         |
+-----------------------+
|3 |Foot      |1        |
+-----------------------+
|4 |Basket    |2        |
+-----------------------+
|5 |Socker    |1        |
+-----------------------+

SKILLS_USERS
+-------------------+
|ID|SKILL_ID|USER_ID|
+-------------------+
|1 |1       |1      | 
+-------------------+
|2 |1       |2      | 
+-------------------+
|3 |3       |3      | 
+-------------------+
|4 |2       |4      | 
+-------------------+
|5 |5       |5      |
+-------------------+

USERS
+---------+
|ID|POINTS|
+---------+
|1 |100   |
+---------+
|2 |200   |
+---------+
|3 |100   |
+---------+
|4 |50    |
+---------+
|5 |10    |
+---------+

Résultat attendu (en une requête qu'il faudra nous fournir) :

+--------------------------------+
|ID|NAME      |POINTS|USERS_COUNT|
+--------------------------------+
|1 |Football  |410   |4          |
+--------------------------------+
|2 |Basketball|50    |1          |
+--------------------------------+


Question 2 :

Créer une application Ruby on Rails implémentant ce modèle de données. Créer les models et controlleurs nécessaires afin de pouvoir créer des utilisateurs et des compétences et associer une compétence à un ou plusieurs utilisateurs (pour simplifier, un utilisateur ne peut avoir qu'une seule compétence). Enfin, afficher sur une page un tableau présentant les informations obtenues lors de la question 1.

rake routes