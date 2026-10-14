* TS: src/abap/2_statements/combi.ts:1206:1 StopBefore2
CLASS zcl_lnt_stop_before2 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_stop_before2 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_t1.
    DATA(t2) = i_t2.
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    me->t1 = t3.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    DATA(t8) = strlen( t7 ).
    t6 = t7.
    IF t6 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t6 TO UPPER CASE.
    ELSE.
      t6 = zlnt_runtime_uppe_91169605024d=>full( t6 ).
    ENDIF.
    me->t2 = t6.
  ENDMETHOD.

  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1215|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1216|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      DATA t9 TYPE REF TO zcl_lnt_st_result.
      DATA(t10) = CAST zcl_lnt_st_result( t5 ).
      t9 = t10.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t13) = CAST zcl_lnt_st_result( t9 ).
      t12 = t13->tokens.
      DATA t14 TYPE i.
      DATA(t15) = CAST zcl_lnt_st_result( t9 ).
      t14 = t15->token_index.
      t14 = t14 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      READ TABLE t12->items INDEX t14 INTO t16.
      t11 ?= t16.
      t8 = t11.
      t7 = t8.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t19) = CAST zcl_lnt_abstract_token( t7 ).
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t20 = t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = CAST zcl_lnt_abstract_token( t18 ).
      IF t23 IS INITIAL.
        t22 = abap_true.
      ENDIF.
      t17 = t22.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE string.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t28) = CAST zcl_lnt_abstract_token( t7 ).
      t27 = t28.
      DATA t29 TYPE string.
      DATA(t30) = CAST zcl_lnt_abstract_token( t27 ).
      t29 = t30->str_upper.
      t26 = t29.
      DATA(t31) = CONV string( me->t1 ).
      t25 = xsdbool( t26 = t31 ).
      t24 = t25.
      IF t25 = abap_true.
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_st_result.
        DATA(t37) = CAST zcl_lnt_st_result( t5 ).
        t36 = t37.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t38.
        DATA(t39) = abap_true.
        IF t39 = abap_true.
          DATA t40 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t40.
          DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t42) = CAST zcl_lnt_st_result( t36 ).
          t41 = t42->tokens.
          DATA(t43) = VALUE i( ).
          DATA t44 TYPE int8.
          DATA t45 TYPE int8.
          DATA t46 TYPE i.
          DATA(t47) = CAST zcl_lnt_st_result( t36 ).
          t46 = t47->token_index.
          t45 = t46.
          DATA(t48) = CONV int8( 1 ).
          t44 = t45 + t48.
          IF t44 < range_int8_bound_min OR t44 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          IF t44 < range_int_check_lo_nzik0zk OR t44 > range_int_check_hi_zik0zj.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t43 = t44.
          t43 = t43 + 1.
          DATA t49 TYPE REF TO object.
          CLEAR t49.
          READ TABLE t41->items INDEX t43 INTO t49.
          t40 ?= t49.
          t38 = t40.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t50.
          t38 = t50.
        ENDIF.
        t35 = t38.
        t34 = t35.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = CAST zcl_lnt_abstract_token( t34 ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE string.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t58) = CAST zcl_lnt_abstract_token( t34 ).
          t57 = t58.
          t56 = t57.
          DATA t59 TYPE string.
          DATA(t60) = CAST zcl_lnt_abstract_token( t56 ).
          t59 = t60->str_upper.
          t55 = t59.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t55.
          t51 = t61.
        ENDIF.
        t33 = t51.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA(t64) = CONV string( me->t2 ).
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t64.
          t62 = t65.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t62 = t66.
        ENDIF.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        IF t33 IS BOUND.
          t67 = t33->has.
        ENDIF.
        IF t62 IS BOUND.
          t68 = t62->has.
        ENDIF.
        IF t67 = t68.
          IF t67 = abap_false.
            t32 = abap_true.
          ELSEIF t33->value = t62->value.
            t32 = abap_true.
          ENDIF.
        ENDIF.
        t24 = t32.
      ENDIF.
      IF t24 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t70) = CAST zcl_lnt_st_result( t5 ).
      APPEND t70 TO t69->items.
    ENDLOOP.
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t71.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1231|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1232|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1233|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA(t7) = CAST zcl_lnt_st_result( t1 ).
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d80_ff684b1f203a96.
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
