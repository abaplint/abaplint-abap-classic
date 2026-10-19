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
    me->sta = i_sta.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sta`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t1 = me->sta->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t1 = me->sta->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DO.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t8 = me->sta->run( i_r_f634 = t4 ).
      t4 = t8.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE i.
      t4->load( ).
      t12 = lines( t4->items ).
      DATA(t14) = 0.
      t11 = xsdbool( t12 = t14 ).
      IF t11 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t18.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = xsdbool( t6 IS INITIAL ).
        t20 = xsdbool( t21 = abap_false ).
        t15 = t20.
        IF t15 = abap_true.
          DATA t23 TYPE int8.
          DATA(t24) = CONV int8( 2147483647 ).
          t23 = t24.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t25 = t6.
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
            DATA t35 TYPE REF TO zcl_lnt_st_result.
            t35 = t27.
            DATA t37 TYPE f.
            DATA t38 TYPE int8.
            DATA t39 TYPE int8.
            DATA t40 TYPE i.
            DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t41 = t35->tokens.
            t41->load( ).
            t40 = lines( t41->items ).
            t39 = t40.
            DATA t43 TYPE int8.
            DATA t44 TYPE i.
            t44 = t35->token_index.
            t43 = t44.
            t38 = t39 - t43.
            t37 = t38.
            t33 = t37.
            t32 = xsdbool( t33 < t23 ).
            IF t32 = abap_true.
              DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t49.
              t48 = t49.
              t48->load( ).
              APPEND t27 TO t48->items.
              t48->save( ).
              t2 = t48.
              DATA t53 TYPE int8.
              DATA t55 TYPE REF TO zcl_lnt_st_result.
              t55 = t27.
              DATA t57 TYPE f.
              DATA t58 TYPE int8.
              DATA t59 TYPE int8.
              DATA t60 TYPE i.
              DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t61 = t55->tokens.
              t61->load( ).
              t60 = lines( t61->items ).
              t59 = t60.
              DATA t63 TYPE int8.
              DATA t64 TYPE i.
              t64 = t55->token_index.
              t63 = t64.
              t58 = t59 - t63.
              t57 = t58.
              t53 = t57.
              t23 = t53.
            ENDIF.
          ENDDO.
        ENDIF.
        EXIT.
      ENDIF.
      t6 = t4.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    t4 = me->sta->railroad( ).
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
    t4 = me->sta->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = ||.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    t3 = t4.
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
