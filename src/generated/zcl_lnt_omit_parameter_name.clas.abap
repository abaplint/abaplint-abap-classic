* TS: src/rules/omit_parameter_name.ts:20:1 OmitParameterName
CLASS zcl_lnt_omit_parameter_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_om_pr_nm_ts_om_pr_nm IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_omit_parameter_name.
    METHODS g_c_i_s_r_om_pr_nm_ts_om_pr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS s_c_i_s_r_om_pr_nm_ts_om_pr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_method_reference IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_parameter_name IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_omt_prmtr_nm_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
    t11 = t11 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
    t11 = t11 && |\nEXPORTING must already be omitted for this rule to take eff|.
    t11 = t11 && |ect, https://rules.abaplint.org/exporting/|.
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
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |method( param = 2 ).|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |method( 2 ).|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |omit_parameter_name| i_title = |Omit parameter name| i_short_description = |Omit the parameter name in single parameter calls| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_om_pr_nm_ts_om_pr_nm.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_r_om_pr_nm_ts_om_pr_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_om_pr_nm_ts_om_pr_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t10 TYPE REF TO zcl_lnt_abap_object.
      t10 ?= t1.
      t4 = xsdbool( t10->get_type( ) = |INTF| ).
    ENDIF.
    IF t4 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t19) = me->reg.
    DATA t20 TYPE REF TO zcl_lnt_abap_object.
    t20 ?= t1.
    t15 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t19 i_object_19cd = t20 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    t25 ?= t1.
    t23 = t25->parsed.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t23->load( ).
      IF t32 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t23->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_structure_node.
      t35 = t30->structure.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      IF xsdbool( t35 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t49 TYPE REF TO zcl_lnt_structure_node.
      t49 = t35.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t48 = t49->find_all_expressions( i_type_9913 = t51 ).
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      DATA(t54) = VALUE i( ).
      DO.
        t48->load( ).
        IF t54 >= lines( t48->items ).
          EXIT.
        ENDIF.
        CLEAR t53.
        READ TABLE t48->items INDEX t54 + 1 INTO t53.
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
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
        t58 = t52->find_first_expression( i_type_9913 = t60 ).
        IF xsdbool( t58 IS BOUND ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
        t61 = t52->find_all_expressions( i_type_9913 = t64 ).
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE abap_bool.
        t61->load( ).
        t66 = xsdbool( lines( t61->items ) > 1 ).
        t65 = t66.
        IF t66 = abap_false.
          t61->load( ).
          t65 = xsdbool( lines( t61->items ) = 0 ).
        ENDIF.
        IF t65 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t74 TYPE REF TO zcl_lnt_expression_node.
        DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t74 = t52->find_direct_expression( i_type_9913 = t77 ).
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF xsdbool( t74 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t86 = t52->find_direct_expression( i_type_9913 = t88 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF xsdbool( t86 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t96 TYPE REF TO zif_lnt_method_parameters.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        t98 = t74->get_first_token( ).
        DATA t102 TYPE string.
        DATA t103 TYPE REF TO zcl_lnt_abstract_file.
        t103 = t30.
        t102 = t103->filename.
        t96 = me->find_method_reference( i_token = t98 i_spaghetti = t15 i_filename = t102 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF xsdbool( t96 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t114 = t96->get_default_importing( ).
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t119 = t114.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        DATA(t123) = VALUE abap_bool( ).
        IF t119 IS INITIAL.
          t123 = abap_true.
        ELSEIF t119->has = abap_false.
          t123 = abap_true.
        ENDIF.
        IF t123 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t125.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t129.
        DATA t131 TYPE REF TO object.
        CLEAR t131.
        t61->load( ).
        CLEAR t131.
        READ TABLE t61->items INDEX 1 INTO t131.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        CLEAR t129.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t132 ?= t131.
          DATA t133 TYPE REF TO object.
          t133 = t132->as_ref( ).
          t129 ?= t133.
        ELSE.
          t129 ?= t131.
        ENDIF.
        DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t127 = t129->find_direct_expression( i_type_9913 = t134 ).
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t135.
        IF xsdbool( t127 IS INITIAL ) = abap_true.
          CLEAR t135.
        ELSE.
          t135 = t127->get_first_token( ).
        ENDIF.
        t125 = t135.
        DATA(t142) = VALUE abap_bool( ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        t146 = t125.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        IF xsdbool( t146 IS INITIAL ) = abap_true.
          CLEAR t148.
        ELSE.
          DATA t156 TYPE string.
          t156 = t146->str.
          DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t158->has = abap_true.
          t158->value = t156.
          t148 = t158.
        ENDIF.
        t144 = t148.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        DATA(t160) = VALUE abap_bool( ).
        IF t144 IS INITIAL.
          t160 = abap_true.
        ELSEIF t144->has = abap_false.
          t160 = abap_true.
        ENDIF.
        IF t160 = abap_true.
          CLEAR t159.
        ELSE.
          DATA t163 TYPE string.
          DATA t164 TYPE string.
          t164 = t144->value.
          DATA(t166) = strlen( t164 ).
          t163 = t164.
          IF t163 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t163 TO UPPER CASE.
          ELSE.
            t163 = zlnt_runtime_uppe_91169605024d=>full( t163 ).
          ENDIF.
          DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t167->has = abap_true.
          t167->value = t163.
          t159 = t167.
        ENDIF.
        t143 = t159.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        DATA t170 TYPE string.
        DATA t171 TYPE string.
        t171 = t114->value.
        DATA(t173) = strlen( t171 ).
        t170 = t171.
        IF t170 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t170 TO UPPER CASE.
        ELSE.
          t170 = zlnt_runtime_uppe_91169605024d=>full( t170 ).
        ENDIF.
        DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t174->has = abap_true.
        t174->value = t170.
        t168 = t174.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = VALUE abap_bool( ).
        IF t143 IS BOUND.
          t176 = t143->has.
        ENDIF.
        IF t168 IS BOUND.
          t177 = t168->has.
        ENDIF.
        IF t176 = t177.
          IF t176 = abap_false.
            t142 = abap_true.
          ELSEIF t143->value = t168->value.
            t142 = abap_true.
          ENDIF.
        ENDIF.
        IF t142 = abap_true.
          DATA t178 TYPE string.
          DATA t180 TYPE string.
          DATA(t181) = |Omit default parameter name "|.
          DATA t182 TYPE string.
          t182 = t114->value.
          DATA(t184) = strlen( t181 ).
          t180 = |{ t181 }{ t182 }|.
          DATA(t186) = strlen( t180 ).
          t178 = |{ t180 }{ |"| }|.
          DATA t187 TYPE REF TO zcl_lnt_position.
          CLEAR t187.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA t191 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t191.
          DATA t193 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t193.
          DATA t195 TYPE REF TO object.
          CLEAR t195.
          t61->load( ).
          CLEAR t195.
          READ TABLE t61->items INDEX 1 INTO t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          CLEAR t193.
          IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t196 ?= t195.
            DATA t197 TYPE REF TO object.
            t197 = t196->as_ref( ).
            t193 ?= t197.
          ELSE.
            t193 ?= t195.
          ENDIF.
          DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t191 = t193->find_direct_expression( i_type_9913 = t198 ).
          DATA t199 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t199.
          IF xsdbool( t191 IS INITIAL ) = abap_true.
            CLEAR t199.
          ELSE.
            t199 = t191->get_first_token( ).
          ENDIF.
          t189 = t199.
          DATA t206 TYPE REF TO zcl_lnt_position.
          CLEAR t206.
          IF xsdbool( t189 IS INITIAL ) = abap_true.
            CLEAR t206.
          ELSE.
            t206 = t189->start.
          ENDIF.
          t187 = t206.
          IF xsdbool( t187 IS BOUND ) = abap_true.
            DATA t219 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t221 TYPE REF TO zcl_lnt_position.
            t221 = t125->start.
            t219 = zcl_lnt_edit_helper=>delete_range( i_file = t30 i_start = t221 i_end = t187 ).
            DATA t230 TYPE REF TO zcl_lnt_issue.
            CLEAR t230.
            DATA t232 TYPE REF TO zcl_lnt_position.
            t232 = t125->start.
            DATA t238 TYPE REF TO zcl_lnt_position.
            t238 = t187.
            DATA(t241) = VALUE string( ).
            DATA t242 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA(t252) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t252 = t252 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
            t252 = t252 && |\nEXPORTING must already be omitted for this rule to take eff|.
            t252 = t252 && |ect, https://rules.abaplint.org/exporting/|.
            DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t253->has = abap_true.
            t253->value = t252.
            t249 = t253.
            DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t255.
            DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t259.
            t259->load( ).
            APPEND |Styleguide| TO t259->items.
            t259->save( ).
            t259->load( ).
            APPEND |Quickfix| TO t259->items.
            t259->save( ).
            t255 = t259.
            DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t267.
            DATA(t271) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t271->has = abap_true.
            t271->value = |method( param = 2 ).|.
            t267 = t271.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t277->has = abap_true.
            t277->value = |method( 2 ).|.
            t273 = t277.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t279.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            t242 = NEW zcl_lnt_irule_metadata( i_key = |omit_parameter_name| i_title = |Omit parameter name| i_short_description = |Omit the parameter name in single parameter calls| i_bad_example = t267 i_good_example = t273 i_extended_information = t249 i_tags = t255 i_pragma = t279 i_pseudo_comment = t281 ).
            CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
            t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t283.
            t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t283 ).
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t284 ).
            ENDIF.
            DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t285.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t285 ).
            ENDIF.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t286 ).
            ENDIF.
            DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t287.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t287 ).
            ENDIF.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t288 ).
            ENDIF.
            DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t289.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t289 ).
            ENDIF.
            CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
            t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t291.
            t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t291 ).
            DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t293.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t293 ).
            ENDIF.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t295.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t295 ).
            ENDIF.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t297.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t297 ).
            ENDIF.
            DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t299.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t299 ).
            ENDIF.
            DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t301.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t301 ).
            ENDIF.
            DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t303.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t303 ).
            ENDIF.
            t241 = t242->key.
            DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t304 = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) )->zlnt_view_read_sr_15c06369f827( ).
            DATA t306 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t306.
            t306 = t219.
            DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t310.
            t230 = zcl_lnt_issue=>at_range( i_file = t30 i_start = t232 i_end = t238 i_message_26cb = t178 i_key = t241 i_severity = t304 i_fix = t306 i_alternative_fixes = t310 ).
            t2->load( ).
            APPEND t230 TO t2->items.
            t2->save( ).
          ELSE.
            DATA t312 TYPE REF TO zcl_lnt_issue.
            CLEAR t312.
            DATA t314 TYPE REF TO zcl_lnt_abstract_token.
            t314 = t74->get_first_token( ).
            DATA(t318) = VALUE string( ).
            DATA t319 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t326.
            DATA(t329) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t329 = t329 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
            t329 = t329 && |\nEXPORTING must already be omitted for this rule to take eff|.
            t329 = t329 && |ect, https://rules.abaplint.org/exporting/|.
            DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t330->has = abap_true.
            t330->value = t329.
            t326 = t330.
            DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t332.
            DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t336.
            t336->load( ).
            APPEND |Styleguide| TO t336->items.
            t336->save( ).
            t336->load( ).
            APPEND |Quickfix| TO t336->items.
            t336->save( ).
            t332 = t336.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t348->has = abap_true.
            t348->value = |method( param = 2 ).|.
            t344 = t348.
            DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t350.
            DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t354->has = abap_true.
            t354->value = |method( 2 ).|.
            t350 = t354.
            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t356.
            DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t358.
            t319 = NEW zcl_lnt_irule_metadata( i_key = |omit_parameter_name| i_title = |Omit parameter name| i_short_description = |Omit the parameter name in single parameter calls| i_bad_example = t344 i_good_example = t350 i_extended_information = t326 i_tags = t332 i_pragma = t356 i_pseudo_comment = t358 ).
            CREATE OBJECT t319->zlnt_view_ownkeys_b0e8086400eb.
            t319->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t360 ).
            DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t361.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t361 ).
            ENDIF.
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t362.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t362 ).
            ENDIF.
            DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t363.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t363 ).
            ENDIF.
            DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t364.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t364 ).
            ENDIF.
            DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t365.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t365 ).
            ENDIF.
            DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t366.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t366 ).
            ENDIF.
            CREATE OBJECT t319->zlnt_json_ownkeys_70e5fd461788.
            t319->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t368.
            t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t368 ).
            DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t370.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t370 ).
            ENDIF.
            DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t372.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t372 ).
            ENDIF.
            DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t374.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t374 ).
            ENDIF.
            DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t376.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t376 ).
            ENDIF.
            DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t378.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t378 ).
            ENDIF.
            DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t380.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t380 ).
            ENDIF.
            t318 = t319->key.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t381 = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) )->zlnt_view_read_sr_15c06369f827( ).
            DATA t383 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t383.
            t312 = zcl_lnt_issue=>at_token( i_file = t30 i_token = t314 i_message_26cb = t178 i_key = t318 i_severity = t381 i_fix = t383 ).
            t2->load( ).
            APPEND t312 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_method_reference.
    DATA(t1) = i_token.
    DATA(t3) = i_filename.
    DATA t4 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t6) = i_spaghetti.
    DATA t7 TYPE REF TO zcl_lnt_position.
    t7 = t1->start.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t3.
    t4 = t6->lookup_position( i_p = t7 i_filename = t18 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t28 = t4->get_data( )->references.
    DATA t32 TYPE REF TO zcl_lnt_ireference.
    DATA t33 TYPE REF TO object.
    DATA(t34) = VALUE i( ).
    DO.
      t28->load( ).
      IF t34 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t28->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t32->reference_type <> |Method| ).
      t37 = t38.
      IF t38 = abap_true.
        t37 = xsdbool( t32->reference_type <> |Builtin Method| ).
      ENDIF.
      IF t37 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t47 TYPE REF TO zcl_lnt_position.
      t47 = t32->position_7b94->token->start.
      DATA t57 TYPE REF TO zcl_lnt_position.
      t57 = t1->start.
      IF t47->equals( i_p = t57 ) = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
        t63 = t32->resolved.
        IF xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_built_in_method ) = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_built_in_method.
          t65 ?= t32->resolved.
          result = t65.
          RETURN.
        ELSE.
          DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
          t69 = t32->resolved.
          IF xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_method_definition ) = abap_true.
            DATA t72 TYPE REF TO zcl_lnt_method_definition.
            t72 ?= t32->resolved.
            result = t72->g_p_in_sr_ab_ty_mt_df_ts_mt_df( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.

    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_om_pr_nm_ts_om_pr_nm( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_omt_prmtr_nm_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_om_pr_nm_ts_om_pr_nm( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1635_f8f587679206.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
