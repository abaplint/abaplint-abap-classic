* TS: src/rules/keyword_case.ts:40:1 Skip
CLASS zcl_lnt_rl_skip DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA conf TYPE REF TO zcl_lnt_keyword_case_conf.
    DATA skip_0892 TYPE abap_bool.
    DATA is_global_class TYPE abap_bool.
    DATA is_global_if TYPE abap_bool.
    METHODS constructor IMPORTING i_conf TYPE REF TO zcl_lnt_keyword_case_conf.
    METHODS skip_statement IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_skip IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_conf.
    me->skip_0892 = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
    me->is_global_class = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalClass`.
    me->is_global_if = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalIf`.
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD skip_statement.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zif_lnt_statement.
    t2 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown ).
    t9 = t10.
    IF t10 = abap_false.
      t9 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_native_sql ).
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_macro_content ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_macro_call ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t19 TYPE REF TO zcl_lnt_position.
      t19 = t1->get_first_token( )->start.
      t6 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_virtual_position ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_comment ).
    ENDIF.
    IF t5 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t29 = me->conf->zlnt_view_read_sr_8a9646993486( ).
    IF t29 IS BOUND.
      IF t29->has = abap_true.
        t28 = xsdbool( t29->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t28 = abap_true.
      DATA t31 TYPE REF TO zif_lnt_statement.
      t31 = t2.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_interface ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t37 = t1->find_first_expression( i_type_9913 = t39 ).
        t33 = xsdbool( t37 IS BOUND ).
      ENDIF.
      IF t33 = abap_true.
        me->is_global_if = abap_true.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalIf`.
        result = abap_true.
        RETURN.
      ELSE.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA(t44) = CONV abap_bool( me->is_global_if ).
        t43 = xsdbool( t44 = abap_true ).
        t42 = t43.
        IF t43 = abap_true.
          t42 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_end_interface ).
        ENDIF.
        IF t42 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE abap_bool.
      t50 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t49 = t50.
      IF t50 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t53 = t1->find_first_expression( i_type_9913 = t55 ).
        t49 = xsdbool( t53 IS BOUND ).
      ENDIF.
      IF t49 = abap_true.
        me->is_global_class = abap_true.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobalClass`.
        result = abap_true.
        RETURN.
      ELSE.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE abap_bool.
        DATA(t60) = CONV abap_bool( me->is_global_class ).
        t59 = xsdbool( t60 = abap_true ).
        t58 = t59.
        IF t59 = abap_true.
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE abap_bool.
          t63 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_end_class ).
          t62 = t63.
          IF t63 = abap_false.
            t62 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
          ENDIF.
          t58 = t62.
        ENDIF.
        IF t58 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t69 = me->conf->zlnt_view_read_sr_3e49b3d4558c( ).
    IF t69 IS BOUND.
      IF t69->has = abap_true.
        t68 = xsdbool( t69->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t68 = abap_true.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE abap_bool.
      t72 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_class_definition ).
      t71 = t72.
      IF t72 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t75 = t1->find_first_expression( i_type_9913 = t77 ).
        t71 = xsdbool( t75 IS BOUND ).
      ENDIF.
      IF t71 = abap_true.
        me->skip_0892 = abap_true.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
        result = abap_true.
        RETURN.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE abap_bool.
        DATA(t82) = CONV abap_bool( me->skip_0892 ).
        t81 = xsdbool( t82 = abap_true ).
        t80 = t81.
        IF t81 = abap_true.
          t80 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_end_class ).
        ENDIF.
        IF t80 = abap_true.
          me->skip_0892 = abap_false.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
          result = abap_true.
          RETURN.
        ELSE.
          DATA(t89) = CONV abap_bool( me->skip_0892 ).
          IF xsdbool( t89 = abap_true ) = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t93 = me->conf->zlnt_view_read_sr_a14b6839a5a2( ).
    IF t93 IS BOUND.
      IF t93->has = abap_true.
        t92 = xsdbool( t93->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t92 = abap_true.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      t96 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_st_interface ).
      t95 = t96.
      IF t96 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t99 = t1->find_first_expression( i_type_9913 = t101 ).
        t95 = xsdbool( t99 IS BOUND ).
      ENDIF.
      IF t95 = abap_true.
        me->skip_0892 = abap_true.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
        result = abap_true.
        RETURN.
      ELSE.
        DATA t104 TYPE abap_bool.
        DATA t105 TYPE abap_bool.
        DATA(t106) = CONV abap_bool( me->skip_0892 ).
        t105 = xsdbool( t106 = abap_true ).
        t104 = t105.
        IF t105 = abap_true.
          t104 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_end_interface ).
        ENDIF.
        IF t104 = abap_true.
          me->skip_0892 = abap_false.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skip`.
          result = abap_true.
          RETURN.
        ELSE.
          DATA(t113) = CONV abap_bool( me->skip_0892 ).
          IF xsdbool( t113 = abap_true ) = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1556_d593468dbdaf.
  ENDMETHOD.
ENDCLASS.
