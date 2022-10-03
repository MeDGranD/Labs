00, ,<,001 //Начало

001,1,<,001 //Переход в начало числа
001,0,<,001
001, ,>,002

002,1, ,100 //Проверка, является ли число единицей или нулём
002,0, ,200
002, ,=,003

100, ,>,101 //Перенос единицы в копированное число
101,1,>,101
101,0,>,101
101, ,>,102
102,1,>,102
102,0,>,102
102, ,1,103
103,1,<,103
103,0,<,103
103, ,<,104
104,1,<,104
104,0,<,104
104, ,1,105
105,1,>,002

200, ,>,201 //Перенос нуля в копированное число
201,1,>,201
201,0,>,201
201, ,>,202
202,1,>,202
202,0,>,202
202, ,0,203
203,1,<,203
203,0,<,203
203, ,<,204
204,1,<,204
204,0,<,204
204, ,0,205
205,0,>,002

003, ,<,003 //Проверка на сходство первой и последней цифры
003,1,>,310 //Если единица
003,0,>,300 //Если нуль

310, ,>,310 //Проверка на единицу
310,1, ,311
310,0, ,007
311, ,<,311
311,1,<,004
311,0,<,004

300, ,>,300 //Проверка на ноль
300,1, ,007
300,0, ,301
301, ,<,301
301,1,<,004
301,0,<,004

004,1, ,500 //Проверка на единицу
004,0, ,600 //нуля
004, ,>,005 //Вывод положительного результата

500, ,>,501 //Сама проверка на единицу
501,1,>,501
501,0,>,501
501, ,>,502
502, ,>,502
502,0, ,513 //Негативный результат
502,1, ,503
503, ,<,503
503,1,<,504
503,0,<,504
504,1,<,504
504,0,<,504
504, ,1,505
505,1,<,004 //Переход к следующей цифре

513, ,<,513 //Возврат единицы на место
513,1,<,514
513,0,<,514
514,1,<,514
514,0,<,514
514, ,1,516
516,0,>,516
516,1,>,516
516, ,>,517
517, ,>,517
517,1, ,007
517,0, ,007

600, ,>,601 //Сама проверка на ноль
601,1,>,601
601,0,>,601
601, ,>,602
602, ,>,602
602,0, ,603
602,1, ,613 //Негативный результат
603, ,<,603
603,1,<,604
603,0,<,604
604,1,<,604
604,0,<,604
604, ,0,605
605,0,<,004 //Переход к следующей цифре

613, ,<,613 //Возврат нуля на место
613,1,<,614
613,0,<,614
614,1,<,614
614,0,<,614
614, ,0,616
616,0,>,616
616,1,>,616
616, ,>,617
617, ,>,617
617,1, ,007
617,0, ,007

005,1,>,005 //Вывод 1 (Положительный результат)
005,0,>,005
005, ,>,006
006, ,1,006
006,1,>,012

007, ,>,008 //Вывод 0 (Негативный результат)
008,1, ,007
008,0, ,007
008, ,<,009
009, ,<,009
009,1,>,010
009,0,>,010
010, ,>,011
011, ,0,011
011,0,>,012

012, ,#,012 //Завершение программы
