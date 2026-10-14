* TS: src/abap/nodes/statement_node.ts.module module
CLASS zcl_lnt_statement_node_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA empty_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_8ada772f76fa TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_727465b8053b.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_node_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_727465b8053b.
    IF zlnt_builtin_init_8ada772f76fa = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_8ada772f76fa = abap_true.
    IF zcl_lnt_statement_node_module=>zlnt_builtin_init_8ada772f76fa = abap_false.
      zcl_lnt_statement_node_module=>zlnt_builtin_init_727465b8053b( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    zcl_lnt_statement_node_module=>empty_pragmas = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1853_ee0f79cb6c43.
  ENDMETHOD.
ENDCLASS.
