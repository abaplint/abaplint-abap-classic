* TS: src/abap/2_statements/combi.ts:457:1 StarPriority
CLASS zcl_lnt_star_priority DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA sta TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_sta TYPE REF TO zif_lnt_statement_runnable.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_star_priority IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_sta.
    DATA(t2) = t1.
    me->sta = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sta`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->sta.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->sta.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = me->sta.
      DATA(t10) = t4.
      t8 = t9->run( i_r_f634 = t10 ).
      t4 = t8.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE i.
      DATA(t13) = t4.
      t13->load( ).
      t12 = lines( t13->items ).
      DATA(t14) = 0.
      t11 = xsdbool( t12 = t14 ).
      IF t11 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = t6.
        t16 = t17.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t19.
        t18 = t19.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = t16.
        IF t22 IS INITIAL.
          t21 = abap_true.
        ENDIF.
        t20 = xsdbool( t21 = abap_false ).
        t15 = t20.
        IF t15 = abap_true.
          DATA t23 TYPE int8.
          DATA(t24) = CONV int8( 2147483647 ).
          t23 = t24.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t26) = t6.
          t25 = t26.
          DATA t27 TYPE REF TO zcl_lnt_st_result.
          CLEAR t27.
          DATA t28 TYPE REF TO object.
          CLEAR t28.
          DATA(t29) = VALUE i( ).
          DO.
            t25->load( ).
            IF t29 >= lines( t25->items ).
              EXIT.
            ENDIF.
            CLEAR t28.
            READ TABLE t25->items INDEX t29 + 1 INTO t28.
            t29 = t29 + 1.
            DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t30.
            CLEAR t27.
            IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t30 ?= t28.
              DATA t31 TYPE REF TO object.
              t31 = t30->as_ref( ).
              t27 ?= t31.
            ELSE.
              t27 ?= t28.
            ENDIF.
            DATA t32 TYPE abap_bool.
            DATA t33 TYPE int8.
            DATA t34 TYPE f.
            DATA t35 TYPE REF TO zcl_lnt_st_result.
            DATA(t36) = t27.
            t35 = t36.
            DATA t37 TYPE f.
            DATA t38 TYPE int8.
            DATA t39 TYPE int8.
            DATA t40 TYPE i.
            DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t42) = t35.
            t41 = t42->tokens.
            t41->load( ).
            t40 = lines( t41->items ).
            t39 = t40.
            DATA t43 TYPE int8.
            DATA t44 TYPE i.
            DATA(t45) = t35.
            t44 = t45->token_index.
            t43 = t44.
            t38 = t39 - t43.
            t37 = t38.
            t34 = t37.
            t33 = t34.
            DATA(t46) = t23.
            t32 = xsdbool( t33 < t46 ).
            IF t32 = abap_true.
              DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t49.
              t48 = t49.
              DATA(t50) = t48.
              DATA(t51) = t27.
              t50->load( ).
              APPEND t51 TO t50->items.
              t50->save( ).
              DATA(t52) = t48.
              t47 = t52.
              t2 = t47.
              DATA t53 TYPE int8.
              DATA t54 TYPE f.
              DATA t55 TYPE REF TO zcl_lnt_st_result.
              DATA(t56) = t27.
              t55 = t56.
              DATA t57 TYPE f.
              DATA t58 TYPE int8.
              DATA t59 TYPE int8.
              DATA t60 TYPE i.
              DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t62) = t55.
              t61 = t62->tokens.
              t61->load( ).
              t60 = lines( t61->items ).
              t59 = t60.
              DATA t63 TYPE int8.
              DATA t64 TYPE i.
              DATA(t65) = t55.
              t64 = t65->token_index.
              t63 = t64.
              t58 = t59 - t63.
              t57 = t58.
              t54 = t57.
              t53 = t54.
              t23 = t53.
            ENDIF.
          ENDDO.
        ENDIF.
        EXIT.
      ENDIF.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA(t68) = t4.
        t66 = t68.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t69.
        t66 = t69.
      ENDIF.
      t6 = t66.
    ENDDO.
    DATA(t70) = t2.
    result = t70.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->sta.
    t4 = t5->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |star(|.
    DATA t4 TYPE string.
    DATA(t5) = me->sta.
    t4 = t5->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d70_d6511327ba8d3d.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
