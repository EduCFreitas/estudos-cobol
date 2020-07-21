      ******************************************************************
      * Author: Eduardo Freitas
      * Date: 21/07/2020
      * Purpose: Estudo de variáveis em COBOL
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
      * Onde as variáveis serão declaradas
      * PIC / PICTURE: define o tipo e o tamanho do campo
      * Tipos: numérico (representado por 9, aceita até 18 dígitos), alfabético (representado por A) e alfanumérico (representado por X)
      * Não pode contar espaços ou underline
      * Pode conter letras, números ou hífens (hífen não pode estar no começo ou final)
      * Não pode ser palavra reservada COBOL
      * Mínimo de 1 caracter alfabético
      * Tamanho máximo de 30 caracteres
      * S antes do tipo da variável numérica representa que o sinal (+ ou -) acompanha o valor
      * Registros possibilitam armazenar dados de tipos diferentes, agrupados em uma única variável
      * Cada um dos tipos de dados armazenados na variável é chamado de campo.
      * Os níveis definem a hierarquia dos campos dentro dos registros ou das áreas auxiliares criadas pelo programador
      * O registro também deve ser numerado pois ele é um item de grupo
      * Dentro dos itens de grupo estão os itens elementares, recebem numeração de 02 a 49
      * A numeração para a raiz de um item de grupo é 01
      * Todos os itens de grupo são alfanuméricos por definição
      * Os níveis de 50 a 99 tem uso específico
      * 01 ou 77 são aceitáveis na área A
      * Níveis 66, 77, 78, 88 Somente níveis
      * Nível 66 é usado para renomear outras variáveis
      * Nível 77 é usado para declaração de variáveis independentes
      * Nível 78 é usado para declaração de constantes dentro de um programa
      * Nível 88 define nomes e condições que devem ser associadas a valores definidos
      * <nível> <identificador> <tipo(tamanho)>
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
