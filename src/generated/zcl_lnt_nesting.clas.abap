* TS: src/rules/nesting.ts:13:1 Nesting
CLASS zcl_lnt_nesting DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_nesting_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_max TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cnf_ins_src_rls_nst_ts_nstn RETURNING VALUE(result) TYPE REF TO zcl_lnt_nesting_conf.
    METHODS st_cnf_ins_src_rls_nst_ts_nstn IMPORTING i_conf TYPE REF TO zcl_lnt_nesting_conf.
    METHODS rn_prs_ins_src_rls_nst_ts_nstn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nesting IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_nesting_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |nesting|.
    DATA t4 TYPE string.
    t4 = |Check nesting depth|.
    DATA t6 TYPE string.
    t6 = |Checks for methods exceeding a maximum nesting depth|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#keep-the-nesting-depth-low\nhttps://docs.abapopenche|.
    t11 = t11 && |cks.org/checks/74/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |SingleFile|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |Reduce nesting depth to max |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_max }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_nst_ts_nstn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_nst_ts_nstn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_prs_ins_src_rls_nst_ts_nstn.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE f.
    DATA(t5) = CONV f( 0 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA t17 TYPE REF TO zif_lnt_statement.
      t17 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE abap_bool.
      t25 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_if ).
      t24 = t25.
      IF t25 = abap_false.
        DATA t27 TYPE abap_bool.
        t27 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_case ).
        t24 = t27.
      ENDIF.
      t23 = t24.
      IF t24 = abap_false.
        DATA t29 TYPE abap_bool.
        t29 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_while ).
        t23 = t29.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t31 TYPE abap_bool.
        t31 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_loop ).
        t22 = t31.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA t33 TYPE abap_bool.
        t33 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t21 = t33.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t35 TYPE abap_bool.
        t35 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_do ).
        t20 = t35.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t37 TYPE abap_bool.
        t37 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_try ).
        t19 = t37.
      ENDIF.
      IF t19 = abap_true.
        DATA t39 TYPE f.
        DATA(t41) = CONV f( 1 ).
        t39 = t4 + t41.
        t4 = t39.
      ELSE.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        t48 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_if ).
        t47 = t48.
        IF t48 = abap_false.
          DATA t50 TYPE abap_bool.
          t50 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_case ).
          t47 = t50.
        ENDIF.
        t46 = t47.
        IF t47 = abap_false.
          DATA t52 TYPE abap_bool.
          t52 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_while ).
          t46 = t52.
        ENDIF.
        t45 = t46.
        IF t46 = abap_false.
          DATA t54 TYPE abap_bool.
          t54 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_loop ).
          t45 = t54.
        ENDIF.
        t44 = t45.
        IF t45 = abap_false.
          DATA t56 TYPE abap_bool.
          t56 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_select ).
          t44 = t56.
        ENDIF.
        t43 = t44.
        IF t44 = abap_false.
          DATA t58 TYPE abap_bool.
          t58 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_do ).
          t43 = t58.
        ENDIF.
        t42 = t43.
        IF t43 = abap_false.
          DATA t60 TYPE abap_bool.
          t60 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_end_try ).
          t42 = t60.
        ENDIF.
        IF t42 = abap_true.
          DATA t62 TYPE f.
          DATA(t64) = CONV f( 1 ).
          t62 = t4 - t64.
          t4 = t62.
        ENDIF.
      ENDIF.
      DATA t65 TYPE abap_bool.
      DATA t67 TYPE f.
      t67 = me->conf->zlnt_view_read_sr_c2aca24d9bc4( ).
      t65 = xsdbool( t4 > t67 ).
      IF t65 = abap_true.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        t72 = t11->get_first_token( ).
        DATA t74 TYPE REF TO zcl_lnt_position.
        t74 = t72->start.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA(t80) = VALUE string( ).
        DATA(t81) = VALUE string( ).
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE f.
        t83 = me->conf->zlnt_view_read_sr_c2aca24d9bc4( ).
        IF t83 <> trunc( t83 ) OR t83 > range_safe_integer OR t83 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t85) = CONV int8( t83 ).
        t82 = |{ t85 }|.
        t81 = t82.
        DATA t86 TYPE string.
        DATA(t87) = |Reduce nesting depth to max |.
        DATA(t89) = strlen( t87 ).
        t86 = |{ t87 }{ t81 }|.
        t80 = t86.
        DATA(t90) = VALUE string( ).
        DATA t91 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t91.
        DATA t92 TYPE string.
        t92 = |nesting|.
        DATA t94 TYPE string.
        t94 = |Check nesting depth|.
        DATA t96 TYPE string.
        t96 = |Checks for methods exceeding a maximum nesting depth|.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA(t101) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t101 = t101 && |nABAP.md#keep-the-nesting-depth-low\nhttps://docs.abapopenche|.
        t101 = t101 && |cks.org/checks/74/|.
        DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t102->has = abap_true.
        t102->value = t101.
        t98 = t102.
        DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t104.
        DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t109.
        t108 = t109.
        DATA(t111) = |Styleguide|.
        t108->load( ).
        APPEND t111 TO t108->items.
        t108->save( ).
        DATA(t113) = |SingleFile|.
        t108->load( ).
        APPEND t113 TO t108->items.
        t108->save( ).
        t104 = t108.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        t91 = NEW zcl_lnt_irule_metadata( i_key = t92 i_title = t94 i_short_description = t96 i_bad_example = t116 i_good_example = t118 i_extended_information = t98 i_tags = t104 i_pragma = t120 i_pseudo_comment = t122 ).
        CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
        t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t124 ).
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t125 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t126 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t127 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t128 ).
        ENDIF.
        CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
        t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t129) = |key|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        DATA(t131) = |title|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |shortDescription|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |extendedInformation|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |tags|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        t90 = t91->key.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t139 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t141.
        t77 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t74 i_message_26cb = t80 i_key = t90 i_severity = t139 i_fix = t141 ).
        t2->load( ).
        APPEND t77 TO t2->items.
        t2->save( ).
        EXIT.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_nesting_conf( me->gt_cnf_ins_src_rls_nst_ts_nstn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_nesting_conf( me->gt_cnf_ins_src_rls_nst_ts_nstn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_nesting_conf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_nesting_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_nst_ts_nstn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_prs_ins_src_rls_nst_ts_nstn( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1601_eee449a4fb30.
  ENDMETHOD.
ENDCLASS.
