* TS: node_modules/vscode-languageserver-types/lib/umd/main.d.ts:1868:1 MarkedStringWithLanguage
CLASS zcl_lnt_mrkd_strng_wth_lngg DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA value TYPE string.
    METHODS constructor IMPORTING i_language TYPE string i_value TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mrkd_strng_wth_lngg IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = i_value.
    DATA(t3) = t1.
    me->language = t3.
    DATA(t4) = t2.
    me->value = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_a63becc74831=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.
ENDCLASS.
