SELECT product_name, monufacturer, price FROM mobile WHERE product_count > '2';
SELECT product_name FROM mobile WHERE monufacturer = 'Samsung';
/*С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
4.1.* Товары, в которых есть упоминание "Iphone"
4.2.* Товары, в которых есть упоминание "Samsung"
4.3.* Товары, в названии которых есть ЦИФРЫ
4.4.* Товары, в названии которых есть ЦИФРА "8"*/
SELECT product_name FROM mobile WHERE product_name LIKE 'iPhone%';

/* у меня в модельном ряду не прописывается Samsung, а только модели, могу сделать выборгу по сериям)*/
SELECT product_name FROM mobile WHERE product_name LIKE 'Galaxy';

SELECT product_name FROM mobile WHERE product_name REGEXP '[0-9]';

/* У меня нет таких товаров, для проверки я поставил '1'*/
SELECT product_name FROM mobile WHERE product_name REGEXP '[1]';

