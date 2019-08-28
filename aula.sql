-- Utilizando o CROSS JOIN eu cruzo todos os valores do SELECT
-- Se eu tenho 2 valores, sairá 4
-- Se tiver 3, eu terei 9 retornos
SELECT e1.pnome, e2.pnome
FROM empregado AS e1 CROSS JOIN empregado AS e2;

-- SELECT de todos os nomes da tabela empregado
SELECT e1.pnome
FROM empregado AS e1;

-- Consulta INNER JOIN que serve para comparações através do recurso "ON"
-- nesse caso, se faz a comparação dos nomes da tabela empregado com os nomes também da tabela empregado
-- verificando o cpf para saber se você é gerente
-- isto é, ssn comparado com superssn
SELECT e1 . pnome ,
e2 . pnome
FROM empregado AS e1 INNER JOIN empregado AS e2 ON ( e1 . ssn = e2 . superssn )

23. Selecione o tipo de parentesco dos dependentes e a quantidade de vezes em que cada tipo aparece.
select d.parentesco, count(d.parentesco)
from dependente as d
group by d.parentesco;

24. Selecione todos os empregados ordenados acesdentemente por nome.
select e.pnome
from empregado as e
order by e.pnome asc;

25. Selecione todos os empregados ordenados decrescentemente por idade.
select e.pnome, year(current_date)-year(e.datanasc)
from empregado as e
order by year(current_date) - year(e.datanasc) desc;

26. Selecione todos os empregados ordenado decrescentemento por salário, e ascendente por nome.
select e.pnome
from empregado as e
order by e.salario desc, e.pnome asc;

27. Selecione todos os empregados que têm dependentes.
select e.pnome
from empregado as e
inner join dependente d 
on e.ssn=d.essn
group by e.pnome; 

28. Selecione o nome e a data de nascimento dos empregados e o nome e a data de nascimento do
do dependente cônjugue, em que a data de nascimento do empregado for menor que a data de
nascimento do seu cônjugue.
select e.pnome, e.datanasc, d.nome_dependente, d.datanasc
from empregado e
inner join dependente d
on e.ssn = d.essn and d.parentesco = 'CÔNJUGE' and e.datanasc<d.datanasc;

29. Selecione todos os empregados que trabalham em um projeto cujo departamento não é o seu.


30. Selecione o ssn, o nome, e a diferença salarial em relação à média por sexo dos funcionários.


31. Selecione o ssn e o nome todos os empregados que trabalham mais de 40 horas.