﻿
Функция НайтиСоздатьПриоритет(Данные) Экспорт
	
	Если Данные = Неопределено Тогда
		Возврат Справочники.JIRA_Приоритеты.ПустаяСсылка();
	КонецЕсли;
	
	НайденнаяСсылка = Справочники.JIRA_Приоритеты.НайтиПоКоду(Данные["id"]);
	Если НЕ ЗначениеЗаполнено(НайденнаяСсылка) Тогда
		НовыйОбъект = Справочники.JIRA_Приоритеты.СоздатьЭлемент();
		НовыйОбъект.Код = 			Данные["id"];
		НовыйОбъект.Наименование = 	Данные["name"];
		
		НовыйОбъект.Записать();
		
		НайденнаяСсылка = НовыйОбъект.Ссылка;
	КонецЕсли;
	
	Возврат НайденнаяСсылка;
	
КонецФункции
