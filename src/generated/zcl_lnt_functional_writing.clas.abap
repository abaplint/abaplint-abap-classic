* TS: src/rules/functional_writing.ts:20:1 FunctionalWriting
CLASS zcl_lnt_functional_writing DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_fn_wr_ts_fn_wrt RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS st_cn_in_sr_rl_fn_wr_ts_fn_wrt IMPORTING i_conf TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS crt_iss_fr_sttmnt_nd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS build_fix_string IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_functional_writing IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_fnctnl_wrtng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |functional_writing|.
    DATA t4 TYPE string.
    t4 = |Use functional writing|.
    DATA t6 TYPE string.
    DATA(t7) = |Detects usage of call method when functional style calls can|.
    t7 = t7 && | be used.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
    t11 = t11 && |abapopenchecks.org/checks/07/|.
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
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |SingleFile|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
    t31 = t31 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
    t31 = t31 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
    t31 = t31 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
    t37 = t37 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
    t37 = t37 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
    t37 = t37 && |\n    OTHERS         = 2 ).|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    t34 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Use functional writing style for method calls|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_fn_wr_ts_fn_wrt.
    me->conf = i_conf.
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
    t5 = abap_false.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE string.
    t8 = t2->get_type( ).
    DATA(t10) = |INTF|.
    t7 = xsdbool( t8 = t10 ).
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t14 TYPE abap_bool.
    t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    IF t14 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_class.
      DATA t18 TYPE REF TO zcl_lnt_class.
      t18 ?= t2.
      t17 = t18.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      t24 = t17->get_main_abap_file( ).
      t23 = t24.
      DATA t26 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t27) = xsdbool( t23 IS INITIAL ).
      IF t27 = abap_true.
      ELSE.
        DATA t34 TYPE REF TO zif_lnt_abap_file_information.
        t34 = t23->info.
        t26 = t34.
      ENDIF.
      t21 = t26.
      DATA t36 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t37) = xsdbool( t21 IS INITIAL ).
      IF t37 = abap_true.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t41 TYPE REF TO zif_lnt_abap_file_information.
        t41 = t21.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_object.
        t44 = t17.
        DATA t46 TYPE string.
        t46 = t44->name.
        t43 = t46.
        t40 = t41->get_class_definition_by_name( i_name = t43 ).
        t36 = t40.
      ENDIF.
      t12 = t36.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_ddic.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA(t50) = me->reg.
    t49 = NEW zcl_lnt_ddic( i_reg_f149 = t50 ).
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t54 = t1->statements.
    t51 = t54.
    DATA t56 TYPE REF TO zcl_lnt_statement_node.
    DATA t57 TYPE REF TO object.
    DATA(t58) = VALUE i( ).
    DO.
      t51->load( ).
      IF t58 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t57.
      READ TABLE t51->items INDEX t58 + 1 INTO t57.
      t58 = t58 + 1.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      CLEAR t56.
      IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t59 ?= t57.
        DATA t60 TYPE REF TO object.
        t60 = t59->as_ref( ).
        t56 ?= t60.
      ELSE.
        t56 ?= t57.
      ENDIF.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      DATA t65 TYPE REF TO zif_lnt_statement.
      t65 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
      t63 = t64.
      IF t64 = abap_true.
        DATA t67 TYPE abap_bool.
        t67 = xsdbool( t12 IS BOUND ).
        t63 = t67.
      ENDIF.
      t62 = t63.
      IF t63 = abap_true.
        DATA(t69) = VALUE abap_bool( ).
        DATA t71 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t71.
        t71 = t12.
        t69 = t48->is_exception( i_def = t71 i_obj_ac26 = t2 ).
        t62 = t69.
      ENDIF.
      t61 = t62.
      IF t62 = abap_true.
        DATA t77 TYPE abap_bool.
        t77 = me->conf->zlnt_view_read_sr_73796bbbf173( ).
        t61 = t77.
      ENDIF.
      IF t61 = abap_true.
        t5 = abap_true.
      ELSE.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE REF TO zif_lnt_statement.
        t81 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_end_class ).
        IF t80 = abap_true.
          t5 = abap_false.
        ELSE.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE abap_bool.
          t85 = xsdbool( t5 = abap_false ).
          t84 = t85.
          IF t85 = abap_true.
            DATA t88 TYPE abap_bool.
            DATA t89 TYPE REF TO zif_lnt_statement.
            t89 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_call ).
            t84 = t88.
          ENDIF.
          IF t84 = abap_true.
            DATA(t91) = VALUE abap_bool( ).
            DATA t92 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t92.
            DATA t93 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t93.
            DATA t94 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t94.
            DATA t95 TYPE REF TO zif_lnt_node.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_abstract_node.
            t96 = t56.
            DATA t100 TYPE REF TO zif_lnt_node.
            CLEAR t100.
            DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t101 = t96->children.
            DATA t103 TYPE REF TO object.
            CLEAR t103.
            t101->load( ).
            CLEAR t103.
            READ TABLE t101->items INDEX 1 INTO t103.
            DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t104.
            CLEAR t100.
            IF t103 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t104 ?= t103.
              DATA t105 TYPE REF TO object.
              t105 = t104->as_ref( ).
              t100 ?= t105.
            ELSE.
              t100 ?= t103.
            ENDIF.
            t95 = t100.
            t94 ?= t95.
            t93 = t94.
            DATA t107 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t107.
            DATA(t108) = xsdbool( t93 IS INITIAL ).
            IF t108 = abap_true.
              CLEAR t107.
            ELSE.
              DATA t111 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t112 TYPE REF TO object.
              DATA t113 TYPE REF TO zif_lnt_union_4cf1d054.
              t113 = t93.
              t112 = t113->get_db65( ).
              DATA t115 TYPE REF TO object.
              t115 = t112.
              t111 ?= t115.
              t107 = t111.
            ENDIF.
            t92 = t107.
            t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_method_call_chain ).
            IF t91 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t118 TYPE REF TO zcl_lnt_expression_node.
            DATA t119 TYPE REF TO zcl_lnt_expression_node.
            DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
            t119 = t56->find_direct_expression( i_type_9913 = t121 ).
            t118 = t119.
            DATA t122 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t122.
            DATA(t123) = xsdbool( t118 IS INITIAL ).
            IF t123 = abap_true.
              CLEAR t122.
            ELSE.
              DATA t126 TYPE REF TO zcl_lnt_expression_node.
              DATA t127 TYPE REF TO zcl_lnt_expression_node.
              t127 = t118.
              DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
              t126 = t127->find_direct_expression( i_type_9913 = t129 ).
              t122 = t126.
            ENDIF.
            DATA(t130) = VALUE abap_bool( ).
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = xsdbool( t122 IS INITIAL ).
            t135 = xsdbool( t136 = abap_false ).
            t130 = t135.
            IF t130 = abap_true.
              CONTINUE.
            ENDIF.
            DATA t139 TYPE REF TO zcl_lnt_issue.
            CLEAR t139.
            DATA t140 TYPE REF TO zcl_lnt_abap_file.
            t140 = t1.
            DATA t142 TYPE REF TO zcl_lnt_statement_node.
            t142 = t56.
            DATA t146 TYPE string.
            t146 = me->build_fix_string( i_stat_node = t142 ).
            DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t151 TYPE REF TO zcl_lnt_position.
            DATA t156 TYPE REF TO zcl_lnt_abstract_token.
            t156 = t142->get_first_token( ).
            DATA t158 TYPE REF TO zcl_lnt_position.
            t158 = t156->start.
            t151 = t158.
            DATA t160 TYPE REF TO zcl_lnt_position.
            DATA t165 TYPE REF TO zcl_lnt_abstract_token.
            t165 = t142->get_last_token( ).
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            t168 = t165.
            DATA t170 TYPE REF TO zcl_lnt_position.
            DATA t171 TYPE f.
            DATA t173 TYPE REF TO zcl_lnt_position.
            t173 = t168->start.
            DATA t175 TYPE f.
            t175 = t173->row.
            t171 = t175.
            DATA t177 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t180 TYPE REF TO zcl_lnt_position.
            t180 = t168->start.
            DATA t182 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t182 = t180->col.
            t178 = t182.
            DATA t184 TYPE f.
            DATA t186 TYPE string.
            t186 = t168->str.
            t184 = strlen( t186 ).
            DATA(t189) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t189->has = abap_true.
            t189->value = t184.
            t177 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t178 right = t189 op = `+` ).
            t170 = NEW zcl_lnt_position( i_row = t171 i_col = t177 ).
            t160 = t170.
            t149 = zcl_lnt_edit_helper=>replace_range( i_file = t140 i_start = t151 i_end = t160 i_text = t146 ).
            DATA t191 TYPE REF TO zcl_lnt_issue.
            CLEAR t191.
            DATA(t194) = |Use functional writing style for method calls|.
            DATA(t195) = VALUE string( ).
            DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t196.
            DATA t197 TYPE string.
            t197 = |functional_writing|.
            DATA t199 TYPE string.
            t199 = |Use functional writing|.
            DATA t201 TYPE string.
            DATA(t202) = |Detects usage of call method when functional style calls can|.
            t202 = t202 && | be used.|.
            t201 = t202.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            DATA(t206) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t206 = t206 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
            t206 = t206 && |abapopenchecks.org/checks/07/|.
            DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t207->has = abap_true.
            t207->value = t206.
            t203 = t207.
            DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t209.
            DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t214 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t214.
            t213 = t214.
            DATA(t216) = |Styleguide|.
            t213->load( ).
            APPEND t216 TO t213->items.
            t213->save( ).
            DATA(t218) = |Quickfix|.
            t213->load( ).
            APPEND t218 TO t213->items.
            t213->save( ).
            DATA(t220) = |SingleFile|.
            t213->load( ).
            APPEND t220 TO t213->items.
            t213->save( ).
            t209 = t213.
            DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t223.
            DATA(t226) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
            t226 = t226 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
            t226 = t226 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
            t226 = t226 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
            DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t227->has = abap_true.
            t227->value = t226.
            t223 = t227.
            DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t229.
            DATA(t232) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
            t232 = t232 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
            t232 = t232 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
            t232 = t232 && |\n    OTHERS         = 2 ).|.
            DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t233->has = abap_true.
            t233->value = t232.
            t229 = t233.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t235.
            DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t237.
            t196 = NEW zcl_lnt_irule_metadata( i_key = t197 i_title = t199 i_short_description = t201 i_bad_example = t223 i_good_example = t229 i_extended_information = t203 i_tags = t209 i_pragma = t235 i_pseudo_comment = t237 ).
            CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
            t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t239 ).
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t240 ).
            ENDIF.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t241 ).
            ENDIF.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t242 ).
            ENDIF.
            DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t243.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t243 ).
            ENDIF.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t244 ).
            ENDIF.
            DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t245.
            IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t245 ).
            ENDIF.
            CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
            t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t246) = |key|.
            DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t247.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t246 p1 = t247 ).
            DATA(t248) = |title|.
            DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t249.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t248 p1 = t249 ).
            ENDIF.
            DATA(t250) = |shortDescription|.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t250 p1 = t251 ).
            ENDIF.
            DATA(t252) = |extendedInformation|.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
            ENDIF.
            DATA(t254) = |tags|.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
            ENDIF.
            DATA(t256) = |badExample|.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t256 p1 = t257 ).
            ENDIF.
            DATA(t258) = |goodExample|.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
            ENDIF.
            t195 = t196->key.
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t260 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t262.
            t262 = t149.
            DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t266.
            t191 = zcl_lnt_issue=>at_statement( i_file = t140 i_statement = t142 i_message_26cb = t194 i_key = t195 i_severity = t260 i_fix = t262 i_alternative_fixes = t266 ).
            t139 = t191.
            t3->load( ).
            APPEND t139 TO t3->items.
            t3->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD crt_iss_fr_sttmnt_nd.
    DATA(t1) = i_file.
    DATA(t2) = i_stat_node.
    DATA t4 TYPE string.
    t4 = me->build_fix_string( i_stat_node = t2 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    t14 = t2->get_first_token( ).
    DATA t16 TYPE REF TO zcl_lnt_position.
    t16 = t14->start.
    t9 = t16.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    t23 = t2->get_last_token( ).
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    t26 = t23.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA t29 TYPE f.
    DATA t31 TYPE REF TO zcl_lnt_position.
    t31 = t26->start.
    DATA t33 TYPE f.
    t33 = t31->row.
    t29 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t38 TYPE REF TO zcl_lnt_position.
    t38 = t26->start.
    DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t40 = t38->col.
    t36 = t40.
    DATA t42 TYPE f.
    DATA t44 TYPE string.
    t44 = t26->str.
    t42 = strlen( t44 ).
    DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t47->has = abap_true.
    t47->value = t42.
    t35 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ).
    t28 = NEW zcl_lnt_position( i_row = t29 i_col = t35 ).
    t18 = t28.
    t7 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t9 i_end = t18 i_text = t4 ).
    DATA t49 TYPE REF TO zcl_lnt_issue.
    DATA(t52) = |Use functional writing style for method calls|.
    DATA(t53) = VALUE string( ).
    DATA t54 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t55 TYPE string.
    t55 = |functional_writing|.
    DATA t57 TYPE string.
    t57 = |Use functional writing|.
    DATA t59 TYPE string.
    DATA(t60) = |Detects usage of call method when functional style calls can|.
    t60 = t60 && | be used.|.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t64) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t64 = t64 && |nABAP.md#prefer-functional-to-procedural-calls\nhttps://docs.|.
    t64 = t64 && |abapopenchecks.org/checks/07/|.
    DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t65->has = abap_true.
    t65->value = t64.
    t61 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t72.
    t71 = t72.
    DATA(t74) = |Styleguide|.
    t71->load( ).
    APPEND t74 TO t71->items.
    t71->save( ).
    DATA(t76) = |Quickfix|.
    t71->load( ).
    APPEND t76 TO t71->items.
    t71->save( ).
    DATA(t78) = |SingleFile|.
    t71->load( ).
    APPEND t78 TO t71->items.
    t71->save( ).
    t67 = t71.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t84) = |CALL METHOD zcl_class=>method( ).\nCALL METHOD cl_abap_typede|.
    t84 = t84 && |scr=>describe_by_name\n  EXPORTING\n    p_name         = 'NAME|.
    t84 = t84 && |'\n  RECEIVING\n    p_descr_ref    = lr_typedescr\n  EXCEPTIONS|.
    t84 = t84 && |\n    type_not_found = 1\n    OTHERS         = 2.|.
    DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t85->has = abap_true.
    t85->value = t84.
    t81 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t90) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
    t90 = t90 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
    t90 = t90 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
    t90 = t90 && |\n    OTHERS         = 2 ).|.
    DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t91->has = abap_true.
    t91->value = t90.
    t87 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t54 = NEW zcl_lnt_irule_metadata( i_key = t55 i_title = t57 i_short_description = t59 i_bad_example = t81 i_good_example = t87 i_extended_information = t61 i_tags = t67 i_pragma = t93 i_pseudo_comment = t95 ).
    CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
    t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t98 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t99 ).
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t100 ).
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t101 ).
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t102 ).
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
    t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t104) = |key|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    DATA(t106) = |title|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    DATA(t108) = |shortDescription|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
    ENDIF.
    DATA(t110) = |extendedInformation|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
    ENDIF.
    DATA(t112) = |tags|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    DATA(t114) = |badExample|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
    ENDIF.
    DATA(t116) = |goodExample|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
    ENDIF.
    t53 = t54->key.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t118 = me->conf->zlnt_view_read_sr_15c06369f827( ).
    DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t120 = t7.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t49 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t2 i_message_26cb = t52 i_key = t53 i_severity = t118 i_fix = t120 i_alternative_fixes = t124 ).
    result = t49.

  ENDMETHOD.

  METHOD build_fix_string.
    DATA(t1) = i_stat_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    t3 = t1->find_direct_expression( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    t8 = t3.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = xsdbool( t8 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t8.
      t14 = t15->concat_tokens( ).
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t14.
      t10 = t17.
    ENDIF.
    t6 = t10.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
    t19 = t1->find_direct_expression( i_type_9913 = t21 ).
    t18 = t19.
    DATA t22 TYPE string.
    t22 = ||.
    DATA t24 TYPE abap_bool.
    t24 = xsdbool( t18 IS BOUND ).
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t18.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t27 = t28->find_direct_expression( i_type_9913 = t30 ).
      t26 = t27.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t26 IS BOUND ).
      t31 = t32.
      IF t32 = abap_true.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE string.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        t38 = t26.
        t37 = t38->get_first_token( ).
        DATA t40 TYPE string.
        t40 = t37->str.
        t35 = t40.
        DATA(t42) = |(|.
        t34 = xsdbool( t35 = t42 ).
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA(t45) = ||.
        DATA t46 TYPE string.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        t47 = t18.
        t46 = t47->concat_tokens( ).
        DATA(t49) = strlen( t45 ).
        t44 = |{ t45 }{ t46 }|.
        DATA(t50) = |.|.
        DATA(t51) = strlen( t44 ).
        t43 = |{ t44 }{ t50 }|.
        t22 = t43.
      ELSE.
        DATA(t54) = VALUE string( ).
        DATA(t55) = VALUE string( ).
        DATA(t56) = ||.
        DATA(t57) = VALUE string( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t58 = t6.
        DATA(t60) = VALUE string( ).
        DATA(t61) = VALUE abap_bool( ).
        IF t58 IS INITIAL.
          t61 = abap_true.
        ELSEIF t58->has = abap_false.
          t61 = abap_true.
        ENDIF.
        IF t61 = abap_true.
          t60 = |undefined|.
        ELSE.
          DATA t64 TYPE string.
          t64 = t58->value.
          t60 = t64.
        ENDIF.
        t57 = t60.
        DATA(t66) = strlen( t56 ).
        t55 = |{ t56 }{ t57 }|.
        DATA(t67) = |( |.
        DATA(t68) = strlen( t55 ).
        t54 = |{ t55 }{ t67 }|.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = t54.
        t6 = t69.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA(t73) = ||.
        DATA t74 TYPE string.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        t75 = t18.
        t74 = t75->concat_tokens( ).
        DATA(t77) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        DATA(t78) = | ).|.
        DATA(t79) = strlen( t72 ).
        t71 = |{ t72 }{ t78 }|.
        t22 = t71.
      ENDIF.
    ELSE.
      t22 = |( ).|.
    ENDIF.
    DATA(t81) = VALUE string( ).
    DATA(t82) = VALUE string( ).
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t83 = t6.
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE abap_bool( ).
    IF t83 IS INITIAL.
      t86 = abap_true.
    ELSEIF t83->has = abap_false.
      t86 = abap_true.
    ENDIF.
    IF t86 = abap_true.
      t85 = |undefined|.
    ELSE.
      DATA t89 TYPE string.
      t89 = t83->value.
      t85 = t89.
    ENDIF.
    t82 = t85.
    DATA(t92) = strlen( t82 ).
    t81 = |{ t82 }{ t22 }|.
    result = t81.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_fnctnl_wrtng_cnf( me->gt_cn_in_sr_rl_fn_wr_ts_fn_wrt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fnctnl_wrtng_cnf.
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
        t1 = NEW zcl_lnt_fnctnl_wrtng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_fn_wr_ts_fn_wrt( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1520_e19dd372dc88.
  ENDMETHOD.
ENDCLASS.
