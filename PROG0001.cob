      ******************************************************************
      * Author: Eduardo Freitas
      * Date: 22/07/2020
      * Purpose: Estudo dos comandos em COBOL
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
       77 WRK-NOME         PIC X(20) VALUE SPACES.
       77 WRK-DATA         PIC 9(6) VALUE ZEROS.
       77 WRK-DATA-JULIANA PIC X(5) VALUE ZEROS.
       77 WRK-DIA          PIC 9(1) VALUE ZERO.
       77 WRK-HORA         PIC 9(8) VALUE ZEROS.
       77 WRK-VALOR        PIC 9(10) VALUE 10.
       77 WRK-VALOR2       PIC 9(10) VALUE ZEROS.

       01 WRK-TOT.
           05 WRK-TOTAL   PIC 9(5) VALUE 19.

       01 WRK-TOT2.
           05 WRK-TOTAL   PIC 9(5) VALUE ZEROS.

      *================================================================*
       PROCEDURE                          DIVISION.
      *================================================================*
      * ACCEPT: recebe dados do sistema ou passados pelo usuário
      * DISPLAY: mostra conteúdo de uma variável, podendo ser concatenada com outro texto
      * STOP RUN: encerra a execução de um programa.
      * MOVE: atribui valor às variàveis.

      *      ACCEPT WRK-NOME.
      *      DISPLAY "OLA " WRK-NOME.

      *      ACCEPT WRK-DATA FROM DATE.
      *      DISPLAY WRK-DATA.

      *      ACCEPT WRK-DATA-JULIANA FROM DAY.
      *      DISPLAY WRK-DATA-JULIANA.

      *      ACCEPT WRK-DIA FROM DAY-OF-WEEK.
      *      DISPLAY WRK-DIA.

      *      ACCEPT WRK-HORA FROM TIME.
      *      DISPLAY WRK-HORA.

      *       MOVE 20 TO WRK-VALOR2.
      *       DISPLAY "VALOR 2: " WRK-VALOR2.
      *       MOVE WRK-VALOR TO WRK-VALOR2.
      *       DISPLAY "VALOR 2: " WRK-VALOR2.
      *       DISPLAY "VALOR: " WRK-VALOR.
      *       MOVE 70 TO WRK-VALOR WRK-VALOR2.
      *       DISPLAY "VALOR: " WRK-VALOR.
      *       DISPLAY "VALOR 2: " WRK-VALOR2.
              MOVE WRK-TOTAL OF WRK-TOT TO WRK-VALOR.
              DISPLAY "VALOR" WRK-VALOR.

            STOP RUN.
