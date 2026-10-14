* TS: src/rules/definitions_top.ts.module module
CLASS zcl_lnt_definitions_top_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS definition TYPE i VALUE 2.
    CONSTANTS after_dd74 TYPE i VALUE 3.
    CONSTANTS ignore TYPE i VALUE 4.
    CLASS-DATA zlnt_builtin_init_b4c685a42978 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_319a1a4ffebd.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_definitions_top_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_319a1a4ffebd.
    IF zlnt_builtin_init_b4c685a42978 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_b4c685a42978 = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1860_86fed0379902.
  ENDMETHOD.
ENDCLASS.
