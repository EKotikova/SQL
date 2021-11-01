/*1 Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd*/
 Select model,speed,hd from PC where price<500

 /*2 Найдите производителей принтеров. Вывести: maker */
 SELECT DISTINCT maker FROM Product WHERE type = 'printer'


/*3 Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.*/
  Select model,ram,screen from Laptop where price>1000


/* 4 Найдите все записи таблицы Printer для цветных принтеров.*/
Select* from Printer where color='y'


/*5 Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.*/

SELECT model, speed, hd FROM PC WHERE cd IN('12x','24x' ) AND price<600


 /*6  Для каждого производителя, 
выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, 
найти скорости таких ПК-блокнотов. Вывод: производитель, скорость. */


Select DISTINCT Maker,Speed from Product AS p JOIN Laptop AS l ON P.Model=l.Model where hd>=10



 /*7 Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).*/

Select t.model, price From (Select model,price from PC UNION 
Select model,price from Laptop 
UNION Select model,price from  printer) AS t JOIN Product AS 
p ON p.model=t.model where maker='B'
Select model,price from Laptop 
p ON p.model=t.model where maker='B'
