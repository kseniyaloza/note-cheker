#Использовать asserts

Функция ВерсияДокерМашины()
   
    процесДокерМашины = СоздатьПроцесс("docker-machine --version",,Истина,Ложь);
 
 	процесДокерМашины.Запустить();
 	процесДокерМашины.ОжидатьЗавершения();
 
 	СтрокаВывода = "";
 	СтрокаВывода = процесДокерМашины.ПотокВывода.Прочитать();
 
 	Сообщить("Версия докер машины " + СтрокаВывода);
 
 	Возврат СтрокаВывода;

КонецФункции // ВерсияДокерМашины()

Ожидаем.Что(ВерсияДокерМашины()).Содержит("0.7");