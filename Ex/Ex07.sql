/***********************************
*Sub Query
************************************/
--1)전체쿼리문 구조
select  first_name,
        salary
from employees
where salary > "Den 의 급여" ; 

--2) Den의 급여
select  first_name,
        salary
from employees
where first_name = 'Den';

--3) Query문 완성   -->들여쓰기 잘할것
select  first_name,
        salary,
        phone_number,
        department_id
from employees
where salary > (select salary
                from employees
                where first_name = 'Den');


--예제)
--급여를 가장 적게 받는 사람의 이름, 급여, 사원번호는?

--1. 급여를 가장 적게 받는 사람의 급여
select min(salary)
from employees;

--2. 2100받는 사람의 이름, 급여, 사원번호
select  first_name,
        salary,
        employee_id
from employees
where salary = 2100;

--3. 식 조합
select  first_name,
        salary,
        employee_id
from employees
where salary = (select min(salary)
                from employees);


--예제)
--평균 급여보다 적게 받는 사람의 이름, 급여를 출력하세요?
--1. 평균급여?
select avg(salary)
from employees;

--2. 6461.83 보다 적게 받은 사람의 이름, 급여
select  first_name,
        salary
from employees
where salary < 6461.83;

--3. 식 조합
select  first_name,
        salary
from employees
where salary < (select avg(salary)
                from employees);








