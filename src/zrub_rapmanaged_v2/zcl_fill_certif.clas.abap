CLASS zcl_fill_certif DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_certif IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES tt_certif     TYPE STANDARD TABLE OF ztb_rap_certif WITH DEFAULT KEY.
    TYPES tt_certif_st  TYPE STANDARD TABLE OF ztb_rap_status WITH DEFAULT KEY.

*    DATA(lt_certif) = VALUE tt_certif(
*        ( cert_uuid = '01' matnr = '1' )
*        ( cert_uuid = '02' matnr = '2' )
*        ( cert_uuid = '03' matnr = '3' )
*    ).
*
*    DATA(lt_certif_st)  = VALUE tt_certif_st(
*        ( state_uuid    = '01' cert_uuid = '01' matnr = '1' )
*        ( state_uuid    = '02' cert_uuid = '02' matnr = '2' )
*        ( state_uuid    = '03' cert_uuid = '03' matnr = '3' )
*        ( state_uuid    = '04' cert_uuid = '03' matnr = '1' )
*    ).

    DELETE FROM ztb_rap_certif.
    DELETE FROM ztb_rap_status.

    out->write( '### Tabela de Certificados limpa! ###' ).
    out->write( '### Tabela de Status de Certificados limpos! ###' ).

*    MODIFY ztb_rap_certif FROM TABLE @lt_certif.
*    MODIFY ztb_rap_status FROM TABLE @lt_certif_st.

*    out->write( '### Certificados gravados! ###' ).
*    out->write( '### Status de Certificados gravados! ###' ).

  ENDMETHOD.

ENDCLASS.
