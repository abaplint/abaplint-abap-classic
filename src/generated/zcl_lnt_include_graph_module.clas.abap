* TS: src/utils/include_graph.ts.module module
CLASS zcl_lnt_include_graph_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA fmxxinclude TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLASS-METHODS get_abap_objects IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_672ad5f3b5e9 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_eae383aaa208.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_include_graph_module IMPLEMENTATION.
  METHOD get_abap_objects.
    IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
      zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
    ENDIF.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t4 = t1->get_objects( )->iterate( ).
    DO.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      t9 = t4->next( ).
      IF t9->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      t14 = t9->value.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          t19 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t4->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t4->close( ).
      ENDIF.
      IF t19 = abap_true.
        DATA(t33) = VALUE f( ).
        DATA(t34) = VALUE f( ).
        DATA(t35) = VALUE abap_bool( ).
        t35 = abap_false.
        DATA t37 TYPE REF TO cx_root.
        CLEAR t37.
        TRY.
            DATA(t38) = VALUE f( ).
            DATA(t39) = VALUE i( ).
            DATA t41 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t41.
            DATA t43 TYPE REF TO object.
            CLEAR t43.
            t43 = t14.
            t41 ?= t43.
            t2->load( ).
            APPEND t41 TO t2->items.
            t39 = lines( t2->items ).
            t2->save( ).
            t38 = t39.
            t34 = t38.
            t35 = abap_true.
          CATCH cx_root INTO t37.
            IF xsdbool( t35 = abap_false ) = abap_true.
              t4->close( ).
            ENDIF.
            RAISE EXCEPTION t37.
        ENDTRY.
        IF xsdbool( t35 = abap_false ) = abap_true.
          t4->close( ).
        ENDIF.
        t33 = t34.
      ENDIF.
    ENDDO.
    result = t2.

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
    DATA(t3) = `^(\/[A-Za-z0-9_]+\/)?L[^`.
    t3 = t3 && |\n\r|.
    DATA t4 TYPE c LENGTH 1.
    t4 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t3 t4 INTO t3 RESPECTING BLANKS.
    DATA t5 TYPE c LENGTH 1.
    t5 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t3 t5 INTO t3 RESPECTING BLANKS.
    t3 = t3 && |]+XX$|.
    CREATE OBJECT t1 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t3 flags = ||.
    t1->source = `^(\/\w+\/)?L.+XX$`.
    zcl_lnt_include_graph_module=>fmxxinclude = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1934_060fd3204315.
  ENDMETHOD.
ENDCLASS.
