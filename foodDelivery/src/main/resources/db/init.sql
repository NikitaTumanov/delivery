CREATE TABLE IF NOT EXISTS categories(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(100) UNIQUE NOT NULL,
    restricted BOOLEAN NOT NULL
);

INSERT INTO categories (id, name, restricted) VALUES (1, 'Молочные продукты', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (2, 'Овощи и фрукты', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (3, 'Макароны и крупы', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (4, 'Сладости и снеки', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (5, 'Соки, воды, напитки', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (6, 'Хлеб и выпечка', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (7, 'Рыба, птица, мясо', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (8, 'Замороженные продукты', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (9, 'Соусы', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (10, 'Сухие завтраки, мюсли', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (11, 'Продукты быстрого приготовления', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (12, 'Консервы', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (13, 'Мёд, джемы и сиропы', FALSE);
INSERT INTO categories (id, name, restricted) VALUES (14, 'Алкогольные напитки', TRUE);
INSERT INTO categories (id, name, restricted) VALUES (15, 'Системы нагревания, табак', TRUE);

CREATE TABLE IF NOT EXISTS products(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    category_id INTEGER NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
    name VARCHAR(100) UNIQUE NOT NULL,
    volume INTEGER NOT NULL,
    price DECIMAL NOT NULL,
    default_volume INTEGER NOT NULL
);

/*Молочные продукты*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (1, 1, 'Молоко ультрапастеризованное Домик в деревне 3.2%, 925мл', 100, 99.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (2, 1, 'Молоко пастеризованное Домик в деревне 3.7%, 930мл', 100, 95.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (3, 1, 'Молоко пастеризованное Домик в деревне 2.5%, 930мл', 100, 87.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (4, 1, 'Молоко ультрапастеризованное Домик в деревне 2.5%, 950м', 100, 93.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (5, 1, 'Сыр Ламбер Традиционный 50%, 230г', 100, 299.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (6, 1, 'Сыр Ламбер Гауда 45%, 180г', 100, 219.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (7, 1, 'Сыр Маркет Перекрёсток Сулугуни 45%, 280г', 100, 239.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (8, 1, 'Сыр творожный Hochland Сливочный 60%, 220г', 100, 259.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (9, 1, 'Творог Домик в Деревне мягкий 5.5%, 170г', 100, 63.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (10, 1, 'Творог Домик в деревне традиционный 9%, 170г', 100, 114.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (11, 1, 'Творог Домик в Деревне мягкий 0.1%, 170г', 100, 63.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (12, 1, 'Творог Домик в деревне традиционный 9%, 340г', 100, 219.90, 300);
/*Овощи и фрукты*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (13, 2, 'Мандарины отборные, кг', 100, 369.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (14, 2, 'Киви, кг', 100, 189.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (15, 2, 'Яблоки Кримсон сноу, кг', 100, 119.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (16, 2, 'Манго спелый плод, кг', 100, 299.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (17, 2, 'Картофель в сетке, кг', 100, 44.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (18, 2, 'Лук репчатый, кг', 100, 49.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (19, 2, 'Огурцы Люкс, 450г', 100, 169.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (20, 2, 'Бананы, кг', 100, 109.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (21, 2, 'Клубника, 250г', 100, 349.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (22, 2, 'Голубика свежая, 125г', 100, 249.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (23, 2, 'Малина свежая, 125г', 100, 399.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (24, 2, 'Голубика свежая, 250г', 100, 479.90, 300);
/*Макароны и крупы*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (25, 3, 'Макароны Makfa ракушки, 450г', 100, 73.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (26, 3, 'Спагетти Makfa, 500г', 100, 73.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (27, 3, 'Макароны Шебекинские спирали №366, 450г', 100, 75.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (28, 3, 'Гречка Мистраль, 900г', 100, 146.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (29, 3, 'Рис Агро-Альянс Кубанский Экстра элитный шлифованный, 900г', 100, 142.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (30, 3, 'Рис Маркет Перекрёсток длиннозёрный, 900г', 100, 124.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (31, 3, 'Рис длиннозёрный, 900г', 100, 69.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (32, 3, 'Смесь бобовая Yelli Chef Arabic Mix, 350г', 100, 169.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (33, 3, 'Фасоль Мистраль Бланш белая мелкая, 450г', 100, 139.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (34, 3, 'Чечевица Мистраль Персидская красная колотая, 450г', 100, 149.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (35, 3, 'Манка Мистраль, 800г', 100, 79.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (180, 3, 'Кускус Мистраль, 450г', 100, 129.90, 300);
/*Сладости и снеки*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (36, 4, 'Сухарики Хрусteam Багет Сырное ассорти, 60г', 100, 47.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (37, 4, 'Палочки кукурузные Cheetos Сыр, 50г', 100, 39.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (38, 4, 'Попкорн Маркет Перекрёсток солёный, 100г', 100, 34.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (39, 4, 'Палочки кукурузные Кузя Лакомкин сладкие, 140г', 100, 44.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (40, 4, 'Шоколад молочный Milka с цельным фундуком, 85г', 100, 89.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (41, 4, 'Яйцо шоколадное Kinder сюрприз с игрушкой в ассортименте, 20г', 100, 104.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (42, 4, 'Шоколад молочный Organic Chocolate с жареным кокосом 32%, 100г', 100, 219.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (43, 4, 'Шоколад молочный Milka, 85г', 100, 89.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (44, 4, 'Батончик шоколадный Picnic Big, 76г', 100, 69.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (45, 4, 'Батончик шоколадный Snickers, 50.5г', 100, 43.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (46, 4, 'Батончик шоколадный Bounty Трио, 82.5г', 100, 67.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (47, 4, 'Конфета Nuts Мегабайт цельный фундук, 66г', 100, 77.90, 300);
/*Соки, воды, напитки*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (48, 5, 'Напиток газированный Pepsi, 2л', 100, 144.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (49, 5, 'Напиток газированный Mirinda Апельсин, 2л', 100, 149.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (50, 5, 'Напиток Evervess Индиан Тоник сильногазированный, 1л', 100, 97.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (51, 5, 'Напиток газированный Pepsi, 1.5л', 100, 124.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (52, 5, 'Энергетический напиток Adrenaline Rush, 449мл', 100, 149.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (53, 5, 'Энергетический напиток Adrenaline Rush без сахара, 449мл', 100, 169.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (54, 5, 'Энергетический напиток Drive Me Original, 449мл', 100, 73.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (55, 5, 'Напиток безалкогольный Gorilla манго кокос тонизирующий пастеризованный сильногазированный, 450мл', 100, 89.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (56, 5, 'Сок J7 Апельсиновый с мякотью, 970мл', 100, 159.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (57, 5, 'Квас Русский дар Традиционный, 500мл', 100, 59.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (58, 5, 'Нектар Я Вишня осветленный, 970мл', 100, 169.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (59, 5, 'Нектар Любимый Спелый томат с мякотью, 950мл', 100, 77.90, 300);
/*Хлеб и выпечка*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (60, 6, 'Багет Перекрёсток Парижский, 140г', 100, 42.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (61, 6, 'Багет Перекрёсток с чесноком половинка, 160г', 100, 64.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (62, 6, 'Слойка Перекрёсток с вишней, 105г', 100, 44.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (63, 6, 'Слойка Перекрёсток с малиной, 105г', 100, 44.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (64, 6, 'Пиццетта Перекрёсток с салями, 90г', 100, 69.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (65, 6, 'Пиццетта Перекрёсток сырная, 85г', 100, 59.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (66, 6, 'Пирог Вишнёвый венский, кг', 100, 399.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (67, 6, 'Батон Коломенское Нарезной, 400г', 100, 53.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (68, 6, 'Пирог венский с яблоком, кг', 100, 399.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (69, 6, 'Лепёшки пшеничные Mission тортильи оригинальные со злаками, 250г', 100, 104.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (70, 6, 'Хлебцы Dr.Korner гречневые с витаминами, 100г', 100, 93.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (71, 6, 'Конвертик Мастер Пироговъ Венский с черникой, 70г', 100, 49.90, 300);
/*Рыба, птица, мясо*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (72, 7, 'Тушка цыплёнка-бройлера Петруха 1 сорт охлаждённая, кг', 100, 194.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (73, 7, 'Филе бедра индейки Индилайт охлаждённое, 410г', 100, 259.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (74, 7, 'Голень куриная Первая Свежесть охлаждённая, 750г', 100, 239.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (75, 7, 'Колбаски из говядины Мираторг Чевапчичи, 300г', 100, 209.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (76, 7, 'Бургер из говядины Мираторг охлаждённый, 200г', 100, 164.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (77, 7, 'Лопаточная часть говяжья Перекрёсток без кости, кг', 100, 649.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (78, 7, 'Задняя часть говяжья Перекрёсток без кости, кг', 100, 739.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (79, 7, 'Фарш Перекрёсток домашний, кг', 100, 419.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (80, 7, 'Форель Балтийский Берег филе-кусок слабосолёная, 200г', 100, 469.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (81, 7, 'Форель филе на коже охлаждённое, кг', 100, 1399.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (82, 7, 'Минтай без головы охлаждённый, кг', 100, 229.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (83, 7, 'Треска филе охлаждённое, кг', 100, 639.90, 300);
/*Замороженные продукты*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (84, 8, 'Пельмени Горячая Штучка Бульмени с говядиной и свининой, 900г', 100, 319.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (85, 8, 'Пельмени Мираторг домашние из свинины и говядины, 800г', 100, 529.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (86, 8, 'Вареники Маркет Перекрёсток с картофелем и грибами замороженные, 450г', 100, 134.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (87, 8, 'Пельмени Останкино традиционные, 500г', 100, 159.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (88, 8, 'Креветки 120/150 варёно-мороженые неочищенные, кг', 100, 519.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (89, 8, 'Смесь овощная Hortex Овощной квартет быстрозамороженная, 400г', 100, 149.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (90, 8, 'Брокколи Hortex быстрозамороженная, 400г', 100, 179.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (91, 8, 'Наггетсы Мираторг Хрустящие куриные, 300г', 100, 219.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (92, 8, 'Пломбир Вологодский Пломбир стаканчик 15%, 100г', 100, 77.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (93, 8, 'Шербет Айсберри Филевское плодово-ягодный стаканчик 1%, 80г', 100, 45.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (94, 8, 'Минтай Океанрыбфлот филе без кожи замороженное, 600г', 100, 369.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (95, 8, 'Чебупели Горячая Штучка Сочные с мясом, 300г', 100, 149.90, 300);
/*Соусы*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (96, 9, 'Соус Mr. Ricco Карбонара на основе растительных масел, 370г', 100, 124.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (97, 9, 'Соус соевый Sen Soy Классический, 250мл', 100, 89.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (98, 9, 'Соус Heinz сырный, 230мл', 100, 139.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (99, 9, 'Майонез Heinz классический густой 67%, 750г', 100, 259.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (100, 9, 'Кетчуп Mr. Ricco Томатный Pomodoro Speciale, 350г', 100, 104.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (101, 9, 'Горчица Столичная Русская, 100г', 100, 29.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (102, 9, 'Уксус яблочный СП Мирный натуральный 6%, 500мл', 100, 53.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (103, 9, 'Соус томатный Краснодарский, 500г', 100, 49.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (104, 9, 'Соус Filippo Berio Песто классический, 190г', 100, 409.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (105, 9, 'Соус Чим Чим Корейская заправка для фунчозы, 60г', 100, 42.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (106, 9, 'Соус Чим Чим Корейская заправка для моркови, 60г', 100, 42.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (107, 9, 'Соус Чим Чим Hot Asia для курицы терияки, 150г', 100, 89.90, 300);
/*Сухие завтраки, мюсли*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (108, 10, 'Завтрак готовый Nesquik шоколадный, 250г', 100, 144.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (109, 10, 'Завтрак готовый Nesquik Duo шоколадный, 250г', 100, 154.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (110, 10, 'Хлопья кукурузные Хрутка хрустящие, 320г', 100, 119.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (111, 10, 'Хлопья Любятово кукурузные, 300г', 100, 69.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (112, 10, 'Хлопья кукурузные Gold Honey Nut Flakes с мёдом и арахисом, 300г', 100, 189.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (113, 10, 'Хлопья Fitness из цельной пшеницы, 410г', 100, 219.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (114, 10, 'Хлопья овсяные Ясно Солнышко №3, 350г', 100, 87.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (115, 10, 'Хлопья Fitness из цельной пшеницы, 230г', 100, 184.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (116, 10, 'Хлопья мультизлаковые Любятово, 250г', 100, 124.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (117, 10, 'Хлопья Sante Crunchy овсяные, 350г', 100, 239.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (118, 10, 'Завтрак готовый Любятово Шарики шоколадные, 250г', 100, 97.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (119, 10, 'Завтрак сухой Просто глазированные с какао шарики, 250г', 100, 69.90, 300);
/*Продукты быстрого приготовления*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (120, 11, 'Лапша Доширак Квисти быстрого приготовления со вкусом курицы, 70г', 100, 22.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (121, 11, 'Лапша Доширак быстрого приготовления со вкусом курицы, 90г', 100, 54.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (122, 11, 'Лапша Доширак Квисти со вкусом говядины, 70г', 100, 22.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (123, 11, 'Вермишель Роллтон По-домашнему с курицей, 85г', 100, 38.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (124, 11, 'Суп Knorr сырный с сухариками, 15.6г', 100, 21.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (125, 11, 'Суп Knorr куриный с сухариками, 16г', 100, 21.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (126, 11, 'Суп Knorr гороховый с сухариками, 21г', 100, 21.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (127, 11, 'Пюре Роллтон картофельное с куриным вкусом, 40г', 100, 59.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (128, 11, 'Пюре Роллтон картофельное с жареными лисичками, 40г', 100, 64.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (129, 11, 'Пюре Роллтон картофельное с мясным вкусом, 40г', 100, 59.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (130, 11, 'Булгур Увелка Dinner Express с киноа готовый, 250г', 100, 104.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (131, 11, 'Полба Увелка Dinner Express цельнозерновая готовая, 250г', 100, 104.90, 300);
/*Консервы*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (132, 12, 'Горошек Globus зелёный, 400г', 100, 114.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (133, 12, 'Кукуруза Bonduelle Classique сладкая, 170г', 100, 79.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (134, 12, 'Огурцы Валдайский Погребок Купеческие маринованные, 650г', 100, 139.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (135, 12, 'Ассорти Скатерть-Самобранка из корнишонов и томатов черри, 720г', 100, 199.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (136, 12, 'Ассорти Разносольников томаты-огурцы 1сорт, 3кг', 100, 329.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (137, 12, 'Оливки Bonduelle Мансанилья с лимоном, 314мл', 100, 184.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (138, 12, 'Оливки Market Collection Каламата с красным винным уксусом без косточки, 295г', 100, 329.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (139, 12, 'Маслины Bonduelle Classique без косточки, 300г', 100, 159.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (140, 12, 'Фасоль Heinz в томатном соусе, 415г', 100, 139.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (141, 12, 'Фасоль красная Bonduelle в томатном соусе чили, 400г', 100, 179.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (142, 12, 'Опята Домашние Разносолы, 580мл', 100, 219.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (143, 12, 'Шампиньоны Маркет Перекрёсток маринованные, 480г', 100, 249.90, 300);
/*Мёд, джемы и сиропы*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (144, 13, 'Мёд Медовая Долина горный натуральный, 500г', 100, 259.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (145, 13, 'Мёд Маркет Перекрёсток луговой натуральный, 350г', 100, 239.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (146, 13, 'Мёд Берестов А.С. ИммунUP натуральный цветочный полифлорный с прополисом и кедровой живицей, 200г', 100, 719.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (147, 13, 'Варенье Стоевъ клюква протёртая с сахаром, 280г', 100, 109.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (148, 13, 'Варенье Вологодское варенье Домашнее малиновое, 370г', 100, 209.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (149, 13, 'Варенье Вологодское варенье Домашнее черничное, 370г', 100, 219.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (150, 13, 'Варенье Ратибор из крыжовника, 400г', 100, 229.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (151, 13, 'Варенье Janarat из инжир, 450г', 100, 309.99, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (152, 13, 'Лимон Фэг протёртый с имбирём и мёдом, 200г', 100, 139.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (153, 13, 'Имбирь Столбушино томлёный с медом и клюквой, 160г', 100, 439.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (154, 13, 'Соус десертный Heinz Swiss chocolate со швейцарским шоколадом, 230г', 100, 134.90, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (155, 13, 'Сироп Зелёная Линия финиковый, 240г', 100, 219.90, 300);
/*Алкогольные напитки*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (156, 14, 'Вино Pfefferer белое полусухое 12%, 750мл', 100, 1729.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (157, 14, 'Вино Lе Musqueter Grenache Syrah Merlot красное сухое 14%, 750мл', 100, 569.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (158, 14, 'Вино Самцихе красное полусладкое 12%, 750мл', 100, 699.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (159, 14, 'Вино Redwood Vineyards Pinot Noir красное полусухое 12.5%, 750мл', 100, 849.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (160, 14, 'Вино игристое Martini Prosecco DOC 13%, 750мл', 100, 1249.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (161, 14, 'Вино игристое Chateau Tamagne розовое брют 12.5%, 750мл', 100, 429.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (162, 14, 'Вино игристое Gancia Prosecco DOC белое брют 11.5%, 200мл', 100, 359.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (163, 14, 'Коньяк Древний Эривань 7-летний армянский 40%, 500мл', 100, 639.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (164, 14, 'Коньяк Shustoff XO 40%, 500мл', 100, 759.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (165, 14, 'Виски Jack Daniels Тенесси Old No.7 40%, 50мл', 100, 279.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (166, 14, 'Виски Jim Beam зерновой 40%, 50мл', 100, 179.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (167, 14, 'Ром Old Monk 7-летний тёмный 42.8%, 750мл', 100, 1299.00, 300);
/*Системы нагревания, табак*/
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (168, 15, 'Табачные стики Heets Turquoisе selection, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (169, 15, 'Табачные стики Heets Gold Selection, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (170, 15, 'Табачные стики Heets Purple Wave, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (171, 15, 'Стики Heets Summer Breeze', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (172, 15, 'Табачные стики Fiit Viola, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (173, 15, 'Табачные стики Heets Green Zing, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (174, 15, 'Табачные стики Fiit Regular, пачка', 100, 160.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (175, 15, 'Стики NEO Руби Буст, пачка', 100, 150.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (176, 15, 'Электронная система нагрева табака LIL SOLID 2.0 синий', 100, 1490.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (177, 15, 'Электронная система нагревания табака Lil Solid 2.0 графитовый', 100, 1490.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (178, 15, 'Комплект Iqos 3 Duos чёрный', 100, 3490.00, 300);
INSERT INTO products (id, category_id, name, volume, price, default_volume) VALUES (179, 15, 'Стартовый набор Glo Hyper деми чёрный model G403', 100, 990.00, 300);

CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    type VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15) UNIQUE
);

INSERT INTO users VALUES (1, 'admin', 'password', 'admin');
INSERT INTO users VALUES (2, 'courier', 'password', 'courier');
INSERT INTO users VALUES (3, 'client', 'password', 'client');

CREATE TABLE IF NOT EXISTS client_info(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    address VARCHAR(100),
    age INTEGER
);

CREATE TABLE IF NOT EXISTS orders(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    product_id INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    volume INTEGER NOT NULL
);