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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t1->find_direct_expression( i_type_9913 = t6 ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    t10 = t1->find_direct_token_by_text( i_text = |STAMP| ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( xsdbool( t10 IS INITIAL ) = abap_false ).
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    t20 = t3.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      t27 = t20.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t22 = t27->find_direct_expression( i_type_9913 = t29 ).
    ENDIF.
    t18 = t22.
    IF xsdbool( t18 IS BOUND ) = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t18 i_input_967e = t2 i_type_9913 = NEW zcl_lnt_packed_type( i_length = CONV f( 8 ) i_decimals_2eed = CONV f( 0 ) i_extra = t38 ) ).
    ELSE.
      IF xsdbool( t3 IS BOUND ) = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        t42 = zcl_lnt_sy_target=>run_syntax( i_node = t3 i_input_967e = t2 ).
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        t47 = xsdbool( t7 = abap_true ).
        t46 = t47.
        IF t47 = abap_true.
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
            t60 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_packed_type ).
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            t59 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_utc_long_type ).
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            t58 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_void_type ).
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            t57 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_any_type ).
          ENDIF.
          t56 = t57.
          IF t57 = abap_false.
            t56 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_data_type ).
          ENDIF.
          t55 = t56.
          IF t56 = abap_false.
            t55 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_unknown_type ).
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            t54 = t52->is_generic( ).
          ENDIF.
          t46 = xsdbool( t54 = abap_false ).
        ENDIF.
        IF t46 = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t86 = t2->issues.
          DATA t88 TYPE REF TO zcl_lnt_issue.
          DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |GET TIME STAMP FIELD, target type not compatible| i_fix = t93 ).
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
      t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_utc_long_type ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      t2 = t1->is_generic( ).
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
