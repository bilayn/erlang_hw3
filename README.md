__01: Извлечь из строки первое слово:__
Пример:

    1> BinText = <<"Some text">>.
    <<"Some Text">>
    2> lesson3_task1:first_word(BinText).
    <<”Some”>>

__02: Разделить строку на слова:__
Пример:

    1> BinText = <<"Text with four words">>.
    <<"Text with four words">>
    2> lesson3_task2:words(BinText).
    [<<"Text">>, <<"with">>, <<"four">>, <<"words">>]

__03: Разделить строку на части, с явным указанием разделителя:__
Пример:

    1> BinText = <<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>.
    <<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>
    2> lesson3_task3:split(BinText, “-:-”).
    [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>]