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
      DATA(t8) = |Error|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t8.
      t2 = t9.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t3.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ELSEIF t12->has = abap_false.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t16->has = abap_true.
      t16->value = abap_false.
      t3 = t16.
    ENDIF.
    me->reg = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    me->issues = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    me->graph = NEW zcl_lnt_graph( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    DATA t21 TYPE string.
    t21 = t2->value.
    me->severity = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
    DATA t23 TYPE abap_bool.
    t23 = t3->value.
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
    t5 = t1.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t9 = abap_true.
    ELSEIF t5->has = abap_false.
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
    DATA t14 TYPE string.
    t14 = t1->value.
    t12 = me->graph->find_top( i_filename = t14 ).
    DATA t16 TYPE REF TO zcl_lnt_ivertex.
    DATA t17 TYPE REF TO object.
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
      t22 = t16->include_3f11.
      t21 = xsdbool( t22 = abap_false ).
      IF t21 = abap_true.
        DATA t26 TYPE string.
        t26 = t16->filename.
        t2->load( ).
        APPEND t26 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_issues_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->issues.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    DATA t6 TYPE REF TO object.
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
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE REF TO zcl_lnt_iissue_data.
      CLEAR t15.
      t15 = t5->data_56cc.
      t14 = t15->filename.
      t11 = t14.
      DATA(t17) = VALUE string( ).
      t17 = t1->get_filename( ).
      t10 = xsdbool( t11 = t17 ).
      IF t10 = abap_true.
        t2->load( ).
        APPEND t5 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_ivertex.
    DATA(t24) = me->graph.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE string( ).
    t26 = t1->get_filename( ).
    t25 = t26.
    DATA t28 TYPE REF TO zcl_lnt_ivertex.
    DATA t29 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
    t29 = t24->vertices_filename_index.
    DATA(t31) = VALUE string( ).
    DATA(t33) = strlen( t25 ).
    t31 = t25.
    IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t31 TO UPPER CASE.
    ELSE.
      t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
    ENDIF.
    t28 = t29->get( p0 = t31 ).
    t21 = t28.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = xsdbool( t21 IS INITIAL ).
    t42 = xsdbool( t43 = abap_false ).
    t37 = t42.
    t36 = t37.
    IF t37 = abap_true.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = CONV abap_bool( me->allow_unused ).
      t45 = xsdbool( t46 = abap_false ).
      t36 = t45.
    ENDIF.
    t35 = t36.
    IF t36 = abap_true.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zcl_lnt_ivertex.
      t50 = t21.
      t49 = t50->include_3f11.
      t48 = xsdbool( t49 = abap_true ).
      t35 = t48.
    ENDIF.
    t34 = t35.
    IF t35 = abap_true.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE i( ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t58) = VALUE string( ).
      DATA t59 TYPE REF TO zcl_lnt_ivertex.
      t59 = t21.
      t58 = t59->filename.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t58.
      t56 = t61.
      t55 = me->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t56 ).
      t55->load( ).
      t54 = lines( t55->items ).
      DATA(t63) = 0.
      t53 = xsdbool( t54 = t63 ).
      t34 = t53.
    ENDIF.
    IF t34 = abap_true.
      DATA t64 TYPE REF TO zif_lnt_file.
      DATA t65 TYPE REF TO zif_lnt_file.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE REF TO zcl_lnt_ivertex.
      t68 = t21.
      t67 = t68->filename.
      t65 = me->reg->get_file_by_name( i_filename = t67 ).
      t64 = t65.
      DATA(t70) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t70 = xsdbool( t64 IS INITIAL ).
      IF t70 = abap_true.
        DATA t77 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t78 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t81) = |findUnusedIncludes internal error|.
        DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t82->has = abap_true.
        t82->value = t81.
        t79 = t82.
        t78 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t79 ).
        t77 = NEW #( ).
        t77->payload = t78.
        CLEAR t77->source_value.
        DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t85 TYPE REF TO object.
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
        RAISE EXCEPTION t77.
      ENDIF.
      DATA t87 TYPE REF TO zcl_lnt_issue.
      DATA t88 TYPE REF TO zif_lnt_file.
      t88 = t64.
      DATA t90 TYPE REF TO zcl_lnt_position.
      DATA(t91) = CONV f( 1 ).
      DATA(t92) = CONV f( 1 ).
      DATA(t93) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t93->has = abap_true.
      t93->value = t92.
      t90 = NEW zcl_lnt_position( i_row = t91 i_col = t93 ).
      DATA(t94) = |INCLUDE not used anywhere|.
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t97 TYPE REF TO zcl_lnt_check_include.
      t97 = NEW zcl_lnt_check_include( ).
      DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t100) = VALUE string( ).
      t100 = |check_include|.
      DATA(t102) = VALUE string( ).
      t102 = |Check INCLUDEs|.
      DATA(t104) = VALUE string( ).
      t104 = |Checks INCLUDE statements|.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t109) = |\n* Reports unused includes\n* Errors if the includes are not |.
      t109 = t109 && |found\n* Error if including a main program\n* Skips ZX* includ|.
      t109 = t109 && |es|.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t109.
      t106 = t110.
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t117.
      t116 = t117.
      DATA(t119) = |Syntax|.
      t116->load( ).
      APPEND t119 TO t116->items.
      t116->save( ).
      t112 = t116.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t99 = NEW zcl_lnt_irule_metadata( i_key = t100 i_title = t102 i_short_description = t104 i_bad_example = t122 i_good_example = t124 i_extended_information = t106 i_tags = t112 i_pragma = t126 i_pseudo_comment = t128 ).
      CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
      t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t130 ).
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t131 ).
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t132 ).
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t133 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t134 ).
      ENDIF.
      CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
      t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t135) = |key|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      DATA(t137) = |title|.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
      ENDIF.
      DATA(t139) = |shortDescription|.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
      ENDIF.
      DATA(t141) = |extendedInformation|.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
      ENDIF.
      DATA(t143) = |tags|.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
      ENDIF.
      t96 = t99.
      t95 = t96->key.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t147) = CONV string( me->severity ).
      DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t148->has = abap_true.
      t148->value = t147.
      t145 = t148.
      DATA t150 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t87 = zcl_lnt_issue=>at_position( i_file = t88 i_start = t90 i_message_26cb = t94 i_key = t95 i_severity = t145 i_fix = t150 ).
      t2->load( ).
      APPEND t87 TO t2->items.
      t2->save( ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD build.
    me->add_vertices( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = me->reg.
    t1 = zcl_lnt_include_graph_module=>get_abap_objects( i_reg_f149 = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    DATA t4 TYPE REF TO object.
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
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      t11 = t3->parsed.
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
        t22 = t13.
        DATA(t24) = VALUE string( ).
        t24 = t22->filename.
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
          t32 = t13.
          DATA(t34) = VALUE string( ).
          t34 = t32->filename.
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
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        t42 = t13->statements.
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
          t50 = t44->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_include ).
          IF t49 = abap_true.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t52.
            DATA t53 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t53.
            DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
            t53 = t44->find_first_expression( i_type_9913 = t55 ).
            t52 = t53.
            DATA(t56) = VALUE abap_bool( ).
            DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t59.
            CLEAR t59.
            t56 = xsdbool( t52 IS INITIAL ).
            IF t56 = abap_true.
              DATA t63 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
              CLEAR t63.
              DATA t64 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
              CLEAR t64.
              DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t65.
              DATA(t67) = |unexpected Include node|.
              DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t68->has = abap_true.
              t68->value = t67.
              t65 = t68.
              t64 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t65 ).
              t63 = NEW #( ).
              t63->payload = t64.
              CLEAR t63->source_value.
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
              RAISE EXCEPTION t63.
            ENDIF.
            DATA(t72) = VALUE string( ).
            DATA(t73) = VALUE string( ).
            DATA(t74) = VALUE string( ).
            DATA t76 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t76.
            DATA t77 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t77.
            t77 = t52.
            t76 = t77->get_first_token( ).
            DATA(t79) = VALUE string( ).
            t79 = t76->str.
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
            t83 = t72.
            DATA(t85) = VALUE abap_bool( ).
            DATA t86 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t86.
            IF zcl_lnt_include_graph_module=>zlnt_builtin_init_672ad5f3b5e9 = abap_false.
              zcl_lnt_include_graph_module=>zlnt_builtin_init_eae383aaa208( ).
            ENDIF.
            t86 = zcl_lnt_include_graph_module=>fmxxinclude.
            t85 = t86->match_test( p0 = t83 ).
            t82 = t85.
            IF t82 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t88 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t88.
            DATA(t92) = VALUE string( ).
            t92 = t72.
            DATA t94 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t94.
            DATA t95 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t95.
            t95 = me->graph->vertices_includename_index.
            DATA(t97) = VALUE string( ).
            DATA(t99) = strlen( t92 ).
            t97 = t92.
            IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t97 TO UPPER CASE.
            ELSE.
              t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
            ENDIF.
            t94 = t95->get( p0 = t97 ).
            t88 = t94.
            DATA(t100) = VALUE abap_bool( ).
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            CLEAR t103.
            t100 = xsdbool( t88 IS INITIAL ).
            IF t100 = abap_true.
              DATA(t107) = VALUE abap_bool( ).
              DATA(t108) = VALUE abap_bool( ).
              DATA(t109) = VALUE i( ).
              DATA(t110) = VALUE string( ).
              DATA(t111) = VALUE string( ).
              t111 = t44->concat_tokens( ).
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
              t117 = xsdbool( t107 = abap_false ).
              IF t117 = abap_true.
                DATA t121 TYPE REF TO zcl_lnt_issue.
                CLEAR t121.
                DATA(t124) = VALUE string( ).
                DATA(t125) = VALUE string( ).
                DATA(t126) = |Include |.
                DATA(t128) = strlen( t126 ).
                t125 = |{ t126 }{ t72 }|.
                DATA(t129) = | not found|.
                DATA(t130) = strlen( t125 ).
                t124 = |{ t125 }{ t129 }|.
                DATA(t131) = VALUE string( ).
                DATA t132 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t132.
                DATA t133 TYPE REF TO zcl_lnt_check_include.
                CLEAR t133.
                t133 = NEW zcl_lnt_check_include( ).
                DATA t135 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t135.
                DATA(t136) = VALUE string( ).
                t136 = |check_include|.
                DATA(t138) = VALUE string( ).
                t138 = |Check INCLUDEs|.
                DATA(t140) = VALUE string( ).
                t140 = |Checks INCLUDE statements|.
                DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t142.
                DATA(t145) = |\n* Reports unused includes\n* Errors if the includes are not |.
                t145 = t145 && |found\n* Error if including a main program\n* Skips ZX* includ|.
                t145 = t145 && |es|.
                DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t146->has = abap_true.
                t146->value = t145.
                t142 = t146.
                DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t148.
                DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t152.
                DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t153.
                CREATE OBJECT t153.
                t152 = t153.
                DATA(t155) = |Syntax|.
                t152->load( ).
                APPEND t155 TO t152->items.
                t152->save( ).
                t148 = t152.
                DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t158.
                CLEAR t158.
                DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t160.
                CLEAR t160.
                DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t162.
                CLEAR t162.
                DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t164.
                CLEAR t164.
                t135 = NEW zcl_lnt_irule_metadata( i_key = t136 i_title = t138 i_short_description = t140 i_bad_example = t158 i_good_example = t160 i_extended_information = t142 i_tags = t148 i_pragma = t162 i_pseudo_comment = t164 ).
                CREATE OBJECT t135->zlnt_view_ownkeys_b0e8086400eb.
                t135->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t166.
                t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t166 ).
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
                t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
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
                DATA(t183) = CONV string( me->severity ).
                DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t184->has = abap_true.
                t184->value = t183.
                t181 = t184.
                DATA t186 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t186.
                DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t187.
                t121 = zcl_lnt_issue=>at_statement( i_file = t13 i_statement = t44 i_message_26cb = t124 i_key = t131 i_severity = t181 i_fix = t186 i_alternative_fixes = t187 ).
                DATA(t188) = me->issues.
                t188->load( ).
                APPEND t121 TO t188->items.
                t188->save( ).
              ENDIF.
            ELSE.
              DATA(t190) = VALUE abap_bool( ).
              DATA(t191) = VALUE abap_bool( ).
              DATA t192 TYPE REF TO zcl_lnt_ivertex.
              CLEAR t192.
              t192 = t88.
              t191 = t192->include_3f11.
              t190 = xsdbool( t191 = abap_false ).
              IF t190 = abap_true.
                DATA t196 TYPE REF TO zcl_lnt_issue.
                CLEAR t196.
                DATA(t199) = VALUE string( ).
                DATA(t200) = |Not possible to INCLUDE a main program, |.
                DATA(t202) = strlen( t200 ).
                t199 = |{ t200 }{ t72 }|.
                DATA(t203) = VALUE string( ).
                DATA t204 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t204.
                DATA t205 TYPE REF TO zcl_lnt_check_include.
                CLEAR t205.
                t205 = NEW zcl_lnt_check_include( ).
                DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t207.
                DATA(t208) = VALUE string( ).
                t208 = |check_include|.
                DATA(t210) = VALUE string( ).
                t210 = |Check INCLUDEs|.
                DATA(t212) = VALUE string( ).
                t212 = |Checks INCLUDE statements|.
                DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t214.
                DATA(t217) = |\n* Reports unused includes\n* Errors if the includes are not |.
                t217 = t217 && |found\n* Error if including a main program\n* Skips ZX* includ|.
                t217 = t217 && |es|.
                DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t218->has = abap_true.
                t218->value = t217.
                t214 = t218.
                DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t220.
                DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t224.
                DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t225.
                CREATE OBJECT t225.
                t224 = t225.
                DATA(t227) = |Syntax|.
                t224->load( ).
                APPEND t227 TO t224->items.
                t224->save( ).
                t220 = t224.
                DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t230.
                CLEAR t230.
                DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t232.
                CLEAR t232.
                DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t234.
                CLEAR t234.
                DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t236.
                CLEAR t236.
                t207 = NEW zcl_lnt_irule_metadata( i_key = t208 i_title = t210 i_short_description = t212 i_bad_example = t230 i_good_example = t232 i_extended_information = t214 i_tags = t220 i_pragma = t234 i_pseudo_comment = t236 ).
                CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
                t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t238.
                t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t238 ).
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
                t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
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
                DATA(t255) = CONV string( me->severity ).
                DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t256->has = abap_true.
                t256->value = t255.
                t253 = t256.
                DATA t258 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t258.
                DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t259.
                t196 = zcl_lnt_issue=>at_statement( i_file = t13 i_statement = t44 i_message_26cb = t199 i_key = t203 i_severity = t253 i_fix = t258 i_alternative_fixes = t259 ).
                DATA(t260) = me->issues.
                t260->load( ).
                APPEND t196 TO t260->items.
                t260->save( ).
              ELSE.
                DATA t262 TYPE REF TO zcl_lnt_graph.
                CLEAR t262.
                t262 = me->graph.
                DATA t264 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t264.
                t264 = t88.
                DATA(t267) = VALUE string( ).
                DATA(t268) = VALUE string( ).
                DATA t269 TYPE REF TO zcl_lnt_abstract_file.
                CLEAR t269.
                t269 = t13.
                DATA(t271) = VALUE string( ).
                t271 = t269->filename.
                t268 = t271.
                t267 = t268.
                DATA(t273) = VALUE abap_bool( ).
                DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t275.
                DATA t276 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                CLEAR t276.
                t276 = t262->edges.
                DATA(t278) = VALUE string( ).
                t278 = t264->filename.
                t275 = t276->get( p0 = t278 ).
                DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t280.
                CLEAR t280.
                t273 = xsdbool( t275 IS INITIAL ).
                IF t273 = abap_true.
                  DATA t284 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                  CLEAR t284.
                  DATA t285 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
                  CLEAR t285.
                  t285 = t262->edges.
                  DATA(t287) = VALUE string( ).
                  t287 = t264->filename.
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
                t292 = t262->edges.
                DATA(t294) = VALUE string( ).
                t294 = t264->filename.
                t291 = t292->get( p0 = t294 ).
                t290 = t291.
                t290->load( ).
                APPEND t267 TO t290->items.
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
    DATA t4 TYPE REF TO object.
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
      t8 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ob_program ).
      IF t8 = abap_true.
        DATA t10 TYPE REF TO zcl_lnt_abap_file.
        DATA t11 TYPE REF TO zcl_lnt_abap_file.
        DATA t12 TYPE REF TO zcl_lnt_ob_program.
        t12 ?= t3.
        t11 = t12->get_main_abap_file( ).
        t10 = t11.
        DATA t14 TYPE abap_bool.
        t14 = xsdbool( t10 IS BOUND ).
        IF t14 = abap_true.
          DATA t16 TYPE REF TO zcl_lnt_graph.
          t16 = me->graph.
          DATA t18 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t18.
          DATA t19 TYPE REF TO zcl_lnt_ivertex.
          CLEAR t19.
          DATA t20 TYPE string.
          DATA t22 TYPE REF TO zcl_lnt_abstract_file.
          t22 = t10.
          DATA t25 TYPE string.
          t25 = t22->filename.
          t20 = t25.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          DATA t31 TYPE REF TO zcl_lnt_abstract_object.
          DATA t32 TYPE REF TO zcl_lnt_ob_program.
          t32 ?= t3.
          t31 = t32.
          DATA t34 TYPE string.
          t34 = t31->name.
          DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t36->has = abap_true.
          t36->value = t34.
          t27 = t36.
          DATA t38 TYPE abap_bool.
          DATA t40 TYPE REF TO zcl_lnt_ob_program.
          DATA t41 TYPE REF TO zcl_lnt_ob_program.
          t41 ?= t3.
          t40 = t41.
          t40->parse_xml( ).
          DATA t45 TYPE abap_bool.
          DATA t46 TYPE REF TO zcl_lnt_shape_d77da4ed.
          DATA t47 TYPE REF TO zcl_lnt_shape_d77da4ed.
          t47 = t40->parsed_xml.
          t46 = t47.
          t45 = t46->is_include.
          t38 = t45.
          t19 = NEW zcl_lnt_ivertex( i_filename = t20 i_include_name = t27 i_include_cc4a = t38 ).
          CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
          t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t49 ).
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
          t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
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
          t60 = t18->include_name.
          t59 = t60.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          IF t59 IS INITIAL.
            t65 = abap_true.
          ELSEIF t59->has = abap_false.
            t65 = abap_true.
          ENDIF.
          t64 = xsdbool( t65 = abap_false ).
          t58 = t64.
          IF t58 = abap_true.
            DATA t67 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t67.
            DATA t68 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            t68 = t16->vertices_includename_index.
            DATA t70 TYPE string.
            DATA t71 TYPE string.
            DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t72 = t18->include_name.
            t71 = t72->value.
            DATA(t74) = strlen( t71 ).
            t70 = t71.
            IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t70 TO UPPER CASE.
            ELSE.
              t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
            ENDIF.
            t67 = t68->set( p0 = t70 p1 = t18 ).
          ENDIF.
          DATA t76 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
          t77 = t16->vertices_filename_index.
          DATA t79 TYPE string.
          DATA t80 TYPE string.
          t80 = t18->filename.
          DATA(t82) = strlen( t80 ).
          t79 = t80.
          IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t79 TO UPPER CASE.
          ELSE.
            t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
          ENDIF.
          t76 = t77->set( p0 = t79 p1 = t18 ).
        ENDIF.
      ELSE.
        DATA t84 TYPE abap_bool.
        t84 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ob_type_pool ).
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zcl_lnt_abap_file.
          DATA t87 TYPE REF TO zcl_lnt_abap_file.
          DATA t88 TYPE REF TO zcl_lnt_ob_type_pool.
          t88 ?= t3.
          t87 = t88->get_main_abap_file( ).
          t86 = t87.
          DATA t90 TYPE abap_bool.
          t90 = xsdbool( t86 IS BOUND ).
          IF t90 = abap_true.
            DATA t92 TYPE REF TO zcl_lnt_graph.
            t92 = me->graph.
            DATA t94 TYPE REF TO zcl_lnt_ivertex.
            CLEAR t94.
            DATA t95 TYPE REF TO zcl_lnt_ivertex.
            DATA t96 TYPE string.
            DATA t98 TYPE REF TO zcl_lnt_abstract_file.
            t98 = t86.
            DATA t101 TYPE string.
            t101 = t98->filename.
            t96 = t101.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            DATA t105 TYPE abap_bool.
            t105 = abap_false.
            t95 = NEW zcl_lnt_ivertex( i_filename = t96 i_include_name = t103 i_include_cc4a = t105 ).
            CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
            t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t107 ).
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
            t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
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
            t118 = t94->include_name.
            t117 = t118.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = VALUE abap_bool( ).
            IF t117 IS INITIAL.
              t123 = abap_true.
            ELSEIF t117->has = abap_false.
              t123 = abap_true.
            ENDIF.
            t122 = xsdbool( t123 = abap_false ).
            t116 = t122.
            IF t116 = abap_true.
              DATA t125 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t125.
              DATA t126 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              t126 = t92->vertices_includename_index.
              DATA t128 TYPE string.
              DATA t129 TYPE string.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t130 = t94->include_name.
              t129 = t130->value.
              DATA(t132) = strlen( t129 ).
              t128 = t129.
              IF t128 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t128 TO UPPER CASE.
              ELSE.
                t128 = zlnt_runtime_uppe_91169605024d=>full( t128 ).
              ENDIF.
              t125 = t126->set( p0 = t128 p1 = t94 ).
            ENDIF.
            DATA t134 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            CLEAR t134.
            DATA t135 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
            t135 = t92->vertices_filename_index.
            DATA t137 TYPE string.
            DATA t138 TYPE string.
            t138 = t94->filename.
            DATA(t140) = strlen( t138 ).
            t137 = t138.
            IF t137 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t137 TO UPPER CASE.
            ELSE.
              t137 = zlnt_runtime_uppe_91169605024d=>full( t137 ).
            ENDIF.
            t134 = t135->set( p0 = t137 p1 = t94 ).
          ENDIF.
        ELSE.
          DATA t142 TYPE abap_bool.
          t142 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_class ).
          IF t142 = abap_true.
            DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t145 TYPE REF TO zcl_lnt_class.
            t145 ?= t3.
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
              t152 = me->graph.
              DATA t154 TYPE REF TO zcl_lnt_ivertex.
              CLEAR t154.
              DATA t155 TYPE REF TO zcl_lnt_ivertex.
              DATA t156 TYPE string.
              DATA t158 TYPE REF TO zcl_lnt_abstract_file.
              t158 = t147.
              DATA t160 TYPE string.
              t160 = t158->filename.
              t156 = t160.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              DATA t164 TYPE abap_bool.
              t164 = abap_false.
              t155 = NEW zcl_lnt_ivertex( i_filename = t156 i_include_name = t162 i_include_cc4a = t164 ).
              CREATE OBJECT t155->zlnt_view_ownkeys_b0e8086400eb.
              t155->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t166 ).
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
              t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
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
              t177 = t154->include_name.
              t176 = t177.
              DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t179.
              DATA(t181) = VALUE abap_bool( ).
              DATA(t182) = VALUE abap_bool( ).
              IF t176 IS INITIAL.
                t182 = abap_true.
              ELSEIF t176->has = abap_false.
                t182 = abap_true.
              ENDIF.
              t181 = xsdbool( t182 = abap_false ).
              t175 = t181.
              IF t175 = abap_true.
                DATA t184 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t184.
                DATA t185 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                t185 = t152->vertices_includename_index.
                DATA t187 TYPE string.
                DATA t188 TYPE string.
                DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t189 = t154->include_name.
                t188 = t189->value.
                DATA(t191) = strlen( t188 ).
                t187 = t188.
                IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t187 TO UPPER CASE.
                ELSE.
                  t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
                ENDIF.
                t184 = t185->set( p0 = t187 p1 = t154 ).
              ENDIF.
              DATA t193 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              CLEAR t193.
              DATA t194 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
              t194 = t152->vertices_filename_index.
              DATA t196 TYPE string.
              DATA t197 TYPE string.
              t197 = t154->filename.
              DATA(t199) = strlen( t197 ).
              t196 = t197.
              IF t196 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t196 TO UPPER CASE.
              ELSE.
                t196 = zlnt_runtime_uppe_91169605024d=>full( t196 ).
              ENDIF.
              t193 = t194->set( p0 = t196 p1 = t154 ).
            ENDDO.
          ELSE.
            DATA t201 TYPE abap_bool.
            t201 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_function_group ).
            IF t201 = abap_true.
              DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t204 TYPE REF TO zcl_lnt_function_group.
              t204 ?= t3.
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
                t211 = me->graph.
                DATA t213 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t213.
                DATA t214 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t214.
                DATA t215 TYPE string.
                DATA t217 TYPE REF TO zcl_lnt_abstract_file.
                DATA t218 TYPE REF TO zcl_lnt_abap_file.
                t218 = t206->file.
                t217 = t218.
                DATA t220 TYPE string.
                t220 = t217->filename.
                t215 = t220.
                DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t222.
                DATA t225 TYPE string.
                t225 = t206->name.
                DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t227->has = abap_true.
                t227->value = t225.
                t222 = t227.
                DATA t229 TYPE abap_bool.
                t229 = abap_true.
                t214 = NEW zcl_lnt_ivertex( i_filename = t215 i_include_name = t222 i_include_cc4a = t229 ).
                CREATE OBJECT t214->zlnt_view_ownkeys_b0e8086400eb.
                t214->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t231.
                t214->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t231 ).
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
                t214->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
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
                t242 = t213->include_name.
                t241 = t242.
                DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t244.
                DATA(t246) = VALUE abap_bool( ).
                DATA(t247) = VALUE abap_bool( ).
                IF t241 IS INITIAL.
                  t247 = abap_true.
                ELSEIF t241->has = abap_false.
                  t247 = abap_true.
                ENDIF.
                t246 = xsdbool( t247 = abap_false ).
                t240 = t246.
                IF t240 = abap_true.
                  DATA t249 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t249.
                  DATA t250 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  t250 = t211->vertices_includename_index.
                  DATA t252 TYPE string.
                  DATA t253 TYPE string.
                  DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t254 = t213->include_name.
                  t253 = t254->value.
                  DATA(t256) = strlen( t253 ).
                  t252 = t253.
                  IF t252 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t252 TO UPPER CASE.
                  ELSE.
                    t252 = zlnt_runtime_uppe_91169605024d=>full( t252 ).
                  ENDIF.
                  t249 = t250->set( p0 = t252 p1 = t213 ).
                ENDIF.
                DATA t258 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t258.
                DATA t259 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                t259 = t211->vertices_filename_index.
                DATA t261 TYPE string.
                DATA t262 TYPE string.
                t262 = t213->filename.
                DATA(t264) = strlen( t262 ).
                t261 = t262.
                IF t261 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t261 TO UPPER CASE.
                ELSE.
                  t261 = zlnt_runtime_uppe_91169605024d=>full( t261 ).
                ENDIF.
                t258 = t259->set( p0 = t261 p1 = t213 ).
              ENDDO.
              DATA t266 TYPE REF TO zcl_lnt_abap_file.
              DATA t267 TYPE REF TO zcl_lnt_abap_file.
              DATA t268 TYPE REF TO zcl_lnt_function_group.
              t268 ?= t3.
              t267 = t268->get_main_abap_file( ).
              t266 = t267.
              DATA t270 TYPE abap_bool.
              t270 = xsdbool( t266 IS BOUND ).
              IF t270 = abap_true.
                DATA t272 TYPE REF TO zcl_lnt_graph.
                t272 = me->graph.
                DATA t274 TYPE REF TO zcl_lnt_ivertex.
                CLEAR t274.
                DATA t275 TYPE REF TO zcl_lnt_ivertex.
                DATA t276 TYPE string.
                DATA t278 TYPE REF TO zcl_lnt_abstract_file.
                t278 = t266.
                DATA t281 TYPE string.
                t281 = t278->filename.
                t276 = t281.
                DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t283.
                DATA t285 TYPE abap_bool.
                t285 = abap_false.
                t275 = NEW zcl_lnt_ivertex( i_filename = t276 i_include_name = t283 i_include_cc4a = t285 ).
                CREATE OBJECT t275->zlnt_view_ownkeys_b0e8086400eb.
                t275->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t287.
                t275->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t287 ).
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
                t275->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
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
                t298 = t274->include_name.
                t297 = t298.
                DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t300.
                DATA(t302) = VALUE abap_bool( ).
                DATA(t303) = VALUE abap_bool( ).
                IF t297 IS INITIAL.
                  t303 = abap_true.
                ELSEIF t297->has = abap_false.
                  t303 = abap_true.
                ENDIF.
                t302 = xsdbool( t303 = abap_false ).
                t296 = t302.
                IF t296 = abap_true.
                  DATA t305 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  CLEAR t305.
                  DATA t306 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                  t306 = t272->vertices_includename_index.
                  DATA t308 TYPE string.
                  DATA t309 TYPE string.
                  DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t310 = t274->include_name.
                  t309 = t310->value.
                  DATA(t312) = strlen( t309 ).
                  t308 = t309.
                  IF t308 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t308 TO UPPER CASE.
                  ELSE.
                    t308 = zlnt_runtime_uppe_91169605024d=>full( t308 ).
                  ENDIF.
                  t305 = t306->set( p0 = t308 p1 = t274 ).
                ENDIF.
                DATA t314 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                CLEAR t314.
                DATA t315 TYPE REF TO zlnt_runtime_map__1a1c43cd0638.
                t315 = t272->vertices_filename_index.
                DATA t317 TYPE string.
                DATA t318 TYPE string.
                t318 = t274->filename.
                DATA(t320) = strlen( t318 ).
                t317 = t318.
                IF t317 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t317 TO UPPER CASE.
                ELSE.
                  t317 = zlnt_runtime_uppe_91169605024d=>full( t317 ).
                ENDIF.
                t314 = t315->set( p0 = t317 p1 = t274 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD list_main_for_include.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = i_filename.
    DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t6->has = abap_true.
    t6->value = t5.
    t3 = t6.
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
