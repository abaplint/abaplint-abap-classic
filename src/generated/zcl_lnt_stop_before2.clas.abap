* TS: src/abap/2_statements/combi.ts:1206:1 StopBefore2
CLASS zcl_lnt_stop_before2 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    METHODS constructor IMPORTING i_t1 TYPE string i_t2 TYPE string.
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
CLASS zcl_lnt_stop_before2 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_t1.
    DATA(t2) = i_t2.
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    me->t1 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `t1`.
    DATA t6 TYPE string.
    DATA(t8) = strlen( t2 ).
    t6 = t2.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    me->t2 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `t2`.
  ENDMETHOD.

  METHOD list_keywords.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_using.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t10.
      DATA t12 TYPE REF TO zcl_lnt_st_result.
      t12 = t5.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t15 = t12->tokens.
      DATA t17 TYPE i.
      t17 = t12->token_index.
      t17 = t17 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t15->load( ).
      CLEAR t19.
      READ TABLE t15->items INDEX t17 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t14.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t14 ?= t21.
      ELSE.
        t14 ?= t19.
      ENDIF.
      t10 = t14.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      IF xsdbool( t10 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE string.
      t31 = t10->str_upper.
      DATA(t36) = CONV string( me->t1 ).
      t30 = xsdbool( t31 = t36 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t39.
        DATA t41 TYPE REF TO zcl_lnt_st_result.
        t41 = t5.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t46 = t41->tokens.
        DATA(t48) = VALUE i( ).
        DATA t49 TYPE f.
        DATA t50 TYPE f.
        t50 = t41->token_index.
        DATA(t53) = CONV f( 1 ).
        t49 = t50 + t53.
        IF t49 > range_i32_upper.
          t48 = range_i32_upper.
        ELSEIF t49 < range_i32_lower.
          t48 = range_i32_lower.
        ELSE.
          t48 = trunc( t49 ).
        ENDIF.
        t48 = t48 + 1.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t46->load( ).
        CLEAR t54.
        READ TABLE t46->items INDEX t48 INTO t54.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        CLEAR t45.
        IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t54.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t45 ?= t56.
        ELSE.
          t45 ?= t54.
        ENDIF.
        t39 = t45.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        IF xsdbool( t39 IS INITIAL ) = abap_true.
          CLEAR t58.
        ELSE.
          DATA t66 TYPE string.
          t66 = t39->str_upper.
          DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t68->has = abap_true.
          t68->value = t66.
          t58 = t68.
        ENDIF.
        t38 = t58.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t71) = CONV string( me->t2 ).
        DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t72->has = abap_true.
        t72->value = t71.
        t69 = t72.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        IF t38 IS BOUND.
          t74 = t38->has.
        ENDIF.
        IF t69 IS BOUND.
          t75 = t69->has.
        ENDIF.
        IF t74 = t75.
          IF t74 = abap_false.
            t37 = abap_true.
          ELSEIF t38->value = t69->value.
            t37 = abap_true.
          ENDIF.
        ENDIF.
        t29 = t37.
      ENDIF.
      IF t29 = abap_true.
        CONTINUE.
      ENDIF.
      t2->load( ).
      APPEND t5 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.Terminal('stopBefore(|.
    DATA(t6) = CONV string( me->t1 ).
    DATA(t7) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t9) = strlen( t4 ).
    t3 = |{ t4 }{ | | }|.
    DATA(t10) = CONV string( me->t2 ).
    DATA(t11) = strlen( t3 ).
    t2 = |{ t3 }{ t10 }|.
    DATA(t13) = strlen( t2 ).
    result = |{ t2 }{ |)')| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |stopBefore(|.
    DATA(t6) = CONV string( me->t1 ).
    DATA(t7) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t9) = strlen( t4 ).
    t3 = |{ t4 }{ |,| }|.
    DATA(t10) = CONV string( me->t2 ).
    DATA(t11) = strlen( t3 ).
    t2 = |{ t3 }{ t10 }|.
    DATA(t13) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND || TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    result = me->run( i_r_f634 = t4 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d82_3e282ab4800467.
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
