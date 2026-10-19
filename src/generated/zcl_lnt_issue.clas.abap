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
    me->data_56cc = i_data_dc02.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    DATA t4 TYPE REF TO zcl_lnt_position.
    t4 = me->data_56cc->start.
    IF xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
      DATA(t6) = me->data_56cc.
      CLEAR t6->default_fix.
      DELETE t6->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaultFix`.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t8 ).
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t10 ).
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t12 = me->data_56cc->start->col.
    DATA(t19) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t19->has = abap_true.
    t19->value = CONV f( 1 ).
    IF zlnt_runtime_numb_290eb04a9758=>compare( left = t12 right = t19 op = `<` ) = abap_true.
      DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = |issue, start col < 1|.
      t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t25 ).
      t20 = NEW #( ).
      t20->payload = t21.
      CLEAR t20->source_value.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
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
      RAISE EXCEPTION t20.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t30 = me->data_56cc->end->col.
      DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t37->has = abap_true.
      t37->value = CONV f( 1 ).
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t30 right = t37 op = `<` ) = abap_true.
        DATA t38 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t39 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t43->has = abap_true.
        t43->value = |issue, end col < 1|.
        t39 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t43 ).
        t38 = NEW #( ).
        t38->payload = t39.
        CLEAR t38->source_value.
        DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t46 TYPE REF TO object.
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
    DATA t7 TYPE REF TO zcl_lnt_position.
    DATA(t10) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t10->has = abap_true.
    t10->value = CONV f( 1 ).
    t7 = NEW zcl_lnt_position( i_row = t2 i_col = t10 ).
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA(t14) = VALUE f( ).
    DATA(t15) = VALUE int8( ).
    DATA(t16) = VALUE int8( ).
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t19 = t1->get_raw_rows( ).
    DATA(t21) = VALUE i( ).
    DATA t22 TYPE f.
    DATA(t24) = CONV f( 1 ).
    t22 = t2 - t24.
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
    READ TABLE t19->items INDEX t21 INTO t18.
    t16 = strlen( t18 ).
    DATA(t26) = CONV int8( 1 ).
    t15 = t16 + t26.
    t14 = t15.
    DATA(t27) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t27->has = abap_true.
    t27->value = t14.
    t12 = NEW zcl_lnt_position( i_row = t2 i_col = t27 ).
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t31 = t5.
    DATA(t33) = VALUE string( ).
    DATA(t34) = VALUE abap_bool( ).
    IF t31 IS INITIAL.
      t34 = abap_true.
    ELSEIF t31->has = abap_false.
      t34 = abap_true.
    ENDIF.
    IF t34 = abap_true.
      t33 = |Error|.
    ELSE.
      t33 = t31->value.
    ENDIF.
    DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t39->has = abap_true.
    t39->value = t33.
    t5 = t39.
    DATA t42 TYPE REF TO zcl_lnt_iissue_data.
    DATA t43 TYPE string.
    t43 = t1->get_filename( ).
    DATA t46 TYPE string.
    t46 = t3.
    DATA t48 TYPE string.
    t48 = t4.
    DATA t50 TYPE REF TO zcl_lnt_position.
    t50 = t7.
    DATA t52 TYPE REF TO zcl_lnt_position.
    t52 = t12.
    DATA t55 TYPE string.
    t55 = t5->value.
    DATA t57 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t42 = NEW zcl_lnt_iissue_data( i_filename = t43 i_message_26cb = t46 i_key = t48 i_start = t50 i_end = t52 i_severity = t55 i_default_fix = t57 i_alternative_fixes = t59 ).
    CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
    t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t63 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t66 ).
    ENDIF.
    CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
    t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t68 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t70 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t72 ).
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t74 ).
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t76 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t78 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t42 ).

  ENDMETHOD.

  METHOD at_statement.
    DATA(t2) = i_statement.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA(t7) = i_alternative_fixes.
    DATA(t9) = i_file.
    DATA t10 TYPE REF TO zcl_lnt_position.
    t10 = t2->get_first_token( )->start.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    t27 = t2->get_last_token( ).
    DATA t30 TYPE f.
    t30 = t27->start->row.
    DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t37 = t27->start->col.
    DATA t43 TYPE f.
    t43 = strlen( t27->str ).
    DATA(t48) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t48->has = abap_true.
    t48->value = t43.
    result = zcl_lnt_issue=>at_range( i_file = t9 i_start = t10 i_end = NEW zcl_lnt_position( i_row = t30 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t48 op = `+` ) ) i_message_26cb = t3 i_key = t4 i_severity = t5 i_fix = t6 i_alternative_fixes = t7 ).

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
    t7 = t2->row.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t16) = VALUE f( ).
    DATA(t17) = VALUE int8( ).
    DATA(t18) = VALUE int8( ).
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t21 = t1->get_raw_rows( ).
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE f.
    DATA(t26) = CONV f( 1 ).
    t24 = t7 - t26.
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
    READ TABLE t21->items INDEX t23 INTO t20.
    t18 = strlen( t20 ).
    DATA(t28) = CONV int8( 1 ).
    t17 = t18 + t28.
    t16 = t17.
    DATA(t29) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t29->has = abap_true.
    t29->value = t16.
    t14 = NEW zcl_lnt_position( i_row = t7 i_col = t29 ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t33 = t5.
    DATA(t35) = VALUE string( ).
    DATA(t36) = VALUE abap_bool( ).
    IF t33 IS INITIAL.
      t36 = abap_true.
    ELSEIF t33->has = abap_false.
      t36 = abap_true.
    ENDIF.
    IF t36 = abap_true.
      t35 = |Error|.
    ELSE.
      t35 = t33->value.
    ENDIF.
    DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t41->has = abap_true.
    t41->value = t35.
    t5 = t41.
    DATA t44 TYPE REF TO zcl_lnt_iissue_data.
    DATA t45 TYPE string.
    t45 = t1->get_filename( ).
    DATA t48 TYPE string.
    t48 = t3.
    DATA t50 TYPE string.
    t50 = t4.
    DATA t52 TYPE REF TO zcl_lnt_position.
    t52 = t2.
    DATA t54 TYPE REF TO zcl_lnt_position.
    t54 = t14.
    DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t56 = t6.
    DATA t59 TYPE string.
    t59 = t5->value.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = NEW zcl_lnt_iissue_data( i_filename = t45 i_message_26cb = t48 i_key = t50 i_start = t52 i_end = t54 i_severity = t59 i_default_fix = t56 i_alternative_fixes = t61 ).
    CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
    t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t63 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t64 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t65 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
    t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t71 ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t73 ).
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t75 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t77 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t79 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t81 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t83 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t44 ).

  ENDMETHOD.

  METHOD at_row_range.
    DATA(t1) = i_file.
    DATA(t2) = i_row.
    DATA(t4) = i_end_col.
    DATA(t5) = i_message_26cb.
    DATA(t6) = i_key.
    DATA(t7) = i_severity.
    DATA(t8) = i_fix.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t12) = i_start_col.
    t10 = NEW zcl_lnt_position( i_row = t2 i_col = t12 ).
    DATA t14 TYPE REF TO zcl_lnt_position.
    t14 = NEW zcl_lnt_position( i_row = t2 i_col = t4 ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t20 = t7.
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE abap_bool( ).
    IF t20 IS INITIAL.
      t23 = abap_true.
    ELSEIF t20->has = abap_false.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      t22 = |Error|.
    ELSE.
      t22 = t20->value.
    ENDIF.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t22.
    t7 = t28.
    DATA t31 TYPE REF TO zcl_lnt_iissue_data.
    DATA t32 TYPE string.
    t32 = t1->get_filename( ).
    DATA t35 TYPE string.
    t35 = t5.
    DATA t37 TYPE string.
    t37 = t6.
    DATA t39 TYPE REF TO zcl_lnt_position.
    t39 = t10.
    DATA t41 TYPE REF TO zcl_lnt_position.
    t41 = t14.
    DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t43 = t8.
    DATA t46 TYPE string.
    t46 = t7->value.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t31 = NEW zcl_lnt_iissue_data( i_filename = t32 i_message_26cb = t35 i_key = t37 i_start = t39 i_end = t41 i_severity = t46 i_default_fix = t43 i_alternative_fixes = t48 ).
    CREATE OBJECT t31->zlnt_view_ownkeys_b0e8086400eb.
    t31->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t31->zlnt_json_ownkeys_70e5fd461788.
    t31->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t58 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t66 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t68 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t70 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t31 ).

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
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = t6.
    DATA(t14) = VALUE string( ).
    DATA(t15) = VALUE abap_bool( ).
    IF t12 IS INITIAL.
      t15 = abap_true.
    ELSEIF t12->has = abap_false.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      t14 = |Error|.
    ELSE.
      t14 = t12->value.
    ENDIF.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t14.
    t6 = t20.
    DATA t23 TYPE REF TO zcl_lnt_iissue_data.
    DATA t24 TYPE string.
    t24 = t1->get_filename( ).
    DATA t27 TYPE string.
    t27 = t4.
    DATA t29 TYPE string.
    t29 = t5.
    DATA t31 TYPE REF TO zcl_lnt_position.
    t31 = t2.
    DATA t33 TYPE REF TO zcl_lnt_position.
    t33 = t3.
    DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t35 = t7.
    DATA t37 TYPE string.
    t37 = t6->value.
    t23 = NEW zcl_lnt_iissue_data( i_filename = t24 i_message_26cb = t27 i_key = t29 i_start = t31 i_end = t33 i_severity = t37 i_default_fix = t35 i_alternative_fixes = t8 ).
    CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
    t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alternativeFixes` p1 = t49 ).
    ENDIF.
    CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
    t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t51 ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t57 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t59 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t61 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t63 ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |alternativeFixes| p1 = t65 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t23 ).

  ENDMETHOD.

  METHOD at_token.
    DATA(t1) = i_file.
    DATA(t2) = i_token.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = t5.
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t10 IS INITIAL.
      t13 = abap_true.
    ELSEIF t10->has = abap_false.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      t12 = |Error|.
    ELSE.
      t12 = t10->value.
    ENDIF.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t12.
    t5 = t18.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    DATA t22 TYPE string.
    t22 = t1->get_filename( ).
    DATA t25 TYPE string.
    t25 = t3.
    DATA t27 TYPE string.
    t27 = t4.
    DATA t29 TYPE REF TO zcl_lnt_position.
    t29 = t2->start.
    DATA t35 TYPE REF TO zcl_lnt_position.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    t37 = t2.
    DATA t40 TYPE f.
    t40 = t37->start->row.
    DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t47 = t37->start->col.
    DATA t53 TYPE f.
    t53 = strlen( t37->str ).
    DATA(t58) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t58->has = abap_true.
    t58->value = t53.
    t35 = NEW zcl_lnt_position( i_row = t40 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t47 right = t58 op = `+` ) ).
    DATA t59 TYPE string.
    t59 = t5->value.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t25 i_key = t27 i_start = t29 i_end = t35 i_severity = t59 i_default_fix = t6 i_alternative_fixes = t64 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t66 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t69 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t70 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t71 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t72 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t74 ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t76 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t78 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t80 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t82 ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t84 ).
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t86 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t21 ).

  ENDMETHOD.

  METHOD at_token_filename.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_key.
    DATA(t5) = i_severity.
    DATA(t6) = i_fix.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = t5.
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t10 IS INITIAL.
      t13 = abap_true.
    ELSEIF t10->has = abap_false.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      t12 = |Error|.
    ELSE.
      t12 = t10->value.
    ENDIF.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t12.
    t5 = t18.
    DATA t21 TYPE REF TO zcl_lnt_iissue_data.
    DATA t22 TYPE string.
    t22 = t1.
    DATA t24 TYPE string.
    t24 = t3.
    DATA t26 TYPE string.
    t26 = t4.
    DATA t28 TYPE REF TO zcl_lnt_position.
    t28 = t2->start.
    DATA t34 TYPE REF TO zcl_lnt_position.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    t36 = t2.
    DATA t39 TYPE f.
    t39 = t36->start->row.
    DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t46 = t36->start->col.
    DATA t52 TYPE f.
    t52 = strlen( t36->str ).
    DATA(t57) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t57->has = abap_true.
    t57->value = t52.
    t34 = NEW zcl_lnt_position( i_row = t39 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t46 right = t57 op = `+` ) ).
    DATA t58 TYPE string.
    t58 = t5->value.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = NEW zcl_lnt_iissue_data( i_filename = t22 i_message_26cb = t24 i_key = t26 i_start = t28 i_end = t34 i_severity = t58 i_default_fix = t6 i_alternative_fixes = t63 ).
    CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
    t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t66 ).
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t69 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t70 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t71 ).
    ENDIF.
    CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
    t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t73 ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t75 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t77 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t79 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t81 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t83 ).
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t85 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t21 ).

  ENDMETHOD.

  METHOD at_identifier.
    DATA(t1) = i_identifier.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_key.
    DATA(t4) = i_severity.
    DATA(t5) = i_fix.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t9 = t4.
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE abap_bool( ).
    IF t9 IS INITIAL.
      t12 = abap_true.
    ELSEIF t9->has = abap_false.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      t11 = |Error|.
    ELSE.
      t11 = t9->value.
    ENDIF.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = t11.
    t4 = t17.
    DATA t20 TYPE REF TO zcl_lnt_iissue_data.
    DATA t21 TYPE string.
    t21 = t1->filename.
    DATA t27 TYPE string.
    t27 = t2.
    DATA t29 TYPE string.
    t29 = t3.
    DATA t31 TYPE REF TO zcl_lnt_position.
    t31 = t1->token->start.
    DATA t41 TYPE REF TO zcl_lnt_position.
    DATA t46 TYPE REF TO zcl_lnt_abstract_token.
    t46 = t1->token.
    DATA t50 TYPE f.
    t50 = t46->start->row.
    DATA t57 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t57 = t46->start->col.
    DATA t63 TYPE f.
    t63 = strlen( t46->str ).
    DATA(t68) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t68->has = abap_true.
    t68->value = t63.
    t41 = NEW zcl_lnt_position( i_row = t50 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t57 right = t68 op = `+` ) ).
    DATA t69 TYPE string.
    t69 = t4->value.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t20 = NEW zcl_lnt_iissue_data( i_filename = t21 i_message_26cb = t27 i_key = t29 i_start = t31 i_end = t41 i_severity = t69 i_default_fix = t5 i_alternative_fixes = t74 ).
    CREATE OBJECT t20->zlnt_view_ownkeys_b0e8086400eb.
    t20->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t76 ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t20->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `defaultFix` p1 = t82 ).
    ENDIF.
    CREATE OBJECT t20->zlnt_json_ownkeys_70e5fd461788.
    t20->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t84 ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t86 ).
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t88 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t90 ).
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t92 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |severity| p1 = t94 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t20->zlnt_json_ownkeys_70e5fd461788->put( p0 = |defaultFix| p1 = t96 ).
    ENDIF.
    result = NEW zcl_lnt_issue( i_data_dc02 = t20 ).

  ENDMETHOD.

  METHOD get_data.
    result = me->data_56cc.

  ENDMETHOD.

  METHOD get_message.
    result = me->data_56cc->message_25cb.

  ENDMETHOD.

  METHOD get_key.
    result = me->data_56cc->key.

  ENDMETHOD.

  METHOD get_start.
    result = me->data_56cc->start.

  ENDMETHOD.

  METHOD get_end.
    result = me->data_56cc->end.

  ENDMETHOD.

  METHOD get_filename.
    result = me->data_56cc->filename.

  ENDMETHOD.

  METHOD get_default_fix.
    result = me->data_56cc->default_fix.

  ENDMETHOD.

  METHOD get_alternative_fixes.
    result = me->data_56cc->alternative_fixes.

  ENDMETHOD.

  METHOD get_severity.
    result = me->data_56cc->severity.

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
