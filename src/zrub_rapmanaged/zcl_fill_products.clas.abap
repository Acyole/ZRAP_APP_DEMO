CLASS zcl_fill_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_products IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES:
      tt_products TYPE STANDARD TABLE OF zrub_rap_product WITH DEFAULT KEY.

    DATA(lt_products) = VALUE tt_products(
        ( matnr = '1' description = 'iPhone 14S' )
        ( matnr = '2' description = 'TV LED LG 55"' )
        ( matnr = '3' description = 'Notebook Dell' )
     ).

    MODIFY zrub_rap_product FROM TABLE @lt_products.

    out->write( 'Produtos cadastrados com sucesso!' ).
  ENDMETHOD.

ENDCLASS.
