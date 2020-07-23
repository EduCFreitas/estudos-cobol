      ******************************************************************
      * Author: Eduardo Freitas
      * Date: 23/07/2020
      * Purpose: Estudo dos comandos de decisão em COBOL
      * Tectonics: cobc
      ******************************************************************
      *================================================================*
       IDENTIFICATION                   DIVISION.
      *================================================================*
       PROGRAM-ID. PROGRA001.
      *AUTHOR. EDUARDO FREITAS.
      *================================================================*
       ENVIRONMENT                      DIVISION.
      *================================================================*
      *----------------------------------------------------------------*
       CONFIGURATION              SECTION.
      *----------------------------------------------------------------*
       SPECIAL-NAMES.
      *----------------------------------------------------------------*
       INPUT-OUTPUT               SECTION.
      *----------------------------------------------------------------*
       FILE-CONTROL.
      *================================================================*
       DATA                               DIVISION.
      *================================================================*
      *----------------------------------------------------------------*
       FILE                        SECTION.
      *----------------------------------------------------------------*
       WORKING-STORAGE             SECTION.
      *----------------------------------------------------------------*
       77 WRK-VALOR  PIC 9(10) VALUE 51.
       77 WRK-VALOR2 PIC X(10) VALUE 'A'.
       77 WRK-VALORP PIC S9(10) VALUE 10.
       77 WRK-VALORN PIC S9(10) VALUE -20.

      *================================================================*
       PROCEDURE                          DIVISION.
      *================================================================*
      * Igual: = EQUAL
      * Diferente: NOT = NOT EQUAL
      * Maior: > GREATER
      * Menor: < LESS
      * Maior ou igual: >= NOT LESS
      * Menor ou igual: <= NOT GREATER
      * Operadores lógicos: NOT, AND, OR
      * Teste de sinal: IS POSITIVE, IS NEGATIVE, IS ZERO
      * Teste de classe: IS NUMERIC, IS ALPHABETIC

           IF WRK-VALOR IS NUMERIC
               DISPLAY "VALOR 1 NUMERICO"
           ELSE
               DISPLAY "VALOR 1 NAO NUMERICO"
           END-IF.

           IF WRK-VALOR2 IS NUMERIC
               DISPLAY "VALOR 2 NUMERICO"
           ELSE
               DISPLAY "VALOR 2 NAO NUMERICO"
           END-IF.

           IF WRK-VALOR IS ALPHABETIC
               DISPLAY "VALOR 1 ALFABETICO"
           ELSE
               DISPLAY "VALOR 1 NAO ALFABETICO"
           END-IF.

           IF WRK-VALOR2 IS ALPHABETIC
               DISPLAY "VALOR 2 ALFABETICO"
           ELSE
               DISPLAY "VALOR 2 NAO ALFABETICO"
           END-IF.


           IF WRK-VALORP IS POSITIVE
               DISPLAY WRK-VALORP " P POSITIVO"
           ELSE
               DISPLAY WRK-VALORP " P NAO POSITIVO"
           END-IF.

           IF WRK-VALORN IS POSITIVE
               DISPLAY WRK-VALORN " N POSITIVO"
           ELSE
               DISPLAY WRK-VALORN " N NAO POSITIVO"
           END-IF.

           IF WRK-VALORP IS NEGATIVE
               DISPLAY WRK-VALORP " P NEGATIVO"
           ELSE
               DISPLAY WRK-VALORP " P NAO NEGATIVO"
           END-IF.

           IF WRK-VALORN IS NEGATIVE
               DISPLAY WRK-VALORN " N NEGATIVO"
           ELSE
               DISPLAY WRK-VALORN " N NAO NEGATIVO"
           END-IF.


           IF WRK-VALORP = WRK-VALORN
               DISPLAY WRK-VALORP " = " WRK-VALORN
           END-IF.

           IF WRK-VALORP NOT= WRK-VALORN
               DISPLAY WRK-VALORP " != " WRK-VALORN
           END-IF.

           IF WRK-VALORP > WRK-VALORN
               DISPLAY WRK-VALORP " > " WRK-VALORN
           END-IF.

           IF WRK-VALORP < WRK-VALORN
               DISPLAY WRK-VALORP " < " WRK-VALORN
           END-IF.


            STOP RUN.
