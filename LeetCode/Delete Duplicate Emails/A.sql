DELETE P1
FROM Person P1, Person P2
WHERE P1.Email=P2.Email AND P1.id>P2.id;
