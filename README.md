### Запуск контейнеров

```bash
docker-compose up -d
```

### Проверка настройки в PHPStorm

1. В PHPStorm, откройте **Settings** или **Preferences**.
2. Перейдите в **Languages & Frameworks > PHP > Debug**.
3. Убедитесь, что порт отладчика установлен на 9003.
4. Перейдите в **Languages & Frameworks > PHP > Servers** и добавьте новый сервер, если его еще нет:
    - **Name**: Docker.
    - **Host**: localhost.
    - **Port**: 80.
    - **Debugger**: Xdebug.
    - Установите флажок **Use path mappings** и сопоставьте корневую директорию проекта с `/var/www/html`.

### Включение слушателя отладчика в PHPStorm

Нажмите на значок телефона с зеленой стрелкой в правом верхнем углу PHPStorm, чтобы включить слушатель отладчика.

Теперь Xdebug должен автоматически обнаруживать ваш хост и корректно работать с PHPStorm для отладки.
