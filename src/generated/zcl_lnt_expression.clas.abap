* TS: src/abap/2_statements/combi.ts:699:1 Expression
CLASS zcl_lnt_expression DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA runnable TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_runnable ABSTRACT RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_name RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_expression IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    me->runnable = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = me->runnable.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = CAST zif_lnt_statement_runnable( me->get_runnable( ) ).
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      me->runnable = t11.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    ENDIF.
    DATA(t15) = t1.
    DATA t16 TYPE REF TO zcl_lnt_st_result.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t15->load( ).
      IF t18 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t15->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t24) = me->runnable.
      t23 = t24.
      DATA(t25) = t16.
      t22 = t23->run_one( i_x = t25 ).
      t21 = t22.
      DATA(t26) = t21.
      DATA t27 TYPE REF TO zcl_lnt_st_result.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t26->load( ).
        IF t29 >= lines( t26->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t26->items INDEX t29 + 1 INTO t28.
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
        DATA t32 TYPE int8.
        DATA t33 TYPE int8.
        DATA t34 TYPE int8.
        DATA t35 TYPE f.
        DATA t36 TYPE REF TO zcl_lnt_st_result.
        DATA(t37) = t16.
        t36 = t37.
        DATA t38 TYPE f.
        DATA t39 TYPE int8.
        DATA t40 TYPE int8.
        DATA t41 TYPE i.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t43) = t36.
        t42 = t43->tokens.
        t42->load( ).
        t41 = lines( t42->items ).
        t40 = t41.
        DATA t44 TYPE int8.
        DATA t45 TYPE i.
        DATA(t46) = t36.
        t45 = t46->token_index.
        t44 = t45.
        t39 = t40 - t44.
        t38 = t39.
        t35 = t38.
        t34 = t35.
        DATA t47 TYPE int8.
        DATA t48 TYPE f.
        DATA t49 TYPE REF TO zcl_lnt_st_result.
        DATA(t50) = t27.
        t49 = t50.
        DATA t51 TYPE f.
        DATA t52 TYPE int8.
        DATA t53 TYPE int8.
        DATA t54 TYPE i.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t56) = t49.
        t55 = t56->tokens.
        t55->load( ).
        t54 = lines( t55->items ).
        t53 = t54.
        DATA t57 TYPE int8.
        DATA t58 TYPE i.
        DATA(t59) = t49.
        t58 = t59->token_index.
        t57 = t58.
        t52 = t53 - t57.
        t51 = t52.
        t48 = t51.
        t47 = t48.
        t33 = t34 - t47.
        t32 = t33.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t32.
        DATA(t62) = CONV int8( 0 ).
        t60 = xsdbool( t61 > t62 ).
        IF t60 = abap_true.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA t64 TYPE REF TO zcl_lnt_expression_node.
          DATA(t65) = me.
          t64 = NEW zcl_lnt_expression_node( i_expression = t65 ).
          t63 = t64.
          DATA(t66) = t2.
          DATA t67 TYPE REF TO zcl_lnt_st_result.
          DATA(t68) = t27.
          DATA t69 TYPE f.
          DATA(t70) = t32.
          t69 = t70.
          DATA(t71) = t63.
          t67 = t68->wrap_consumed( i_consumed_tokens = t69 i_node = t71 ).
          t66->load( ).
          APPEND t67 TO t66->items.
          t66->save( ).
        ELSE.
          DATA(t72) = t2.
          DATA(t73) = t27.
          t72->load( ).
          APPEND t73 TO t72->items.
          t72->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t74) = t2.
    result = t74.

  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t1.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE string.
    DATA(t6) = |expression/|.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t9) = me.
    t8 = t9->zlnt_builtin_clas_3f891b097658( ).
    t7 = t8->name.
    DATA(t10) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t11) = t2.
    t1 = t11.
    result = t1.

  ENDMETHOD.

  METHOD get_name.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t3) = me.
    t2 = t3->zlnt_builtin_clas_3f891b097658( ).
    t1 = t2->name.
    result = t1.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.NonTerminal('|.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t8) = me.
    t7 = t8->zlnt_builtin_clas_3f891b097658( ).
    t6 = t7->name.
    DATA(t9) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t10) = |', \{href: '#/expression/|.
    DATA(t11) = strlen( t4 ).
    t3 = |{ t4 }{ t10 }|.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t14) = me.
    t13 = t14->zlnt_builtin_clas_3f891b097658( ).
    t12 = t13->name.
    DATA(t15) = strlen( t3 ).
    t2 = |{ t3 }{ t12 }|.
    DATA(t16) = |'\})|.
    DATA(t17) = strlen( t2 ).
    t1 = |{ t2 }{ t16 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |expression(|.
    DATA t4 TYPE string.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t6) = me.
    t5 = t6->zlnt_builtin_clas_3f891b097658( ).
    t4 = t5->name.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = |)|.
    DATA(t9) = strlen( t2 ).
    t1 = |{ t2 }{ t8 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CAST zif_lnt_statement_runnable( me->get_runnable( ) ).
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = me->runnable.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t11.
      DATA(t12) = abap_true.
      IF t12 = abap_true.
        DATA(t13) = CAST zif_lnt_statement_runnable( me->get_runnable( ) ).
        t11 = t13.
      ELSE.
        DATA t14 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t14.
        t11 = t14.
      ENDIF.
      me->runnable = t11.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_st_result.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = me->runnable.
    t19 = t20.
    DATA(t21) = t15.
    t18 = t19->run_one( i_x = t21 ).
    t17 = t18.
    DATA(t22) = t17.
    DATA t23 TYPE REF TO zcl_lnt_st_result.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t22->load( ).
      IF t25 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t22->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE int8.
      DATA t29 TYPE int8.
      DATA t30 TYPE int8.
      DATA t31 TYPE f.
      DATA t32 TYPE REF TO zcl_lnt_st_result.
      DATA(t33) = t15.
      t32 = t33.
      DATA t34 TYPE f.
      DATA t35 TYPE int8.
      DATA t36 TYPE int8.
      DATA t37 TYPE i.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = t32.
      t38 = t39->tokens.
      t38->load( ).
      t37 = lines( t38->items ).
      t36 = t37.
      DATA t40 TYPE int8.
      DATA t41 TYPE i.
      DATA(t42) = t32.
      t41 = t42->token_index.
      t40 = t41.
      t35 = t36 - t40.
      t34 = t35.
      t31 = t34.
      t30 = t31.
      DATA t43 TYPE int8.
      DATA t44 TYPE f.
      DATA t45 TYPE REF TO zcl_lnt_st_result.
      DATA(t46) = t23.
      t45 = t46.
      DATA t47 TYPE f.
      DATA t48 TYPE int8.
      DATA t49 TYPE int8.
      DATA t50 TYPE i.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = t45.
      t51 = t52->tokens.
      t51->load( ).
      t50 = lines( t51->items ).
      t49 = t50.
      DATA t53 TYPE int8.
      DATA t54 TYPE i.
      DATA(t55) = t45.
      t54 = t55->token_index.
      t53 = t54.
      t48 = t49 - t53.
      t47 = t48.
      t44 = t47.
      t43 = t44.
      t29 = t30 - t43.
      t28 = t29.
      DATA t56 TYPE abap_bool.
      DATA(t57) = t28.
      DATA(t58) = CONV int8( 0 ).
      t56 = xsdbool( t57 > t58 ).
      IF t56 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = me.
        t60 = NEW zcl_lnt_expression_node( i_expression = t61 ).
        t59 = t60.
        DATA(t62) = t2.
        DATA t63 TYPE REF TO zcl_lnt_st_result.
        DATA(t64) = t23.
        DATA t65 TYPE f.
        DATA(t66) = t28.
        t65 = t66.
        DATA(t67) = t59.
        t63 = t64->wrap_consumed( i_consumed_tokens = t65 i_node = t67 ).
        t62->load( ).
        APPEND t63 TO t62->items.
        t62->save( ).
      ELSE.
        DATA(t68) = t2.
        DATA(t69) = t23.
        t68->load( ).
        APPEND t69 TO t68->items.
        t68->save( ).
      ENDIF.
    ENDDO.
    DATA(t70) = t2.
    result = t70.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d75_5cf64e981af6e8.
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
