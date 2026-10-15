* TS: src/utils/include_graph.ts:83:1 IncludeGraph
CLASS zcl_lnt_include_graph DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_include_graph.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA graph TYPE REF TO zcl_lnt_graph.
    DATA severity TYPE string.
    DATA allow_unused TYPE abap_bool.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_severity TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_allow_unused TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS l_m_f_i_i_sr_ut_in_gr_ts_in_gr IMPORTING i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_issues_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build.
    METHODS add_vertices.
    METHODS list_main_for_include IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_include_graph IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_severity.
    DATA(t3) = i_allow_unused.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t2.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = |Error|.
        DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t9->has = abap_true.
        t9->value = t8.
        t6 = t9.
      ELSE.
        DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t2 = t6.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t3.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ELSEIF t12->has = abap_false.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = abap_false.
        DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t3 = t13.
    ENDIF.
    DATA(t18) = t1.
    me->reg = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    me->issues = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    DATA(t20) = NEW zcl_lnt_graph( ).
    me->graph = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22->value.
    me->severity = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t3.
    t23 = t24->value.
    me->allow_unused = t23.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowUnused`.
    me->build( ).
  ENDMETHOD.

  METHOD l_m_f_i_i_sr_ut_in_gr_ts_in_gr.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ELSEIF t10->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = me->graph.
    DATA t14 TYPE string.
    DATA(t15) = t1.
    t14 = t15->value.
    t12 = t13->find_top( i_filename = t14 ).
    DATA t16 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t12->load( ).
      IF t18 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t12->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t16.
      t22 = t23->include_3f11.
      DATA(t24) = abap_false.
      t21 = xsdbool( t22 = t24 ).
      IF t21 = abap_true.
        DATA(t25) = t2.
        DATA t26 TYPE string.
        DATA(t27) = t16.
        t26 = t27->filename.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDIF.
    ENDDO.
    DATA(t28) = t2.
    result = t28.

  ENDMETHOD.

  METHOD get_issues_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->issues.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        CLEAR t9.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_issue.
      CLEAR t12.
      DATA(t13) = t5.
      t12 = t13.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE REF TO zcl_lnt_iissue_data.
      CLEAR t15.
      DATA(t16) = t12.
      t15 = t16->data_56cc.
      t14 = t15->filename.
      t11 = t14.
      DATA(t17) = VALUE string( ).
      DATA(t18) = t1.
      t17 = t18->get_filename( ).
      t10 = xsdbool( t11 = t17 ).
      IF t10 = abap_true.
        DATA(t19) = t2.
        DATA(t20) = t5.
        t19->load( ).
        APPEND t20 TO t19->items.
        t19->save( ).
      ENDIF.
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_graph.
    CLEAR t23.
    DATA(t24) = me->graph.
    t23 = t24.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    DATA(t27) = t1.
    t26 = t27->get_filename( ).
    t25 = t26.
    DATA t28 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    CLEAR t29.
    DATA(t30) = t23.
    t29 = t30->vertices_filename_index.
    DATA(t31) = VALUE string( ).
    DATA(t32) = t25.
    DATA(t33) = strlen( t32 ).
    t31 = t32.
    IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t31 TO UPPER CASE.
    ELSE.
      t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
    ENDIF.
    t28 = t29->get( p0 = t31 ).
    t22 = t28.
    t21 = t22.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zcl_lnt_ivertex.
    CLEAR t38.
    DATA(t39) = t21.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    t40 = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t38.
    IF t44 IS INITIAL.
      t43 = abap_true.
    ENDIF.
    t42 = xsdbool( t43 = abap_false ).
    t37 = t42.
    t36 = t37.
    IF t37 = abap_true.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = CONV abap_bool( me->allow_unused ).
      DATA(t47) = abap_false.
      t45 = xsdbool( t46 = t47 ).
      t36 = t45.
    ENDIF.
    t35 = t36.
    IF t36 = abap_true.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t50.
      DATA(t51) = t21.
      t50 = t51.
      t49 = t50->include_3f11.
      DATA(t52) = abap_true.
      t48 = xsdbool( t49 = t52 ).
      t35 = t48.
    ENDIF.
    t34 = t35.
    IF t35 = abap_true.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE i( ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zcl_lnt_ivertex.
        CLEAR t59.
        DATA(t60) = t21.
        t59 = t60.
        t58 = t59->filename.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = t58.
        t56 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t56 = t62.
      ENDIF.
      t55 = me->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t56 ).
      t55->load( ).
      t54 = lines( t55->items ).
      DATA(t63) = 0.
      t53 = xsdbool( t54 = t63 ).
      t34 = t53.
    ENDIF.
    IF t34 = abap_true.
      DATA t64 TYPE REF TO zif_lnt_file.
      CLEAR t64.
      DATA t65 TYPE REF TO zif_lnt_file.
      CLEAR t65.
      DATA(t66) = me->reg.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE REF TO zcl_lnt_ivertex.
      CLEAR t68.
      DATA(t69) = t21.
      t68 = t69.
      t67 = t68->filename.
      t65 = t66->get_file_by_name( i_filename = t67 ).
      t64 = t65.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zif_lnt_file.
      CLEAR t71.
      DATA(t72) = t64.
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t73 = t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = t71.
      IF t76 IS INITIAL.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      IF t70 = abap_true.
        DATA t77 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA(t81) = |findUnusedIncludes internal error|.
          DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t82->has = abap_true.
          t82->value = t81.
          t79 = t82.
        ELSE.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t79 = t83.
        ENDIF.
        t78 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t79 ).
        t77 = NEW #( ).
        t77->payload = t78.
        CLEAR t77->source_value.
        IF t78 IS BOUND.
          DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t84.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          CLEAR t84.
          t85 = t78.
          TRY.
              t77->source_value ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t77->source_value IS NOT BOUND.
            TRY.
                t84 ?= t78.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t84 IS BOUND.
              t77->source_value = t84->source( ).
            ENDIF.
            IF t77->source_value IS NOT BOUND.
              CREATE OBJECT t77->source_value.
              t77->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t77->source_value->oval = t78.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t77.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_issue.
      CLEAR t86.
      DATA t87 TYPE REF TO zcl_lnt_issue.
      CLEAR t87.
      DATA t88 TYPE REF TO zif_lnt_file.
      CLEAR t88.
      DATA(t89) = t64.
      t88 = t89.
      DATA t90 TYPE REF TO zcl_lnt_position.
      CLEAR t90.
      DATA(t91) = CONV f( 1 ).
      DATA(t92) = CONV f( 1 ).
      DATA(t93) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t93->has = abap_true.
      t93->value = t92.
      t90 = NEW zcl_lnt_position( i_row = t91 i_col = t93 ).
      DATA(t94) = |INCLUDE not used anywhere|.
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t96.
      DATA t97 TYPE REF TO zcl_lnt_check_include.
      CLEAR t97.
      DATA(t98) = NEW zcl_lnt_check_include( ).
      t97 = t98.
      DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t99.
      DATA(t100) = VALUE string( ).
      DATA(t101) = |check_include|.
      t100 = t101.
      DATA(t102) = VALUE string( ).
      DATA(t103) = |Check INCLUDEs|.
      t102 = t103.
      DATA(t104) = VALUE string( ).
      DATA(t105) = |Checks INCLUDE statements|.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA(t109) = |\n* Reports unused includes\n* Errors if the includes are not |.
        t109 = t109 && |found\n* Error if including a main program\n* Skips ZX* includ|.
        t109 = t109 && |es|.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t109.
        t107 = t110.
      ELSE.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t107 = t111.
      ENDIF.
      t106 = t107.
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t115.
        DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t117.
        CREATE OBJECT t117.
        t116 = t117.
        DATA(t118) = t116.
        DATA(t119) = |Syntax|.
        t118->load( ).
        APPEND t119 TO t118->items.
        t118->save( ).
        DATA(t120) = t116.
        t115 = t120.
        t113 = t115.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t121.
        t113 = t121.
      ENDIF.
      t112 = t113.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t122.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      t122 = t123.
      DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t124.
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t125.
      t124 = t125.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t127.
      t126 = t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      t128 = t129.
      t99 = NEW zcl_lnt_irule_metadata( i_key = t100 i_title = t102 i_short_description = t104 i_bad_example = t122 i_good_example = t124 i_extended_information = t106 i_tags = t112 i_pragma = t126 i_pseudo_comment = t128 ).
      CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
      t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t130 ).
      ENDIF.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t131.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t131 ).
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t132 ).
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t133 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t134 ).
      ENDIF.
      CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
      t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t135) = |key|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      DATA(t137) = |title|.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
      ENDIF.
      DATA(t139) = |shortDescription|.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
      ENDIF.
      DATA(t141) = |extendedInformation|.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
      ENDIF.
      DATA(t143) = |tags|.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
      ENDIF.
      t96 = t99.
      t95 = t96->key.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      DATA(t146) = abap_true.
      IF t146 = abap_true.
        DATA(t147) = CONV string( me->severity ).
        DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t148->has = abap_true.
        t148->value = t147.
        t145 = t148.
      ELSE.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t145 = t149.
      ENDIF.
      DATA t150 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t150.
      t87 = zcl_lnt_issue=>at_position( i_file = t88 i_start = t90 i_message_26cb = t94 i_key = t95 i_severity = t145 i_fix = t150 ).
      t86 = t87.
      DATA(t151) = t2.
      DATA(t152) = t86.
      t151->load( ).
      APPEND t152 TO t151->items.
      t151->save( ).
    ENDIF.
    DATA(t153) = t2.
    result = t153.

  ENDMETHOD.

  METHOD build.
    me->add_vertices( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA(t2) = me->reg.
    t1 = zcl_lnt_include_graph_module=>get_abap_objects( i_reg_f149 = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        CLEAR t7.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t9.
      DATA(t10) = t3.
      t9 = t10.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA(t12) = t9.
      t11 = t12->parsed.
      t8 = t11.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t8->load( ).
        IF t15 >= lines( t8->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t8->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          CLEAR t17.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA(t18) = VALUE abap_bool( ).
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE i( ).
        DATA(t21) = VALUE string( ).
        DATA t22 TYPE REF TO zcl_lnt_abstract_file.
        CLEAR t22.
        DATA(t23) = t13.
        t22 = t23.
        DATA(t24) = VALUE string( ).
        DATA(t25) = t22.
        t24 = t25->filename.
        t21 = t24.
        DATA(t26) = |.prog.screen_|.
        DATA(t27) = strlen( t21 ).
        IF t26 IS INITIAL.
          t20 = 0.
        ELSE.
          FIND t26 IN t21 MATCH OFFSET t20.
          IF sy-subrc <> 0.
            t20 = -1.
          ENDIF.
        ENDIF.
        DATA(t28) = 0.
        t19 = xsdbool( t20 >= t28 ).
        t18 = t19.
        IF t19 = abap_false.
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = VALUE i( ).
          DATA(t31) = VALUE string( ).
          DATA t32 TYPE REF TO zcl_lnt_abstract_file.
          CLEAR t32.
          DATA(t33) = t13.
          t32 = t33.
          DATA(t34) = VALUE string( ).
          DATA(t35) = t32.
          t34 = t35->filename.
          t31 = t34.
          DATA(t36) = |.fugr.screen_|.
          DATA(t37) = strlen( t31 ).
          IF t36 IS INITIAL.
            t30 = 0.
          ELSE.
            FIND t36 IN t31 MATCH OFFSET t30.
            IF sy-subrc <> 0.
              t30 = -1.
            ENDIF.
          ENDIF.
          DATA(t38) = 0.
          t29 = xsdbool( t30 >= t38 ).
          t18 = t29.
        ENDIF.
        IF t18 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t40.
        DATA(t41) = t13.
        t40 = t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        DATA(t43) = t40.
        t42 = t43->statements.
        t39 = t42.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t44.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        DATA(t46) = VALUE i( ).
        DO.
          t39->load( ).
          IF t46 >= lines( t39->items ).
            EXIT.
          ENDIF.
          CLEAR t45.
          READ TABLE t39->items INDEX t46 + 1 INTO t45.
          t46 = t46 + 1.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t47.
          CLEAR t44.
          IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t47 ?= t45.
            DATA t48 TYPE REF TO object.
            CLEAR t48.
            t48 = t47->as_ref( ).
            t44 ?= t48.
          ELSE.
            t44 ?= t45.
          ENDIF.
          DATA(t49) = VALUE abap_bool( ).
          DATA t50 TYPE REF TO zif_lnt_statement.
          CLEAR t50.
          DATA(t51) = t44.
          t50 = t51->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_include ).
          IF t49 = abap_true.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t52.
            DATA t53 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t53.
            DATA(t54) = t44.
            DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
            t53 = t54->find_first_expression( i_type_9913 = t55 ).
            t52 = t53.
            DATA(t56) = VALUE abap_bool( ).
            DATA t57 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t57.
            DATA(t58) = t52.
            t57 = t58.
            DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t59.
            DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t60.
            t59 = t60.
            DATA(t61) = VALUE abap_bool( ).
            DATA(t62) = t57.
            IF t62 IS INITIAL.
              t61 = abap_true.
            ENDIF.
            t56 = t61.
            IF t56 = abap_true.
              DATA t63 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
              CLEAR t63.
              DATA t64 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
              CLEAR t64.
              DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t65.
              DATA(t66) = abap_true.
              IF t66 = abap_true.
                DATA(t67) = |unexpected Include node|.
                DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t68->has = abap_true.
                t68->value = t67.
                t65 = t68.
              ELSE.
                DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t69.
                t65 = t69.
              ENDIF.
              t64 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t65 ).
              t63 = NEW #( ).
              t63->payload = t64.
              CLEAR t63->source_value.
              IF t64 IS BOUND.
                DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t70.
                DATA t71 TYPE REF TO object.
                CLEAR t71.
                CLEAR t70.
                t71 = t64.
                TRY.
                    t63->source_value ?= t71.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t63->source_value IS NOT BOUND.
                  TRY.
                      t70 ?= t64.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t70 IS BOUND.
                    t63->source_value = t70->source( ).
                  ENDIF.
                  IF t63->source_value IS NOT BOUND.
                    CREATE OBJECT t63->source_value.
                    t63->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t63->source_value->oval = t64.
                  ENDIF.
                ENDIF.
              ENDIF.
              RAISE EXCEPTION t63.
            ENDIF.
            DATA(t72) = VALUE string( ).
            DATA(t73) = VALUE string( ).
            DATA(t74) = VALUE string( ).
            DATA t75 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t75.
            DATA t76 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t76.
            DATA t77 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t77.
            DATA(t78) = t52.
            t77 = t78.
            t76 = t77->get_first_token( ).
            t75 = t76.
            DATA(t79) = VALUE string( ).
            DATA(t80) = t75.
            t79 = t80->str.
            t74 = t79.
            DATA(t81) = strlen( t74 ).
            t73 = t74.
            IF t73 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t73 TO UPPER CASE.
            ELSE.
              t73 = zlnt_runtime_uppe_91169605024d=>full( t73 ).
            ENDIF.
            t72 = t73.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE string( ).
            DATA(t84) = t72.
            t83 = t84.
            DATA(t85) = VALUE abap_bool( ).
            DATA t86 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t86.
            IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
              zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
            ENDIF.
            t86 = zcl_lnt_include_graph_module=>fmxxinclude.
            DATA(t87) = t83.
            t85 = t86->match_test( p0 = t87 ).
            t82 = t85.
            IF t82 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t88 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t88.
            DATA t89 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_graph.
            CLEAR t90.
            DATA(t91) = me->graph.
            t90 = t91.
            DATA(t92) = VALUE string( ).
            DATA(t93) = t72.
            t92 = t93.
            DATA t94 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t94.
            DATA t95 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t95.
            DATA(t96) = t90.
            t95 = t96->vertices_includename_index.
            DATA(t97) = VALUE string( ).
            DATA(t98) = t92.
            DATA(t99) = strlen( t98 ).
            t97 = t98.
            IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t97 TO UPPER CASE.
            ELSE.
              t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
            ENDIF.
            t94 = t95->get( p0 = t97 ).
            t89 = t94.
            t88 = t89.
            DATA(t100) = VALUE abap_bool( ).
            DATA t101 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t101.
            DATA(t102) = t88.
            t101 = t102.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t104.
            t103 = t104.
            DATA(t105) = VALUE abap_bool( ).
            DATA(t106) = t101.
            IF t106 IS INITIAL.
              t105 = abap_true.
            ENDIF.
            t100 = t105.
            IF t100 = abap_true.
              DATA(t107) = VALUE abap_bool( ).
              DATA(t108) = VALUE abap_bool( ).
              DATA(t109) = VALUE i( ).
              DATA(t110) = VALUE string( ).
              DATA(t111) = VALUE string( ).
              DATA(t112) = t44.
              t111 = t112->concat_tokens( ).
              DATA(t113) = strlen( t111 ).
              t110 = t111.
              IF t110 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t110 TO UPPER CASE.
              ELSE.
                t110 = zlnt_runtime_uppe_91169605024d=>full( t110 ).
              ENDIF.
              DATA(t114) = |IF FOUND|.
              DATA(t115) = strlen( t110 ).
              IF t114 IS INITIAL.
                t109 = 0.
              ELSE.
                FIND t114 IN t110 MATCH OFFSET t109.
                IF sy-subrc <> 0.
                  t109 = -1.
                ENDIF.
              ENDIF.
              DATA(t116) = 0.
              t108 = xsdbool( t109 >= t116 ).
              t107 = t108.
              DATA(t117) = VALUE abap_bool( ).
              DATA(t118) = t107.
              DATA(t119) = abap_false.
              t117 = xsdbool( t118 = t119 ).
              IF t117 = abap_true.
                DATA t120 TYPE REF TO zcl_lnt_issue.
                CLEAR t120.
                DATA t121 TYPE REF TO zcl_lnt_issue.
                CLEAR t121.
                DATA(t122) = t13.
                DATA(t123) = t44.
                DATA(t124) = VALUE string( ).
                DATA(t125) = VALUE string( ).
                DATA(t126) = |Include |.
                DATA(t127) = t72.
                DATA(t128) = strlen( t126 ).
                t125 = |{ t126 }{ t127 }|.
                DATA(t129) = | not found|.
                DATA(t130) = strlen( t125 ).
                t124 = |{ t125 }{ t129 }|.
                DATA(t131) = VALUE string( ).
                DATA t132 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t132.
                DATA t133 TYPE REF TO zcl_lnt_check_include.
                CLEAR t133.
                DATA(t134) = NEW zcl_lnt_check_include( ).
                t133 = t134.
                DATA t135 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t135.
                DATA(t136) = VALUE string( ).
                DATA(t137) = |check_include|.
                t136 = t137.
                DATA(t138) = VALUE string( ).
                DATA(t139) = |Check INCLUDEs|.
                t138 = t139.
                DATA(t140) = VALUE string( ).
                DATA(t141) = |Checks INCLUDE statements|.
                t140 = t141.
                DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t142.
                DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t143.
                DATA(t144) = abap_true.
                IF t144 = abap_true.
                  DATA(t145) = |\n* Reports unused includes\n* Errors if the includes are not |.
                  t145 = t145 && |found\n* Error if including a main program\n* Skips ZX* includ|.
                  t145 = t145 && |es|.
                  DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t146->has = abap_true.
                  t146->value = t145.
                  t143 = t146.
                ELSE.
                  DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t147.
                  t143 = t147.
                ENDIF.
                t142 = t143.
                DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t148.
                DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t149.
                DATA(t150) = abap_true.
                IF t150 = abap_true.
                  DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t151.
                  DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t152.
                  DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t153.
                  CREATE OBJECT t153.
                  t152 = t153.
                  DATA(t154) = t152.
                  DATA(t155) = |Syntax|.
                  t154->load( ).
                  APPEND t155 TO t154->items.
                  t154->save( ).
                  DATA(t156) = t152.
                  t151 = t156.
                  t149 = t151.
                ELSE.
                  DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t157.
                  t149 = t157.
                ENDIF.
                t148 = t149.
                DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t158.
                DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t159.
                t158 = t159.
                DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t160.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                t160 = t161.
                DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t162.
                DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t163.
                t162 = t163.
                DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t164.
                DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t165.
                t164 = t165.
                t135 = NEW zcl_lnt_irule_metadata( i_key = t136 i_title = t138 i_short_description = t140 i_bad_example = t158 i_good_example = t160 i_extended_information = t142 i_tags = t148 i_pragma = t162 i_pseudo_comment = t164 ).
                CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
                t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t166.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t166 ).
                ENDIF.
                DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t167.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t167 ).
                ENDIF.
                DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t168.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t168 ).
                ENDIF.
                DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t169.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t169 ).
                ENDIF.
                DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t170.
                IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t170 ).
                ENDIF.
                CREATE OBJECT t135->zlnt_json_ownkeys_70e5fd461788.
                t135->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t171) = |key|.
                DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t172.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
                ENDIF.
                DATA(t173) = |title|.
                DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t174.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
                ENDIF.
                DATA(t175) = |shortDescription|.
                DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t176.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
                ENDIF.
                DATA(t177) = |extendedInformation|.
                DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t178.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
                ENDIF.
                DATA(t179) = |tags|.
                DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t180.
                IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
                ENDIF.
                t132 = t135.
                t131 = t132->key.
                DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t181.
                DATA(t182) = abap_true.
                IF t182 = abap_true.
                  DATA(t183) = CONV string( me->severity ).
                  DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t184->has = abap_true.
                  t184->value = t183.
                  t181 = t184.
                ELSE.
                  DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t185.
                  t181 = t185.
                ENDIF.
                DATA t186 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t186.
                DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t187.
                t121 = zcl_lnt_issue=>at_statement( i_file = t122 i_statement = t123 i_message_26cb = t124 i_key = t131 i_severity = t181 i_fix = t186 i_alternative_fixes = t187 ).
                t120 = t121.
                DATA(t188) = me->issues.
                DATA(t189) = t120.
                t188->load( ).
                APPEND t189 TO t188->items.
                t188->save( ).
              ENDIF.
            ELSE.
              DATA(t190) = VALUE abap_bool( ).
              DATA(t191) = VALUE abap_bool( ).
              DATA t192 TYPE REF TO zcl_lnt_ivertex.
              CLEAR t192.
              DATA(t193) = t88.
              t192 = t193.
              t191 = t192->include_3f11.
              DATA(t194) = abap_false.
              t190 = xsdbool( t191 = t194 ).
              IF t190 = abap_true.
                DATA t195 TYPE REF TO zcl_lnt_issue.
                CLEAR t195.
                DATA t196 TYPE REF TO zcl_lnt_issue.
                CLEAR t196.
                DATA(t197) = t13.
                DATA(t198) = t44.
                DATA(t199) = VALUE string( ).
                DATA(t200) = |Not possible to INCLUDE a main program, |.
                DATA(t201) = t72.
                DATA(t202) = strlen( t200 ).
                t199 = |{ t200 }{ t201 }|.
                DATA(t203) = VALUE string( ).
                DATA t204 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t204.
                DATA t205 TYPE REF TO zcl_lnt_check_include.
                CLEAR t205.
                DATA(t206) = NEW zcl_lnt_check_include( ).
                t205 = t206.
                DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t207.
                DATA(t208) = VALUE string( ).
                DATA(t209) = |check_include|.
                t208 = t209.
                DATA(t210) = VALUE string( ).
                DATA(t211) = |Check INCLUDEs|.
                t210 = t211.
                DATA(t212) = VALUE string( ).
                DATA(t213) = |Checks INCLUDE statements|.
                t212 = t213.
                DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t214.
                DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t215.
                DATA(t216) = abap_true.
                IF t216 = abap_true.
                  DATA(t217) = |\n* Reports unused includes\n* Errors if the includes are not |.
                  t217 = t217 && |found\n* Error if including a main program\n* Skips ZX* includ|.
                  t217 = t217 && |es|.
                  DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t218->has = abap_true.
                  t218->value = t217.
                  t215 = t218.
                ELSE.
                  DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t219.
                  t215 = t219.
                ENDIF.
                t214 = t215.
                DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t220.
                DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t221.
                DATA(t222) = abap_true.
                IF t222 = abap_true.
                  DATA t223 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t223.
                  DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t224.
                  DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t225.
                  CREATE OBJECT t225.
                  t224 = t225.
                  DATA(t226) = t224.
                  DATA(t227) = |Syntax|.
                  t226->load( ).
                  APPEND t227 TO t226->items.
                  t226->save( ).
                  DATA(t228) = t224.
                  t223 = t228.
                  t221 = t223.
                ELSE.
                  DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t229.
                  t221 = t229.
                ENDIF.
                t220 = t221.
                DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t230.
                DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t231.
                t230 = t231.
                DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t232.
                DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t233.
                t232 = t233.
                DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t234.
                DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t235.
                t234 = t235.
                DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t236.
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                t236 = t237.
                t207 = NEW zcl_lnt_irule_metadata( i_key = t208 i_title = t210 i_short_description = t212 i_bad_example = t230 i_good_example = t232 i_extended_information = t214 i_tags = t220 i_pragma = t234 i_pseudo_comment = t236 ).
                CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
                t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t238.
                IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t238 ).
                ENDIF.
                DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t239.
                IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t239 ).
                ENDIF.
                DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t240.
                IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t240 ).
                ENDIF.
                DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t241.
                IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t241 ).
                ENDIF.
                DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t242.
                IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t242 ).
                ENDIF.
                CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
                t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t243) = |key|.
                DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t244.
                IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
                ENDIF.
                DATA(t245) = |title|.
                DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t246.
                IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
                ENDIF.
                DATA(t247) = |shortDescription|.
                DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t248.
                IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
                ENDIF.
                DATA(t249) = |extendedInformation|.
                DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t250.
                IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
                ENDIF.
                DATA(t251) = |tags|.
                DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t252.
                IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
                ENDIF.
                t204 = t207.
                t203 = t204->key.
                DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t253.
                DATA(t254) = abap_true.
                IF t254 = abap_true.
                  DATA(t255) = CONV string( me->severity ).
                  DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t256->has = abap_true.
                  t256->value = t255.
                  t253 = t256.
                ELSE.
                  DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t257.
                  t253 = t257.
                ENDIF.
                DATA t258 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t258.
                DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t259.
                t196 = zcl_lnt_issue=>at_statement( i_file = t197 i_statement = t198 i_message_26cb = t199 i_key = t203 i_severity = t253 i_fix = t258 i_alternative_fixes = t259 ).
                t195 = t196.
                DATA(t260) = me->issues.
                DATA(t261) = t195.
                t260->load( ).
                APPEND t261 TO t260->items.
                t260->save( ).
              ELSE.
                DATA t262 TYPE REF TO zcl_lnt_graph.
                CLEAR t262.
                DATA(t263) = me->graph.
                t262 = t263.
                DATA t264 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t264.
                DATA t265 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t265.
                DATA(t266) = t88.
                t265 = t266.
                t264 = t265.
                DATA(t267) = VALUE string( ).
                DATA(t268) = VALUE string( ).
                DATA t269 TYPE REF TO zcl_lnt_abstract_file.
                CLEAR t269.
                DATA(t270) = t13.
                t269 = t270.
                DATA(t271) = VALUE string( ).
                DATA(t272) = t269.
                t271 = t272->filename.
                t268 = t271.
                t267 = t268.
                DATA(t273) = VALUE abap_bool( ).
                DATA t274 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t274.
                DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t275.
                DATA t276 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                CLEAR t276.
                DATA(t277) = t262.
                t276 = t277->edges.
                DATA(t278) = VALUE string( ).
                DATA(t279) = t264.
                t278 = t279->filename.
                t275 = t276->get( p0 = t278 ).
                t274 = t275.
                DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t280.
                DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t281.
                t280 = t281.
                DATA(t282) = VALUE abap_bool( ).
                DATA(t283) = t274.
                IF t283 IS INITIAL.
                  t282 = abap_true.
                ENDIF.
                t273 = t282.
                IF t273 = abap_true.
                  DATA t284 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                  CLEAR t284.
                  DATA t285 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                  CLEAR t285.
                  DATA(t286) = t262.
                  t285 = t286->edges.
                  DATA(t287) = VALUE string( ).
                  DATA(t288) = t264.
                  t287 = t288->filename.
                  DATA t289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t289.
                  CREATE OBJECT t289.
                  t284 = t285->set( p0 = t287 p1 = t289 ).
                ENDIF.
                DATA t290 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t290.
                DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t291.
                DATA t292 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                CLEAR t292.
                DATA(t293) = t262.
                t292 = t293->edges.
                DATA(t294) = VALUE string( ).
                DATA(t295) = t264.
                t294 = t295->filename.
                t291 = t292->get( p0 = t294 ).
                t290 = t291.
                DATA(t296) = t267.
                t290->load( ).
                APPEND t296 TO t290->items.
                t290->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDDO.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD add_vertices.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->reg.
    t1 = zcl_lnt_include_graph_module=>get_abap_objects( i_reg_f149 = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t3.
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ob_program ).
      IF t8 = abap_true.
        DATA t10 TYPE REF TO zcl_lnt_abap_file.
        DATA t11 TYPE REF TO zcl_lnt_abap_file.
        DATA t12 TYPE REF TO zcl_lnt_ob_program.
        DATA(t13) = t3.
        t12 ?= t13.
        t11 = t12->get_main_abap_file( ).
        t10 = t11.
        DATA t14 TYPE abap_bool.
        DATA(t15) = t10.
        t14 = xsdbool( t15 IS BOUND ).
        IF t14 = abap_true.
          DATA t16 TYPE REF TO zcl_lnt_graph.
          DATA(t17) = me->graph.
          t16 = t17.
          DATA t18 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t18.
          DATA t19 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t19.
          DATA t20 TYPE string.
          DATA t21 TYPE string.
          DATA t22 TYPE REF TO zcl_lnt_abstract_file.
          DATA t23 TYPE REF TO zcl_lnt_abap_file.
          DATA(t24) = t10.
          t23 = t24.
          t22 = t23.
          DATA t25 TYPE string.
          DATA(t26) = t22.
          t25 = t26->filename.
          t21 = t25.
          t20 = t21.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t28.
          DATA(t29) = abap_true.
          IF t29 = abap_true.
            DATA t30 TYPE string.
            DATA t31 TYPE REF TO zcl_lnt_abstract_object.
            DATA t32 TYPE REF TO zcl_lnt_ob_program.
            DATA(t33) = t3.
            t32 ?= t33.
            t31 = t32.
            DATA t34 TYPE string.
            DATA(t35) = t31.
            t34 = t35->name.
            t30 = t34.
            DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t36->has = abap_true.
            t36->value = t30.
            t28 = t36.
          ELSE.
            DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t37.
            t28 = t37.
          ENDIF.
          t27 = t28.
          DATA t38 TYPE abap_bool.
          DATA t39 TYPE abap_bool.
          DATA t40 TYPE REF TO zcl_lnt_ob_program.
          DATA t41 TYPE REF TO zcl_lnt_ob_program.
          DATA(t42) = t3.
          t41 ?= t42.
          t40 = t41.
          DATA t43 TYPE abap_bool.
          DATA(t44) = t40.
          t44->parse_xml( ).
          DATA t45 TYPE abap_bool.
          DATA t46 TYPE REF TO zcl_lnt_shape_d77da4ed.
          DATA t47 TYPE REF TO zcl_lnt_shape_d77da4ed.
          DATA(t48) = t40.
          t47 = t48->parsed_xml.
          t46 = t47.
          t45 = t46->is_include.
          t43 = t45.
          t39 = t43.
          t38 = t39.
          t19 = NEW zcl_lnt_ivertex( i_filename = t20 i_include_name = t27 i_include_cc4a = t38 ).
          CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
          t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t49 ).
          ENDIF.
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t50.
          IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `includeName` p1 = t50 ).
          ENDIF.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t51.
          IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `include` p1 = t51 ).
          ENDIF.
          CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
          t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t52) = |filename|.
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t53.
          IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
          ENDIF.
          DATA(t54) = |includeName|.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
          ENDIF.
          DATA(t56) = |include|.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t57.
          IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
          ENDIF.
          t18 = t19.
          DATA(t58) = VALUE abap_bool( ).
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t61) = t18.
          t60 = t61->include_name.
          t59 = t60.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t63.
          t62 = t63.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = t59.
          IF t66 IS INITIAL.
            t65 = abap_true.
          ELSEIF t66->has = abap_false.
            t65 = abap_true.
          ENDIF.
          t64 = xsdbool( t65 = abap_false ).
          t58 = t64.
          IF t58 = abap_true.
            DATA t67 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t67.
            DATA t68 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            DATA(t69) = t16.
            t68 = t69->vertices_includename_index.
            DATA t70 TYPE string.
            DATA t71 TYPE string.
            DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t73) = t18.
            t72 = t73->include_name.
            t71 = t72->value.
            DATA(t74) = strlen( t71 ).
            t70 = t71.
            IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t70 TO UPPER CASE.
            ELSE.
              t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
            ENDIF.
            DATA(t75) = t18.
            t67 = t68->set( p0 = t70 p1 = t75 ).
          ENDIF.
          DATA t76 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          DATA(t78) = t16.
          t77 = t78->vertices_filename_index.
          DATA t79 TYPE string.
          DATA t80 TYPE string.
          DATA(t81) = t18.
          t80 = t81->filename.
          DATA(t82) = strlen( t80 ).
          t79 = t80.
          IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t79 TO UPPER CASE.
          ELSE.
            t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
          ENDIF.
          DATA(t83) = t18.
          t76 = t77->set( p0 = t79 p1 = t83 ).
        ENDIF.
      ELSE.
        DATA t84 TYPE abap_bool.
        DATA(t85) = t3.
        t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_ob_type_pool ).
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_abap_file.
          DATA t87 TYPE REF TO zcl_lnt_abap_file.
          DATA t88 TYPE REF TO zcl_lnt_ob_type_pool.
          DATA(t89) = t3.
          t88 ?= t89.
          t87 = t88->get_main_abap_file( ).
          t86 = t87.
          DATA t90 TYPE abap_bool.
          DATA(t91) = t86.
          t90 = xsdbool( t91 IS BOUND ).
          IF t90 = abap_true.
            DATA t92 TYPE REF TO zcl_lnt_graph.
            DATA(t93) = me->graph.
            t92 = t93.
            DATA t94 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t94.
            DATA t95 TYPE REF TO zcl_lnt_ivertex.
            DATA t96 TYPE string.
            DATA t97 TYPE string.
            DATA t98 TYPE REF TO zcl_lnt_abstract_file.
            DATA t99 TYPE REF TO zcl_lnt_abap_file.
            DATA(t100) = t86.
            t99 = t100.
            t98 = t99.
            DATA t101 TYPE string.
            DATA(t102) = t98.
            t101 = t102->filename.
            t97 = t101.
            t96 = t97.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t103 = t104.
            DATA t105 TYPE abap_bool.
            DATA(t106) = abap_false.
            t105 = t106.
            t95 = NEW zcl_lnt_ivertex( i_filename = t96 i_include_name = t103 i_include_cc4a = t105 ).
            CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
            t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t107 ).
            ENDIF.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `includeName` p1 = t108 ).
            ENDIF.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `include` p1 = t109 ).
            ENDIF.
            CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
            t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t110) = |filename|.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
            ENDIF.
            DATA(t112) = |includeName|.
            DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t113.
            IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
            ENDIF.
            DATA(t114) = |include|.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
            ENDIF.
            t94 = t95.
            DATA(t116) = VALUE abap_bool( ).
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t119) = t94.
            t118 = t119->include_name.
            t117 = t118.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            t120 = t121.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = VALUE abap_bool( ).
            DATA(t124) = t117.
            IF t124 IS INITIAL.
              t123 = abap_true.
            ELSEIF t124->has = abap_false.
              t123 = abap_true.
            ENDIF.
            t122 = xsdbool( t123 = abap_false ).
            t116 = t122.
            IF t116 = abap_true.
              DATA t125 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t125.
              DATA t126 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              DATA(t127) = t92.
              t126 = t127->vertices_includename_index.
              DATA t128 TYPE string.
              DATA t129 TYPE string.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t131) = t94.
              t130 = t131->include_name.
              t129 = t130->value.
              DATA(t132) = strlen( t129 ).
              t128 = t129.
              IF t128 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t128 TO UPPER CASE.
              ELSE.
                t128 = zlnt_runtime_uppe_91169605024d=>full( t128 ).
              ENDIF.
              DATA(t133) = t94.
              t125 = t126->set( p0 = t128 p1 = t133 ).
            ENDIF.
            DATA t134 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t134.
            DATA t135 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            DATA(t136) = t92.
            t135 = t136->vertices_filename_index.
            DATA t137 TYPE string.
            DATA t138 TYPE string.
            DATA(t139) = t94.
            t138 = t139->filename.
            DATA(t140) = strlen( t138 ).
            t137 = t138.
            IF t137 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t137 TO UPPER CASE.
            ELSE.
              t137 = zlnt_runtime_uppe_91169605024d=>full( t137 ).
            ENDIF.
            DATA(t141) = t94.
            t134 = t135->set( p0 = t137 p1 = t141 ).
          ENDIF.
        ELSE.
          DATA t142 TYPE abap_bool.
          DATA(t143) = t3.
          t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_class ).
          IF t142 = abap_true.
            DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t145 TYPE REF TO zcl_lnt_class.
            DATA(t146) = t3.
            t145 ?= t146.
            t144 = t145->get_sequenced_files( ).
            DATA t147 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t147.
            DATA t148 TYPE REF TO object.
            CLEAR t148.
            DATA(t149) = VALUE i( ).
            DO.
              t144->load( ).
              IF t149 >= lines( t144->items ).
                EXIT.
              ENDIF.
              CLEAR t148.
              READ TABLE t144->items INDEX t149 + 1 INTO t148.
              t149 = t149 + 1.
              DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t150.
              CLEAR t147.
              IF t148 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t150 ?= t148.
                DATA t151 TYPE REF TO object.
                t151 = t150->as_ref( ).
                t147 ?= t151.
              ELSE.
                t147 ?= t148.
              ENDIF.
              DATA t152 TYPE REF TO zcl_lnt_graph.
              DATA(t153) = me->graph.
              t152 = t153.
              DATA t154 TYPE REF TO zcl_lnt_ivertex.
              CLEAR t154.
              DATA t155 TYPE REF TO zcl_lnt_ivertex.
              DATA t156 TYPE string.
              DATA t157 TYPE string.
              DATA t158 TYPE REF TO zcl_lnt_abstract_file.
              DATA(t159) = t147.
              t158 = t159.
              DATA t160 TYPE string.
              DATA(t161) = t158.
              t160 = t161->filename.
              t157 = t160.
              t156 = t157.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t163.
              t162 = t163.
              DATA t164 TYPE abap_bool.
              DATA(t165) = abap_false.
              t164 = t165.
              t155 = NEW zcl_lnt_ivertex( i_filename = t156 i_include_name = t162 i_include_cc4a = t164 ).
              CREATE OBJECT t155->zlnt_view_ownkeys_b0e8086400eb.
              t155->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t166 ).
              ENDIF.
              DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t167.
              IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `includeName` p1 = t167 ).
              ENDIF.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `include` p1 = t168 ).
              ENDIF.
              CREATE OBJECT t155->zlnt_json_ownkeys_70e5fd461788.
              t155->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t169) = |filename|.
              DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t170.
              IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
              ENDIF.
              DATA(t171) = |includeName|.
              DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t172.
              IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
              ENDIF.
              DATA(t173) = |include|.
              DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t174.
              IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
              ENDIF.
              t154 = t155.
              DATA(t175) = VALUE abap_bool( ).
              DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t178) = t154.
              t177 = t178->include_name.
              t176 = t177.
              DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t180.
              t179 = t180.
              DATA(t181) = VALUE abap_bool( ).
              DATA(t182) = VALUE abap_bool( ).
              DATA(t183) = t176.
              IF t183 IS INITIAL.
                t182 = abap_true.
              ELSEIF t183->has = abap_false.
                t182 = abap_true.
              ENDIF.
              t181 = xsdbool( t182 = abap_false ).
              t175 = t181.
              IF t175 = abap_true.
                DATA t184 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t184.
                DATA t185 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t186) = t152.
                t185 = t186->vertices_includename_index.
                DATA t187 TYPE string.
                DATA t188 TYPE string.
                DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t190) = t154.
                t189 = t190->include_name.
                t188 = t189->value.
                DATA(t191) = strlen( t188 ).
                t187 = t188.
                IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t187 TO UPPER CASE.
                ELSE.
                  t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
                ENDIF.
                DATA(t192) = t154.
                t184 = t185->set( p0 = t187 p1 = t192 ).
              ENDIF.
              DATA t193 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t193.
              DATA t194 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              DATA(t195) = t152.
              t194 = t195->vertices_filename_index.
              DATA t196 TYPE string.
              DATA t197 TYPE string.
              DATA(t198) = t154.
              t197 = t198->filename.
              DATA(t199) = strlen( t197 ).
              t196 = t197.
              IF t196 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t196 TO UPPER CASE.
              ELSE.
                t196 = zlnt_runtime_uppe_91169605024d=>full( t196 ).
              ENDIF.
              DATA(t200) = t154.
              t193 = t194->set( p0 = t196 p1 = t200 ).
            ENDDO.
          ELSE.
            DATA t201 TYPE abap_bool.
            DATA(t202) = t3.
            t201 = xsdbool( t202 IS BOUND AND t202 IS INSTANCE OF zcl_lnt_function_group ).
            IF t201 = abap_true.
              DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t204 TYPE REF TO zcl_lnt_function_group.
              DATA(t205) = t3.
              t204 ?= t205.
              t203 = t204->get_include_files( ).
              DATA t206 TYPE REF TO zcl_lnt_shape_124357cf.
              CLEAR t206.
              DATA t207 TYPE REF TO object.
              CLEAR t207.
              DATA(t208) = VALUE i( ).
              DO.
                t203->load( ).
                IF t208 >= lines( t203->items ).
                  EXIT.
                ENDIF.
                CLEAR t207.
                READ TABLE t203->items INDEX t208 + 1 INTO t207.
                t208 = t208 + 1.
                DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t209.
                CLEAR t206.
                IF t207 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t209 ?= t207.
                  DATA t210 TYPE REF TO object.
                  t210 = t209->as_ref( ).
                  t206 ?= t210.
                ELSE.
                  t206 ?= t207.
                ENDIF.
                DATA t211 TYPE REF TO zcl_lnt_graph.
                DATA(t212) = me->graph.
                t211 = t212.
                DATA t213 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t213.
                DATA t214 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t214.
                DATA t215 TYPE string.
                DATA t216 TYPE string.
                DATA t217 TYPE REF TO zcl_lnt_abstract_file.
                DATA t218 TYPE REF TO zcl_lnt_abap_file.
                DATA(t219) = t206.
                t218 = t219->file.
                t217 = t218.
                DATA t220 TYPE string.
                DATA(t221) = t217.
                t220 = t221->filename.
                t216 = t220.
                t215 = t216.
                DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t222.
                DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t223.
                DATA(t224) = abap_true.
                IF t224 = abap_true.
                  DATA t225 TYPE string.
                  DATA(t226) = t206.
                  t225 = t226->name.
                  DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t227->has = abap_true.
                  t227->value = t225.
                  t223 = t227.
                ELSE.
                  DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t228.
                  t223 = t228.
                ENDIF.
                t222 = t223.
                DATA t229 TYPE abap_bool.
                DATA(t230) = abap_true.
                t229 = t230.
                t214 = NEW zcl_lnt_ivertex( i_filename = t215 i_include_name = t222 i_include_cc4a = t229 ).
                CREATE OBJECT t214->zlnt_view_ownkeys_b0e8086400eb.
                t214->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t231.
                IF t214->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t231 ).
                ENDIF.
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t232.
                IF t214->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `includeName` p1 = t232 ).
                ENDIF.
                DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t233.
                IF t214->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `include` p1 = t233 ).
                ENDIF.
                CREATE OBJECT t214->zlnt_json_ownkeys_70e5fd461788.
                t214->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t234) = |filename|.
                DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t235.
                IF t214->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
                ENDIF.
                DATA(t236) = |includeName|.
                DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t237.
                IF t214->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
                ENDIF.
                DATA(t238) = |include|.
                DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t239.
                IF t214->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
                ENDIF.
                t213 = t214.
                DATA(t240) = VALUE abap_bool( ).
                DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t243) = t213.
                t242 = t243->include_name.
                t241 = t242.
                DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t245.
                t244 = t245.
                DATA(t246) = VALUE abap_bool( ).
                DATA(t247) = VALUE abap_bool( ).
                DATA(t248) = t241.
                IF t248 IS INITIAL.
                  t247 = abap_true.
                ELSEIF t248->has = abap_false.
                  t247 = abap_true.
                ENDIF.
                t246 = xsdbool( t247 = abap_false ).
                t240 = t246.
                IF t240 = abap_true.
                  DATA t249 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t249.
                  DATA t250 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  DATA(t251) = t211.
                  t250 = t251->vertices_includename_index.
                  DATA t252 TYPE string.
                  DATA t253 TYPE string.
                  DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t255) = t213.
                  t254 = t255->include_name.
                  t253 = t254->value.
                  DATA(t256) = strlen( t253 ).
                  t252 = t253.
                  IF t252 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t252 TO UPPER CASE.
                  ELSE.
                    t252 = zlnt_runtime_uppe_91169605024d=>full( t252 ).
                  ENDIF.
                  DATA(t257) = t213.
                  t249 = t250->set( p0 = t252 p1 = t257 ).
                ENDIF.
                DATA t258 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t258.
                DATA t259 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t260) = t211.
                t259 = t260->vertices_filename_index.
                DATA t261 TYPE string.
                DATA t262 TYPE string.
                DATA(t263) = t213.
                t262 = t263->filename.
                DATA(t264) = strlen( t262 ).
                t261 = t262.
                IF t261 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t261 TO UPPER CASE.
                ELSE.
                  t261 = zlnt_runtime_uppe_91169605024d=>full( t261 ).
                ENDIF.
                DATA(t265) = t213.
                t258 = t259->set( p0 = t261 p1 = t265 ).
              ENDDO.
              DATA t266 TYPE REF TO zcl_lnt_abap_file.
              DATA t267 TYPE REF TO zcl_lnt_abap_file.
              DATA t268 TYPE REF TO zcl_lnt_function_group.
              DATA(t269) = t3.
              t268 ?= t269.
              t267 = t268->get_main_abap_file( ).
              t266 = t267.
              DATA t270 TYPE abap_bool.
              DATA(t271) = t266.
              t270 = xsdbool( t271 IS BOUND ).
              IF t270 = abap_true.
                DATA t272 TYPE REF TO zcl_lnt_graph.
                DATA(t273) = me->graph.
                t272 = t273.
                DATA t274 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t274.
                DATA t275 TYPE REF TO zcl_lnt_ivertex.
                DATA t276 TYPE string.
                DATA t277 TYPE string.
                DATA t278 TYPE REF TO zcl_lnt_abstract_file.
                DATA t279 TYPE REF TO zcl_lnt_abap_file.
                DATA(t280) = t266.
                t279 = t280.
                t278 = t279.
                DATA t281 TYPE string.
                DATA(t282) = t278.
                t281 = t282->filename.
                t277 = t281.
                t276 = t277.
                DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t284.
                t283 = t284.
                DATA t285 TYPE abap_bool.
                DATA(t286) = abap_false.
                t285 = t286.
                t275 = NEW zcl_lnt_ivertex( i_filename = t276 i_include_name = t283 i_include_cc4a = t285 ).
                CREATE OBJECT t275->zlnt_view_ownkeys_b0e8086400eb.
                t275->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t287.
                IF t275->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t287 ).
                ENDIF.
                DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t288.
                IF t275->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `includeName` p1 = t288 ).
                ENDIF.
                DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t289.
                IF t275->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `include` p1 = t289 ).
                ENDIF.
                CREATE OBJECT t275->zlnt_json_ownkeys_70e5fd461788.
                t275->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t290) = |filename|.
                DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t291.
                IF t275->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
                ENDIF.
                DATA(t292) = |includeName|.
                DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t293.
                IF t275->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
                ENDIF.
                DATA(t294) = |include|.
                DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t295.
                IF t275->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
                ENDIF.
                t274 = t275.
                DATA(t296) = VALUE abap_bool( ).
                DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t299) = t274.
                t298 = t299->include_name.
                t297 = t298.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t301.
                t300 = t301.
                DATA(t302) = VALUE abap_bool( ).
                DATA(t303) = VALUE abap_bool( ).
                DATA(t304) = t297.
                IF t304 IS INITIAL.
                  t303 = abap_true.
                ELSEIF t304->has = abap_false.
                  t303 = abap_true.
                ENDIF.
                t302 = xsdbool( t303 = abap_false ).
                t296 = t302.
                IF t296 = abap_true.
                  DATA t305 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t305.
                  DATA t306 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  DATA(t307) = t272.
                  t306 = t307->vertices_includename_index.
                  DATA t308 TYPE string.
                  DATA t309 TYPE string.
                  DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t311) = t274.
                  t310 = t311->include_name.
                  t309 = t310->value.
                  DATA(t312) = strlen( t309 ).
                  t308 = t309.
                  IF t308 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t308 TO UPPER CASE.
                  ELSE.
                    t308 = zlnt_runtime_uppe_91169605024d=>full( t308 ).
                  ENDIF.
                  DATA(t313) = t274.
                  t305 = t306->set( p0 = t308 p1 = t313 ).
                ENDIF.
                DATA t314 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t314.
                DATA t315 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                DATA(t316) = t272.
                t315 = t316->vertices_filename_index.
                DATA t317 TYPE string.
                DATA t318 TYPE string.
                DATA(t319) = t274.
                t318 = t319->filename.
                DATA(t320) = strlen( t318 ).
                t317 = t318.
                IF t317 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t317 TO UPPER CASE.
                ELSE.
                  t317 = zlnt_runtime_uppe_91169605024d=>full( t317 ).
                ENDIF.
                DATA(t321) = t274.
                t314 = t315->set( p0 = t317 p1 = t321 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD list_main_for_include.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = t1.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = me->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1792_ae27b34ec309.
  ENDMETHOD.

  METHOD zif_lnt_include_graph~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_include_graph~list_main_for_include.
    result = me->list_main_for_include( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_include_graph~get_issues_file.
    result = me->get_issues_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
