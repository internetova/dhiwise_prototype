
# DhiWise

Сами о себе:

DhiWise - это платформа программирования, на которой разработчики могут преобразовывать свои проекты
в удобный для разработчиков код для мобильных и веб-приложений. DhiWise автоматизирует жизненный
цикл разработки приложений и мгновенно генерирует читаемый, модульный и повторно используемый код.

[https://www.dhiwise.com](https://www.dhiwise.com/)

Индия

[https://docs.dhiwise.com/docs/flutter/intro](https://docs.dhiwise.com/docs/flutter/intro)

[Кейс от разработчика: https://www.dhiwise.com/use-case/dhi-basket](https://www.dhiwise.com/use-case/dhi-basket)

Выглядит круто 👍🏻 и многообещающе. Пока в бете бесплатный.

**Результаты тестирования:**
- Для правильного экспорта элементов надо следовать рекомендациям DhiWise при разработке макетов
- Можно выбрать что экспортировать
- Графика экспортируется в svg и png
- Экспорт цветов и шрифтов
- Создается реальный проект со всеми зависимостями
- Код не самый ужасный, можно разобраться. Главное экспортировать без стейт менеджера (привет getX ✋🏻)
- На создание прототипа уйдет минимум 1-2 дня. Самая трудоёмкая работа разобраться с фигмой чтобы элементы
  правильно экспортировались.

**Недостатки:**
- Медленно работает (требуется какое-то время для экспорта)
- Грузит ресурсы. У меня макбук про 2021 на m1 с 16 гб памяти и он начал греться впервые при работе с этой штукой.
- От сгенерированного кода могут вытекать глаза (но это с непривычки).

**Выводы:**
Если нужно по-быстрому сделать демо заказчику то подойдет идеально. Главное чтобы корректно был выполнен импорт.
Настраивать кнопки не рекомендую потому что генерируется дикая дичь. Быстрее самому потом добавить, чем возиться с ними 
в редакторе системы и потом разбираться что тебе нагенерировали. AppRoutes готовый будет - бери и втыкай куда надо.

![](docs/sample.gif)

Кто хочет поупражняться макет (главный экран экспортировался не корректно, надо брать Home 2):
[https://www.figma.com/file/dybtvVJWEYUXFZ3IoaX0p4/Grocery-(Copy)?node-id=1-2121&t=cIWaH0OJX4xcqMAZ-0](https://www.figma.com/file/dybtvVJWEYUXFZ3IoaX0p4/Grocery-(Copy)?node-id=1-2121&t=cIWaH0OJX4xcqMAZ-0)

#### Полезные ссылки:
- [Самое важное надо сделать в фигме - тут инструкции](https://docs.dhiwise.com/docs/Designguidelines/intro)
- [Обзор как создать приложение на flutter](https://docs.dhiwise.com/docs/flutter/intro)

## Это генерирует система при создании проекта

### Table of contents
- [System requirements](#system-requirements)
- [Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](#app-navigations)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Figma design guidelines for better UI accuracy

Read our guidelines to increase the accuracy of design-to-code conversion by optimizing Figma designs.
https://docs.dhiwise.com/docs/Designguidelines/intro

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Support

If you have any problems or questions, go to our Discord channel, where we will help you as quickly as possible: https://discord.com/invite/rFMnCG5MZ7
