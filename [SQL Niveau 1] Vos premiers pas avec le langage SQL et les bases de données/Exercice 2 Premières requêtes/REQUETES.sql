/*  la requête permettant d'obtenir la liste des 10 villes les plus peuplées en 2012 */

SELECT * 
FROM villes_france_free 
order BY  ville_population_2012 DESC
LIMIT 10 
 

/*la requête permettant d'obtenir la liste des 50 villes ayant la plus faible superficie */

SELECT *
FROM  villes_france_free
ORDER BY  ASC
LIMIT 50


/*  la requête permettant d'obtenir la liste des départements d’outre-mer, c’est-à-dire ceux
dont le numéro de département commence par “97” */

/* la requête permettant d'obtenir le nom des 10 villes les plus peuplées en 2012, ainsi que le
nom du département associé */ 


/* la requête permettant d'obtenir la liste du nom de chaque département, associé à son
code et du nombre de commune au sein de ces départements, en triant afin d’obtenir en priorité les
départements qui possèdent le plus de communes*/

/* la requête permettant d'obtenir la liste des 10 plus grands départements, en terme de
superficie*/

/* Ecrivez la requête permettant de compter le nombre de villes dont le nom commence par “Saint” */

/* Ecrivez la requête permettant d'obtenir la liste des villes qui ont un nom existants plusieurs fois, et
trier afin d’obtenir en premier celles dont le nom est le plus souvent utilisé par plusieurs communes*/


/* la requête permettant d'obtenir en une seule requête SQL la liste des villes dont la
superficie est supérieure à la superficie moyenne*/

/* la requête permettant d'obtenir la liste des départements qui possèdent plus de 2
millions d’habitants*/