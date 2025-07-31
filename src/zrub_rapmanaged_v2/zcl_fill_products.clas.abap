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
      tt_products TYPE STANDARD TABLE OF ztb_rap_product WITH DEFAULT KEY.

    DELETE FROM ztb_rap_product.
    out->write( 'Tabela de Produtos limpa...' ).

    DATA(lt_products) = VALUE tt_products(
        ( matnr = '000000000000000001' description = 'Celular iPhone 14S'    language = 'P' )
        ( matnr = '000000000000000002' description = 'Televisão LED LG 55"' language = 'P' )
        ( matnr = '000000000000000003' description = 'Computador Dell PC' language = 'P' )
        ( matnr = '000000000000000001' description = 'Cell Phone iPhone 14S'    language = 'E' )
        ( matnr = '000000000000000002' description = 'Television  LED LG 55"' language = 'E' )
        ( matnr = '000000000000000003' description = 'Computer Dell PC' language = 'E' )
    ).

    MODIFY ztb_rap_product FROM TABLE @lt_products.

    out->write( 'Produtos cadastrados com sucesso!' ).
  ENDMETHOD.

ENDCLASS.
