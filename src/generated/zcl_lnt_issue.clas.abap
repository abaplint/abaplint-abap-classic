* TS: src/issue.ts:30:1 Issue
CLASS zcl_lnt_issue DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_union_eff0d09a.
    DATA data_56cc TYPE REF TO zcl_lnt_iissue_data.
    METHODS constructor IMPORTING i_data_dc02 TYPE REF TO zcl_lnt_iissue_data.
    CLASS-METHODS at_row IMPORTING i_file TYPE REF TO zif_lnt_file i_row TYPE f i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_statement IMPORTING i_file TYPE REF TO zif_lnt_file i_statement TYPE REF TO zcl_lnt_statement_node i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba i_alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_position IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_row_range IMPORTING i_file TYPE REF TO zif_lnt_file i_row TYPE f i_start_col TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_end_col TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_message_26cb TYPE string i_key TYPE string
    i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_range IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba i_alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_token IMPORTING i_file TYPE REF TO zif_lnt_file i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_token_filename IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    CLASS-METHODS at_identifier IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_message_26cb TYPE string i_key TYPE string i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_iissue_data.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS get_key RETURNING VALUE(result) TYPE string.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_filename RETURNING VALUE(result) TYPE string.
    METHODS get_default_fix RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_alternative_fixes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_severity RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_issue IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_data_dc02.
    DATA(t2) = t1.
    me->data_56cc = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_position.
    CLEAR t4.
    DATA(t5) = me->data_56cc.
    t4 = t5->start.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_virtual_position ).
    IF t3 = abap_true.
      DATA(t6) = me->data_56cc.
      DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t7.
      t6->default_fix = t7.
      DELETE t6->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaultFix`.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t8 ).
      ENDIF.
      DATA(t9) = |defaultFix|.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t9 p1 = t10 ).
      ENDIF.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    DATA(t15) = me->data_56cc.
    t14 = t15->start.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t16.
    DATA(t17) = t13.
    t16 = t17->col.
    t12 = t16.
    DATA(t18) = CONV f( 1 ).
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = t18.
    t11 = zlnt_runtime_numb_290eb04a9758=>compare( left = t12 right = t19 op = `<` ).
    IF t11 = abap_true.
      DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = |issue, start col < 1|.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t24.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
      t20 = NEW #( ).
      t20->payload = t21.
      CLEAR t20->source_value.
      IF t21 IS BOUND.
        DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t27.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        CLEAR t27.
        t28 = t21.
        TRY.
            t20->source_value ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20->source_value IS NOT BOUND.
          TRY.
              t27 ?= t21.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t27 IS BOUND.
            t20->source_value = t27->source( ).
          ENDIF.
          IF t20->source_value IS NOT BOUND.
            CREATE OBJECT t20->source_value.
            t20->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t20->source_value->oval = t21.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t20.
    ELSE.
      DATA(t29) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_position.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_position.
      CLEAR t32.
      DATA(t33) = me->data_56cc.
      t32 = t33->end.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t34.
      DATA(t35) = t31.
      t34 = t35->col.
      t30 = t34.
      DATA(t36) = CONV f( 1 ).
      DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t37->has = abap_true.
      t37->value = t36.
      t29 = zlnt_runtime_numb_290eb04a9758=>compare( left = t30 right = t37 op = `<` ).
      IF t29 = abap_true.
        DATA t38 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA(t42) = |issue, end col < 1|.
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t42.
          t40 = t43.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t44.
          t40 = t44.
        ENDIF.
        t39 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t40 ).
        t38 = NEW #( ).
        t38->payload = t39.
        CLEAR t38->source_value.
        IF t39 IS BOUND.
          DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t45.
          DATA t46 TYPE REF TO object.
          CLEAR t46.
          CLEAR t45.
          t46 = t39.
          TRY.
              t38->source_value ?= t46.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t38->source_value IS NOT BOUND.
            TRY.
                t45 ?= t39.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t45 IS BOUND.
              t38->source_value = t45->source( ).
            ENDIF.
            IF t38->source_value IS NOT BOUND.
              CREATE OBJECT t38->source_value.
              t38->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t38->source_value->oval = t39.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t38.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD at_row.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_row.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA(t8) = t2.
    DATA(t9) = CONV f( 1 ).
    DATA(t10) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t10->has = abap_true.
    t10->value = t9.
    t7 = NEW zcl_lnt_position( i_row = t8 i_col = t10 ).
    t6 = t7.
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_position.
    CLEAR t12.
    DATA(t13) = t2.
    DATA(t14) = VALUE f( ).
    DATA(t15) = VALUE int8( ).
    DATA(t16) = VALUE int8( ).
    DATA(t17) = VALUE i( ).
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t20) = t1.
    t19 = t20->get_raw_rows( ).
    DATA(t21) = VALUE i( ).
    DATA t22 TYPE f.
    DATA(t23) = t2.
    DATA(t24) = CONV f( 1 ).
    t22 = t23 - t24.
    IF t22 > range_i32_upper.
      t21 = range_i32_upper.
    ELSEIF t22 < range_i32_lower.
      t21 = range_i32_lower.
    ELSE.
      t21 = trunc( t22 ).
    ENDIF.
    t21 = t21 + 1.
    IF t19->has( t21 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t19->load( ).
    CLEAR t18.
    READ TABLE t19->items INDEX t21 INTO t18.
    DATA(t25) = strlen( t18 ).
    t17 = t25.
    t16 = t17.
    DATA(t26) = CONV int8( 1 ).
    t15 = t16 + t26.
    t14 = t15.
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = t14.
    t12 = NEW zcl_lnt_position( i_row = t13 i_col = t27 ).
    t11 = t12.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = VALUE string( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = t5.
      t31 = t32.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t31.
      IF t35 IS INITIAL.
        t34 = abap_true.
      ELSEIF t35->has = abap_false.
        t34 = abap_true.
      ENDIF.
      IF t34 = abap_true.
        DATA(t36) = |Error|.
        t33 = t36.
      ELSE.
        DATA t37 TYPE string.
        DATA(t38) = t31.
        t37 = t38->value.
        t33 = t37.
      ENDIF.
      t30 = t33.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t30.
      t28 = t39.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      t28 = t40.
    ENDIF.
    t5 = t28.
    DATA t41 TYPE REF TO zcl_lnt_issue.
    CLEAR t41.
    DATA t42 TYPE REF TO zcl_lnt_iissue_data.
    DATA t43 TYPE string.
    DATA t44 TYPE string.
    DATA(t45) = t1.
    t44 = t45->get_filename( ).
    t43 = t44.
    DATA t46 TYPE string.
    DATA(t47) = t3.
    t46 = t47.
    DATA t48 TYPE string.
    DATA(t49) = t4.
    t48 = t49.
    DATA t50 TYPE REF TO zcl_lnt_position.
    DATA(t51) = t6.
    t50 = t51.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA(t53) = t11.
    t52 = t53.
    DATA t54 TYPE string.
    DATA t55 TYPE string.
    DATA(t56) = t5.
    t55 = t56->value.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t58 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t58.
    t57 = t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    t59 = t60.
    t42 = NEW zcl_lnt_iissue_data( i_filename = t43 i_message_26cb = t46 i_key = t48 i_start = t50 i_end = t52 i_severity = t54 i_default_fix = t57 i_alternative_fixes = t59 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t61 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t66 ).
    ENDIF.
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t67) = |filename|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |message|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    DATA(t71) = |key|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA(t73) = |start|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    DATA(t75) = |end|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
    ENDIF.
    DATA(t77) = |severity|.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
    ENDIF.
    t41 = NEW zcl_lnt_issue( i_data_dc02 = t42 ).
    result = t41.

  ENDMETHOD.

  METHOD at_statement.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA(t7) = i_alternative_fixes.
    DATA t8 TYPE REF TO zcl_lnt_issue.
    DATA(t9) = t1.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t16) = t11.
    t15 = t16->get_first_token( ).
    t14 = t15.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA(t18) = t14.
    t17 = t18->start.
    t13 = t17.
    t10 = t13.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA(t21) = t2.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_position.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = t20.
    t24 = t25->get_last_token( ).
    t23 = t24.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t28) = t23.
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE f.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA(t33) = t27.
    t32 = t33->start.
    t31 = t32.
    DATA t34 TYPE f.
    DATA(t35) = t31.
    t34 = t35->row.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA(t40) = t27.
    t39 = t40->start.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t42) = t38.
    t41 = t42->col.
    t37 = t41.
    DATA t43 TYPE f.
    DATA t44 TYPE i.
    DATA t45 TYPE string.
    DATA(t46) = t27.
    t45 = t46->str.
    DATA(t47) = strlen( t45 ).
    t44 = t47.
    t43 = t44.
    DATA(t48) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t48->has = abap_true.
    t48->value = t43.
    t36 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t48 op = `+` ).
    t29 = NEW zcl_lnt_position( i_row = t30 i_col = t36 ).
    t26 = t29.
    t22 = t26.
    t19 = t22.
    DATA(t49) = t3.
    DATA(t50) = t4.
    DATA(t51) = t5.
    DATA(t52) = t6.
    DATA(t53) = t7.
    t8 = zcl_lnt_issue=>at_range( i_file = t9 i_start = t10 i_end = t19 i_message_26cb = t49 i_key = t50 i_severity = t51 i_fix = t52 i_alternative_fixes = t53 ).
    result = t8.

  ENDMETHOD.

  METHOD at_position.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_start.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA t7 TYPE f.
    DATA t8 TYPE f.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE f.
    DATA(t12) = t9.
    t11 = t12->row.
    t8 = t11.
    t7 = t8.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    DATA(t15) = t7.
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE int8( ).
    DATA(t18) = VALUE int8( ).
    DATA(t19) = VALUE i( ).
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t22) = t1.
    t21 = t22->get_raw_rows( ).
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE f.
    DATA(t25) = t7.
    DATA(t26) = CONV f( 1 ).
    t24 = t25 - t26.
    IF t24 > range_i32_upper.
      t23 = range_i32_upper.
    ELSEIF t24 < range_i32_lower.
      t23 = range_i32_lower.
    ELSE.
      t23 = trunc( t24 ).
    ENDIF.
    t23 = t23 + 1.
    IF t21->has( t23 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t21->load( ).
    CLEAR t20.
    READ TABLE t21->items INDEX t23 INTO t20.
    DATA(t27) = strlen( t20 ).
    t19 = t27.
    t18 = t19.
    DATA(t28) = CONV int8( 1 ).
    t17 = t18 + t28.
    t16 = t17.
    DATA(t29) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t29->has = abap_true.
    t29->value = t16.
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t29 ).
    t13 = t14.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA(t31) = abap_true.
    IF t31 = abap_true.
      DATA(t32) = VALUE string( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = t5.
      t33 = t34.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t33.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ELSEIF t37->has = abap_false.
        t36 = abap_true.
      ENDIF.
      IF t36 = abap_true.
        DATA(t38) = |Error|.
        t35 = t38.
      ELSE.
        DATA t39 TYPE string.
        DATA(t40) = t33.
        t39 = t40->value.
        t35 = t39.
      ENDIF.
      t32 = t35.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t32.
      t30 = t41.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t30 = t42.
    ENDIF.
    t5 = t30.
    DATA t43 TYPE REF TO zcl_lnt_issue.
    CLEAR t43.
    DATA t44 TYPE REF TO zcl_lnt_iissue_data.
    DATA t45 TYPE string.
    DATA t46 TYPE string.
    DATA(t47) = t1.
    t46 = t47->get_filename( ).
    t45 = t46.
    DATA t48 TYPE string.
    DATA(t49) = t3.
    t48 = t49.
    DATA t50 TYPE string.
    DATA(t51) = t4.
    t50 = t51.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA(t53) = t2.
    t52 = t53.
    DATA t54 TYPE REF TO zcl_lnt_position.
    DATA(t55) = t13.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t57) = t6.
    t56 = t57.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    DATA(t60) = t5.
    t59 = t60->value.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    t61 = t62.
    t44 = NEW zcl_lnt_iissue_data( i_filename = t45 i_message_26cb = t48 i_key = t50 i_start = t52 i_end = t54 i_severity = t58 i_default_fix = t56 i_alternative_fixes = t61 ).
    CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
    t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
    t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t70) = |filename|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = |message|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    DATA(t74) = |key|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
    ENDIF.
    DATA(t76) = |start|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
    ENDIF.
    DATA(t78) = |end|.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
    ENDIF.
    DATA(t80) = |defaultFix|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
    ENDIF.
    DATA(t82) = |severity|.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
    ENDIF.
    t43 = NEW zcl_lnt_issue( i_data_dc02 = t44 ).
    result = t43.

  ENDMETHOD.

  METHOD at_row_range.
    DATA(t1) = i_file.
    DATA(t2) = i_row.
    DATA(t3) = i_start_col.
    DATA(t4) = i_end_col.
    DATA(t5) = i_message_26cb.
    DATA(t6) = i_key.
    DATA(t7) = i_severity.
    DATA(t8) = i_fix.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t2.
    DATA(t12) = t3.
    t10 = NEW zcl_lnt_position( i_row = t11 i_col = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t2.
    DATA(t16) = t4.
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t16 ).
    t13 = t14.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = VALUE string( ).
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = t7.
      t20 = t21.
      DATA(t22) = VALUE string( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t20.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ELSEIF t24->has = abap_false.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA(t25) = |Error|.
        t22 = t25.
      ELSE.
        DATA t26 TYPE string.
        DATA(t27) = t20.
        t26 = t27->value.
        t22 = t26.
      ENDIF.
      t19 = t22.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t19.
      t17 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t17 = t29.
    ENDIF.
    t7 = t17.
    DATA t30 TYPE REF TO zcl_lnt_issue.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_iissue_data.
    DATA t32 TYPE string.
    DATA t33 TYPE string.
    DATA(t34) = t1.
    t33 = t34->get_filename( ).
    t32 = t33.
    DATA t35 TYPE string.
    DATA(t36) = t5.
    t35 = t36.
    DATA t37 TYPE string.
    DATA(t38) = t6.
    t37 = t38.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA(t40) = t9.
    t39 = t40.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA(t42) = t13.
    t41 = t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t44) = t8.
    t43 = t44.
    DATA t45 TYPE string.
    DATA t46 TYPE string.
    DATA(t47) = t7.
    t46 = t47->value.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    t48 = t49.
    t31 = NEW zcl_lnt_iissue_data( i_filename = t32 i_message_26cb = t35 i_key = t37 i_start = t39 i_end = t41 i_severity = t45 i_default_fix = t43 i_alternative_fixes = t48 ).
    CREATE OBJECT t31->zlnt_view_ownkeys_b0e8086400eb.
    t31->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t31->zlnt_json_ownkeys_70e5fd461788.
    t31->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t57) = |filename|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |message|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |key|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |start|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |end|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    DATA(t67) = |defaultFix|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
    ENDIF.
    DATA(t69) = |severity|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
    ENDIF.
    t30 = NEW zcl_lnt_issue( i_data_dc02 = t31 ).
    result = t30.

  ENDMETHOD.

  METHOD at_range.
    DATA(t1) = i_file.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA(t4) = i_message_26cb.
    DATA(t5) = i_key.
    DATA(t6) = i_severity.
    DATA(t7) = i_fix.
    DATA(t8) = i_alternative_fixes.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t6.
      t12 = t13.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t12.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ELSEIF t16->has = abap_false.
        t15 = abap_true.
      ENDIF.
      IF t15 = abap_true.
        DATA(t17) = |Error|.
        t14 = t17.
      ELSE.
        DATA t18 TYPE string.
        DATA(t19) = t12.
        t18 = t19->value.
        t14 = t18.
      ENDIF.
      t11 = t14.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t11.
      t9 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t6 = t9.
    DATA t22 TYPE REF TO zcl_lnt_issue.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_iissue_data.
    DATA t24 TYPE string.
    DATA t25 TYPE string.
    DATA(t26) = t1.
    t25 = t26->get_filename( ).
    t24 = t25.
    DATA t27 TYPE string.
    DATA(t28) = t4.
    t27 = t28.
    DATA t29 TYPE string.
    DATA(t30) = t5.
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA(t32) = t2.
    t31 = t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    DATA(t34) = t3.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t36) = t7.
    t35 = t36.
    DATA t37 TYPE string.
    DATA t38 TYPE string.
    DATA(t39) = t6.
    t38 = t39->value.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = t8.
    t40 = t41.
    t23 = NEW zcl_lnt_iissue_data( i_filename = t24 i_message_26cb = t27 i_key = t29 i_start = t31 i_end = t33 i_severity = t37 i_default_fix = t35 i_alternative_fixes = t40 ).
    CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
    t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alternativeFixes` p1 = t49 ).
    ENDIF.
    CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
    t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t50) = |filename|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |message|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |key|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |start|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    DATA(t58) = |end|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    DATA(t60) = |defaultFix|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
    ENDIF.
    DATA(t62) = |severity|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = |alternativeFixes|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    t22 = NEW zcl_lnt_issue( i_data_dc02 = t23 ).
    result = t22.

  ENDMETHOD.

  METHOD at_token.
    DATA(t1) = i_file.
    DATA(t2) = i_token.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = t5.
      t10 = t11.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t10.
      IF t14 IS INITIAL.
        t13 = abap_true.
      ELSEIF t14->has = abap_false.
        t13 = abap_true.
      ENDIF.
      IF t13 = abap_true.
        DATA(t15) = |Error|.
        t12 = t15.
      ELSE.
        DATA t16 TYPE string.
        DATA(t17) = t10.
        t16 = t17->value.
        t12 = t16.
      ENDIF.
      t9 = t12.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t9.
      t7 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t7 = t19.
    ENDIF.
    t5 = t7.
    DATA t20 TYPE REF TO zcl_lnt_issue.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    DATA t22 TYPE string.
    DATA t23 TYPE string.
    DATA(t24) = t1.
    t23 = t24->get_filename( ).
    t22 = t23.
    DATA t25 TYPE string.
    DATA(t26) = t3.
    t25 = t26.
    DATA t27 TYPE string.
    DATA(t28) = t4.
    t27 = t28.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t32) = t2.
    t31 = t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    DATA(t34) = t31.
    t33 = t34->start.
    t30 = t33.
    t29 = t30.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_position.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t38) = t2.
    t37 = t38.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA t40 TYPE f.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA t42 TYPE REF TO zcl_lnt_position.
    DATA(t43) = t37.
    t42 = t43->start.
    t41 = t42.
    DATA t44 TYPE f.
    DATA(t45) = t41.
    t44 = t45->row.
    t40 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA t49 TYPE REF TO zcl_lnt_position.
    DATA(t50) = t37.
    t49 = t50->start.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t52) = t48.
    t51 = t52->col.
    t47 = t51.
    DATA t53 TYPE f.
    DATA t54 TYPE i.
    DATA t55 TYPE string.
    DATA(t56) = t37.
    t55 = t56->str.
    DATA(t57) = strlen( t55 ).
    t54 = t57.
    t53 = t54.
    DATA(t58) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t58->has = abap_true.
    t58->value = t53.
    t46 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t47 right = t58 op = `+` ).
    t39 = NEW zcl_lnt_position( i_row = t40 i_col = t46 ).
    t36 = t39.
    t35 = t36.
    DATA t59 TYPE string.
    DATA t60 TYPE string.
    DATA(t61) = t5.
    t60 = t61->value.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t63) = t6.
    t62 = t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    t64 = t65.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t25 i_key = t27 i_start = t29 i_end = t35 i_severity = t59 i_default_fix = t62 i_alternative_fixes = t64 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t69 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t70 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t71 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t72 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t73) = |filename|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
    ENDIF.
    DATA(t75) = |message|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
    ENDIF.
    DATA(t77) = |key|.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
    ENDIF.
    DATA(t79) = |start|.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
    ENDIF.
    DATA(t81) = |end|.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
    ENDIF.
    DATA(t83) = |severity|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
    ENDIF.
    DATA(t85) = |defaultFix|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
    ENDIF.
    t20 = NEW zcl_lnt_issue( i_data_dc02 = t21 ).
    result = t20.

  ENDMETHOD.

  METHOD at_token_filename.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = t5.
      t10 = t11.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t10.
      IF t14 IS INITIAL.
        t13 = abap_true.
      ELSEIF t14->has = abap_false.
        t13 = abap_true.
      ENDIF.
      IF t13 = abap_true.
        DATA(t15) = |Error|.
        t12 = t15.
      ELSE.
        DATA t16 TYPE string.
        DATA(t17) = t10.
        t16 = t17->value.
        t12 = t16.
      ENDIF.
      t9 = t12.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t9.
      t7 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t7 = t19.
    ENDIF.
    t5 = t7.
    DATA t20 TYPE REF TO zcl_lnt_issue.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    DATA t22 TYPE string.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE string.
    DATA(t25) = t3.
    t24 = t25.
    DATA t26 TYPE string.
    DATA(t27) = t4.
    t26 = t27.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t31) = t2.
    t30 = t31.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA(t33) = t30.
    t32 = t33->start.
    t29 = t32.
    t28 = t29.
    DATA t34 TYPE REF TO zcl_lnt_position.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t37) = t2.
    t36 = t37.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE f.
    DATA t40 TYPE REF TO zcl_lnt_position.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA(t42) = t36.
    t41 = t42->start.
    t40 = t41.
    DATA t43 TYPE f.
    DATA(t44) = t40.
    t43 = t44->row.
    t39 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA t48 TYPE REF TO zcl_lnt_position.
    DATA(t49) = t36.
    t48 = t49->start.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t51) = t47.
    t50 = t51->col.
    t46 = t50.
    DATA t52 TYPE f.
    DATA t53 TYPE i.
    DATA t54 TYPE string.
    DATA(t55) = t36.
    t54 = t55->str.
    DATA(t56) = strlen( t54 ).
    t53 = t56.
    t52 = t53.
    DATA(t57) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t57->has = abap_true.
    t57->value = t52.
    t45 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t46 right = t57 op = `+` ).
    t38 = NEW zcl_lnt_position( i_row = t39 i_col = t45 ).
    t35 = t38.
    t34 = t35.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    DATA(t60) = t5.
    t59 = t60->value.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t62) = t6.
    t61 = t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    t63 = t64.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t24 i_key = t26 i_start = t28 i_end = t34 i_severity = t58 i_default_fix = t61 i_alternative_fixes = t63 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t69 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t70 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t71 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t72) = |filename|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    DATA(t74) = |message|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
    ENDIF.
    DATA(t76) = |key|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
    ENDIF.
    DATA(t78) = |start|.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
    ENDIF.
    DATA(t80) = |end|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
    ENDIF.
    DATA(t82) = |severity|.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
    ENDIF.
    DATA(t84) = |defaultFix|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    ENDIF.
    t20 = NEW zcl_lnt_issue( i_data_dc02 = t21 ).
    result = t20.

  ENDMETHOD.

  METHOD at_identifier.
    DATA(t1) = i_identifier.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_key.
    DATA(t4) = i_severity.
    DATA(t5) = i_fix.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = VALUE string( ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = t4.
      t9 = t10.
      DATA(t11) = VALUE string( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      IF t13 IS INITIAL.
        t12 = abap_true.
      ELSEIF t13->has = abap_false.
        t12 = abap_true.
      ENDIF.
      IF t12 = abap_true.
        DATA(t14) = |Error|.
        t11 = t14.
      ELSE.
        DATA t15 TYPE string.
        DATA(t16) = t9.
        t15 = t16->value.
        t11 = t15.
      ENDIF.
      t8 = t11.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t8.
      t6 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t6 = t18.
    ENDIF.
    t4 = t6.
    DATA t19 TYPE REF TO zcl_lnt_issue.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_iissue_data.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t24) = t1.
    t23 = t24.
    DATA t25 TYPE string.
    DATA(t26) = t23.
    t25 = t26->filename.
    t22 = t25.
    t21 = t22.
    DATA t27 TYPE string.
    DATA(t28) = t2.
    t27 = t28.
    DATA t29 TYPE string.
    DATA(t30) = t3.
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t34) = t1.
    t33 = t34.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t38) = t33.
    t37 = t38->token.
    t36 = t37.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA(t40) = t36.
    t39 = t40->start.
    t35 = t39.
    t32 = t35.
    t31 = t32.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA t42 TYPE REF TO zcl_lnt_position.
    DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t44) = t1.
    t43 = t44.
    DATA t45 TYPE REF TO zcl_lnt_position.
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    DATA t47 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t48) = t43.
    t47 = t48->token.
    t46 = t47.
    DATA t49 TYPE REF TO zcl_lnt_position.
    DATA t50 TYPE f.
    DATA t51 TYPE REF TO zcl_lnt_position.
    DATA t52 TYPE REF TO zcl_lnt_position.
    DATA(t53) = t46.
    t52 = t53->start.
    t51 = t52.
    DATA t54 TYPE f.
    DATA(t55) = t51.
    t54 = t55->row.
    t50 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t58 TYPE REF TO zcl_lnt_position.
    DATA t59 TYPE REF TO zcl_lnt_position.
    DATA(t60) = t46.
    t59 = t60->start.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t62) = t58.
    t61 = t62->col.
    t57 = t61.
    DATA t63 TYPE f.
    DATA t64 TYPE i.
    DATA t65 TYPE string.
    DATA(t66) = t46.
    t65 = t66->str.
    DATA(t67) = strlen( t65 ).
    t64 = t67.
    t63 = t64.
    DATA(t68) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t68->has = abap_true.
    t68->value = t63.
    t56 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t68 op = `+` ).
    t49 = NEW zcl_lnt_position( i_row = t50 i_col = t56 ).
    t45 = t49.
    t42 = t45.
    t41 = t42.
    DATA t69 TYPE string.
    DATA t70 TYPE string.
    DATA(t71) = t4.
    t70 = t71->value.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t73) = t5.
    t72 = t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    t74 = t75.
    t20 = NEW zcl_lnt_iissue_data( i_filename = t21 i_message_26cb = t27 i_key = t29 i_start = t31 i_end = t41 i_severity = t69 i_default_fix = t72 i_alternative_fixes = t74 ).
    CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
    t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t76 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t82 ).
    ENDIF.
    CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
    t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t83) = |filename|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
    ENDIF.
    DATA(t85) = |message|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
    ENDIF.
    DATA(t87) = |key|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
    ENDIF.
    DATA(t89) = |start|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
    ENDIF.
    DATA(t91) = |end|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    DATA(t93) = |severity|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
    ENDIF.
    DATA(t95) = |defaultFix|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    t19 = NEW zcl_lnt_issue( i_data_dc02 = t20 ).
    result = t19.

  ENDMETHOD.

  METHOD get_data.
    DATA(t1) = me->data_56cc.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA t1 TYPE string.
    DATA(t2) = me->data_56cc.
    t1 = t2->message_25cb.
    result = t1.

  ENDMETHOD.

  METHOD get_key.
    DATA t1 TYPE string.
    DATA(t2) = me->data_56cc.
    t1 = t2->key.
    result = t1.

  ENDMETHOD.

  METHOD get_start.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA(t2) = me->data_56cc.
    t1 = t2->start.
    result = t1.

  ENDMETHOD.

  METHOD get_end.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA(t2) = me->data_56cc.
    t1 = t2->end.
    result = t1.

  ENDMETHOD.

  METHOD get_filename.
    DATA t1 TYPE string.
    DATA(t2) = me->data_56cc.
    t1 = t2->filename.
    result = t1.

  ENDMETHOD.

  METHOD get_default_fix.
    DATA t1 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t2) = me->data_56cc.
    t1 = t2->default_fix.
    result = t1.

  ENDMETHOD.

  METHOD get_alternative_fixes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->data_56cc.
    t1 = t2->alternative_fixes.
    result = t1.

  ENDMETHOD.

  METHOD get_severity.
    DATA t1 TYPE string.
    DATA(t2) = me->data_56cc.
    t1 = t2->severity.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1152_9014156ceea5.
  ENDMETHOD.

  METHOD zif_lnt_union_eff0d09a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
