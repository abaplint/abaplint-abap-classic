* TS: src/abap/5_syntax/statements/convert.ts:10:1 Convert
CLASS zcl_lnt_sy_convert DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_convert IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t1->find_expressions_after_token( i_text = |TIME| ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t21->load( ).
      IF t28 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t21->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA(t31) = VALUE string( ).
      DATA t32 TYPE string.
      DATA t33 TYPE string.
      t33 = t1->concat_tokens( ).
      DATA(t35) = strlen( t33 ).
      t32 = t33.
      IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t32 TO UPPER CASE.
      ELSE.
        t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
      ENDIF.
      t31 = t32.
      DATA t37 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      t38 = t26.
      DATA t40 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t40.
      IF xsdbool( t38 IS INITIAL ) = abap_true.
        CLEAR t40.
      ELSE.
        t40 = t38->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      ENDIF.
      t37 = t40.
      IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t46.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        t48 = t26.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t50.
        IF xsdbool( t48 IS INITIAL ) = abap_true.
          CLEAR t50.
        ELSE.
          DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
          t50 = t48->find_direct_expression( i_type_9913 = t56 ).
        ENDIF.
        t46 = t50.
        IF xsdbool( t46 IS BOUND ) = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_type.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t61.
          t59 = NEW zcl_lnt_time_type( i_input_967e = t61 ).
          DATA(t63) = VALUE i( ).
          DATA(t65) = VALUE string( ).
          DATA(t66) = |DAYLIGHT SAVING TIME |.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          t68 = t46->concat_tokens( ).
          DATA(t71) = strlen( t68 ).
          t67 = t68.
          IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t67 TO UPPER CASE.
          ELSE.
            t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
          ENDIF.
          DATA(t72) = strlen( t66 ).
          t65 = |{ t66 }{ t67 }|.
          DATA(t73) = strlen( t31 ).
          IF t65 IS INITIAL.
            t63 = 0.
          ELSE.
            FIND t65 IN t31 MATCH OFFSET t63.
            IF sy-subrc <> 0.
              t63 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t63 >= 0 ) = abap_true.
            DATA t77 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t77.
            t59 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t77 ).
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t46 i_input_967e = t2 i_type_9913 = t59 ).
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_abstract_type.
          t85 = zcl_lnt_sy_target=>run_syntax( i_node = t26 i_input_967e = t2 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    t88 = t1->find_expression_after_token( i_text = |DATE| ).
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zcl_lnt_expression_node.
    t94 = t88.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t94 IS INITIAL ) = abap_true.
    ELSE.
      t96 = t94->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t93 = t96.
    IF xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      t105 = t88.
      DATA t108 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t105 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t108 = t105->find_direct_expression( i_type_9913 = t114 ).
      ENDIF.
      t103 = t108.
      IF xsdbool( t103 IS BOUND ) = abap_true.
        DATA t121 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t103 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_date_type( i_input_967e = t121 ) ).
      ELSE.
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        t122 = zcl_lnt_sy_target=>run_syntax( i_node = t88 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zcl_lnt_expression_node.
    t126 = t1->find_expression_after_token( i_text = |STAMP| ).
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zcl_lnt_expression_node.
    t132 = t126.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    IF xsdbool( t132 IS INITIAL ) = abap_true.
    ELSE.
      t134 = t132->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    ENDIF.
    t131 = t134.
    IF xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_st_target ) = abap_true.
      DATA t141 TYPE REF TO zcl_lnt_expression_node.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      t143 = t126.
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t143 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t146 = t143->find_direct_expression( i_type_9913 = t152 ).
      ENDIF.
      t141 = t146.
      IF xsdbool( t141 IS BOUND ) = abap_true.
        DATA t161 TYPE REF TO zcl_lnt_abstract_type_data.
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t141 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_packed_type( i_length = CONV f( 8 ) i_decimals_2eed = CONV f( 4 ) i_extra = t161 ) ).
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_abstract_type.
        t162 = zcl_lnt_sy_target=>run_syntax( i_node = t126 i_input_967e = t2 ).
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d883_6e0ae69d567a.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
