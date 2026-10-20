* TS: src/rules/prefix_is_current_class.ts:21:1 PrefixIsCurrentClass
CLASS zcl_lnt_prfx_is_crrnt_clss DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_i_c_c_t_p_is_cr_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS s_c_i_s_r_p_i_c_c_t_p_is_cr_cl IMPORTING i_conf TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
    METHODS r_p_i_s_r_p_i_c_c_t_p_is_cr_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_interfaces IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_classes IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_static_references IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_shadowed_names IMPORTING i_struc TYPE REF TO zcl_lnt_structure_node i_impl TYPE REF TO zcl_lnt_structure_node i_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__da87443eb676.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfx_is_crrnt_clss IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfx_is_crrnt_clss_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Reports errors if the current class or interface references |.
    t7 = t7 && |itself with "current_class=>"|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
    t11 = t11 && |-attribute-or-method|.
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
    DATA(t31) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
    t31 = t31 && |ETHOD.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefix_is_current_class| i_title = |Prefix is current class| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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

  METHOD g_c_i_s_r_p_i_c_c_t_p_is_cr_cl.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_i_c_c_t_p_is_cr_cl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_i_c_c_t_p_is_cr_cl.
    DATA(t1) = i_file.
    result = me->check_classes( i_file = t1 )->concat( p0 = me->check_interfaces( i_file = t1 ) ).

  ENDMETHOD.

  METHOD check_interfaces.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_structure_node.
    t2 = t1->structure.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t2.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t18 = t19->find_direct_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t31.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t33 = t22->find_first_expression( i_type_9913 = t36 ).
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
        CLEAR t37.
      ELSE.
        t37 = t33->get_first_token( ).
      ENDIF.
      t31 = t37.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      IF xsdbool( t31 IS INITIAL ) = abap_true.
        CLEAR t44.
      ELSE.
        DATA t52 TYPE string.
        t52 = t31->str.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t52.
        t44 = t54.
      ENDIF.
      t29 = t44.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      IF t29 IS INITIAL.
        t56 = abap_true.
      ELSEIF t29->has = abap_false.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        CLEAR t55.
      ELSE.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        t60 = t29->value.
        DATA(t62) = strlen( t60 ).
        t59 = t60.
        IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t59 TO UPPER CASE.
        ELSE.
          t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
        ENDIF.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t59.
        t55 = t63.
      ENDIF.
      t27 = t55.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t65 = t27.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA(t69) = VALUE abap_bool( ).
      IF t65 IS INITIAL.
        t69 = abap_true.
      ELSEIF t65->has = abap_false.
        t69 = abap_true.
      ENDIF.
      IF t69 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t71 TYPE string.
      DATA t73 TYPE string.
      t73 = t27->value.
      DATA(t76) = strlen( t73 ).
      t71 = |{ t73 }{ |=>| }|.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t77 = t22->find_all_expressions( i_type_9913 = t79 ).
      DATA t80 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      DATA(t82) = VALUE i( ).
      DO.
        t77->load( ).
        IF t82 >= lines( t77->items ).
          EXIT.
        ENDIF.
        CLEAR t81.
        READ TABLE t77->items INDEX t82 + 1 INTO t81.
        t82 = t82 + 1.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t80.
        IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t81.
          DATA t84 TYPE REF TO object.
          t84 = t83->as_ref( ).
          t80 ?= t84.
        ELSE.
          t80 ?= t81.
        ENDIF.
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE string.
        DATA t87 TYPE string.
        t87 = t80->concat_tokens( ).
        DATA(t89) = strlen( t87 ).
        t86 = t87.
        IF t86 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t86 TO UPPER CASE.
        ELSE.
          t86 = zlnt_runtime_uppe_91169605024d=>full( t86 ).
        ENDIF.
        t85 = t86.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t93) = strlen( t85 ).
        DATA t94 TYPE i.
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE string( ).
        t94 = strlen( t71 ).
        IF t94 = 0.
          t90 = abap_true.
        ELSEIF t94 <= t93.
          t95 = 0.
          t96 = t85+t95(t94).
          IF t96 = t71.
            t90 = abap_true.
          ENDIF.
        ENDIF.
        IF t90 = abap_true.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          t97 = t80->find_direct_token_by_text( i_text = |=>| ).
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF xsdbool( t97 IS INITIAL ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t109 TYPE REF TO zcl_lnt_position.
          DATA t110 TYPE f.
          t110 = t97->start->row.
          DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t121 = t97->start->col.
          DATA t131 TYPE f.
          t131 = strlen( t27->value ).
          DATA(t136) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t136->has = abap_true.
          t136->value = t131.
          t109 = NEW zcl_lnt_position( i_row = t110 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t136 op = `-` ) ).
          DATA t139 TYPE f.
          t139 = t97->start->row.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t150 = t97->start->col.
          DATA(t161) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t161->has = abap_true.
          t161->value = CONV f( 2 ).
          DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t163 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t109 i_end = NEW zcl_lnt_position( i_row = t139 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t150 right = t161 op = `+` ) ) ).
          DATA t168 TYPE REF TO zcl_lnt_issue.
          CLEAR t168.
          DATA t170 TYPE REF TO zcl_lnt_abstract_token.
          t170 = t80->get_first_token( ).
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t179 TYPE string.
          DATA(t180) = |Reports errors if the current class or interface references |.
          t180 = t180 && |itself with "current_class=>"|.
          t179 = t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          DATA(t184) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t184 = t184 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
          t184 = t184 && |-attribute-or-method|.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t184.
          t181 = t185.
          DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t187.
          DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t191.
          t191->load( ).
          APPEND |Styleguide| TO t191->items.
          t191->save( ).
          t191->load( ).
          APPEND |Quickfix| TO t191->items.
          t191->save( ).
          t191->load( ).
          APPEND |SingleFile| TO t191->items.
          t191->save( ).
          t187 = t191.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA(t204) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
          t204 = t204 && |ETHOD.|.
          DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t205->has = abap_true.
          t205->value = t204.
          t201 = t205.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
          t207 = t211.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          t174 = NEW zcl_lnt_irule_metadata( i_key = |prefix_is_current_class| i_title = |Prefix is current class| i_short_description = t179 i_bad_example = t201 i_good_example = t207 i_extended_information = t181 i_tags = t187 i_pragma = t213 i_pseudo_comment = t215 ).
          CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
          t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t217 ).
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t218 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t220 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t221 ).
          ENDIF.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t222 ).
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t223 ).
          ENDIF.
          CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
          t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t225 ).
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t227 ).
          ENDIF.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t229 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t231 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t233 ).
          ENDIF.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t235 ).
          ENDIF.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t237 ).
          ENDIF.
          t173 = t174->key.
          t168 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t170 i_message_26cb = |Reference to current interface can be omitted| i_key = t173 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t163 ).
          t16->load( ).
          APPEND t168 TO t16->items.
          t16->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t16.

  ENDMETHOD.

  METHOD check_classes.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_structure_node.
    t2 = t1->structure.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t2.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
    t18 = t20->find_direct_structures( i_type_9913 = t22 ).
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    t25 = t2.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t24 = t25->find_direct_structures( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t24->load( ).
      IF t30 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t24->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      t18->load( ).
      APPEND t28 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t23 = lines( t18->items ).
    DATA t37 TYPE string.
    t37 = |ME->|.
    DATA t40 TYPE REF TO zcl_lnt_structure_node.
    DATA t41 TYPE REF TO object.
    DATA(t42) = VALUE i( ).
    DO.
      t18->load( ).
      IF t42 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t18->items INDEX t42 + 1 INTO t41.
      t42 = t42 + 1.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      CLEAR t40.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t43 ?= t41.
        DATA t44 TYPE REF TO object.
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA(t45) = VALUE string( ).
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t47 = t40->find_first_expression( i_type_9913 = t53 )->get_first_token( )->str.
      DATA(t56) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t45 = t46.
      DATA t57 TYPE string.
      DATA(t61) = strlen( t45 ).
      t57 = |{ t45 }{ |=>| }|.
      DATA t62 TYPE REF TO zlnt_runtime_map__da87443eb676.
      t62 = me->build_shadowed_names( i_struc = t2 i_impl = t40 i_class_name = t45 ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t68 = t40->find_all_statement_nodes( ).
      DATA t70 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      DATA(t72) = VALUE i( ).
      DO.
        t68->load( ).
        IF t72 >= lines( t68->items ).
          EXIT.
        ENDIF.
        CLEAR t71.
        READ TABLE t68->items INDEX t72 + 1 INTO t71.
        t72 = t72 + 1.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t70.
        IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t73 ?= t71.
          DATA t74 TYPE REF TO object.
          t74 = t73->as_ref( ).
          t70 ?= t74.
        ELSE.
          t70 ?= t71.
        ENDIF.
        DATA(t75) = VALUE string( ).
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        t77 = t70->cnct_tkns_wtht_strng_and_cmmnt( ).
        DATA(t79) = strlen( t77 ).
        t76 = t77.
        IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t76 TO UPPER CASE.
        ELSE.
          t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
        ENDIF.
        t75 = t76.
        DATA(t81) = VALUE i( ).
        DATA(t84) = strlen( t75 ).
        IF t57 IS INITIAL.
          t81 = 0.
        ELSE.
          FIND t57 IN t75 MATCH OFFSET t81.
          IF sy-subrc <> 0.
            t81 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t81 >= 0 ) = abap_true.
          DATA t86 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          t86 = t62->get( p0 = t70 ).
          DATA t90 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          CLEAR t90.
          DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t92 = me->find_static_references( i_s = t70 i_class_name = t45 ).
          DATA t96 TYPE i.
          t92->load( ).
          t96 = lines( t92->items ).
          DATA t99 TYPE i.
          t99 = 0.
          DATA t101 TYPE REF TO zcl_lnt_shape_5bd99ac8.
          CLEAR t101.
          DO.
            IF xsdbool( t99 < t96 ) = abap_false.
              EXIT.
            ENDIF.
            DATA t106 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            CLEAR t106.
            DATA t108 TYPE REF TO zcl_lnt_shape_5bd99ac8.
            CLEAR t108.
            DATA t111 TYPE REF TO object.
            t111 = t92->get( p0 = t99 ).
            DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t112.
            CLEAR t108.
            IF t111 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t112 ?= t111.
              DATA t113 TYPE REF TO object.
              t113 = t112->as_ref( ).
              t108 ?= t113.
            ELSE.
              t108 ?= t111.
            ENDIF.
            t106 = t108.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = VALUE abap_bool( ).
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t116 = t106->member.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            DATA(t121) = VALUE abap_bool( ).
            IF t116 IS INITIAL.
              t121 = abap_true.
            ELSEIF t116->has = abap_false.
              t121 = abap_true.
            ENDIF.
            t115 = t121.
            t114 = t115.
            IF t115 = abap_false.
              DATA(t123) = VALUE abap_bool( ).
              DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t124.
              DATA t125 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              t125 = t86.
              DATA t127 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t127.
              IF xsdbool( t125 IS INITIAL ) = abap_true.
                CLEAR t127.
              ELSE.
                DATA t131 TYPE abap_bool.
                DATA t132 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
                t132 = t125.
                DATA t134 TYPE string.
                t134 = t106->member->value.
                t131 = t132->has( p0 = t134 ).
                DATA(t137) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t137->has = abap_true.
                t137->value = t131.
                t127 = t137.
              ENDIF.
              t124 = t127.
              DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t141) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t141->has = abap_true.
              t141->value = abap_true.
              t138 = t141.
              DATA(t143) = VALUE abap_bool( ).
              DATA(t144) = VALUE abap_bool( ).
              IF t124 IS BOUND.
                t143 = t124->has.
              ENDIF.
              IF t138 IS BOUND.
                t144 = t138->has.
              ENDIF.
              IF t143 = t144.
                IF t143 = abap_false.
                  t123 = abap_true.
                ELSEIF t124->value = t138->value.
                  t123 = abap_true.
                ENDIF.
              ENDIF.
              IF t123 = abap_true.
                t123 = abap_false.
              ELSE.
                t123 = abap_true.
              ENDIF.
              t114 = t123.
            ENDIF.
            IF t114 = abap_true.
              t101 = t106.
              EXIT.
            ENDIF.
            DATA(t151) = 1.
            t99 = t99 + t151.
          ENDDO.
          t90 = t101.
          IF xsdbool( t90 IS BOUND ) = abap_true.
            DATA t155 TYPE REF TO zcl_lnt_position.
            t155 = t90->pos.
            DATA t159 TYPE REF TO zcl_lnt_position.
            DATA t161 TYPE f.
            t161 = t155->row.
            DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t168 = t155->col.
            DATA t173 TYPE f.
            t173 = strlen( t45 ).
            DATA(t177) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t177->has = abap_true.
            t177->value = t173.
            t167 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t168 right = t177 op = `+` ).
            DATA(t179) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t179->has = abap_true.
            t179->value = CONV f( 2 ).
            t159 = NEW zcl_lnt_position( i_row = t161 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t167 right = t179 op = `+` ) ).
            DATA t181 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t181 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t155 i_end = t159 ).
            DATA t186 TYPE REF TO zcl_lnt_issue.
            CLEAR t186.
            DATA t190 TYPE string.
            DATA t191 TYPE string.
            DATA(t192) = |Reference to current class can be omitted: "|.
            DATA(t194) = strlen( t192 ).
            t191 = |{ t192 }{ t57 }|.
            DATA(t196) = strlen( t191 ).
            t190 = |{ t191 }{ |"| }|.
            DATA(t197) = VALUE string( ).
            DATA t198 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t203 TYPE string.
            DATA(t204) = |Reports errors if the current class or interface references |.
            t204 = t204 && |itself with "current_class=>"|.
            t203 = t204.
            DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t205.
            DATA(t208) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t208 = t208 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
            t208 = t208 && |-attribute-or-method|.
            DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t209->has = abap_true.
            t209->value = t208.
            t205 = t209.
            DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t211.
            DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t215.
            t215->load( ).
            APPEND |Styleguide| TO t215->items.
            t215->save( ).
            t215->load( ).
            APPEND |Quickfix| TO t215->items.
            t215->save( ).
            t215->load( ).
            APPEND |SingleFile| TO t215->items.
            t215->save( ).
            t211 = t215.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t225.
            DATA(t228) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
            t228 = t228 && |ETHOD.|.
            DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t229->has = abap_true.
            t229->value = t228.
            t225 = t229.
            DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t231.
            DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t235->has = abap_true.
            t235->value = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
            t231 = t235.
            DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t237.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            t198 = NEW zcl_lnt_irule_metadata( i_key = |prefix_is_current_class| i_title = |Prefix is current class| i_short_description = t203 i_bad_example = t225 i_good_example = t231 i_extended_information = t205 i_tags = t211 i_pragma = t237 i_pseudo_comment = t239 ).
            CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
            t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t241 ).
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t242 ).
            ENDIF.
            DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t243.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t243 ).
            ENDIF.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t244 ).
            ENDIF.
            DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t245.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t245 ).
            ENDIF.
            DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t246.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t246 ).
            ENDIF.
            DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t247.
            IF t198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t247 ).
            ENDIF.
            CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
            t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t249.
            t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t249 ).
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t251 ).
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t253 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t255 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t257 ).
            ENDIF.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t259 ).
            ENDIF.
            DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t261.
            IF t198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t261 ).
            ENDIF.
            t197 = t198->key.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t262 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t264 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t264.
            t264 = t181.
            DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t268.
            t186 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t155 i_end = t159 i_message_26cb = t190 i_key = t197 i_severity = t262 i_fix = t264 i_alternative_fixes = t268 ).
            t16->load( ).
            APPEND t186 TO t16->items.
            t16->save( ).
          ENDIF.
        ELSE.
          DATA(t269) = VALUE abap_bool( ).
          DATA t270 TYPE abap_bool.
          DATA t271 TYPE abap_bool.
          DATA t272 TYPE abap_bool.
          t272 = me->conf->zlnt_view_read_sr_c6cd031b1202( ).
          t271 = xsdbool( t272 = abap_true ).
          t270 = t271.
          IF t271 = abap_true.
            DATA(t276) = VALUE i( ).
            DATA(t279) = strlen( t75 ).
            IF t37 IS INITIAL.
              t276 = 0.
            ELSE.
              FIND t37 IN t75 MATCH OFFSET t276.
              IF sy-subrc <> 0.
                t276 = -1.
              ENDIF.
            ENDIF.
            t270 = xsdbool( t276 >= 0 ).
          ENDIF.
          t269 = t270.
          IF t270 = abap_true.
            DATA t282 TYPE REF TO zcl_lnt_expression_node.
            DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
            t282 = t70->find_first_expression( i_type_9913 = t284 ).
            t269 = xsdbool( t282 IS BOUND ).
          ENDIF.
          IF t269 = abap_true.
            DATA t285 TYPE REF TO zcl_lnt_position.
            t285 = t70->find_token_sequence_position( i_first = |me| i_second = |->| ).
            IF xsdbool( t285 IS BOUND ) = abap_true.
              DATA t292 TYPE REF TO zcl_lnt_position.
              DATA t294 TYPE f.
              t294 = t285->row.
              DATA t301 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              t301 = t285->col.
              DATA(t308) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t308->has = abap_true.
              t308->value = CONV f( 4 ).
              t292 = NEW zcl_lnt_position( i_row = t294 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t301 right = t308 op = `+` ) ).
              DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t310 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t285 i_end = t292 ).
              DATA t316 TYPE REF TO zcl_lnt_issue.
              CLEAR t316.
              DATA t318 TYPE REF TO zcl_lnt_position.
              t318 = t285.
              DATA(t322) = VALUE string( ).
              DATA t323 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t328 TYPE string.
              DATA(t329) = |Reports errors if the current class or interface references |.
              t329 = t329 && |itself with "current_class=>"|.
              t328 = t329.
              DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t330.
              DATA(t333) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t333 = t333 && |nABAP.md#omit-the-self-reference-me-when-calling-an-instance|.
              t333 = t333 && |-attribute-or-method|.
              DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t334->has = abap_true.
              t334->value = t333.
              t330 = t334.
              DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t336.
              DATA t340 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t340.
              t340->load( ).
              APPEND |Styleguide| TO t340->items.
              t340->save( ).
              t340->load( ).
              APPEND |Quickfix| TO t340->items.
              t340->save( ).
              t340->load( ).
              APPEND |SingleFile| TO t340->items.
              t340->save( ).
              t336 = t340.
              DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t350.
              DATA(t353) = |METHOD run.\n  zcl_current=>helper( ).\n  me->do_work( ).\nENDM|.
              t353 = t353 && |ETHOD.|.
              DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t354->has = abap_true.
              t354->value = t353.
              t350 = t354.
              DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t356.
              DATA(t360) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t360->has = abap_true.
              t360->value = |METHOD run.\n  helper( ).\n  do_work( ).\nENDMETHOD.|.
              t356 = t360.
              DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t362.
              DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t364.
              t323 = NEW zcl_lnt_irule_metadata( i_key = |prefix_is_current_class| i_title = |Prefix is current class| i_short_description = t328 i_bad_example = t350 i_good_example = t356 i_extended_information = t330 i_tags = t336 i_pragma = t362 i_pseudo_comment = t364 ).
              CREATE OBJECT t323->zlnt_view_ownkeys_b0e8086400eb.
              t323->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t366 ).
              DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t367.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t367 ).
              ENDIF.
              DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t368.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t368 ).
              ENDIF.
              DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t369.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t369 ).
              ENDIF.
              DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t370.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t370 ).
              ENDIF.
              DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t371.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t371 ).
              ENDIF.
              DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t372.
              IF t323->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t323->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t372 ).
              ENDIF.
              CREATE OBJECT t323->zlnt_json_ownkeys_70e5fd461788.
              t323->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t374.
              t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t374 ).
              DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t376.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t376 ).
              ENDIF.
              DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t378.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t378 ).
              ENDIF.
              DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t380.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t380 ).
              ENDIF.
              DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t382.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t382 ).
              ENDIF.
              DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t384.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t384 ).
              ENDIF.
              DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t386.
              IF t323->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t323->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t386 ).
              ENDIF.
              t322 = t323->key.
              DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t387 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t389 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t389.
              t389 = t310.
              DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t393.
              t316 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t318 i_end = t292 i_message_26cb = |Omit 'me->' in instance calls| i_key = t322 i_severity = t387 i_fix = t389 i_alternative_fixes = t393 ).
              t16->load( ).
              APPEND t316 TO t16->items.
              t16->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t16.

  ENDMETHOD.

  METHOD find_static_references.
    DATA(t1) = i_s.
    DATA(t2) = i_class_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->get_tokens( ).
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t9->load( ).
      IF t13 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t9->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      IF xsdbool( xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_false ) = abap_true.
        t7->load( ).
        APPEND t11 TO t7->items.
        t7->save( ).
      ENDIF.
    ENDDO.
    t5 = t7.
    DATA t22 TYPE i.
    t22 = 0.
    DO.
      DATA t26 TYPE i.
      DATA t27 TYPE i.
      t5->load( ).
      t27 = lines( t5->items ).
      DATA(t29) = 1.
      t26 = t27 - t29.
      IF xsdbool( t22 < t26 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t35.
      DATA(t37) = t22.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      t5->load( ).
      CLEAR t38.
      READ TABLE t5->items INDEX t37 INTO t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t35.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t38.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t35 ?= t40.
      ELSE.
        t35 ?= t38.
      ENDIF.
      t33 = t35->str.
      DATA(t43) = strlen( t33 ).
      t32 = t33.
      IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t32 TO UPPER CASE.
      ELSE.
        t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
      ENDIF.
      t31 = xsdbool( t32 = t2 ).
      t30 = t31.
      IF t31 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        DATA t50 TYPE i.
        DATA(t52) = 1.
        t50 = t22 + t52.
        t50 = t50 + 1.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        t5->load( ).
        CLEAR t53.
        READ TABLE t5->items INDEX t50 INTO t53.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t54.
        CLEAR t48.
        IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t54 ?= t53.
          DATA t55 TYPE REF TO object.
          t55 = t54->as_ref( ).
          t48 ?= t55.
        ELSE.
          t48 ?= t53.
        ENDIF.
        t30 = xsdbool( t48->str = |=>| ).
      ENDIF.
      IF t30 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_shape_5bd99ac8.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_position.
        CLEAR t61.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t66.
        DATA(t68) = t22.
        t68 = t68 + 1.
        DATA t69 TYPE REF TO object.
        CLEAR t69.
        t5->load( ).
        CLEAR t69.
        READ TABLE t5->items INDEX t68 INTO t69.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t66.
        IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t69.
          DATA t71 TYPE REF TO object.
          t71 = t70->as_ref( ).
          t66 ?= t71.
        ELSE.
          t66 ?= t69.
        ENDIF.
        t61 = t66->start.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t80.
        DATA t82 TYPE i.
        DATA(t84) = 2.
        t82 = t22 + t84.
        DATA t85 TYPE REF TO object.
        t85 = t5->get( p0 = t82 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t80.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t85.
          DATA t87 TYPE REF TO object.
          t87 = t86->as_ref( ).
          t80 ?= t87.
        ELSE.
          t80 ?= t85.
        ENDIF.
        t79 = t80.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        IF xsdbool( t79 IS INITIAL ) = abap_true.
          CLEAR t88.
        ELSE.
          DATA t96 TYPE string.
          t96 = t79->str.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t96.
          t88 = t98.
        ENDIF.
        t77 = t88.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t100) = VALUE abap_bool( ).
        IF t77 IS INITIAL.
          t100 = abap_true.
        ELSEIF t77->has = abap_false.
          t100 = abap_true.
        ENDIF.
        IF t100 = abap_true.
          CLEAR t99.
        ELSE.
          DATA t103 TYPE string.
          DATA t104 TYPE string.
          t104 = t77->value.
          DATA(t106) = strlen( t104 ).
          t103 = t104.
          IF t103 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t103 TO UPPER CASE.
          ELSE.
            t103 = zlnt_runtime_uppe_91169605024d=>full( t103 ).
          ENDIF.
          DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t107->has = abap_true.
          t107->value = t103.
          t99 = t107.
        ENDIF.
        t60 = NEW zcl_lnt_shape_5bd99ac8( i_pos = t61 i_member = t99 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t108 ).
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `member` p1 = t109 ).
        ENDIF.
        CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
        t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pos| p1 = t111 ).
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |member| p1 = t113 ).
        ENDIF.
        t3->load( ).
        APPEND t60 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t116) = 1.
      t22 = t22 + t116.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD build_shadowed_names.
    DATA(t1) = i_struc.
    DATA(t2) = i_impl.
    DATA(t3) = i_class_name.
    DATA t4 TYPE REF TO zlnt_runtime_map__da87443eb676.
    t4 = NEW zlnt_runtime_map__da87443eb676( ).
    DATA t8 TYPE REF TO zif_lnt_structure.
    t8 = t2->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    IF xsdbool( xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_sr_clss_implmnttn ) = abap_false ) = abap_true.
      result = t4.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t13 = t1->find_direct_structures( i_type_9913 = t16 ).
    DATA t17 TYPE i.
    t13->load( ).
    t17 = lines( t13->items ).
    DATA t20 TYPE i.
    t20 = 0.
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DO.
      IF xsdbool( t20 < t17 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t29.
      DATA t32 TYPE REF TO object.
      t32 = t13->get( p0 = t20 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t29.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t29 ?= t34.
      ELSE.
        t29 ?= t32.
      ENDIF.
      t27 = t29.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t39.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t41 = t27->find_first_expression( i_type_9913 = t44 ).
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t45.
      IF xsdbool( t41 IS INITIAL ) = abap_true.
        CLEAR t45.
      ELSE.
        t45 = t41->get_first_token( ).
      ENDIF.
      t39 = t45.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
        CLEAR t52.
      ELSE.
        DATA t60 TYPE string.
        t60 = t39->str.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t60.
        t52 = t62.
      ENDIF.
      t37 = t52.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      IF t37 IS INITIAL.
        t64 = abap_true.
      ELSEIF t37->has = abap_false.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        CLEAR t63.
      ELSE.
        DATA t67 TYPE string.
        DATA t68 TYPE string.
        t68 = t37->value.
        DATA(t70) = strlen( t68 ).
        t67 = t68.
        IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t67 TO UPPER CASE.
        ELSE.
          t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
        ENDIF.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t67.
        t63 = t71.
      ENDIF.
      t36 = t63.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t75->has = abap_true.
      t75->value = t3.
      t72 = t75.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      IF t36 IS BOUND.
        t77 = t36->has.
      ENDIF.
      IF t72 IS BOUND.
        t78 = t72->has.
      ENDIF.
      IF t77 = t78.
        IF t77 = abap_false.
          t35 = abap_true.
        ELSEIF t36->value = t72->value.
          t35 = abap_true.
        ENDIF.
      ENDIF.
      IF t35 = abap_true.
        t22 = t27.
        EXIT.
      ENDIF.
      DATA(t85) = 1.
      t20 = t20 + t85.
    ENDDO.
    t11 = t22.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t87 = t2->find_all_structures_recursive( i_type_9913 = t89 ).
    DATA t90 TYPE REF TO zcl_lnt_structure_node.
    DATA t91 TYPE REF TO object.
    DATA(t92) = VALUE i( ).
    DO.
      t87->load( ).
      IF t92 >= lines( t87->items ).
        EXIT.
      ENDIF.
      CLEAR t91.
      READ TABLE t87->items INDEX t92 + 1 INTO t91.
      t92 = t92 + 1.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      CLEAR t90.
      IF t91 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t93 ?= t91.
        DATA t94 TYPE REF TO object.
        t94 = t93->as_ref( ).
        t90 ?= t94.
      ELSE.
        t90 ?= t91.
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t95 = NEW zlnt_runtime_set__1827558fd4c7( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t101.
      DATA t103 TYPE REF TO zcl_lnt_statement_node.
      DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d554_9e796f7b9641.
      t103 = t90->find_first_statement( i_type_9913 = t106 ).
      DATA t107 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t107.
      IF xsdbool( t103 IS INITIAL ) = abap_true.
        CLEAR t107.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_statement_node.
        t112 = t103.
        DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t107 = t112->find_first_expression( i_type_9913 = t114 ).
      ENDIF.
      t101 = t107.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      IF xsdbool( t101 IS INITIAL ) = abap_true.
        CLEAR t115.
      ELSE.
        DATA t119 TYPE string.
        t119 = t101->concat_tokens( ).
        DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t122->has = abap_true.
        t122->value = t119.
        t115 = t122.
      ENDIF.
      t99 = t115.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA(t124) = VALUE abap_bool( ).
      IF t99 IS INITIAL.
        t124 = abap_true.
      ELSEIF t99->has = abap_false.
        t124 = abap_true.
      ENDIF.
      IF t124 = abap_true.
        CLEAR t123.
      ELSE.
        DATA t127 TYPE string.
        DATA t128 TYPE string.
        t128 = t99->value.
        DATA(t130) = strlen( t128 ).
        t127 = t128.
        IF t127 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t127 TO UPPER CASE.
        ELSE.
          t127 = zlnt_runtime_uppe_91169605024d=>full( t127 ).
        ENDIF.
        DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t131->has = abap_true.
        t131->value = t127.
        t123 = t131.
      ENDIF.
      t97 = t123.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      t133 = xsdbool( xsdbool( t11 IS INITIAL ) = abap_false ).
      t132 = t133.
      IF t133 = abap_true.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t142 = t97.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        DATA(t147) = VALUE abap_bool( ).
        IF t142 IS INITIAL.
          t147 = abap_true.
        ELSEIF t142->has = abap_false.
          t147 = abap_true.
        ENDIF.
        t132 = xsdbool( t147 = abap_false ).
      ENDIF.
      IF t132 = abap_true.
        DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t150 TYPE REF TO zcl_lnt_structure_node.
        t150 = t11.
        DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
        t149 = t150->find_all_statements( i_type_9913 = t152 ).
        DATA t153 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t153.
        DATA t154 TYPE REF TO object.
        CLEAR t154.
        DATA(t155) = VALUE i( ).
        DO.
          t149->load( ).
          IF t155 >= lines( t149->items ).
            EXIT.
          ENDIF.
          CLEAR t154.
          READ TABLE t149->items INDEX t155 + 1 INTO t154.
          t155 = t155 + 1.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          CLEAR t153.
          IF t154 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t156 ?= t154.
            DATA t157 TYPE REF TO object.
            t157 = t156->as_ref( ).
            t153 ?= t157.
          ELSE.
            t153 ?= t154.
          ENDIF.
          DATA(t158) = VALUE abap_bool( ).
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA t162 TYPE REF TO zcl_lnt_expression_node.
          DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t162 = t153->find_first_expression( i_type_9913 = t165 ).
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          IF xsdbool( t162 IS INITIAL ) = abap_true.
            CLEAR t166.
          ELSE.
            DATA t170 TYPE string.
            t170 = t162->concat_tokens( ).
            DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t173->has = abap_true.
            t173->value = t170.
            t166 = t173.
          ENDIF.
          t160 = t166.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = VALUE abap_bool( ).
          IF t160 IS INITIAL.
            t175 = abap_true.
          ELSEIF t160->has = abap_false.
            t175 = abap_true.
          ENDIF.
          IF t175 = abap_true.
            CLEAR t174.
          ELSE.
            DATA t178 TYPE string.
            DATA t179 TYPE string.
            t179 = t160->value.
            DATA(t181) = strlen( t179 ).
            t178 = t179.
            IF t178 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t178 TO UPPER CASE.
            ELSE.
              t178 = zlnt_runtime_uppe_91169605024d=>full( t178 ).
            ENDIF.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t178.
            t174 = t182.
          ENDIF.
          t159 = t174.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t185 TYPE string.
          t185 = t97->value.
          DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t187->has = abap_true.
          t187->value = t185.
          t183 = t187.
          DATA(t189) = VALUE abap_bool( ).
          DATA(t190) = VALUE abap_bool( ).
          IF t159 IS BOUND.
            t189 = t159->has.
          ENDIF.
          IF t183 IS BOUND.
            t190 = t183->has.
          ENDIF.
          IF t189 = t190.
            IF t189 = abap_false.
              t158 = abap_true.
            ELSEIF t159->value = t183->value.
              t158 = abap_true.
            ENDIF.
          ENDIF.
          IF t158 = abap_true.
            DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d164_a1523c275ce1.
            t191 = t153->find_all_expressions( i_type_9913 = t193 ).
            DATA t194 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t194.
            DATA t195 TYPE REF TO object.
            CLEAR t195.
            DATA(t196) = VALUE i( ).
            DO.
              t191->load( ).
              IF t196 >= lines( t191->items ).
                EXIT.
              ENDIF.
              CLEAR t195.
              READ TABLE t191->items INDEX t196 + 1 INTO t195.
              t196 = t196 + 1.
              DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t197.
              CLEAR t194.
              IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t197 ?= t195.
                DATA t198 TYPE REF TO object.
                t198 = t197->as_ref( ).
                t194 ?= t198.
              ELSE.
                t194 ?= t195.
              ENDIF.
              DATA t199 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t199.
              DATA t201 TYPE string.
              DATA t202 TYPE string.
              t202 = t194->concat_tokens( ).
              DATA(t204) = strlen( t202 ).
              t201 = t202.
              IF t201 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t201 TO UPPER CASE.
              ELSE.
                t201 = zlnt_runtime_uppe_91169605024d=>full( t201 ).
              ENDIF.
              t199 = t95->add( p0 = t201 ).
            ENDDO.
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t205 = t90->find_all_expressions( i_type_9913 = t207 ).
      DATA t208 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      DATA(t210) = VALUE i( ).
      DO.
        t205->load( ).
        IF t210 >= lines( t205->items ).
          EXIT.
        ENDIF.
        CLEAR t209.
        READ TABLE t205->items INDEX t210 + 1 INTO t209.
        t210 = t210 + 1.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        CLEAR t208.
        IF t209 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t211 ?= t209.
          DATA t212 TYPE REF TO object.
          t212 = t211->as_ref( ).
          t208 ?= t212.
        ELSE.
          t208 ?= t209.
        ENDIF.
        DATA t213 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t213.
        DATA t215 TYPE string.
        DATA t216 TYPE string.
        t216 = t208->concat_tokens( ).
        DATA(t218) = strlen( t216 ).
        t215 = t216.
        IF t215 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t215 TO UPPER CASE.
        ELSE.
          t215 = zlnt_runtime_uppe_91169605024d=>full( t215 ).
        ENDIF.
        t213 = t95->add( p0 = t215 ).
      ENDDO.
      DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t219 = t90->find_all_expressions( i_type_9913 = t221 ).
      DATA t222 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      DATA(t224) = VALUE i( ).
      DO.
        t219->load( ).
        IF t224 >= lines( t219->items ).
          EXIT.
        ENDIF.
        CLEAR t223.
        READ TABLE t219->items INDEX t224 + 1 INTO t223.
        t224 = t224 + 1.
        DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t225.
        CLEAR t222.
        IF t223 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t225 ?= t223.
          DATA t226 TYPE REF TO object.
          t226 = t225->as_ref( ).
          t222 ?= t226.
        ELSE.
          t222 ?= t223.
        ENDIF.
        DATA t227 TYPE REF TO zcl_lnt_expression_node.
        DATA(t230) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
        t227 = t222->find_first_expression( i_type_9913 = t230 ).
        IF xsdbool( t227 IS BOUND ) = abap_true.
          DATA t233 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t233.
          DATA t235 TYPE string.
          DATA t236 TYPE string.
          t236 = t227->concat_tokens( ).
          DATA(t239) = strlen( t236 ).
          t235 = t236.
          IF t235 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t235 TO UPPER CASE.
          ELSE.
            t235 = zlnt_runtime_uppe_91169605024d=>full( t235 ).
          ENDIF.
          t233 = t95->add( p0 = t235 ).
        ENDIF.
      ENDDO.
      IF xsdbool( t95->size( ) = 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t244 = t90->find_all_statement_nodes( ).
      DATA t246 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      DATA(t248) = VALUE i( ).
      DO.
        t244->load( ).
        IF t248 >= lines( t244->items ).
          EXIT.
        ENDIF.
        CLEAR t247.
        READ TABLE t244->items INDEX t248 + 1 INTO t247.
        t248 = t248 + 1.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        CLEAR t246.
        IF t247 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t249 ?= t247.
          DATA t250 TYPE REF TO object.
          t250 = t249->as_ref( ).
          t246 ?= t250.
        ELSE.
          t246 ?= t247.
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_map__da87443eb676.
        t251 = t4->set( p0 = t246 p1 = t95 ).
      ENDDO.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfx_is_crrnt_clss_cnf( me->g_c_i_s_r_p_i_c_c_t_p_is_cr_cl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfx_is_crrnt_clss_cnf( me->g_c_i_s_r_p_i_c_c_t_p_is_cr_cl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfx_is_crrnt_clss_cnf.
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
        t1 = NEW zcl_lnt_prfx_is_crrnt_clss_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_i_c_c_t_p_is_cr_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_i_c_c_t_p_is_cr_cl( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1672_86bacaf40b83.
  ENDMETHOD.
ENDCLASS.
