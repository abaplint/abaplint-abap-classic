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
    CLEAR me->runnable.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->runnable IS INITIAL ) = abap_true.
      me->runnable = CAST zif_lnt_statement_runnable( me->get_runnable( ) ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_st_result.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t1->load( ).
      IF t18 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t1->items INDEX t18 + 1 INTO t17.
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
      t21 = me->runnable->run_one( i_x = t16 ).
      DATA t27 TYPE REF TO zcl_lnt_st_result.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t21->load( ).
        IF t29 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t21->items INDEX t29 + 1 INTO t28.
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
        DATA t34 TYPE int8.
        DATA t36 TYPE REF TO zcl_lnt_st_result.
        t36 = t16.
        DATA t38 TYPE f.
        DATA t39 TYPE int8.
        DATA t40 TYPE int8.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t42 = t36->tokens.
        t42->load( ).
        t40 = lines( t42->items ).
        DATA t44 TYPE int8.
        t44 = t36->token_index.
        t39 = t40 - t44.
        t38 = t39.
        t34 = t38.
        DATA t47 TYPE int8.
        DATA t49 TYPE REF TO zcl_lnt_st_result.
        t49 = t27.
        DATA t51 TYPE f.
        DATA t52 TYPE int8.
        DATA t53 TYPE int8.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t55 = t49->tokens.
        t55->load( ).
        t53 = lines( t55->items ).
        DATA t57 TYPE int8.
        t57 = t49->token_index.
        t52 = t53 - t57.
        t51 = t52.
        t47 = t51.
        t32 = t34 - t47.
        IF xsdbool( t32 > CONV int8( 0 ) ) = abap_true.
          DATA t64 TYPE REF TO zcl_lnt_expression_node.
          t64 = NEW zcl_lnt_expression_node( i_expression = me ).
          DATA t67 TYPE REF TO zcl_lnt_st_result.
          DATA t69 TYPE f.
          t69 = t32.
          t67 = t27->wrap_consumed( i_consumed_tokens = t69 i_node = t64 ).
          t2->load( ).
          APPEND t67 TO t2->items.
          t2->save( ).
        ELSE.
          t2->load( ).
          APPEND t27 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD list_keywords.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_using.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    DATA t5 TYPE string.
    DATA(t6) = |expression/|.
    DATA t7 TYPE string.
    t7 = me->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t10) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD get_name.
    result = me->zlnt_builtin_clas_3f891b097658( )->name.

  ENDMETHOD.

  METHOD railroad.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.NonTerminal('|.
    DATA t6 TYPE string.
    t6 = me->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t9) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t11) = strlen( t4 ).
    t3 = |{ t4 }{ |', \{href: '#/expression/| }|.
    DATA t12 TYPE string.
    t12 = me->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t15) = strlen( t3 ).
    t2 = |{ t3 }{ t12 }|.
    DATA(t17) = strlen( t2 ).
    result = |{ t2 }{ |'\})| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |expression(|.
    DATA t4 TYPE string.
    t4 = me->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t9) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    result = CAST zif_lnt_statement_runnable( me->get_runnable( ) )->first( ).

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->runnable IS INITIAL ) = abap_true.
      me->runnable = CAST zif_lnt_statement_runnable( me->get_runnable( ) ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_st_result.
    t15 = t1.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = me->runnable->run_one( i_x = t15 ).
    DATA t23 TYPE REF TO zcl_lnt_st_result.
    DATA t24 TYPE REF TO object.
    DATA(t25) = VALUE i( ).
    DO.
      t17->load( ).
      IF t25 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t17->items INDEX t25 + 1 INTO t24.
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
      DATA t30 TYPE int8.
      DATA t32 TYPE REF TO zcl_lnt_st_result.
      t32 = t15.
      DATA t34 TYPE f.
      DATA t35 TYPE int8.
      DATA t36 TYPE int8.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t32->tokens.
      t38->load( ).
      t36 = lines( t38->items ).
      DATA t40 TYPE int8.
      t40 = t32->token_index.
      t35 = t36 - t40.
      t34 = t35.
      t30 = t34.
      DATA t43 TYPE int8.
      DATA t45 TYPE REF TO zcl_lnt_st_result.
      t45 = t23.
      DATA t47 TYPE f.
      DATA t48 TYPE int8.
      DATA t49 TYPE int8.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t51 = t45->tokens.
      t51->load( ).
      t49 = lines( t51->items ).
      DATA t53 TYPE int8.
      t53 = t45->token_index.
      t48 = t49 - t53.
      t47 = t48.
      t43 = t47.
      t28 = t30 - t43.
      IF xsdbool( t28 > CONV int8( 0 ) ) = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        t60 = NEW zcl_lnt_expression_node( i_expression = me ).
        DATA t63 TYPE REF TO zcl_lnt_st_result.
        DATA t65 TYPE f.
        t65 = t28.
        t63 = t23->wrap_consumed( i_consumed_tokens = t65 i_node = t60 ).
        t2->load( ).
        APPEND t63 TO t2->items.
        t2->save( ).
      ELSE.
        t2->load( ).
        APPEND t23 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
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
