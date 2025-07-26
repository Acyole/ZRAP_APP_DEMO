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

    TYPES tt_certif TYPE STANDARD TABLE OF ztb_rap_certif WITH DEFAULT KEY.

    DATA(lt_certif) = VALUE tt_certif(
        ( cert_uuid = '01' matnr = '1' )
        ( cert_uuid = '02' matnr = '2' )
        ( cert_uuid = '03' matnr = '3' )
    ).

    DELETE FROM ztb_rap_certif.

    MODIFY ztb_rap_certif FROM TABLE @lt_certif.

    out->write( '### Certificados gravados! ###' ).

  ENDMETHOD.

ENDCLASS.
