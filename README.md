# Local logger

Пример использования `Local logger`. 

За сохранение логов отвечает features/local_logger.

Доступные интерфейсы:
- getLog
- writeLog
- writeException
- writeError
- clearLog

Логи сохраняются в файл `log.txt`.

### Отправить логи в соц сети
---

Для отправки логов необходимо получить логи через getLog. Дальше отправить эти логики с помощью любого сервиса, например, как показано в проекте - через `share_plus`. 

### Скачать лог файл с физического устройства iOS
---

Для этого необходимо подключить устройство к компьютеру, а затем

Xcode - Window - Device and simulator - Devices - Выбрать подключенный девайс - В installed apps выбрать приложение - Нажать кнопку троеточие - Download container - Правой кнопкой на *.xcappdata - show package contents - Documents - log.txt

### Demo
---
<img src=".github/demo.gif" height=300> 