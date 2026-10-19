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
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
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
    DATA(t37) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
    t37 = t37 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
    t37 = t37 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
    t37 = t37 && |\n    OTHERS         = 2 ).|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |functional_writing| i_title = |Use functional writing| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
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
    CREATE OBJECT t3.
    DATA t5 TYPE abap_bool.
    t5 = abap_false.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_class.
      DATA t18 TYPE REF TO zcl_lnt_class.
      t18 ?= t2.
      t17 = t18.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      DATA t23 TYPE REF TO zcl_lnt_abap_file.
      t23 = t17->get_main_abap_file( ).
      DATA t26 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t23 IS INITIAL ) = abap_true.
      ELSE.
        t26 = t23->info.
      ENDIF.
      t21 = t26.
      DATA t36 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
      ELSE.
        DATA t41 TYPE REF TO zif_lnt_abap_file_information.
        t41 = t21.
        DATA t43 TYPE string.
        DATA t44 TYPE REF TO zcl_lnt_abstract_object.
        t44 = t17.
        t43 = t44->name.
        t36 = t41->get_class_definition_by_name( i_name = t43 ).
      ENDIF.
      t12 = t36.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_ddic.
    DATA(t50) = me->reg.
    t48 = NEW zcl_lnt_ddic( i_reg_f149 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t51 = t1->statements.
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
        t63 = xsdbool( t12 IS BOUND ).
      ENDIF.
      t62 = t63.
      IF t63 = abap_true.
        t62 = t48->is_exception( i_def = t12 i_obj_ac26 = t2 ).
      ENDIF.
      t61 = t62.
      IF t62 = abap_true.
        t61 = me->conf->zlnt_view_read_sr_73796bbbf173( ).
      ENDIF.
      IF t61 = abap_true.
        t5 = abap_true.
      ELSE.
        DATA t81 TYPE REF TO zif_lnt_statement.
        t81 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_end_class ) = abap_true.
          t5 = abap_false.
        ELSE.
          DATA t84 TYPE abap_bool.
          DATA t85 TYPE abap_bool.
          t85 = xsdbool( t5 = abap_false ).
          t84 = t85.
          IF t85 = abap_true.
            DATA t89 TYPE REF TO zif_lnt_statement.
            t89 = t56->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t84 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_call ).
          ENDIF.
          IF t84 = abap_true.
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
            IF xsdbool( t93 IS INITIAL ) = abap_true.
              CLEAR t107.
            ELSE.
              DATA t111 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t115 TYPE REF TO object.
              t115 = t93->get_db65( ).
              t111 ?= t115.
              t107 = t111.
            ENDIF.
            t92 = t107.
            IF xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_st_method_call_chain ) = abap_true.
              CONTINUE.
            ENDIF.
            DATA t118 TYPE REF TO zcl_lnt_expression_node.
            DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
            t118 = t56->find_direct_expression( i_type_9913 = t121 ).
            DATA t122 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t122.
            IF xsdbool( t118 IS INITIAL ) = abap_true.
              CLEAR t122.
            ELSE.
              DATA t127 TYPE REF TO zcl_lnt_expression_node.
              t127 = t118.
              DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
              t122 = t127->find_direct_expression( i_type_9913 = t129 ).
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF xsdbool( xsdbool( t122 IS INITIAL ) = abap_false ) = abap_true.
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
            t151 = t142->get_first_token( )->start.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            t168 = t142->get_last_token( ).
            DATA t171 TYPE f.
            t171 = t168->start->row.
            DATA t178 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t178 = t168->start->col.
            DATA t184 TYPE f.
            t184 = strlen( t168->str ).
            DATA(t189) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t189->has = abap_true.
            t189->value = t184.
            t149 = zcl_lnt_edit_helper=>replace_range( i_file = t140 i_start = t151 i_end = NEW zcl_lnt_position( i_row = t171 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t178 right = t189 op = `+` ) ) i_text = t146 ).
            DATA(t195) = VALUE string( ).
            DATA t196 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t196.
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
            CREATE OBJECT t213.
            t213->load( ).
            APPEND |Styleguide| TO t213->items.
            t213->save( ).
            t213->load( ).
            APPEND |Quickfix| TO t213->items.
            t213->save( ).
            t213->load( ).
            APPEND |SingleFile| TO t213->items.
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
            t196 = NEW zcl_lnt_irule_metadata( i_key = |functional_writing| i_title = |Use functional writing| i_short_description = t201 i_bad_example = t223 i_good_example = t229 i_extended_information = t203 i_tags = t209 i_pragma = t235 i_pseudo_comment = t237 ).
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
            DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t247.
            t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t247 ).
            DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t249.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t249 ).
            ENDIF.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t251 ).
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t253 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t255 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t257 ).
            ENDIF.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t259 ).
            ENDIF.
            t195 = t196->key.
            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t260 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t262.
            t262 = t149.
            DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t266.
            t139 = zcl_lnt_issue=>at_statement( i_file = t140 i_statement = t142 i_message_26cb = |Use functional writing style for method calls| i_key = t195 i_severity = t260 i_fix = t262 i_alternative_fixes = t266 ).
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
    t9 = t2->get_first_token( )->start.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    t26 = t2->get_last_token( ).
    DATA t29 TYPE f.
    t29 = t26->start->row.
    DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t36 = t26->start->col.
    DATA t42 TYPE f.
    t42 = strlen( t26->str ).
    DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t47->has = abap_true.
    t47->value = t42.
    t7 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t9 i_end = NEW zcl_lnt_position( i_row = t29 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ) ) i_text = t4 ).
    DATA(t53) = VALUE string( ).
    DATA t54 TYPE REF TO zcl_lnt_irule_metadata.
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
    CREATE OBJECT t71.
    t71->load( ).
    APPEND |Styleguide| TO t71->items.
    t71->save( ).
    t71->load( ).
    APPEND |Quickfix| TO t71->items.
    t71->save( ).
    t71->load( ).
    APPEND |SingleFile| TO t71->items.
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
    DATA(t90) = |zcl_class=>method( ).\ncl_abap_typedescr=>describe_by_name(\n |.
    t90 = t90 && | EXPORTING\n    p_name         = 'NAME'\n  RECEIVING\n    p_des|.
    t90 = t90 && |cr_ref    = lr_typedescr\n  EXCEPTIONS\n    type_not_found = 1|.
    t90 = t90 && |\n    OTHERS         = 2 ).|.
    DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t91->has = abap_true.
    t91->value = t90.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t54 = NEW zcl_lnt_irule_metadata( i_key = |functional_writing| i_title = |Use functional writing| i_short_description = t59 i_bad_example = t81 i_good_example = t91 i_extended_information = t61 i_tags = t67 i_pragma = t93 i_pseudo_comment = t95 ).
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
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t105 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t107 ).
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t109 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t111 ).
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t113 ).
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t115 ).
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t117 ).
    ENDIF.
    t53 = t54->key.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    result = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t2 i_message_26cb = |Use functional writing style for method calls| i_key = t53 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t7 i_alternative_fixes = t124 ).

  ENDMETHOD.

  METHOD build_fix_string.
    DATA(t1) = i_stat_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    t8 = t1->find_direct_expression( i_type_9913 = t5 ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      DATA t14 TYPE string.
      t14 = t8->concat_tokens( ).
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t14.
      t10 = t17.
    ENDIF.
    t6 = t10.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
    t18 = t1->find_direct_expression( i_type_9913 = t21 ).
    DATA t22 TYPE string.
    t22 = ||.
    IF xsdbool( t18 IS BOUND ) = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t18.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t26 = t28->find_direct_expression( i_type_9913 = t30 ).
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t26 IS BOUND ).
      t31 = t32.
      IF t32 = abap_true.
        DATA t40 TYPE string.
        t40 = t26->get_first_token( )->str.
        t31 = xsdbool( t40 = |(| ).
      ENDIF.
      IF t31 = abap_true.
        DATA t44 TYPE string.
        DATA(t45) = ||.
        DATA t46 TYPE string.
        t46 = t18->concat_tokens( ).
        DATA(t49) = strlen( t45 ).
        t44 = |{ t45 }{ t46 }|.
        DATA(t51) = strlen( t44 ).
        t22 = |{ t44 }{ |.| }|.
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
          t60 = t58->value.
        ENDIF.
        t57 = t60.
        DATA(t66) = strlen( t56 ).
        t55 = |{ t56 }{ t57 }|.
        DATA(t68) = strlen( t55 ).
        t54 = |{ t55 }{ |( | }|.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = t54.
        t6 = t69.
        DATA t72 TYPE string.
        DATA(t73) = ||.
        DATA t74 TYPE string.
        t74 = t18->concat_tokens( ).
        DATA(t77) = strlen( t73 ).
        t72 = |{ t73 }{ t74 }|.
        DATA(t79) = strlen( t72 ).
        t22 = |{ t72 }{ | ).| }|.
      ENDIF.
    ELSE.
      t22 = |( ).|.
    ENDIF.
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
      t85 = t83->value.
    ENDIF.
    t82 = t85.
    DATA(t92) = strlen( t82 ).
    result = |{ t82 }{ t22 }|.

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
