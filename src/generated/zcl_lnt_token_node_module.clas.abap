* TS: src/abap/nodes/token_node.ts.module module
CLASS zcl_lnt_token_node_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA empty_children TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_67616964ab0b TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_fbfa5be386ab.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_token_node_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_fbfa5be386ab.
    IF zlnt_builtin_init_67616964ab0b = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_67616964ab0b = abap_true.
    IF zcl_lnt_token_node_module=>zlnt_builtin_init_67616964ab0b = abap_false.
      zcl_lnt_token_node_module=>zlnt_builtin_init_fbfa5be386ab( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    zcl_lnt_token_node_module=>empty_children = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1854_66866b77750c.
  ENDMETHOD.
ENDCLASS.
