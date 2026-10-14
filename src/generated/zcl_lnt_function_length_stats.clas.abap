* TS: src/utils/function_length_stats.ts:10:1 FunctionLengthStats
CLASS zcl_lnt_function_length_stats DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_name IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_function_length_stats IMPLEMENTATION.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = ||.
    t6 = t7.
    DATA t8 TYPE int8.
    DATA(t9) = CONV int8( 0 ).
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = abap_false.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
    t12 = xsdbool( t13 = abap_false ).
    IF t12 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO object.
    t20 = t19.
    t18 ?= t20.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t17.
    t21 = t22->parsed.
    t16 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    LOOP AT t16->items INTO t24.
      t23 ?= t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA(t27) = t23.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = t26.
      t28 = t29->statements.
      t25 = t28.
      DATA t30 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      LOOP AT t25->items INTO t31.
        t30 ?= t31.
        DATA t32 TYPE REF TO zif_lnt_statement.
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA(t34) = t30.
        t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t32 = t33.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t32.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_function_module ).
        IF t35 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_position.
          CLEAR t37.
          DATA(t38) = abap_true.
          IF t38 = abap_true.
            DATA t39 TYPE REF TO zcl_lnt_position.
            DATA t40 TYPE REF TO zcl_lnt_abstract_token.
            DATA t41 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t42) = t30.
            t41 = t42->get_first_token( ).
            t40 = t41.
            DATA t43 TYPE REF TO zcl_lnt_position.
            DATA(t44) = t40.
            t43 = t44->start.
            t39 = t43.
            t37 = t39.
          ELSE.
            DATA t45 TYPE REF TO zcl_lnt_position.
            CLEAR t45.
            t37 = t45.
          ENDIF.
          t4 = t37.
          DATA t46 TYPE string.
          DATA(t47) = t30.
          t46 = zcl_lnt_function_length_stats=>find_name( i_stat = t47 ).
          t6 = t46.
          DATA(t48) = abap_true.
          t10 = t48.
          DATA(t49) = CONV int8( 0 ).
          t8 = t49.
        ELSE.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t32.
          t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_end_function ).
          IF t50 = abap_true.
            DATA t52 TYPE abap_bool.
            DATA(t53) = t4.
            t52 = xsdbool( t53 IS BOUND ).
            IF t52 = abap_true.
              DATA(t54) = t2.
              DATA t55 TYPE REF TO zcl_lnt_imethod_length_result.
              DATA(t56) = ||.
              DATA(t57) = t6.
              DATA(t58) = t8.
              DATA(t59) = t23.
              DATA t60 TYPE REF TO zcl_lnt_position.
              DATA(t61) = t4.
              t60 = t61.
              t55 = NEW zcl_lnt_imethod_length_result( i_class_name = t56 i_name = t57 i_count = t58 i_file = t59 i_pos = t60 ).
              APPEND t55 TO t54->items.
            ELSE.
              CONTINUE.
            ENDIF.
            DATA(t62) = abap_false.
            t10 = t62.
          ELSE.
            DATA(t63) = VALUE abap_bool( ).
            DATA t64 TYPE abap_bool.
            DATA t65 TYPE abap_bool.
            DATA(t66) = t10.
            DATA(t67) = abap_true.
            t65 = xsdbool( t66 = t67 ).
            t64 = t65.
            IF t65 = abap_true.
              DATA t68 TYPE abap_bool.
              DATA t69 TYPE abap_bool.
              DATA(t70) = t32.
              t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_st_comment ).
              t68 = xsdbool( t69 = abap_false ).
              t64 = t68.
            ENDIF.
            t63 = t64.
            IF t64 = abap_true.
              DATA t71 TYPE abap_bool.
              DATA t72 TYPE abap_bool.
              DATA(t73) = t32.
              t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_empty ).
              t71 = xsdbool( t72 = abap_false ).
              t63 = t71.
            ENDIF.
            IF t63 = abap_true.
              DATA t74 TYPE int8.
              DATA(t75) = t8.
              DATA(t76) = CONV int8( 1 ).
              t74 = t75 + t76.
              IF t74 < range_int8_bound_min OR t74 > range_int8_bound_max.
                RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
              ENDIF.
              t8 = t74.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA(t77) = t2.
    result = t77.

  ENDMETHOD.

  METHOD find_name.
    DATA(t1) = i_stat.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t2.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA t8 TYPE string.
      DATA t9 TYPE REF TO zcl_lnt_abstract_token.
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t2.
      t11 = t12.
      t10 = t11->get_first_token( ).
      t9 = t10.
      DATA t13 TYPE string.
      DATA(t14) = t9.
      t13 = t14->str.
      t8 = t13.
      result = t8.
      RETURN.
    ELSE.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |FunctionLength, findName, expected Field|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      RAISE EXCEPTION t15.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1690_199bc9d874b2.
  ENDMETHOD.
ENDCLASS.
