* TS: src/rules/space_before_dot.ts:20:1 SpaceBeforeDot
CLASS zcl_lnt_space_before_dot DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt RETURNING VALUE(result) TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt IMPORTING i_conf TYPE REF TO zcl_lnt_space_before_dot_conf.
    METHODS r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_dot IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_space_before_dot_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |space_before_dot|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Space before dot|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for extra spaces before dots at the ends of statement|.
    t7 = t7 && |s|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t11 = t11 && |anABAP.md#be-consistent\nhttps://github.com/SAP/styleguides/b|.
      t11 = t11 && |lob/main/clean-abap/CleanABAP.md#condense-your-code|.
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
      DATA(t21) = |Whitespace|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Styleguide|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |SingleFile|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |WRITE bar .|.
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
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |WRITE bar.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Remove space before "," or "."|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    t5 = t6.
    DATA t7 TYPE f.
    DATA(t8) = CONV f( 0 ).
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = t12.
    t14 = t15->structure.
    t11 = t14.
    t10 = t11.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t10.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t9 = t18.
    IF t9 = abap_true.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_ddic.
    DATA t22 TYPE REF TO zcl_lnt_ddic.
    DATA(t23) = me->reg.
    t22 = NEW zcl_lnt_ddic( i_reg_f149 = t23 ).
    t21 = t22.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t26) = me->conf.
    t25 = t26->zlnt_view_read_sr_2639abf67a0f( ).
    IF t25 IS BOUND.
      IF t25->has = abap_true.
        t24 = xsdbool( t25->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t24 = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      DATA t28 TYPE REF TO zcl_lnt_structure_node.
      DATA t29 TYPE REF TO zcl_lnt_abap_file.
      DATA(t30) = t1.
      t29 = t30.
      DATA t31 TYPE REF TO zcl_lnt_structure_node.
      DATA(t32) = t29.
      t31 = t32->structure.
      t28 = t31.
      t27 = t28.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t2.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_class ).
      t33 = t34.
      IF t34 = abap_true.
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE REF TO zcl_lnt_structure_node.
        DATA(t38) = t27.
        t37 = t38.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        t39 = t40.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t37.
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        t41 = xsdbool( t42 = abap_false ).
        t36 = t41.
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        DATA t45 TYPE REF TO zcl_lnt_statement_node.
        DATA t46 TYPE REF TO zcl_lnt_structure_node.
        DATA(t47) = t27.
        t46 = t47.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d468_9c9153155b4d.
        t45 = t46->find_first_statement( i_type_9913 = t48 ).
        t44 = t45.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zcl_lnt_statement_node.
        DATA(t51) = t44.
        t50 = t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        t52 = t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t50.
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        t54 = xsdbool( t55 = abap_false ).
        t49 = t54.
        IF t49 = abap_true.
          DATA t57 TYPE f.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_statement_node.
          DATA(t61) = t44.
          t60 = t61.
          t59 = t60->get_first_token( ).
          t58 = t59.
          DATA t62 TYPE f.
          DATA t63 TYPE REF TO zcl_lnt_position.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA(t65) = t58.
          t64 = t65->start.
          t63 = t64.
          DATA t66 TYPE f.
          DATA(t67) = t63.
          t66 = t67->row.
          t62 = t66.
          t57 = t62.
          t7 = t57.
        ENDIF.
        DATA t68 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_class.
        DATA t71 TYPE REF TO zcl_lnt_class.
        DATA(t72) = t2.
        DATA t73 TYPE REF TO object.
        t73 = t72.
        t71 ?= t73.
        t70 = t71.
        DATA t74 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t74.
        DATA t75 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t75.
        DATA t76 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_abap_file.
        DATA t78 TYPE REF TO zcl_lnt_abap_file.
        DATA(t79) = t70.
        t78 = t79->get_main_abap_file( ).
        t77 = t78.
        DATA t80 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t80.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t77.
        IF t82 IS INITIAL.
          t81 = abap_true.
        ENDIF.
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t83.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zif_lnt_abap_file_information.
          DATA t85 TYPE REF TO zcl_lnt_abap_file.
          DATA t86 TYPE REF TO zcl_lnt_abap_file.
          DATA(t87) = t77.
          t86 = t87.
          t85 = t86.
          DATA t88 TYPE REF TO zif_lnt_abap_file_information.
          DATA(t89) = t85.
          t88 = t89->info.
          t84 = t88.
          t80 = t84.
        ENDIF.
        t76 = t80.
        t75 = t76.
        DATA t90 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = t75.
        IF t92 IS INITIAL.
          t91 = abap_true.
        ENDIF.
        IF t91 = abap_true.
          DATA t93 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t93.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_info_class_definition.
          DATA t95 TYPE REF TO zif_lnt_abap_file_information.
          DATA(t96) = t75.
          t95 = t96.
          DATA t97 TYPE string.
          DATA t98 TYPE REF TO zcl_lnt_abstract_object.
          DATA(t99) = t70.
          t98 = t99.
          DATA t100 TYPE string.
          DATA(t101) = t98.
          t100 = t101->name.
          t97 = t100.
          t94 = t95->get_class_definition_by_name( i_name = t97 ).
          t90 = t94.
        ENDIF.
        t74 = t90.
        t69 = t74.
        t68 = t69.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA t105 TYPE REF TO zcl_lnt_info_class_definition.
        DATA(t106) = t68.
        t105 = t106.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        t107 = t108.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t105.
        IF t111 IS INITIAL.
          t110 = abap_true.
        ENDIF.
        t109 = xsdbool( t110 = abap_false ).
        t104 = t109.
        t103 = t104.
        IF t104 = abap_true.
          DATA t112 TYPE abap_bool.
          DATA(t113) = me->conf.
          t112 = t113->zlnt_view_read_sr_3ff1416bfe51( ).
          t103 = t112.
        ENDIF.
        t102 = t103.
        IF t103 = abap_true.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = t21.
          DATA t116 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t119) = t68.
            t118 = t119.
            t116 = t118.
          ELSE.
            DATA t120 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t120.
            t116 = t120.
          ENDIF.
          DATA t121 TYPE REF TO zcl_lnt_class.
          DATA(t122) = t2.
          DATA t123 TYPE REF TO object.
          t123 = t122.
          t121 ?= t123.
          t114 = t115->is_exception( i_def = t116 i_obj_ac26 = t121 ).
          t102 = t114.
        ENDIF.
        IF t102 = abap_true.
          DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t124.
          result = t124.
          RETURN.
        ENDIF.
      ELSE.
        DATA t125 TYPE abap_bool.
        DATA t126 TYPE abap_bool.
        DATA(t127) = t2.
        t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_ob_interface ).
        t125 = t126.
        IF t126 = abap_true.
          DATA(t128) = VALUE abap_bool( ).
          DATA t129 TYPE REF TO zcl_lnt_structure_node.
          DATA(t130) = t27.
          t129 = t130.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          t131 = t132.
          DATA(t133) = VALUE abap_bool( ).
          DATA(t134) = VALUE abap_bool( ).
          DATA(t135) = t129.
          IF t135 IS INITIAL.
            t134 = abap_true.
          ENDIF.
          t133 = xsdbool( t134 = abap_false ).
          t128 = t133.
          t125 = t128.
        ENDIF.
        IF t125 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_statement_node.
          DATA t137 TYPE REF TO zcl_lnt_statement_node.
          DATA t138 TYPE REF TO zcl_lnt_structure_node.
          DATA(t139) = t27.
          t138 = t139.
          DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d475_9e77338670ac.
          t137 = t138->find_first_statement( i_type_9913 = t140 ).
          t136 = t137.
          DATA(t141) = VALUE abap_bool( ).
          DATA t142 TYPE REF TO zcl_lnt_statement_node.
          DATA(t143) = t136.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t144 = t145.
          DATA(t146) = VALUE abap_bool( ).
          DATA(t147) = VALUE abap_bool( ).
          DATA(t148) = t142.
          IF t148 IS INITIAL.
            t147 = abap_true.
          ENDIF.
          t146 = xsdbool( t147 = abap_false ).
          t141 = t146.
          IF t141 = abap_true.
            DATA t149 TYPE f.
            DATA t150 TYPE REF TO zcl_lnt_abstract_token.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            DATA t152 TYPE REF TO zcl_lnt_statement_node.
            DATA(t153) = t136.
            t152 = t153.
            t151 = t152->get_first_token( ).
            t150 = t151.
            DATA t154 TYPE f.
            DATA t155 TYPE REF TO zcl_lnt_position.
            DATA t156 TYPE REF TO zcl_lnt_position.
            DATA(t157) = t150.
            t156 = t157->start.
            t155 = t156.
            DATA t158 TYPE f.
            DATA(t159) = t155.
            t158 = t159->row.
            t154 = t158.
            t149 = t154.
            t7 = t149.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t161) = t1.
    DATA t162 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t162.
    t160 = t161->get_tokens( i_with_pragmas = t162 ).
    DATA t163 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t163.
    DATA t164 TYPE REF TO object.
    CLEAR t164.
    DATA(t165) = VALUE i( ).
    DO.
      t160->load( ).
      IF t165 >= lines( t160->items ).
        EXIT.
      ENDIF.
      CLEAR t164.
      READ TABLE t160->items INDEX t165 + 1 INTO t164.
      t165 = t165 + 1.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      CLEAR t163.
      IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t166 ?= t164.
        DATA t167 TYPE REF TO object.
        t167 = t166->as_ref( ).
        t163 ?= t167.
      ELSE.
        t163 ?= t164.
      ENDIF.
      DATA t168 TYPE abap_bool.
      DATA t169 TYPE f.
      DATA t170 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t171) = t163.
      t170 = t171.
      DATA t172 TYPE f.
      DATA t173 TYPE REF TO zcl_lnt_position.
      DATA t174 TYPE REF TO zcl_lnt_position.
      DATA(t175) = t170.
      t174 = t175->start.
      t173 = t174.
      DATA t176 TYPE f.
      DATA(t177) = t173.
      t176 = t177->row.
      t172 = t176.
      t169 = t172.
      DATA(t178) = t7.
      t168 = xsdbool( t169 < t178 ).
      IF t168 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t183) = t5.
      t182 = t183.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      t184 = t185.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = VALUE abap_bool( ).
      DATA(t188) = t182.
      IF t188 IS INITIAL.
        t187 = abap_true.
      ENDIF.
      t186 = xsdbool( t187 = abap_false ).
      t181 = t186.
      t180 = t181.
      IF t181 = abap_true.
        DATA t189 TYPE abap_bool.
        DATA(t190) = t163.
        t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_punctuation ).
        t180 = t189.
      ENDIF.
      t179 = t180.
      IF t180 = abap_true.
        DATA t191 TYPE abap_bool.
        DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t193 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t194 TYPE REF TO zcl_lnt_abstract_token.
        DATA t195 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t196) = t5.
        t195 = t196.
        t194 = t195.
        DATA t197 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t198 TYPE REF TO zcl_lnt_position.
        DATA t199 TYPE REF TO zcl_lnt_position.
        DATA(t200) = t194.
        t199 = t200->start.
        t198 = t199.
        DATA t201 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t202) = t198.
        t201 = t202->col.
        t197 = t201.
        t193 = t197.
        DATA t203 TYPE f.
        DATA t204 TYPE i.
        DATA t205 TYPE string.
        DATA t206 TYPE REF TO zcl_lnt_abstract_token.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t208) = t5.
        t207 = t208.
        t206 = t207.
        DATA t209 TYPE string.
        DATA(t210) = t206.
        t209 = t210->str.
        t205 = t209.
        DATA(t211) = strlen( t205 ).
        t204 = t211.
        t203 = t204.
        DATA(t212) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t212->has = abap_true.
        t212->value = t203.
        t192 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t193 right = t212 op = `+` ).
        DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t214 TYPE REF TO zcl_lnt_abstract_token.
        DATA t215 TYPE REF TO zcl_lnt_punctuation.
        DATA(t216) = t163.
        t215 ?= t216.
        t214 = t215.
        DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t218 TYPE REF TO zcl_lnt_position.
        DATA t219 TYPE REF TO zcl_lnt_position.
        DATA(t220) = t214.
        t219 = t220->start.
        t218 = t219.
        DATA t221 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t222) = t218.
        t221 = t222->col.
        t217 = t221.
        t213 = t217.
        t191 = zlnt_runtime_numb_290eb04a9758=>compare( left = t192 right = t213 op = `<` ).
        t179 = t191.
      ENDIF.
      IF t179 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_position.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA t225 TYPE f.
        DATA t226 TYPE REF TO zcl_lnt_position.
        DATA t227 TYPE REF TO zcl_lnt_position.
        DATA t228 TYPE REF TO zcl_lnt_abstract_token.
        DATA t229 TYPE REF TO zcl_lnt_punctuation.
        DATA(t230) = t163.
        t229 ?= t230.
        t228 = t229.
        DATA t231 TYPE REF TO zcl_lnt_position.
        DATA(t232) = t228.
        t231 = t232->start.
        t227 = t231.
        t226 = t227.
        DATA t233 TYPE f.
        DATA(t234) = t226.
        t233 = t234->row.
        t225 = t233.
        DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t236 TYPE REF TO zcl_lnt_position.
        DATA t237 TYPE REF TO zcl_lnt_position.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t240) = t5.
        t239 = t240.
        t238 = t239.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA t242 TYPE f.
        DATA t243 TYPE REF TO zcl_lnt_position.
        DATA t244 TYPE REF TO zcl_lnt_position.
        DATA(t245) = t238.
        t244 = t245->start.
        t243 = t244.
        DATA t246 TYPE f.
        DATA(t247) = t243.
        t246 = t247->row.
        t242 = t246.
        DATA t248 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t249 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t250 TYPE REF TO zcl_lnt_position.
        DATA t251 TYPE REF TO zcl_lnt_position.
        DATA(t252) = t238.
        t251 = t252->start.
        t250 = t251.
        DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t254) = t250.
        t253 = t254->col.
        t249 = t253.
        DATA t255 TYPE f.
        DATA t256 TYPE i.
        DATA t257 TYPE string.
        DATA(t258) = t238.
        t257 = t258->str.
        DATA(t259) = strlen( t257 ).
        t256 = t259.
        t255 = t256.
        DATA(t260) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t260->has = abap_true.
        t260->value = t255.
        t248 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t249 right = t260 op = `+` ).
        t241 = NEW zcl_lnt_position( i_row = t242 i_col = t248 ).
        t237 = t241.
        t236 = t237.
        DATA t261 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t262) = t236.
        t261 = t262->col.
        t235 = t261.
        t224 = NEW zcl_lnt_position( i_row = t225 i_col = t235 ).
        t223 = t224.
        DATA t263 TYPE REF TO zcl_lnt_position.
        DATA t264 TYPE REF TO zcl_lnt_position.
        DATA t265 TYPE f.
        DATA t266 TYPE REF TO zcl_lnt_position.
        DATA t267 TYPE REF TO zcl_lnt_position.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        DATA t269 TYPE REF TO zcl_lnt_punctuation.
        DATA(t270) = t163.
        t269 ?= t270.
        t268 = t269.
        DATA t271 TYPE REF TO zcl_lnt_position.
        DATA(t272) = t268.
        t271 = t272->start.
        t267 = t271.
        t266 = t267.
        DATA t273 TYPE f.
        DATA(t274) = t266.
        t273 = t274->row.
        t265 = t273.
        DATA t275 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t276 TYPE REF TO zcl_lnt_position.
        DATA t277 TYPE REF TO zcl_lnt_position.
        DATA t278 TYPE REF TO zcl_lnt_abstract_token.
        DATA t279 TYPE REF TO zcl_lnt_punctuation.
        DATA(t280) = t163.
        t279 ?= t280.
        t278 = t279.
        DATA t281 TYPE REF TO zcl_lnt_position.
        DATA(t282) = t278.
        t281 = t282->start.
        t277 = t281.
        t276 = t277.
        DATA t283 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t284) = t276.
        t283 = t284->col.
        t275 = t283.
        t264 = NEW zcl_lnt_position( i_row = t265 i_col = t275 ).
        t263 = t264.
        DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t287) = t1.
        DATA(t288) = t223.
        DATA(t289) = t263.
        t286 = zcl_lnt_edit_helper=>delete_range( i_file = t287 i_start = t288 i_end = t289 ).
        t285 = t286.
        DATA t290 TYPE REF TO zcl_lnt_issue.
        CLEAR t290.
        DATA t291 TYPE REF TO zcl_lnt_issue.
        CLEAR t291.
        DATA(t292) = t1.
        DATA(t293) = t223.
        DATA(t294) = t263.
        DATA(t295) = |Remove space before "," or "."|.
        DATA(t296) = VALUE string( ).
        DATA t297 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t297.
        DATA t298 TYPE string.
        DATA(t299) = |space_before_dot|.
        t298 = t299.
        DATA t300 TYPE string.
        DATA(t301) = |Space before dot|.
        t300 = t301.
        DATA t302 TYPE string.
        DATA(t303) = |Checks for extra spaces before dots at the ends of statement|.
        t303 = t303 && |s|.
        t302 = t303.
        DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t304.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA(t306) = abap_true.
        IF t306 = abap_true.
          DATA(t307) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t307 = t307 && |anABAP.md#be-consistent\nhttps://github.com/SAP/styleguides/b|.
          t307 = t307 && |lob/main/clean-abap/CleanABAP.md#condense-your-code|.
          DATA(t308) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t308->has = abap_true.
          t308->value = t307.
          t305 = t308.
        ELSE.
          DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t309.
          t305 = t309.
        ENDIF.
        t304 = t305.
        DATA t310 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t310.
        DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t311.
        DATA(t312) = abap_true.
        IF t312 = abap_true.
          DATA t313 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t315.
          t314 = t315.
          DATA(t316) = t314.
          DATA(t317) = |Whitespace|.
          t316->load( ).
          APPEND t317 TO t316->items.
          t316->save( ).
          DATA(t318) = t314.
          DATA(t319) = |Quickfix|.
          t318->load( ).
          APPEND t319 TO t318->items.
          t318->save( ).
          DATA(t320) = t314.
          DATA(t321) = |Styleguide|.
          t320->load( ).
          APPEND t321 TO t320->items.
          t320->save( ).
          DATA(t322) = t314.
          DATA(t323) = |SingleFile|.
          t322->load( ).
          APPEND t323 TO t322->items.
          t322->save( ).
          DATA(t324) = t314.
          t313 = t324.
          t311 = t313.
        ELSE.
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t325.
          t311 = t325.
        ENDIF.
        t310 = t311.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t327.
        DATA(t328) = abap_true.
        IF t328 = abap_true.
          DATA(t329) = |WRITE bar .|.
          DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t330->has = abap_true.
          t330->value = t329.
          t327 = t330.
        ELSE.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t331.
          t327 = t331.
        ENDIF.
        t326 = t327.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        DATA(t334) = abap_true.
        IF t334 = abap_true.
          DATA(t335) = |WRITE bar.|.
          DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t336->has = abap_true.
          t336->value = t335.
          t333 = t336.
        ELSE.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t337.
          t333 = t337.
        ENDIF.
        t332 = t333.
        DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        t338 = t339.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t341.
        t340 = t341.
        t297 = NEW zcl_lnt_irule_metadata( i_key = t298 i_title = t300 i_short_description = t302 i_bad_example = t326 i_good_example = t332 i_extended_information = t304 i_tags = t310 i_pragma = t338 i_pseudo_comment = t340 ).
        CREATE OBJECT t297->zlnt_view_ownkeys_b0e8086400eb.
        t297->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t342.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t342 ).
        ENDIF.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t343 ).
        ENDIF.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t344 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t346 ).
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t347 ).
        ENDIF.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t348.
        IF t297->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t297->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t348 ).
        ENDIF.
        CREATE OBJECT t297->zlnt_json_ownkeys_70e5fd461788.
        t297->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t349) = |key|.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
        ENDIF.
        DATA(t351) = |title|.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
        ENDIF.
        DATA(t353) = |shortDescription|.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
        ENDIF.
        DATA(t355) = |extendedInformation|.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
        ENDIF.
        DATA(t357) = |tags|.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
        ENDIF.
        DATA(t359) = |badExample|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        DATA(t361) = |goodExample|.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t297->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t297->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
        ENDIF.
        t296 = t297->key.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t364) = me->conf.
        t363 = t364->zlnt_view_read_sr_15c06369f827( ).
        DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t365.
        DATA(t366) = abap_true.
        IF t366 = abap_true.
          DATA(t367) = t285.
          t365 = t367.
        ELSE.
          DATA t368 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t368.
          t365 = t368.
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t369.
        t291 = zcl_lnt_issue=>at_range( i_file = t292 i_start = t293 i_end = t294 i_message_26cb = t295 i_key = t296 i_severity = t363 i_fix = t365 i_alternative_fixes = t369 ).
        t290 = t291.
        DATA(t370) = t3.
        DATA(t371) = t290.
        t370->load( ).
        APPEND t371 TO t370->items.
        t370->save( ).
      ENDIF.
      DATA t372 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t372.
      DATA(t373) = abap_true.
      IF t373 = abap_true.
        DATA(t374) = t163.
        t372 = t374.
      ELSE.
        DATA t375 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t375.
        t372 = t375.
      ENDIF.
      t5 = t372.
    ENDDO.
    DATA(t376) = t3.
    result = t376.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_space_before_dot_conf( me->g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_space_before_dot_conf( me->g_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_space_before_dot_conf.
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
        t1 = NEW zcl_lnt_space_before_dot_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sp_bf_dt_ts_sp_bf_dt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sp_bf_dt_ts_sp_bf_dt( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1708_1373e9845b5c.
  ENDMETHOD.
ENDCLASS.
