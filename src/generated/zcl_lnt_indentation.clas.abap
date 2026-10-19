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
    me->conf = NEW zcl_lnt_indentation_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |indentation|.
    DATA t4 TYPE string.
    t4 = |Indentation|.
    DATA t6 TYPE string.
    t6 = |Checks indentation|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Whitespace|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Quickfix|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA(t19) = |SingleFile|.
    t12->load( ).
    APPEND t19 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
    t25 = t25 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
    t25 = t25 && |METHOD.\nENDCLASS.|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
    t31 = t31 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
    t31 = t31 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_ind_ts_indn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_ind_ts_indn.
    me->conf = i_conf.
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
    t8 = t3.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = VALUE abap_bool( ).
    IF t8 IS INITIAL.
      t12 = abap_true.
    ELSEIF t8->has = abap_false.
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
      DATA(t20) = CONV f( 10 ).
      DATA(t21) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t21->has = abap_true.
      t21->value = t20.
      t3 = t21.
    ENDIF.
    DATA t23 TYPE abap_bool.
    t23 = abap_false.
    DATA(t25) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    t30 = t1->structure.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = xsdbool( t30 IS INITIAL ).
    IF t25 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE abap_bool.
    t37 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    IF t37 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t41 TYPE REF TO zcl_lnt_class.
      DATA t42 TYPE REF TO zcl_lnt_class.
      DATA t44 TYPE REF TO object.
      t44 = t2.
      t42 ?= t44.
      t41 = t42.
      DATA t46 TYPE REF TO zif_lnt_abap_file_information.
      DATA t48 TYPE REF TO zcl_lnt_abap_file.
      DATA t49 TYPE REF TO zcl_lnt_abap_file.
      t49 = t41->get_main_abap_file( ).
      t48 = t49.
      DATA t51 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t52) = xsdbool( t48 IS INITIAL ).
      IF t52 = abap_true.
      ELSE.
        DATA t59 TYPE REF TO zif_lnt_abap_file_information.
        t59 = t48->info.
        t51 = t59.
      ENDIF.
      t46 = t51.
      DATA t61 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t62) = xsdbool( t46 IS INITIAL ).
      IF t62 = abap_true.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t66 TYPE REF TO zif_lnt_abap_file_information.
        t66 = t46.
        DATA t68 TYPE string.
        DATA t69 TYPE REF TO zcl_lnt_abstract_object.
        t69 = t41.
        DATA t71 TYPE string.
        t71 = t69->name.
        t68 = t71.
        t65 = t66->get_class_definition_by_name( i_name = t68 ).
        t61 = t65.
      ENDIF.
      t39 = t61.
      DATA t74 TYPE REF TO zcl_lnt_ddic.
      DATA(t75) = me->reg.
      t74 = NEW zcl_lnt_ddic( i_reg_f149 = t75 ).
      DATA(t76) = VALUE abap_bool( ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t76 = xsdbool( t39 IS INITIAL ).
      IF t76 = abap_true.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t83.
        result = t83.
        RETURN.
      ELSE.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = VALUE abap_bool( ).
        DATA t86 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t86 = me->conf->zlnt_view_read_sr_649aa078d171( ).
        IF t86 IS BOUND.
          IF t86->has = abap_true.
            t85 = xsdbool( t86->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t84 = t85.
        IF t85 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA t90 TYPE REF TO zcl_lnt_info_class_definition.
          t90 = t39.
          DATA t95 TYPE REF TO zcl_lnt_class.
          DATA t97 TYPE REF TO object.
          t97 = t2.
          t95 ?= t97.
          t88 = t74->is_exception( i_def = t90 i_obj_ac26 = t95 ).
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
    DATA t100 TYPE REF TO zcl_lnt_iindentation_options.
    DATA t101 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t103 TYPE REF TO zcl_lnt_indentation_conf.
    t103 = me->conf.
    DATA t105 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t106) = xsdbool( t103 IS INITIAL ).
    IF t106 = abap_true.
    ELSE.
      DATA t109 TYPE abap_bool.
      t109 = t103->zlnt_view_read_sr_d06af785ba41( ).
      DATA(t111) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t111->has = abap_true.
      t111->value = t109.
      t105 = t111.
    ENDIF.
    t101 = t105.
    DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t114 TYPE REF TO zcl_lnt_indentation_conf.
    t114 = me->conf.
    DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t117) = xsdbool( t114 IS INITIAL ).
    IF t117 = abap_true.
    ELSE.
      DATA t120 TYPE abap_bool.
      t120 = t114->zlnt_view_read_sr_5c35b8f00615( ).
      DATA(t122) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t122->has = abap_true.
      t122->value = t120.
      t116 = t122.
    ENDIF.
    t112 = t116.
    DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t126 TYPE abap_bool.
    t126 = me->conf->zlnt_view_read_sr_e38337070bb8( ).
    DATA(t128) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t128->has = abap_true.
    t128->value = t126.
    t123 = t128.
    t100 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t112 i_slctn_scrn_blck_indnttn = t101 i_global_class_skip_first = t123 ).
    CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
    t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionScreenBlockIndentation` p1 = t130 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alignTryCatch` p1 = t131 ).
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalClassSkipFirst` p1 = t132 ).
    ENDIF.
    CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
    t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t133) = |selectionScreenBlockIndentation|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    DATA(t135) = |alignTryCatch|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
    ENDIF.
    DATA(t137) = |globalClassSkipFirst|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t140 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t141 TYPE REF TO zcl_lnt_indent.
    DATA t142 TYPE REF TO zcl_lnt_iindentation_options.
    t142 = t100.
    t141 = NEW zcl_lnt_indent( i_options = t142 ).
    t140 = t141->get_expected_indents( i_file = t1 ).
    t139 = t140.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t148.
    t147 = t148.
    DATA t149 TYPE REF TO zcl_lnt_statement_node.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t154 = t1->statements.
    t151 = t154.
    DATA t156 TYPE REF TO zcl_lnt_statement_node.
    DATA t157 TYPE REF TO object.
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
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      t164 = t156->get_first_token( ).
      DATA t166 TYPE REF TO zcl_lnt_position.
      t166 = t164->start.
      t161 = t166.
      DATA t168 TYPE abap_bool.
      t168 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_virtual_position ).
      IF t168 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t171 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t171 = t139->shift( ).
      t170 = t171.
      DATA(t173) = VALUE abap_bool( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t174 = me->conf->zlnt_view_read_sr_3de28dccde0f( ).
      IF t174 IS BOUND.
        IF t174->has = abap_true.
          t173 = xsdbool( t174->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t173 = abap_true.
        DATA t176 TYPE abap_bool.
        DATA t177 TYPE abap_bool.
        DATA t178 TYPE REF TO zif_lnt_statement.
        t178 = t156->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_st_class_definition ).
        t176 = t177.
        IF t177 = abap_true.
          DATA t180 TYPE abap_bool.
          DATA t181 TYPE REF TO zcl_lnt_expression_node.
          DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
          t181 = t156->find_first_expression( i_type_9913 = t183 ).
          t180 = xsdbool( t181 IS BOUND ).
          t176 = t180.
        ENDIF.
        IF t176 = abap_true.
          t23 = abap_true.
          CONTINUE.
        ELSE.
          DATA t185 TYPE abap_bool.
          DATA t186 TYPE abap_bool.
          t186 = xsdbool( t23 = abap_true ).
          t185 = t186.
          IF t186 = abap_true.
            DATA t189 TYPE abap_bool.
            DATA t190 TYPE REF TO zif_lnt_statement.
            t190 = t156->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_end_class ).
            t185 = t189.
          ENDIF.
          IF t185 = abap_true.
            t23 = abap_false.
            CONTINUE.
          ELSE.
            DATA t193 TYPE abap_bool.
            t193 = xsdbool( t23 = abap_true ).
            IF t193 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t196) = VALUE abap_bool( ).
      DATA t197 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t197 = me->conf->zlnt_view_read_sr_0529cf4a1dad( ).
      IF t197 IS BOUND.
        IF t197->has = abap_true.
          t196 = xsdbool( t197->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t196 = abap_true.
        DATA t199 TYPE abap_bool.
        DATA t200 TYPE abap_bool.
        DATA t201 TYPE REF TO zif_lnt_statement.
        t201 = t156->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t200 = xsdbool( t201 IS BOUND AND t201 IS INSTANCE OF zcl_lnt_st_interface ).
        t199 = t200.
        IF t200 = abap_true.
          DATA t203 TYPE abap_bool.
          DATA t204 TYPE REF TO zcl_lnt_expression_node.
          DATA(t206) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
          t204 = t156->find_first_expression( i_type_9913 = t206 ).
          t203 = xsdbool( t204 IS BOUND ).
          t199 = t203.
        ENDIF.
        IF t199 = abap_true.
          t23 = abap_true.
          CONTINUE.
        ELSE.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE abap_bool.
          t209 = xsdbool( t23 = abap_true ).
          t208 = t209.
          IF t209 = abap_true.
            DATA t212 TYPE abap_bool.
            DATA t213 TYPE REF TO zif_lnt_statement.
            t213 = t156->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_end_interface ).
            t208 = t212.
          ENDIF.
          IF t208 = abap_true.
            t23 = abap_false.
            CONTINUE.
          ELSE.
            DATA t216 TYPE abap_bool.
            t216 = xsdbool( t23 = abap_true ).
            IF t216 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t219 TYPE abap_bool.
      DATA t220 TYPE REF TO zif_lnt_statement.
      t220 = t156->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t219 = xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_native_sql ).
      IF t219 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t222) = VALUE abap_bool( ).
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = VALUE abap_bool( ).
      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
      t229 = t156->colon.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t231.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = xsdbool( t229 IS INITIAL ).
      t233 = xsdbool( t234 = abap_false ).
      t224 = t233.
      t223 = t224.
      IF t224 = abap_true.
        DATA(t236) = VALUE abap_bool( ).
        DATA t239 TYPE REF TO zcl_lnt_statement_node.
        t239 = t149.
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t241.
        DATA(t242) = xsdbool( t239 IS INITIAL ).
        IF t242 = abap_true.
          CLEAR t241.
        ELSE.
          DATA t249 TYPE REF TO zcl_lnt_abstract_token.
          t249 = t239->colon.
          t241 = t249.
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        DATA(t253) = VALUE abap_bool( ).
        DATA(t254) = xsdbool( t241 IS INITIAL ).
        t253 = xsdbool( t254 = abap_false ).
        t236 = t253.
        t223 = t236.
      ENDIF.
      t222 = t223.
      IF t223 = abap_true.
        DATA t256 TYPE abap_bool.
        DATA t257 TYPE REF TO zcl_lnt_position.
        DATA t263 TYPE REF TO zcl_lnt_abstract_token.
        t263 = t156->colon.
        DATA t265 TYPE REF TO zcl_lnt_position.
        t265 = t263->start.
        t257 = t265.
        DATA t267 TYPE REF TO zcl_lnt_position.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        t274 = t149->colon.
        DATA t276 TYPE REF TO zcl_lnt_position.
        t276 = t274->start.
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
      IF t170 IS BOUND.
        IF t170->has = abap_true.
          IF t170->number_special <> 0.
            t280 = xsdbool( t170->number_special <> 1 ).
          ELSE.
            t280 = xsdbool( t170->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
      ENDIF.
      t279 = t280.
      IF t280 = abap_true.
        DATA(t282) = VALUE abap_bool( ).
        DATA(t283) = VALUE f( ).
        IF t170->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t283 = t170->value.
        DATA(t285) = CONV f( 0 ).
        t282 = xsdbool( t283 > t285 ).
        t279 = t282.
      ENDIF.
      t278 = t279.
      IF t279 = abap_true.
        DATA(t286) = VALUE abap_bool( ).
        DATA(t287) = VALUE f( ).
        IF t170->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t287 = t170->value.
        DATA(t289) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t289->has = abap_true.
        t289->value = t287.
        DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t293 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t293 = t161->col.
        t290 = t293.
        t286 = zlnt_runtime_numb_290eb04a9758=>compare( left = t289 right = t290 op = `!=` ).
        t278 = t286.
      ENDIF.
      IF t278 = abap_true.
        DATA(t295) = VALUE f( ).
        DATA(t296) = VALUE f( ).
        DATA(t297) = VALUE f( ).
        IF t170->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t297 = t170->value.
        DATA(t299) = CONV f( 1 ).
        t296 = t297 - t299.
        t295 = t296.
        DATA t301 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t301.
        DATA t303 TYPE REF TO zcl_lnt_position.
        DATA t304 TYPE f.
        DATA t307 TYPE f.
        t307 = t161->row.
        t304 = t307.
        DATA(t309) = CONV f( 1 ).
        DATA(t310) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t310->has = abap_true.
        t310->value = t309.
        t303 = NEW zcl_lnt_position( i_row = t304 i_col = t310 ).
        DATA(t312) = VALUE string( ).
        DATA t313 TYPE string.
        t313 = | |.
        DATA(t315) = VALUE string( ).
        DATA(t318) = strlen( t313 ).
        DATA(t319) = CONV f( trunc( t295 ) ).
        IF t319 < 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        CLEAR t315.
        IF t313 IS NOT INITIAL.
          IF t319 > 2147483647 OR t319 * strlen( t313 ) > 2147483647.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t315 = repeat( val = t313 occ = CONV i( t319 ) ).
        ENDIF.
        t312 = t315.
        t301 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t303 i_end = t161 i_text = t312 ).
        DATA(t320) = VALUE string( ).
        DATA(t321) = VALUE string( ).
        DATA(t322) = VALUE string( ).
        DATA(t323) = |Indentation problem, expected |.
        DATA(t324) = VALUE string( ).
        IF t295 <> trunc( t295 ) OR t295 > range_safe_integer OR t295 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t326) = CONV int8( t295 ).
        t324 = |{ t326 }|.
        DATA(t327) = strlen( t323 ).
        t322 = |{ t323 }{ t324 }|.
        DATA(t328) = | spaces|.
        DATA(t329) = strlen( t322 ).
        t321 = |{ t322 }{ t328 }|.
        t320 = t321.
        DATA t331 TYPE REF TO zcl_lnt_issue.
        CLEAR t331.
        DATA(t335) = VALUE string( ).
        DATA t336 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t336.
        DATA t337 TYPE string.
        t337 = |indentation|.
        DATA t339 TYPE string.
        t339 = |Indentation|.
        DATA t341 TYPE string.
        t341 = |Checks indentation|.
        DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t343.
        DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t348.
        t347 = t348.
        DATA(t350) = |Whitespace|.
        t347->load( ).
        APPEND t350 TO t347->items.
        t347->save( ).
        DATA(t352) = |Quickfix|.
        t347->load( ).
        APPEND t352 TO t347->items.
        t347->save( ).
        DATA(t354) = |SingleFile|.
        t347->load( ).
        APPEND t354 TO t347->items.
        t347->save( ).
        t343 = t347.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        DATA(t360) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
        t360 = t360 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
        t360 = t360 && |METHOD.\nENDCLASS.|.
        DATA(t361) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t361->has = abap_true.
        t361->value = t360.
        t357 = t361.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        DATA(t366) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
        t366 = t366 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
        t366 = t366 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
        DATA(t367) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t367->has = abap_true.
        t367->value = t366.
        t363 = t367.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t371.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t373.
        t336 = NEW zcl_lnt_irule_metadata( i_key = t337 i_title = t339 i_short_description = t341 i_bad_example = t357 i_good_example = t363 i_extended_information = t369 i_tags = t343 i_pragma = t371 i_pseudo_comment = t373 ).
        CREATE OBJECT t336->zlnt_view_ownkeys_b0e8086400eb.
        t336->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        t336->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t375 ).
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
        t336->zlnt_json_ownkeys_70e5fd461788->put( p0 = t381 p1 = t382 ).
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
        t393 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t395.
        t395 = t301.
        t331 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t161 i_message_26cb = t320 i_key = t335 i_severity = t393 i_fix = t395 ).
        t147->load( ).
        APPEND t331 TO t147->items.
        t147->save( ).
        DATA(t401) = VALUE abap_bool( ).
        DATA t402 TYPE f.
        DATA t403 TYPE i.
        t147->load( ).
        t403 = lines( t147->items ).
        t402 = t403.
        DATA(t405) = VALUE f( ).
        IF t3->number_special <> 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t405 = t3->value.
        t401 = xsdbool( t402 >= t405 ).
        IF t401 = abap_true.
          EXIT.
        ENDIF.
      ENDIF.
      t149 = t156.
    ENDDO.
    result = t147.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_indentation_conf( me->gt_cnf_ins_src_rls_ind_ts_indn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_indentation_conf( me->gt_cnf_ins_src_rls_ind_ts_indn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_indentation_conf.
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
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_prs_ins_src_rls_ind_ts_indn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

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
