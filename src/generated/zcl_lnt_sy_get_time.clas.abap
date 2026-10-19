* TS: src/abap/5_syntax/statements/get_time.ts:10:1 GetTime
CLASS zcl_lnt_sy_get_time DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS compatible_time_stamp IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_get_time IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = t1->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = |STAMP|.
    t10 = t1->find_direct_token_by_text( i_text = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = xsdbool( t10 IS INITIAL ).
    t15 = xsdbool( t16 = abap_false ).
    t8 = t15.
    t7 = t8.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    t20 = t3.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = xsdbool( t20 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t20.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t26 = t27->find_direct_expression( i_type_9913 = t29 ).
      t22 = t26.
    ENDIF.
    t18 = t22.
    DATA t30 TYPE abap_bool.
    t30 = xsdbool( t18 IS BOUND ).
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      t32 = t18.
      DATA t35 TYPE REF TO zcl_lnt_packed_type.
      DATA(t36) = CONV f( 8 ).
      DATA(t37) = CONV f( 0 ).
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      t35 = NEW zcl_lnt_packed_type( i_length = t36 i_decimals_2eed = t37 i_extra = t38 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t32 i_input_967e = t2 i_type_9913 = t35 ).
    ELSE.
      DATA t39 TYPE abap_bool.
      t39 = xsdbool( t3 IS BOUND ).
      IF t39 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        t43 = t3.
        t42 = zcl_lnt_sy_target=>run_syntax( i_node = t43 i_input_967e = t2 ).
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        t47 = xsdbool( t7 = abap_true ).
        t46 = t47.
        IF t47 = abap_true.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = VALUE abap_bool( ).
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          t52 = t42.
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t61 = xsdbool( t52 IS INITIAL ).
          t60 = t61.
          IF t61 = abap_false.
            DATA t68 TYPE abap_bool.
            t68 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_packed_type ).
            t60 = t68.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA t70 TYPE abap_bool.
            t70 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_utc_long_type ).
            t59 = t70.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA t72 TYPE abap_bool.
            t72 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_void_type ).
            t58 = t72.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA t74 TYPE abap_bool.
            t74 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_any_type ).
            t57 = t74.
          ENDIF.
          t56 = t57.
          IF t57 = abap_false.
            DATA t76 TYPE abap_bool.
            t76 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_data_type ).
            t56 = t76.
          ENDIF.
          t55 = t56.
          IF t56 = abap_false.
            DATA t78 TYPE abap_bool.
            t78 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_unknown_type ).
            t55 = t78.
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            DATA t80 TYPE abap_bool.
            DATA t81 TYPE REF TO zcl_lnt_abstract_type.
            t81 = t52.
            t80 = t81->is_generic( ).
            t54 = t80.
          ENDIF.
          t51 = t54.
          t50 = xsdbool( t51 = abap_false ).
          t46 = t50.
        ENDIF.
        IF t46 = abap_true.
          DATA(t85) = |GET TIME STAMP FIELD, target type not compatible|.
          DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t86 = t2->issues.
          DATA t88 TYPE REF TO zcl_lnt_issue.
          DATA t90 TYPE REF TO zcl_lnt_abstract_token.
          t90 = t1->get_first_token( ).
          DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t90 i_message_26cb = t85 i_fix = t93 ).
          t86->load( ).
          APPEND t88 TO t86->items.
          t86->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD compatible_time_stamp.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t1 IS INITIAL ).
    t8 = t9.
    IF t9 = abap_false.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
      t8 = t16.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t7 = t18.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
      t6 = t20.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
      t5 = t22.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
      t4 = t24.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t26 TYPE abap_bool.
      t26 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
      t3 = t26.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      t29 = t1.
      t28 = t29->is_generic( ).
      t2 = t28.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d914_b9349b0d7735.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
