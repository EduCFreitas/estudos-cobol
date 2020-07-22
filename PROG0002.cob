      ******************************************************************
      * Author: Eduardo Freitas
      * Date: 22/07/2020
      * Purpose: Estudo dos comandos aritméticos em COBOL
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
       77 WRK-ACUMULADOR  PIC 9(3) VALUE 100.
       77 WRK-ACUMULADOR2 PIC 9(2) VALUE ZEROS.
       77 WRK-ACUMULADOR3 PIC 9(1) VALUE 9.
       77 WRK-SALDO       PIC 9(10) VALUE ZEROS.
       77 WRK-RESULTADO   PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR       PIC 9(10) VALUE ZEROS.
       77 WRK-RESTO       PIC 9(10) VALUE ZEROS.

      *================================================================*
       PROCEDURE                          DIVISION.
      *================================================================*
      * ADD: acumula dois ou mais operadores numéricos e armazena o resultado.
      * TO: valor_variável = valor_variável + valor_informado
      * GIVING: valor_variável = valor_informado
      * COMPUTE: permite que as operações aritméticas sejasm combinadas em fórmulas sem restrições impostas para o campo
      * SUBTRACT: subtrai um ou mais operadores numéricos e armazena o resultado
      * DIVIDE: efetua divisão e disponibila o cosciente e, se indicado, o resto da divisão

      *      ADD 1 TO WRK-ACUMULADOR.
      *      DISPLAY "AC1 " WRK-ACUMULADOR.
      *      ADD 1 2 TO WRK-ACUMULADOR WRK-ACUMULADOR2.
      *      DISPLAY "AC1 " WRK-ACUMULADOR.
      *      DISPLAY "AC2 " WRK-ACUMULADOR2.

      *      ADD 1 GIVING WRK-ACUMULADOR3.
      *      DISPLAY "AC3 " WRK-ACUMULADOR3.

      *       COMPUTE WRK-ACUMULADOR2 = WRK-ACUMULADOR / 2.
      *       DISPLAY WRK-ACUMULADOR2 " " WRK-ACUMULADOR.

      *        MOVE 100 TO WRK-SALDO.
      *        SUBTRACT 50 FROM WRK-SALDO.
      *        MOVE 25 TO WRK-VALOR.
      *        SUBTRACT WRK-VALOR FROM WRK-SALDO GIVING WRK-RESULTADO.
      *        DISPLAY WRK-SALDO.
      *        DISPLAY WRK-RESULTADO.

      *        MOVE 60 TO WRK-VALOR.
      *        DIVIDE 2 INTO WRK-VALOR GIVING WRK-RESULTADO.
      *        DIVIDE WRK-VALOR BY 2 GIVING WRK-RESULTADO
      *                              REMAINDER WRK-RESTO.
      *        60 / 2 = 30
      *        DISPLAY WRK-RESULTADO " " WRK-RESTO.

               MOVE 50 TO WRK-VALOR.
               MULTIPLY 2 BY WRK-VALOR.
               DISPLAY WRK-VALOR.

      * -- Tratativa de erro --
      *       ADD 1 TO WRK-ACUMULADOR3
      *       ON SIZE ERROR
      *         DISPLAY "ERRO NO ACUMULADOR"
      *       END-ADD.

            STOP RUN.
