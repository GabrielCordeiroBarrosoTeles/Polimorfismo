*&---------------------------------------------------------------------*
*& Report ZTESTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste.

" Polimorfismo:
"   Permite que objetos de diferentes classes possam ser tratados de forma uniforme, através
"   do uso de métodos com o mesmo nome e assinatura, mas com comportamentos diferentes em cada classe

CLASS pai DEFINITION.

  PUBLIC SECTION.
    METHODS: cumprimentar.

ENDCLASS.

CLASS pai IMPLEMENTATION.

  METHOD cumprimentar.
    WRITE: / 'Olá Pessoal'.
  ENDMETHOD.

ENDCLASS.

CLASS filho DEFINITION INHERITING FROM pai.

  PUBLIC SECTION.
    METHODS: cumprimentar REDEFINITION.

ENDCLASS.

CLASS filho IMPLEMENTATION.

  METHOD cumprimentar.
    WRITE: /'Fala Galera'.
  ENDMETHOD.

ENDCLASS.

CLASS filha DEFINITION INHERITING FROM pai.

ENDCLASS.

START-OF-SELECTION.
  DATA obj  TYPE REF TO pai.

  obj = NEW pai( ).
  obj->cumprimentar( ).

  obj = NEW filho( ).
  obj->cumprimentar( ).

  obj = NEW filha( ).
  obj->cumprimentar( ).
