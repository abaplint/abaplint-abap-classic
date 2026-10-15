* TS: src/rules/implicit_start_of_selection.ts:15:1 ImplicitStartOfSelection
CLASS zcl_lnt_implct_strt_of_slctn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_i_s_o_s_t_i_st_of_sl RETURNING VALUE(result) TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS s_c_i_s_r_i_s_o_s_t_i_st_of_sl IMPORTING i_conf TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implct_strt_of_slctn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_impl_strt_of_slctn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |implicit_start_of_selection|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Implicit START-OF-SELECTION|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Add explicit selection screen event handling|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
      t11 = t11 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
      t11 = t11 && |n.html|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |REPORT zfoo.\nWRITE 'hello'.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |START-OF-SELECTION.\n  WRITE 'hello'.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_i_s_o_s_t_i_st_of_sl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_i_s_o_s_t_i_st_of_sl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t2.
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_ob_program ).
    t6 = xsdbool( t7 = abap_false ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE REF TO zcl_lnt_ob_program.
      DATA t11 TYPE REF TO zcl_lnt_ob_program.
      DATA(t12) = t2.
      t11 ?= t12.
      t10 = t11.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t10.
      t14->parse_xml( ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t17 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t18) = t10.
      t17 = t18->parsed_xml.
      t16 = t17.
      t15 = t16->is_include.
      t13 = t15.
      t9 = t13.
      t5 = t9.
    ENDIF.
    IF t5 = abap_true.
      DATA(t19) = t3.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t21 TYPE REF TO zcl_lnt_structure_node.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA(t25) = t22.
    t24 = t25->structure.
    t21 = t24.
    t20 = t21.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA(t28) = t20.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t27.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE abap_bool.
    DATA(t35) = abap_false.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    DATA(t43) = t20.
    t42 = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = t41.
    t44 = t45->children.
    t40 = t44.
    t39 = t40.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE abap_bool.
    DATA(t49) = t39.
    t48 = xsdbool( t49 IS BOUND ).
    IF t48 = abap_true.
      DATA(t50) = t39.
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t51.
      t47 = t51.
    ENDIF.
    t46 ?= t47.
    t38 = t46.
    DATA t52 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    DATA(t54) = VALUE i( ).
    DO.
      t38->load( ).
      IF t54 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t38->items INDEX t54 + 1 INTO t53.
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
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE abap_bool.
      DATA(t59) = abap_false.
      t58 = t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
        zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
      ENDIF.
      t60 = zcl_lnt_stuff_module=>selection_events.
      DATA t61 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t60->load( ).
        IF t63 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t60->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          t61 = t64->as_classvalue( ).
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t65) = VALUE abap_bool( ).
        DATA t66 TYPE REF TO object.
        DATA(t67) = t52.
        t66 = t67->get_db65( ).
        DATA(t68) = t61.
        DATA t69 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t69.
        IF t66 IS BOUND.
          DATA t70 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
          t70 ?= t66.
          t69 = t70->zlnt_builtin_clas_3f891b097658( ).
          WHILE t69 IS BOUND.
            IF t69 = t68.
              t65 = abap_true.
              EXIT.
            ENDIF.
            t69 = t69->parent.
          ENDWHILE.
        ENDIF.
        IF t65 = abap_true.
          DATA(t71) = abap_true.
          t58 = t71.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t72) = t58.
      t57 = t72.
      IF t57 = abap_true.
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE abap_bool.
        DATA(t75) = t34.
        DATA(t76) = abap_false.
        t74 = xsdbool( t75 = t76 ).
        t73 = t74.
        IF t74 = abap_true.
          DATA t77 TYPE abap_bool.
          DATA t78 TYPE i.
          DATA(t79) = t36.
          t79->load( ).
          t78 = lines( t79->items ).
          DATA(t80) = 0.
          t77 = xsdbool( t78 > t80 ).
          t73 = t77.
        ENDIF.
        IF t73 = abap_true.
          DATA t81 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t81.
          DATA t82 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t82.
          DATA(t83) = t36.
          DATA t84 TYPE REF TO object.
          CLEAR t84.
          t83->load( ).
          CLEAR t84.
          READ TABLE t83->items INDEX 1 INTO t84.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          CLEAR t82.
          IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t85 ?= t84.
            DATA t86 TYPE REF TO object.
            t86 = t85->as_ref( ).
            t82 ?= t86.
          ELSE.
            t82 ?= t84.
          ENDIF.
          t81 = t82.
          DATA t87 TYPE abap_bool.
          DATA(t88) = t81.
          t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_structure_node ).
          IF t87 = abap_true.
            DATA t89 TYPE REF TO zcl_lnt_statement_node.
            DATA t90 TYPE REF TO zcl_lnt_statement_node.
            DATA t91 TYPE REF TO zcl_lnt_structure_node.
            DATA(t92) = t81.
            DATA t93 TYPE REF TO object.
            t93 = t92.
            t91 ?= t93.
            t90 = t91->get_first_statement( ).
            t89 = t90.
            t81 = t89.
          ENDIF.
          DATA(t94) = t3.
          DATA t95 TYPE REF TO zcl_lnt_issue.
          CLEAR t95.
          DATA(t96) = t1.
          DATA t97 TYPE REF TO zcl_lnt_statement_node.
          DATA(t98) = t81.
          DATA t99 TYPE REF TO object.
          t99 = t98.
          t97 ?= t99.
          DATA(t100) = |Implicit START-OF-SELECTION|.
          DATA(t101) = VALUE string( ).
          DATA t102 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t102.
          DATA t103 TYPE string.
          DATA(t104) = |implicit_start_of_selection|.
          t103 = t104.
          DATA t105 TYPE string.
          DATA(t106) = |Implicit START-OF-SELECTION|.
          t105 = t106.
          DATA t107 TYPE string.
          DATA(t108) = |Add explicit selection screen event handling|.
          t107 = t108.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          DATA(t111) = abap_true.
          IF t111 = abap_true.
            DATA(t112) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
            t112 = t112 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
            t112 = t112 && |n.html|.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t112.
            t110 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t110 = t114.
          ENDIF.
          t109 = t110.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t120.
            t119 = t120.
            DATA(t121) = t119.
            DATA(t122) = |SingleFile|.
            t121->load( ).
            APPEND t122 TO t121->items.
            t121->save( ).
            DATA(t123) = t119.
            t118 = t123.
            t116 = t118.
          ELSE.
            DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t124.
            t116 = t124.
          ENDIF.
          t115 = t116.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          DATA(t127) = abap_true.
          IF t127 = abap_true.
            DATA(t128) = |REPORT zfoo.\nWRITE 'hello'.|.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t128.
            t126 = t129.
          ELSE.
            DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t130.
            t126 = t130.
          ENDIF.
          t125 = t126.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = abap_true.
          IF t133 = abap_true.
            DATA(t134) = |START-OF-SELECTION.\n  WRITE 'hello'.|.
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t134.
            t132 = t135.
          ELSE.
            DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t136.
            t132 = t136.
          ENDIF.
          t131 = t132.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t137 = t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          t139 = t140.
          t102 = NEW zcl_lnt_irule_metadata( i_key = t103 i_title = t105 i_short_description = t107 i_bad_example = t125 i_good_example = t131 i_extended_information = t109 i_tags = t115 i_pragma = t137 i_pseudo_comment = t139 ).
          CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
          t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t141 ).
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t142 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t143 ).
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t144 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t147 ).
          ENDIF.
          CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
          t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t148) = |key|.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
          ENDIF.
          DATA(t150) = |title|.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
          ENDIF.
          DATA(t152) = |shortDescription|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          DATA(t154) = |extendedInformation|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          DATA(t156) = |tags|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |badExample|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          DATA(t160) = |goodExample|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          t101 = t102->key.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t163) = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).
          t162 = t163->zlnt_view_read_sr_15c06369f827( ).
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t165.
          t95 = zcl_lnt_issue=>at_statement( i_file = t96 i_statement = t97 i_message_26cb = t100 i_key = t101 i_severity = t162 i_fix = t164 i_alternative_fixes = t165 ).
          t94->load( ).
          APPEND t95 TO t94->items.
          t94->save( ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t166.
        t36 = t166.
        DATA(t167) = abap_true.
        t34 = t167.
      ELSE.
        DATA t168 TYPE abap_bool.
        DATA t169 TYPE REF TO object.
        DATA(t170) = t52.
        t169 = t170->get_db65( ).
        t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_normal ).
        IF t168 = abap_true.
          DATA t171 TYPE REF TO zcl_lnt_structure_node.
          DATA t172 TYPE REF TO zcl_lnt_structure_node.
          DATA(t173) = t52.
          t172 ?= t173.
          t171 = t172.
          DATA(t174) = VALUE abap_bool( ).
          DATA t175 TYPE abap_bool.
          DATA(t176) = abap_false.
          t175 = t176.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t177.
          IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
            zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
          ENDIF.
          t177 = zcl_lnt_stuff_module=>declaration_stuff.
          DATA t178 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t178.
          DATA t179 TYPE REF TO object.
          CLEAR t179.
          DATA(t180) = VALUE i( ).
          DO.
            t177->load( ).
            IF t180 >= lines( t177->items ).
              EXIT.
            ENDIF.
            CLEAR t179.
            READ TABLE t177->items INDEX t180 + 1 INTO t179.
            t180 = t180 + 1.
            DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t181.
            CLEAR t178.
            IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t181 ?= t179.
              t178 = t181->as_classvalue( ).
            ELSE.
              t178 ?= t179.
            ENDIF.
            DATA(t182) = VALUE abap_bool( ).
            DATA t183 TYPE REF TO zif_lnt_statement.
            CLEAR t183.
            DATA t184 TYPE REF TO zcl_lnt_statement_node.
            DATA t185 TYPE REF TO zcl_lnt_statement_node.
            DATA(t186) = t171.
            t185 = t186->get_first_statement( ).
            t184 = t185.
            DATA t187 TYPE REF TO zif_lnt_statement.
            CLEAR t187.
            DATA(t188) = VALUE abap_bool( ).
            DATA(t189) = t184.
            IF t189 IS INITIAL.
              t188 = abap_true.
            ENDIF.
            IF t188 = abap_true.
              DATA t190 TYPE REF TO zif_lnt_statement.
              CLEAR t190.
              t187 = t190.
            ELSE.
              DATA t191 TYPE REF TO zif_lnt_statement.
              DATA t192 TYPE REF TO zcl_lnt_statement_node.
              DATA(t193) = t184.
              t192 = t193.
              t191 = t192->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t187 = t191.
            ENDIF.
            t183 = t187.
            DATA(t194) = t178.
            DATA t195 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t195.
            IF t183 IS BOUND.
              t195 = t183->zlnt_builtin_clas_3f891b097658( ).
              WHILE t195 IS BOUND.
                IF t195 = t194.
                  t182 = abap_true.
                  EXIT.
                ENDIF.
                t195 = t195->parent.
              ENDWHILE.
            ENDIF.
            IF t182 = abap_true.
              DATA(t196) = abap_true.
              t175 = t196.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t197) = t175.
          t174 = t197.
          IF t174 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t198) = t36.
          DATA(t199) = t52.
          t198->load( ).
          APPEND t199 TO t198->items.
          t198->save( ).
        ELSE.
          DATA t200 TYPE abap_bool.
          DATA(t201) = t34.
          DATA(t202) = abap_true.
          t200 = xsdbool( t201 = t202 ).
          IF t200 = abap_true.
            DATA(t203) = abap_false.
            t34 = t203.
          ENDIF.
          DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t204.
          t36 = t204.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t205 TYPE abap_bool.
    DATA t206 TYPE abap_bool.
    DATA(t207) = t34.
    DATA(t208) = abap_false.
    t206 = xsdbool( t207 = t208 ).
    t205 = t206.
    IF t206 = abap_true.
      DATA t209 TYPE abap_bool.
      DATA t210 TYPE i.
      DATA(t211) = t36.
      t211->load( ).
      t210 = lines( t211->items ).
      DATA(t212) = 0.
      t209 = xsdbool( t210 > t212 ).
      t205 = t209.
    ENDIF.
    IF t205 = abap_true.
      DATA t213 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t213.
      DATA t214 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t214.
      DATA(t215) = t36.
      DATA t216 TYPE REF TO object.
      CLEAR t216.
      t215->load( ).
      CLEAR t216.
      READ TABLE t215->items INDEX 1 INTO t216.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      CLEAR t214.
      IF t216 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t217 ?= t216.
        DATA t218 TYPE REF TO object.
        t218 = t217->as_ref( ).
        t214 ?= t218.
      ELSE.
        t214 ?= t216.
      ENDIF.
      t213 = t214.
      DATA t219 TYPE abap_bool.
      DATA(t220) = t213.
      t219 = xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t219 = abap_true.
        DATA t221 TYPE REF TO zcl_lnt_statement_node.
        DATA t222 TYPE REF TO zcl_lnt_statement_node.
        DATA t223 TYPE REF TO zcl_lnt_structure_node.
        DATA(t224) = t213.
        DATA t225 TYPE REF TO object.
        t225 = t224.
        t223 ?= t225.
        t222 = t223->get_first_statement( ).
        t221 = t222.
        t213 = t221.
      ENDIF.
      DATA(t226) = t3.
      DATA t227 TYPE REF TO zcl_lnt_issue.
      CLEAR t227.
      DATA(t228) = t1.
      DATA t229 TYPE REF TO zcl_lnt_statement_node.
      DATA(t230) = t213.
      DATA t231 TYPE REF TO object.
      t231 = t230.
      t229 ?= t231.
      DATA(t232) = |Implicit START-OF-SELECTION|.
      DATA(t233) = VALUE string( ).
      DATA t234 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t234.
      DATA t235 TYPE string.
      DATA(t236) = |implicit_start_of_selection|.
      t235 = t236.
      DATA t237 TYPE string.
      DATA(t238) = |Implicit START-OF-SELECTION|.
      t237 = t238.
      DATA t239 TYPE string.
      DATA(t240) = |Add explicit selection screen event handling|.
      t239 = t240.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t241.
      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t242.
      DATA(t243) = abap_true.
      IF t243 = abap_true.
        DATA(t244) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
        t244 = t244 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
        t244 = t244 && |n.html|.
        DATA(t245) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t245->has = abap_true.
        t245->value = t244.
        t242 = t245.
      ELSE.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        t242 = t246.
      ENDIF.
      t241 = t242.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t247.
      DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t248.
      DATA(t249) = abap_true.
      IF t249 = abap_true.
        DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t251 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t252.
        t251 = t252.
        DATA(t253) = t251.
        DATA(t254) = |SingleFile|.
        t253->load( ).
        APPEND t254 TO t253->items.
        t253->save( ).
        DATA(t255) = t251.
        t250 = t255.
        t248 = t250.
      ELSE.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t256.
        t248 = t256.
      ENDIF.
      t247 = t248.
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t257.
      DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t258.
      DATA(t259) = abap_true.
      IF t259 = abap_true.
        DATA(t260) = |REPORT zfoo.\nWRITE 'hello'.|.
        DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t261->has = abap_true.
        t261->value = t260.
        t258 = t261.
      ELSE.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t258 = t262.
      ENDIF.
      t257 = t258.
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t264.
      DATA(t265) = abap_true.
      IF t265 = abap_true.
        DATA(t266) = |START-OF-SELECTION.\n  WRITE 'hello'.|.
        DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t267->has = abap_true.
        t267->value = t266.
        t264 = t267.
      ELSE.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        t264 = t268.
      ENDIF.
      t263 = t264.
      DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t270.
      t269 = t270.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t272.
      t271 = t272.
      t234 = NEW zcl_lnt_irule_metadata( i_key = t235 i_title = t237 i_short_description = t239 i_bad_example = t257 i_good_example = t263 i_extended_information = t241 i_tags = t247 i_pragma = t269 i_pseudo_comment = t271 ).
      CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
      t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
      ENDIF.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t274 ).
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t275 ).
      ENDIF.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t276 ).
      ENDIF.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t277 ).
      ENDIF.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t278 ).
      ENDIF.
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t279.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t279 ).
      ENDIF.
      CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
      t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t280) = |key|.
      DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t281.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
      ENDIF.
      DATA(t282) = |title|.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
      ENDIF.
      DATA(t284) = |shortDescription|.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t285.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
      ENDIF.
      DATA(t286) = |extendedInformation|.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t287.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t286 p1 = t287 ).
      ENDIF.
      DATA(t288) = |tags|.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t289.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t288 p1 = t289 ).
      ENDIF.
      DATA(t290) = |badExample|.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
      ENDIF.
      DATA(t292) = |goodExample|.
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t293.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
      ENDIF.
      t233 = t234->key.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t295) = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).
      t294 = t295->zlnt_view_read_sr_15c06369f827( ).
      DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t297.
      t227 = zcl_lnt_issue=>at_statement( i_file = t228 i_statement = t229 i_message_26cb = t232 i_key = t233 i_severity = t294 i_fix = t296 i_alternative_fixes = t297 ).
      t226->load( ).
      APPEND t227 TO t226->items.
      t226->save( ).
    ENDIF.
    DATA(t298) = t3.
    result = t298.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
        t1 = NEW zcl_lnt_impl_strt_of_slctn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_i_s_o_s_t_i_st_of_sl( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1540_65b33af71542.
  ENDMETHOD.
ENDCLASS.
