# Задаем базовый образ jupyter/scipy-notebook и указываем, что нужна последняя сборка образа
FROM jupyter/scipy-notebook:latest

# Копируем файлы и папки из рабочей папки в контейнер
COPY . .

# Выполняем команду  - устанавливаем библиотеки, указанные в файле requirements.txt
RUN pip install -r requirements.txt

# Задаем рабочую директорию в контейнере
WORKDIR /home/jovyan

# Прикрепляем папку
#VOLUME /Users/tahhu/Desktop/Project_DS:/home/jovyan

