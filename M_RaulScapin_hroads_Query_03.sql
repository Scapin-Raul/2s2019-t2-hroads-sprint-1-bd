USE SENAI_HROAD_MANHA

SELECT * FROM Personagens order by IdPersonagem ASC

SELECT * FROM Classes ORDER by IdClasse ASC

SELECT * FROM Habilidades ORDER by IdHabilidade ASC

SELECT IdHabilidade FROM Habilidades ORDER by IdHabilidade ASC


SELECT h.IdHabilidade,h.Nome,h.Descricao,h.CustoMana,th.Nome 
FROM Habilidades H
JOIN TiposHabilidades TH ON h.IdTipoHabilidade = th.IdTipoHabilidade 
ORDER by IdHabilidade ASC

SELECT P.IdPersonagem,P.Nome,P.Nivel,P.VidaMax,P.ManaMax,FORMAT(P.DataAtualizacao,'dd/MM/yyyy', 'pt-BR') 'Data Atualizacao',FORMAT(P.DataCriacao,'dd/MM/yyyy', 'pt-BR') 'Data Criacao',C.Nome 'Classe'
FROM Personagens P
JOIN Classes C ON C.IdClasse = P.IdClasse

SELECT P.IdPersonagem,P.Nome,P.Nivel,P.VidaMax,P.ManaMax,FORMAT(P.DataAtualizacao,'dd/MM/yyyy', 'pt-BR') 'Data Atualizacao',FORMAT(P.DataCriacao,'dd/MM/yyyy', 'pt-BR') 'Data Criacao',C.Nome 'Classe'
FROM Personagens P
FULL JOIN Classes C ON C.IdClasse = P.IdClasse

SELECT C.NOME Classe,H.Nome Habilidade
FROM ClassesHabilidades CH
JOIN Classes C ON C.IdClasse = CH.IdClasse
JOIN Habilidades H ON H.IdHabilidade = CH.IdHabilidade

SELECT H.Nome Habilidade,C.NOME Classe
FROM ClassesHabilidades CH
JOIN Classes C ON C.IdClasse = CH.IdClasse
JOIN Habilidades H ON H.IdHabilidade = CH.IdHabilidade

SELECT H.Nome Habilidade,C.NOME Classe
FROM ClassesHabilidades CH
FULL JOIN Classes C ON C.IdClasse = CH.IdClasse
FULL JOIN Habilidades H ON H.IdHabilidade = CH.IdHabilidade

SELECT P.IdPersonagem,P.Nome,P.Nivel,FORMAT(P.DataAtualizacao,'dd/MM/yyyy', 'pt-BR') 'Data Atualizacao',FORMAT(P.DataCriacao,'dd/MM/yyyy', 'pt-BR') 'Data Criacao',C.Nome 'Classe', H.Nome Habilidade
FROM Personagens P
JOIN Classes C ON C.IdClasse = P.IdClasse
JOIN ClassesHabilidades CH ON C.IdClasse = CH.IdClasse
JOIN Habilidades H ON H.IdHabilidade = CH.IdHabilidade
ORDER BY P.IdPersonagem ASC