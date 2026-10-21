* TS: src/utils/cyclomatic_complexity_stats.ts:18:1 CyclomaticComplexityStats
CLASS zcl_lnt_cyclmtc_cmplxty_stts DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclmtc_cmplxty_stts IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    t10 ?= t1.
    t8 = t10->parsed.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t8->load( ).
      IF t17 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t8->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      t23 = t15->structure.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      IF xsdbool( t23 IS INITIAL ) = abap_true.
        CLEAR t29.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        t34 = t23.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
        t29 = t34->find_all_structures( i_type_9913 = t36 ).
      ENDIF.
      t21 = t29.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      IF xsdbool( t21 IS BOUND ) = abap_true.
        t37 = t21.
      ELSE.
        CREATE OBJECT t37.
      ENDIF.
      t20 = t37.
      DATA t43 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      DATA(t45) = VALUE i( ).
      DO.
        t20->load( ).
        IF t45 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t20->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t48 TYPE f.
        t48 = CONV f( 0 ).
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t50 = t43->find_all_statement_nodes( ).
        DATA t52 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t52.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        DATA(t54) = VALUE i( ).
        DO.
          t50->load( ).
          IF t54 >= lines( t50->items ).
            EXIT.
          ENDIF.
          CLEAR t53.
          READ TABLE t50->items INDEX t54 + 1 INTO t53.
          t54 = t54 + 1.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          CLEAR t52.
          IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t55 ?= t53.
            DATA t56 TYPE REF TO object.
            t56 = t55->as_ref( ).
            t52 ?= t56.
          ELSE.
            t52 ?= t53.
          ENDIF.
          DATA t57 TYPE REF TO zif_lnt_statement.
          t57 = t52->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          t70 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_assert ).
          t69 = t70.
          IF t70 = abap_false.
            t69 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_check ).
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            t68 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_else_if ).
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            t67 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_if ).
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            t66 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_while ).
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            t65 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_case ).
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            t64 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_select_loop ).
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            t63 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_catch ).
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            t62 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_cleanup ).
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            t61 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_at ).
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            t60 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_st_loop ).
          ENDIF.
          IF t60 = abap_true.
            DATA(t94) = CONV f( 1 ).
            t48 = t48 + t94.
          ENDIF.
        ENDDO.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t99.
        DATA t101 TYPE REF TO zcl_lnt_statement_node.
        DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d554_9e796f7b9641.
        t101 = t43->find_direct_statement( i_type_9913 = t104 ).
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        IF xsdbool( t101 IS INITIAL ) = abap_true.
          CLEAR t105.
        ELSE.
          DATA t110 TYPE REF TO zcl_lnt_statement_node.
          t110 = t101.
          DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t105 = t110->find_direct_expression( i_type_9913 = t112 ).
        ENDIF.
        t99 = t105.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t113.
        IF xsdbool( t99 IS INITIAL ) = abap_true.
          CLEAR t113.
        ELSE.
          t113 = t99->get_first_token( ).
        ENDIF.
        t97 = t113.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        IF xsdbool( t97 IS INITIAL ) = abap_true.
          CLEAR t120.
        ELSE.
          DATA t128 TYPE string.
          t128 = t97->str.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t128.
          t120 = t130.
        ENDIF.
        t95 = t120.
        DATA t132 TYPE REF TO zcl_lnt_icyclmtc_cmplxty_rslt.
        CLEAR t132.
        DATA t133 TYPE REF TO zif_lnt_file.
        t133 = t15.
        DATA t135 TYPE REF TO zcl_lnt_position.
        t135 = t43->get_first_token( )->start.
        DATA(t143) = VALUE string( ).
        DATA(t144) = VALUE abap_bool( ).
        IF t95 IS BOUND.
          IF t95->has = abap_true.
            t144 = xsdbool( strlen( t95->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t144 = abap_true.
          t143 = t95->value.
        ELSE.
          t143 = |Error!|.
        ENDIF.
        t132 = NEW zcl_lnt_icyclmtc_cmplxty_rslt( i_file = t133 i_pos = t135 i_name = t143 i_count = t48 ).
        CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
        t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t151 ).
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t154 ).
        ENDIF.
        CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
        t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t156 ).
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pos| p1 = t158 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t160 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t162 ).
        ENDIF.
        t2->load( ).
        APPEND t132 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1786_ba71b957d789.
  ENDMETHOD.
ENDCLASS.
