      ******************************************************************
      * Author: Eduardo Freitas
      * Date: 21/07/2020
      * Purpose: Estudo de vari�veis em COBOL
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
      * Onde as vari�veis ser�o declaradas
      * PIC / PICTURE: define o tipo e o tamanho do campo
      * Tipos: num�rico (representado por 9, aceita at� 18 d�gitos), alfab�tico (representado por A) e alfanum�rico (representado por X)
      * N�o pode contar espa�os ou underline
      * Pode conter letras, n�meros ou h�fens (h�fen n�o pode estar no come�o ou final)
      * N�o pode ser palavra reservada COBOL
      * M�nimo de 1 caracter alfab�tico
      * Tamanho m�ximo de 30 caracteres
      * S antes do tipo da vari�vel num�rica representa que o sinal (+ ou -) acompanha o valor
      * Registros possibilitam armazenar dados de tipos diferentes, agrupados em uma �nica vari�vel
      * Cada um dos tipos de dados armazenados na vari�vel � chamado de campo.
      * Os n�veis definem a hierarquia dos campos dentro dos registros ou das �reas auxiliares criadas pelo programador
      * O registro tamb�m deve ser numerado pois ele � um item de grupo
      * Dentro dos itens de grupo est�o os itens elementares, recebem numera��o de 02 a 49
      * A numera��o para a raiz de um item de grupo � 01
      * Todos os itens de grupo s�o alfanum�ricos por defini��o
      * Os n�veis de 50 a 99 tem uso espec�fico
      * 01 ou 77 s�o aceit�veis na �rea A
      * N�veis 66, 77, 78, 88 Somente n�veis
      * N�vel 66 � usado para renomear outras vari�veis
      * N�vel 77 � usado para declara��o de vari�veis independentes
      * N�vel 78 � usado para declara��o de constantes dentro de um programa
      * N�vel 88 define nomes e condi��es que devem ser associadas a valores definidos
      * <n�vel> <identificador> <tipo(tamanho)>
       77       NUMEROX         PIC 9(18).
       77       NUMEROX-SINAL   PIC S9(18).
       77       NUMERO-DECIMAL  PIC 9(02)V9(02).
      *77       NUMERO-DECIMAL  PIC 99V99. *Outra forma de representar
      *77       NUMERO-DECIMAL  PIC 9(02)V99.
       77       NOMEX           PIC A(20).
       77       NOMENUMERO      PIC X(30).

       01       CLIENTE.
                  02 NOME       PIC X(20) VALUE "EDUARDO FREITAS".
                  02 RG         PIC X(11) VALUE "33333333333".
                  02 CPF        PIC X(11) VALUE "44444444444".
                  02 ENDERECO   PIC X(20) VALUE "RUA TESTE 1".
                  02 DATANASC.
                      03 DIA    PIC X(02) VALUE "22".
                      03 MES    PIC X(02) VALUE "10".
                      03 ANO    PIC X(04) VALUE "1993".

                  66 MES-ANO RENAMES MES THRU ANO.

       78 GRAVIDADE VALUE 10.

       01      GENERO PIC X.
                  88 MASCULINO VALUE "M".
                  88 FEMININO VALUE "F".

      *================================================================*
       PROCEDURE                          DIVISION.
      *================================================================*
            SET MASCULINO TO TRUE.
            DISPLAY GENERO.
            STOP RUN.
