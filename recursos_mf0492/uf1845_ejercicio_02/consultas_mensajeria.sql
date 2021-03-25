-- Consulta 1: Usuaris amb data d’alta entre el 1 de gener del 2000 i el 1 de gener del 2010 ordenats per nom i cognoms (6 registres) 


-- Consulta 2: Número total d’usuaris administradors (tipo = A) (2)


-- Consulta 3: Usuaris on la inicial del seu cognom sigui la lletra C (2 registres)


-- Consulta 4: Nom i cognoms dels usuaris que han enviat missatges. Hauria de sortir una fila per cada usuari diferent (2 registres o 22 registres sense agrupar)

SELECT nombre, apellidos
FROM usuario
INNER JOIN mensaje
ON usuario.idusuario = mensaje.remitente
GROUP BY apellidos;

-- Consulta 5: Nom i cognoms dels usuaris que no han enviat cap missatge (13 registres)

SELECT nombre, apellidos
FROM usuario 
LEFT JOIN mensaje
ON usuario.idusuario = mensaje.remitente
WHERE mensaje.remitente IS NULL

-- Consulta 6: Nom i cognoms dels usuaris que no han rebut missatges (9 registres)

SELECT nombre, apellidos
FROM usuario 
LEFT JOIN mensaje
ON usuario.idusuario = mensaje.destinatario
WHERE mensaje.destinatario IS NULL

-- Consulta 7: Nom, cognoms i numero de missatges rebuts per cadascú dels usuaris (6 registres)

SELECT nombre, apellidos, COUNT(*)
FROM usuario 
INNER JOIN mensaje
ON usuario.idusuario = mensaje.destinatario
GROUP BY apellidos