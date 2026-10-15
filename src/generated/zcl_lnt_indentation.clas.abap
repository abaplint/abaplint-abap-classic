* TS: src/rules/indentation.ts:32:1 Indentation
CLASS zcl_lnt_indentation DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_indentation_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cnf_ins_src_rls_ind_ts_indn RETURNING VALUE(result) TYPE REF TO zcl_lnt_indentation_conf.
    METHODS st_cnf_ins_src_rls_ind_ts_indn IMPORTING i_conf TYPE REF TO zcl_lnt_indentation_conf.
    METHODS rn_prs_ins_src_rls_ind_ts_indn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indentation IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_indentation_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |indentation|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Indentation|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks indentation|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Whitespace|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Quickfix|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |SingleFile|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
      t25 = t25 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
      t25 = t25 && |METHOD.\nENDCLASS.|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
      t31 = t31 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
      t31 = t31 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_ind_ts_indn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_ind_ts_indn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_prs_ins_src_rls_ind_ts_indn.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t5) = CAST zcl_lnt_indentation_conf( me->gt_cnf_ins_src_rls_ind_ts_indn( ) ).
    t4 = t5->zlnt_view_read_sr_7d407689ecd3( ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ELSEIF t13->has = abap_false.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE f( ).
      DATA(t16) = t3.
      IF t16->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t15 = t16->value.
      DATA(t17) = CONV f( 1 ).
      t14 = xsdbool( t15 < t17 ).
      t6 = t14.
    ENDIF.
    IF t6 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = CONV f( 10 ).
        DATA(t21) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t3 = t18.
    ENDIF.
    DATA t23 TYPE abap_bool.
    DATA(t24) = abap_false.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    DATA(t29) = t1.
    t28 = t29.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    DATA(t31) = t28.
    t30 = t31->structure.
    t27 = t30.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t26.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t25 = t34.
    IF t25 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE abap_bool.
    DATA(t38) = t2.
    t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_class ).
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_class.
      DATA t42 TYPE REF TO zcl_lnt_class.
      DATA(t43) = t2.
      DATA t44 TYPE REF TO object.
      t44 = t43.
      t42 ?= t44.
      t41 = t42.
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t46.
      DATA t47 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t47.
      DATA t48 TYPE REF TO zcl_lnt_abap_file.
      DATA t49 TYPE REF TO zcl_lnt_abap_file.
      DATA(t50) = t41.
      t49 = t50->get_main_abap_file( ).
      t48 = t49.
      DATA t51 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t48.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zif_lnt_abap_file_information.
        DATA t56 TYPE REF TO zcl_lnt_abap_file.
        DATA t57 TYPE REF TO zcl_lnt_abap_file.
        DATA(t58) = t48.
        t57 = t58.
        t56 = t57.
        DATA t59 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t60) = t56.
        t59 = t60->info.
        t55 = t59.
        t51 = t55.
      ENDIF.
      t47 = t51.
      t46 = t47.
      DATA t61 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t46.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t64.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t66 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t67) = t46.
        t66 = t67.
        DATA t68 TYPE string.
        DATA t69 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t70) = t41.
        t69 = t70.
        DATA t71 TYPE string.
        DATA(t72) = t69.
        t71 = t72->name.
        t68 = t71.
        t65 = t66->get_class_definition_by_name( i_name = t68 ).
        t61 = t65.
      ENDIF.
      t45 = t61.
      t40 = t45.
      t39 = t40.
      DATA t73 TYPE REF TO zcl_lnt_ddic.
      DATA t74 TYPE REF TO zcl_lnt_ddic.
      DATA(t75) = me->reg.
      t74 = NEW zcl_lnt_ddic( i_reg_f149 = t75 ).
      t73 = t74.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t78) = t39.
      t77 = t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t79 = t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t77.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      t76 = t81.
      IF t76 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t83.
        result = t83.
        RETURN.
      ELSE.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t87) = me->conf.
        t86 = t87->zlnt_view_read_sr_649aa078d171( ).
        IF t86 IS BOUND.
          IF t86->has = abap_true.
            t85 = xsdbool( t86->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t84 = t85.
        IF t85 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = t73.
          DATA t90 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t90.
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA t92 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t93) = t39.
            t92 = t93.
            t90 = t92.
          ELSE.
            DATA t94 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t94.
            t90 = t94.
          ENDIF.
          DATA t95 TYPE REF TO zcl_lnt_class.
          DATA(t96) = t2.
          DATA t97 TYPE REF TO object.
          t97 = t96.
          t95 ?= t97.
          t88 = t89->is_exception( i_def = t90 i_obj_ac26 = t95 ).
          t84 = t88.
        ENDIF.
        IF t84 = abap_true.
          DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t98.
          result = t98.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t99 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t99.
    DATA t100 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t102.
    DATA t103 TYPE REF TO zcl_lnt_indentation_conf.
    DATA(t104) = me->conf.
    t103 = t104.
    DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t105.
    DATA(t106) = VALUE abap_bool( ).
    DATA(t107) = t103.
    IF t107 IS INITIAL.
      t106 = abap_true.
    ENDIF.
    IF t106 = abap_true.
      DATA t108 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t108.
      t105 = t108.
    ELSE.
      DATA t109 TYPE abap_bool.
      DATA(t110) = t103.
      t109 = t110->zlnt_view_read_sr_d06af785ba41( ).
      DATA(t111) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t111->has = abap_true.
      t111->value = t109.
      t105 = t111.
    ENDIF.
    t102 = t105.
    t101 = t102.
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_indentation_conf.
    DATA(t115) = me->conf.
    t114 = t115.
    DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = t114.
    IF t118 IS INITIAL.
      t117 = abap_true.
    ENDIF.
    IF t117 = abap_true.
      DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t119.
      t116 = t119.
    ELSE.
      DATA t120 TYPE abap_bool.
      DATA(t121) = t114.
      t120 = t121->zlnt_view_read_sr_5c35b8f00615( ).
      DATA(t122) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t122->has = abap_true.
      t122->value = t120.
      t116 = t122.
    ENDIF.
    t113 = t116.
    t112 = t113.
    DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t124.
    DATA(t125) = abap_true.
    IF t125 = abap_true.
      DATA t126 TYPE abap_bool.
      DATA(t127) = me->conf.
      t126 = t127->zlnt_view_read_sr_e38337070bb8( ).
      DATA(t128) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t128->has = abap_true.
      t128->value = t126.
      t124 = t128.
    ELSE.
      DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t129.
      t124 = t129.
    ENDIF.
    t123 = t124.
    t100 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t112 i_slctn_scrn_blck_indnttn = t101 i_global_class_skip_first = t123 ).
    CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
    t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionScreenBlockIndentation` p1 = t130 ).
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alignTryCatch` p1 = t131 ).
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalClassSkipFirst` p1 = t132 ).
    ENDIF.
    CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
    t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t133) = |selectionScreenBlockIndentation|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    DATA(t135) = |alignTryCatch|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
    ENDIF.
    DATA(t137) = |globalClassSkipFirst|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
    ENDIF.
    t99 = t100.
    DATA t139 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_indent.
    CLEAR t141.
    DATA t142 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t142.
    DATA(t143) = abap_true.
    IF t143 = abap_true.
      DATA(t144) = t99.
      t142 = t144.
    ELSE.
      DATA t145 TYPE REF TO zcl_lnt_iindentation_options.
      CLEAR t145.
      t142 = t145.
    ENDIF.
    t141 = NEW zcl_lnt_indent( i_options = t142 ).
    DATA(t146) = t1.
    t140 = t141->get_expected_indents( i_file = t146 ).
    t139 = t140.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t148.
    t147 = t148.
    DATA t149 TYPE REF TO zcl_lnt_statement_node.
    DATA t150 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t150.
    t149 = t150.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t152 TYPE REF TO zcl_lnt_abap_file.
    DATA(t153) = t1.
    t152 = t153.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t155) = t152.
    t154 = t155->statements.
    t151 = t154.
    DATA t156 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t156.
    DATA t157 TYPE REF TO object.
    CLEAR t157.
    DATA(t158) = VALUE i( ).
    DO.
      t151->load( ).
      IF t158 >= lines( t151->items ).
        EXIT.
      ENDIF.
      CLEAR t157.
      READ TABLE t151->items INDEX t158 + 1 INTO t157.
      t158 = t158 + 1.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      CLEAR t156.
      IF t157 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t159 ?= t157.
        DATA t160 TYPE REF TO object.
        t160 = t159->as_ref( ).
        t156 ?= t160.
      ELSE.
        t156 ?= t157.
      ENDIF.
      DATA t161 TYPE REF TO zcl_lnt_position.
      DATA t162 TYPE REF TO zcl_lnt_position.
      DATA t163 TYPE REF TO zcl_lnt_abstract_token.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t165) = t156.
      t164 = t165->get_first_token( ).
      t163 = t164.
      DATA t166 TYPE REF TO zcl_lnt_position.
      DATA(t167) = t163.
      t166 = t167->start.
      t162 = t166.
      t161 = t162.
      DATA t168 TYPE abap_bool.
      DATA(t169) = t161.
      t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t168 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t171 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t172) = t139.
      t171 = t172->shift( ).
      t170 = t171.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t175) = me->conf.
      t174 = t175->zlnt_view_read_sr_3de28dccde0f( ).
      IF t174 IS BOUND.
        IF t174->has = abap_true.
          t173 = xsdbool( t174->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t173 = abap_true.
        DATA t176 TYPE abap_bool.
        DATA t177 TYPE abap_bool.
        DATA t178 TYPE REF TO zif_lnt_statement.
        DATA(t179) = t156.
        t178 = t179->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_st_class_definition ).
        t176 = t177.
        IF t177 = abap_true.
          DATA t180 TYPE abap_bool.
          DATA t181 TYPE REF TO zcl_lnt_expression_node.
          DATA(t182) = t156.
          DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
          t181 = t182->find_first_expression( i_type_9913 = t183 ).
          t180 = xsdbool( t181 IS BOUND ).
          t176 = t180.
        ENDIF.
        IF t176 = abap_true.
          DATA(t184) = abap_true.
          t23 = t184.
          CONTINUE.
        ELSE.
          DATA t185 TYPE abap_bool.
          DATA t186 TYPE abap_bool.
          DATA(t187) = t23.
          DATA(t188) = abap_true.
          t186 = xsdbool( t187 = t188 ).
          t185 = t186.
          IF t186 = abap_true.
            DATA t189 TYPE abap_bool.
            DATA t190 TYPE REF TO zif_lnt_statement.
            DATA(t191) = t156.
            t190 = t191->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_end_class ).
            t185 = t189.
          ENDIF.
          IF t185 = abap_true.
            DATA(t192) = abap_false.
            t23 = t192.
            CONTINUE.
          ELSE.
            DATA t193 TYPE abap_bool.
            DATA(t194) = t23.
            DATA(t195) = abap_true.
            t193 = xsdbool( t194 = t195 ).
            IF t193 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t196) = VALUE abap_bool( ).
      DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t198) = me->conf.
      t197 = t198->zlnt_view_read_sr_0529cf4a1dad( ).
      IF t197 IS BOUND.
        IF t197->has = abap_true.
          t196 = xsdbool( t197->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t196 = abap_true.
        DATA t199 TYPE abap_bool.
        DATA t200 TYPE abap_bool.
        DATA t201 TYPE REF TO zif_lnt_statement.
        DATA(t202) = t156.
        t201 = t202->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t200 = xsdbool( t201 IS BOUND AND t201 IS INSTANCE OF zcl_lnt_st_interface ).
        t199 = t200.
        IF t200 = abap_true.
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE REF TO zcl_lnt_expression_node.
          DATA(t205) = t156.
          DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
          t204 = t205->find_first_expression( i_type_9913 = t206 ).
          t203 = xsdbool( t204 IS BOUND ).
          t199 = t203.
        ENDIF.
        IF t199 = abap_true.
          DATA(t207) = abap_true.
          t23 = t207.
          CONTINUE.
        ELSE.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE abap_bool.
          DATA(t210) = t23.
          DATA(t211) = abap_true.
          t209 = xsdbool( t210 = t211 ).
          t208 = t209.
          IF t209 = abap_true.
            DATA t212 TYPE abap_bool.
            DATA t213 TYPE REF TO zif_lnt_statement.
            DATA(t214) = t156.
            t213 = t214->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_end_interface ).
            t208 = t212.
          ENDIF.
          IF t208 = abap_true.
            DATA(t215) = abap_false.
            t23 = t215.
            CONTINUE.
          ELSE.
            DATA t216 TYPE abap_bool.
            DATA(t217) = t23.
            DATA(t218) = abap_true.
            t216 = xsdbool( t217 = t218 ).
            IF t216 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t219 TYPE abap_bool.
      DATA t220 TYPE REF TO zif_lnt_statement.
      DATA(t221) = t156.
      t220 = t221->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t219 = xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_native_sql ).
      IF t219 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t222) = VALUE abap_bool( ).
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = VALUE abap_bool( ).
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      DATA t226 TYPE REF TO zcl_lnt_abstract_token.
      DATA t227 TYPE REF TO zcl_lnt_statement_node.
      DATA(t228) = t156.
      t227 = t228.
      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t230) = t227.
      t229 = t230->colon.
      t226 = t229.
      t225 = t226.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t232.
      t231 = t232.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = t225.
      IF t235 IS INITIAL.
        t234 = abap_true.
      ENDIF.
      t233 = xsdbool( t234 = abap_false ).
      t224 = t233.
      t223 = t224.
      IF t224 = abap_true.
        DATA(t236) = VALUE abap_bool( ).
        DATA t237 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t237.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t238.
        DATA t239 TYPE REF TO zcl_lnt_statement_node.
        DATA(t240) = t149.
        t239 = t240.
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t241.
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = t239.
        IF t243 IS INITIAL.
          t242 = abap_true.
        ENDIF.
        IF t242 = abap_true.
          DATA t244 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t244.
          t241 = t244.
        ELSE.
          DATA t245 TYPE REF TO zcl_lnt_abstract_token.
          DATA t246 TYPE REF TO zcl_lnt_statement_node.
          DATA t247 TYPE REF TO zcl_lnt_statement_node.
          DATA(t248) = t239.
          t247 = t248.
          t246 = t247.
          DATA t249 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t250) = t246.
          t249 = t250->colon.
          t245 = t249.
          t241 = t245.
        ENDIF.
        t238 = t241.
        t237 = t238.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        t251 = t252.
        DATA(t253) = VALUE abap_bool( ).
        DATA(t254) = VALUE abap_bool( ).
        DATA(t255) = t237.
        IF t255 IS INITIAL.
          t254 = abap_true.
        ENDIF.
        t253 = xsdbool( t254 = abap_false ).
        t236 = t253.
        t223 = t236.
      ENDIF.
      t222 = t223.
      IF t223 = abap_true.
        DATA t256 TYPE abap_bool.
        DATA t257 TYPE REF TO zcl_lnt_position.
        DATA t258 TYPE REF TO zcl_lnt_abstract_token.
        DATA t259 TYPE REF TO zcl_lnt_abstract_token.
        DATA t260 TYPE REF TO zcl_lnt_abstract_token.
        DATA t261 TYPE REF TO zcl_lnt_statement_node.
        DATA(t262) = t156.
        t261 = t262.
        DATA t263 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t264) = t261.
        t263 = t264->colon.
        t260 = t263.
        t259 = t260.
        t258 = t259.
        DATA t265 TYPE REF TO zcl_lnt_position.
        DATA(t266) = t258.
        t265 = t266->start.
        t257 = t265.
        DATA t267 TYPE REF TO zcl_lnt_position.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        DATA t269 TYPE REF TO zcl_lnt_abstract_token.
        DATA t270 TYPE REF TO zcl_lnt_abstract_token.
        DATA t271 TYPE REF TO zcl_lnt_statement_node.
        DATA t272 TYPE REF TO zcl_lnt_statement_node.
        DATA(t273) = t149.
        t272 = t273.
        t271 = t272.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t275) = t271.
        t274 = t275->colon.
        t270 = t274.
        t269 = t270.
        t268 = t269.
        DATA t276 TYPE REF TO zcl_lnt_position.
        DATA(t277) = t268.
        t276 = t277->start.
        t267 = t276.
        t256 = t257->equals( i_p = t267 ).
        t222 = t256.
      ENDIF.
      IF t222 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t278) = VALUE abap_bool( ).
      DATA(t279) = VALUE abap_bool( ).
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = t170.
      IF t281 IS BOUND.
        IF t281->has = abap_true.
          IF t281->number_special <> 0.
            t280 = xsdbool( t281->number_special <> 1 ).
          ELSE.
            t280 = xsdbool( t281->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
      ENDIF.
      t279 = t280.
      IF t280 = abap_true.
        DATA(t282) = VALUE abap_bool( ).
        DATA(t283) = VALUE f( ).
        DATA(t284) = t170.
        IF t284->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t283 = t284->value.
        DATA(t285) = CONV f( 0 ).
        t282 = xsdbool( t283 > t285 ).
        t279 = t282.
      ENDIF.
      t278 = t279.
      IF t279 = abap_true.
        DATA(t286) = VALUE abap_bool( ).
        DATA(t287) = VALUE f( ).
        DATA(t288) = t170.
        IF t288->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t287 = t288->value.
        DATA(t289) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t289->has = abap_true.
        t289->value = t287.
        DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t291 TYPE REF TO zcl_lnt_position.
        DATA(t292) = t161.
        t291 = t292.
        DATA t293 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t294) = t291.
        t293 = t294->col.
        t290 = t293.
        t286 = zlnt_runtime_numb_290eb04a9758=>compare( left = t289 right = t290 op = `!=` ).
        t278 = t286.
      ENDIF.
      IF t278 = abap_true.
        DATA(t295) = VALUE f( ).
        DATA(t296) = VALUE f( ).
        DATA(t297) = VALUE f( ).
        DATA(t298) = t170.
        IF t298->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t297 = t298->value.
        DATA(t299) = CONV f( 1 ).
        t296 = t297 - t299.
        t295 = t296.
        DATA t300 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t300.
        DATA t301 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t301.
        DATA(t302) = t1.
        DATA t303 TYPE REF TO zcl_lnt_position.
        DATA t304 TYPE f.
        DATA t305 TYPE REF TO zcl_lnt_position.
        DATA(t306) = t161.
        t305 = t306.
        DATA t307 TYPE f.
        DATA(t308) = t305.
        t307 = t308->row.
        t304 = t307.
        DATA(t309) = CONV f( 1 ).
        DATA(t310) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t310->has = abap_true.
        t310->value = t309.
        t303 = NEW zcl_lnt_position( i_row = t304 i_col = t310 ).
        DATA(t311) = t161.
        DATA(t312) = VALUE string( ).
        DATA t313 TYPE string.
        DATA(t314) = | |.
        t313 = t314.
        DATA(t315) = VALUE string( ).
        DATA(t316) = t313.
        DATA(t317) = t295.
        DATA(t318) = strlen( t316 ).
        DATA(t319) = CONV f( trunc( t317 ) ).
        IF t319 < 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        CLEAR t315.
        IF t316 IS NOT INITIAL.
          IF t319 > 2147483647 OR t319 * strlen( t316 ) > 2147483647.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t315 = repeat( val = t316 occ = CONV i( t319 ) ).
        ENDIF.
        t312 = t315.
        t301 = zcl_lnt_edit_helper=>replace_range( i_file = t302 i_start = t303 i_end = t311 i_text = t312 ).
        t300 = t301.
        DATA(t320) = VALUE string( ).
        DATA(t321) = VALUE string( ).
        DATA(t322) = VALUE string( ).
        DATA(t323) = |Indentation problem, expected |.
        DATA(t324) = VALUE string( ).
        DATA(t325) = t295.
        IF t325 <> trunc( t325 ) OR t325 > range_safe_integer OR t325 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t326) = CONV int8( t325 ).
        t324 = |{ t326 }|.
        DATA(t327) = strlen( t323 ).
        t322 = |{ t323 }{ t324 }|.
        DATA(t328) = | spaces|.
        DATA(t329) = strlen( t322 ).
        t321 = |{ t322 }{ t328 }|.
        t320 = t321.
        DATA t330 TYPE REF TO zcl_lnt_issue.
        CLEAR t330.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        CLEAR t331.
        DATA(t332) = t1.
        DATA(t333) = t161.
        DATA(t334) = t320.
        DATA(t335) = VALUE string( ).
        DATA t336 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t336.
        DATA t337 TYPE string.
        DATA(t338) = |indentation|.
        t337 = t338.
        DATA t339 TYPE string.
        DATA(t340) = |Indentation|.
        t339 = t340.
        DATA t341 TYPE string.
        DATA(t342) = |Checks indentation|.
        t341 = t342.
        DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t343.
        DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t344.
        DATA(t345) = abap_true.
        IF t345 = abap_true.
          DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t348.
          t347 = t348.
          DATA(t349) = t347.
          DATA(t350) = |Whitespace|.
          t349->load( ).
          APPEND t350 TO t349->items.
          t349->save( ).
          DATA(t351) = t347.
          DATA(t352) = |Quickfix|.
          t351->load( ).
          APPEND t352 TO t351->items.
          t351->save( ).
          DATA(t353) = t347.
          DATA(t354) = |SingleFile|.
          t353->load( ).
          APPEND t354 TO t353->items.
          t353->save( ).
          DATA(t355) = t347.
          t346 = t355.
          t344 = t346.
        ELSE.
          DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t356.
          t344 = t356.
        ENDIF.
        t343 = t344.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t358.
        DATA(t359) = abap_true.
        IF t359 = abap_true.
          DATA(t360) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
          t360 = t360 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
          t360 = t360 && |METHOD.\nENDCLASS.|.
          DATA(t361) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t361->has = abap_true.
          t361->value = t360.
          t358 = t361.
        ELSE.
          DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t362.
          t358 = t362.
        ENDIF.
        t357 = t358.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t364.
        DATA(t365) = abap_true.
        IF t365 = abap_true.
          DATA(t366) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
          t366 = t366 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
          t366 = t366 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
          DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t367->has = abap_true.
          t367->value = t366.
          t364 = t367.
        ELSE.
          DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t368.
          t364 = t368.
        ENDIF.
        t363 = t364.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        t369 = t370.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t372.
        t371 = t372.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t374.
        t373 = t374.
        t336 = NEW zcl_lnt_irule_metadata( i_key = t337 i_title = t339 i_short_description = t341 i_bad_example = t357 i_good_example = t363 i_extended_information = t369 i_tags = t343 i_pragma = t371 i_pseudo_comment = t373 ).
        CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
        t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t375 ).
        ENDIF.
        DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t376.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t376 ).
        ENDIF.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t377 ).
        ENDIF.
        DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t378.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t378 ).
        ENDIF.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t379 ).
        ENDIF.
        DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t380.
        IF t336->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t380 ).
        ENDIF.
        CREATE OBJECT t336->zlnt_json_ownkeys_70e5fd461788.
        t336->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t381) = |key|.
        DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t382.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
        ENDIF.
        DATA(t383) = |title|.
        DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t384.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t383 p1 = t384 ).
        ENDIF.
        DATA(t385) = |shortDescription|.
        DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t386.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t385 p1 = t386 ).
        ENDIF.
        DATA(t387) = |tags|.
        DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t388.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t387 p1 = t388 ).
        ENDIF.
        DATA(t389) = |badExample|.
        DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t390.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t389 p1 = t390 ).
        ENDIF.
        DATA(t391) = |goodExample|.
        DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t392.
        IF t336->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t391 p1 = t392 ).
        ENDIF.
        t335 = t336->key.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t394) = me->conf.
        t393 = t394->zlnt_view_read_sr_15c06369f827( ).
        DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t395.
        DATA(t396) = abap_true.
        IF t396 = abap_true.
          DATA(t397) = t300.
          t395 = t397.
        ELSE.
          DATA t398 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t398.
          t395 = t398.
        ENDIF.
        t331 = zcl_lnt_issue=>at_position( i_file = t332 i_start = t333 i_message_26cb = t334 i_key = t335 i_severity = t393 i_fix = t395 ).
        t330 = t331.
        DATA(t399) = t147.
        DATA(t400) = t330.
        t399->load( ).
        APPEND t400 TO t399->items.
        t399->save( ).
        DATA(t401) = VALUE abap_bool( ).
        DATA t402 TYPE f.
        DATA t403 TYPE i.
        DATA(t404) = t147.
        t404->load( ).
        t403 = lines( t404->items ).
        t402 = t403.
        DATA(t405) = VALUE f( ).
        DATA(t406) = t3.
        IF t406->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t405 = t406->value.
        t401 = xsdbool( t402 >= t405 ).
        IF t401 = abap_true.
          EXIT.
        ENDIF.
      ENDIF.
      DATA t407 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t407.
      DATA(t408) = abap_true.
      IF t408 = abap_true.
        DATA(t409) = t156.
        t407 = t409.
      ELSE.
        DATA t410 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t410.
        t407 = t410.
      ENDIF.
      t149 = t407.
    ENDDO.
    DATA(t411) = t147.
    result = t411.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_indentation_conf( me->gt_cnf_ins_src_rls_ind_ts_indn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_indentation_conf( me->gt_cnf_ins_src_rls_ind_ts_indn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_indentation_conf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_indentation_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_ind_ts_indn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_prs_ins_src_rls_ind_ts_indn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1544_53a78a0bafbc.
  ENDMETHOD.
ENDCLASS.
