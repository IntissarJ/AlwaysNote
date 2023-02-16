# AlwaysNote 
Hierin wordt inplaats van UserDefault gebruik gemaakt van Appstorage. Dit is een wrapper van UserDefault.

Appstorage zal dan automatisch de waarde van je view aanpassen wanneer de waarde van dat property is aangepast.
Het werkt als een waker van UserDefaults wanneer een key is aangepast, het refresht meteen daarna ook je UI. 
Soort gelijk als in C# als het gaat om subscription en publisher patroon.

AppStorage schrijft je data meteen naar useDefaults. Daarvoor moet je wel opassen voor gevoelige data, omdat het makkelijker zo te extracten is.
