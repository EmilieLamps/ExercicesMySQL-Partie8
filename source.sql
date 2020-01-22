-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT * FROM `frameworks` LEFT JOIN `languages` ON `frameworks`.`languagesId`=`languages`.`id`;
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT * FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId`=`languages`.`id`;
-- Afficher le nombre de framework qu'a un langage.
SELECT `languages`.`name` AS `langages`, COUNT(*) AS `Nombre_de_langages` FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId`=`languages`.`id` GROUP BY `languagesId`; -- Affiche le total des languages
-- Afficher les langages ayant plus de 3 frameworks.
SELECT `languages`.`name` AS `langages`, COUNT(*) AS `Nombre_de_langages` FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId`=`languages`.`id` GROUP BY `languagesId` HAVING COUNT(*)>3;






-- CONSTRUCTIONS :

-- SELECT *
-- FROM nom_de_la_Table_1
-- LEFT JOIN nom_de_la_Table_2
-- ON nom_de_la_Table_1.nom_de_la_colonne = nom_de_la_Table_2.nom_de_la_colonne;

-- SELECT *
-- FROM nom_de_la_Table_1
-- INNER JOIN nom_de_la_Table_2
-- ON nom_de_la_Table_1.nom_de_la_colonne = nom_de_la_Table_2.nom_de_la_colonne;

-- SELECT nom_courant, COUNT(*) AS nb_animaux
-- FROM Animal
-- INNER JOIN Espece ON Animal.espece_id = Espece.id
-- GROUP BY nom_courant;
