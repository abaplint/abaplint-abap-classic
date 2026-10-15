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
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_objects( ).
    t5 = t6->iterate( ).
    t4 = t5.
    DO.
      DATA(t8) = abap_true.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t10.
      DATA(t11) = t4.
      t10 = t11->next( ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      t12 = t13->done.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17->value.
      t15 = t16.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = t14.
          t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_abap_object ).
          t19 = t23.
          DATA(t25) = abap_true.
          t20 = t25.
        CATCH cx_root INTO t22.
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = t20.
          t26 = xsdbool( t27 = abap_false ).
          IF t26 = abap_true.
            DATA(t28) = t4.
            t28->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t20.
      t29 = xsdbool( t30 = abap_false ).
      IF t29 = abap_true.
        DATA(t31) = t4.
        t31->close( ).
      ENDIF.
      DATA(t32) = t19.
      t18 = t32.
      IF t18 = abap_true.
        DATA(t33) = VALUE f( ).
        DATA(t34) = VALUE f( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = abap_false.
        t35 = t36.
        DATA t37 TYPE REF TO cx_root.
        CLEAR t37.
        TRY.
            DATA(t38) = VALUE f( ).
            DATA(t39) = VALUE i( ).
            DATA(t40) = t2.
            DATA t41 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t41.
            DATA(t42) = t14.
            DATA t43 TYPE REF TO object.
            CLEAR t43.
            t43 = t42.
            t41 ?= t43.
            t40->load( ).
            APPEND t41 TO t40->items.
            t39 = lines( t40->items ).
            t40->save( ).
            t38 = t39.
            t34 = t38.
            DATA(t44) = abap_true.
            t35 = t44.
          CATCH cx_root INTO t37.
            DATA(t45) = VALUE abap_bool( ).
            DATA(t46) = t35.
            t45 = xsdbool( t46 = abap_false ).
            IF t45 = abap_true.
              DATA(t47) = t4.
              t47->close( ).
            ENDIF.
            RAISE EXCEPTION t37.
        ENDTRY.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t35.
        t48 = xsdbool( t49 = abap_false ).
        IF t48 = abap_true.
          DATA(t50) = t4.
          t50->close( ).
        ENDIF.
        DATA(t51) = t34.
        t33 = t51.
      ENDIF.
    ENDDO.
    DATA(t52) = t2.
    result = t52.

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
    DATA(t3) = `^(\/[A-Za-z0-9_]+\/)?L[^`.
    t3 = t3 && |\n\r|.
    DATA t4 TYPE c LENGTH 1.
    CLEAR t4.
    t4 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t3 t4 INTO t3 RESPECTING BLANKS.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t3 t5 INTO t3 RESPECTING BLANKS.
    t3 = t3 && |]+XX$|.
    DATA(t6) = ||.
    CREATE OBJECT t1 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t3 flags = t6.
    t1->source = t2.
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
