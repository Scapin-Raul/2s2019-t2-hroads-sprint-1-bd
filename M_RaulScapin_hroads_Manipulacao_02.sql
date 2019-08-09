USE SENAI_HROAD_MANHA

INSERT Classes (Nome)
	VALUES('Barbaro'),('Cruzado'),('CacadoraDeDemonio'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista')

INSERT TiposHabilidades(Nome)
	VALUES('Ataque'),('Defesa'),('Cura'),('Magia')

INSERT Personagens(Nome,Nivel,VidaMax,ManaMax,DataAtualizacao,DataCriacao,IdClasse)
	VALUES('DeuBug',26,360,180,'2019-08-09T00:00:00','2019-01-18T00:00:00',1),('BitBug',15,250,125,'2019-08-09T00:00:00','2016-03-17T00:00:00',4),('Fer8',200,2100,1050,'2019-08-09T00:00:00','2018-03-18T00:00:00',7),('Cleitinho',76,860,430,'2019-08-01T00:00:00','2018-11-15T00:00:00',6),('ShadowMasterBR',10,200,100,'2019-08-08T00:00:00','2019-07-11T00:00:00',2)

INSERT Habilidades(Nome,Descricao,CustoMana,IdTipoHabilidade)
	VALUES('Lanca_Mortal','Golpeia o inimigo causado 110 Dmg (+ Lv)',30,1),('Escudo_Supremo','Ganha um buff de 30 Armor (+ 0.5Lv) por 5 seg.',40,2),('Recuperar_Vida','Recupera 100 (+ 0.5 Lv) da propria vida ',60,3),('Lamina_Espiritual','Golpeia o inimigo causado 200 Dmg (+ Lv)',100,4),('Sentelha_Final','Golpeia o inimigo causando 300 Dmg (+ 2Lv)',300,4),('Arvore_da_Vida','Cria um circulo que cura os aliados em 15 (+Lv) por seg.',250,3),('Avanco_da_Morte','Avanca em uma direcao causando 150 Dmg (+2 Lv)',175,1)

INSERT ClassesHabilidades(IdClasse,IdHabilidade)
	VALUES(1,1),(1,2),(2,2),(3,1),(4,2),(4,3),(6,3)

UPDATE Personagens
	SET Nome = 'Fer7'
WHERE Personagens.IdPersonagem = 4

UPDATE Classes
	SET Nome = 'Necromancer'
WHERE Classes.IdClasse = 5

