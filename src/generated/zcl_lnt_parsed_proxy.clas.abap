* TS: src/objects/proxy_object.ts:24:1 ParsedProxy
CLASS zcl_lnt_parsed_proxy DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA proxy_data TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_proxy_data TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsed_proxy IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_proxy_data.
    DATA(t2) = t1.
    me->proxy_data = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1226_65cf732c0dd9.
  ENDMETHOD.
ENDCLASS.
