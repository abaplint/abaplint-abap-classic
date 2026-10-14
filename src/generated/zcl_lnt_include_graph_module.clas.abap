* TS: src/utils/include_graph.ts.module module
CLASS zcl_lnt_include_graph_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA fmxxinclude TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLASS-METHODS get_abap_objects IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_672ad5f3b5e9 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_eae383aaa208.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_include_graph_module IMPLEMENTATION.
  METHOD get_abap_objects.
    IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
      zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zif_lnt_registry( t1 ).
    t4 = t5->get_objects( ).
    DATA t6 TYPE REF TO zif_lnt_object.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t4->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CAST zif_lnt_object( t6 ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t8 = abap_true.
        DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t11 TYPE REF TO zcl_lnt_abap_object.
        DATA(t12) = CAST zif_lnt_object( t6 ).
        DATA t13 TYPE REF TO object.
        t13 = t12.
        t11 ?= t13.
        APPEND t11 TO t10->items.
      ENDIF.
    ENDLOOP.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t14.

  ENDMETHOD.
  METHOD zlnt_builtin_init_eae383aaa208.
    IF zlnt_builtin_init_672ad5f3b5e9 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_672ad5f3b5e9 = abap_true.
    IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
      zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t1.
    DATA(t2) = `^(\/\w+\/)?L.+XX$`.
    DATA(t3) = `^(\/[A-Za-z0-9_]+\/)?L.+XX$`.
    DATA(t4) = ||.
    CREATE OBJECT t1 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t3 flags = t4.
    t1->source = t2.
    zcl_lnt_include_graph_module=>fmxxinclude = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1839_1541f31d5d31.
  ENDMETHOD.
ENDCLASS.
