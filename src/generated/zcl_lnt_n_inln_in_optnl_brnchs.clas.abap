* TS: src/rules/no_inline_in_optional_branches.ts:13:1 NoInlineInOptionalBranches
CLASS zcl_lnt_n_inln_in_optnl_brnchs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_inl_in_optn_brnc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_n_i_i_o_b_t_n_i_i_o RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_inl_in_optn_brnc_cnf.
    METHODS s_c_i_s_r_n_i_i_o_b_t_n_i_i_o IMPORTING i_conf TYPE REF TO zcl_lnt_n_inl_in_optn_brnc_cnf.
    METHODS r_p_i_s_r_n_i_i_o_b_t_n_i_i_o IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_inln_in_optnl_brnchs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_inl_in_optn_brnc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |no_inline_in_optional_branches|.
    t2 = t3.
    DATA(t4) = VALUE string( ).
    DATA(t5) = |Don't declare inline in optional branches|.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA(t7) = |Don't declare inline in optional branches|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#dont-declare-inline-in-optional-branches\n\nConsidere|.
      t11 = t11 && |d optional branches:\n* inside IF/ELSEIF/ELSE\n* inside LOOP\n*|.
      t11 = t11 && | inside WHILE\n* inside CASE/WHEN, CASE TYPE OF\n* inside DO\n*|.
      t11 = t11 && | inside SELECT loops\n\nNot considered optional branches:\n* TR|.
      t11 = t11 && |Y/CATCH/CLEANUP|.
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
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_i_i_o_b_t_n_i_i_o.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_i_i_o_b_t_n_i_i_o.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_i_i_o_b_t_n_i_i_o.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_configuration.
    CLEAR t6.
    DATA(t7) = me->reg.
    t6 = t7->get_config( ).
    t5 = t6->get_release( ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t4.
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t14.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t14 = zcl_lnt_version_module=>release_b8cd.
    DATA(t15) = |v700|.
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    CLEAR t16.
    IF t11 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      CLEAR t18.
      t19 = t11.
      TRY.
          t16 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t18 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t16 = t18->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t17.
    IF t12 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t12.
      TRY.
          t17 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t20 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t17 = t20->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t16 IS BOUND.
      t10 = t16->strict_equals( t17 ).
    ELSE.
      t10 = xsdbool( t17 IS NOT BOUND ).
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t4.
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t26.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t26 = zcl_lnt_version_module=>release_b8cd.
      DATA(t27) = |v702|.
      t25 = t26->get( p0 = t27 ).
      t24 = t25.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t28.
      IF t23 IS BOUND.
        DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t30.
        DATA t31 TYPE REF TO object.
        CLEAR t31.
        CLEAR t30.
        t31 = t23.
        TRY.
            t28 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS NOT BOUND.
          TRY.
              t30 ?= t23.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t30 IS BOUND.
            t28 = t30->source( ).
          ENDIF.
          IF t28 IS NOT BOUND.
            CREATE OBJECT t28.
            t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->oval = t23.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t29.
      IF t24 IS BOUND.
        DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t32.
        DATA t33 TYPE REF TO object.
        CLEAR t33.
        CLEAR t32.
        t33 = t24.
        TRY.
            t29 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS NOT BOUND.
          TRY.
              t32 ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t32 IS BOUND.
            t29 = t32->source( ).
          ENDIF.
          IF t29 IS NOT BOUND.
            CREATE OBJECT t29.
            t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t29->oval = t24.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t28 IS BOUND.
        t22 = t28->strict_equals( t29 ).
      ELSE.
        t22 = xsdbool( t29 IS NOT BOUND ).
      ENDIF.
      t9 = t22.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE REF TO zif_lnt_configuration.
      CLEAR t35.
      DATA(t36) = me->reg.
      t35 = t36->get_config( ).
      t34 = t35->is_open_abap( ).
      t8 = t34.
    ENDIF.
    IF t8 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      CREATE OBJECT t37.
      result = t37.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t38.
    DATA t39 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t40.
    DATA(t41) = t1.
    t40 = t41.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t42.
    DATA(t43) = t40.
    t42 = t43->structure.
    t39 = t42.
    t38 = t39.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t45.
    DATA(t46) = t38.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t45.
    IF t50 IS INITIAL.
      t49 = abap_true.
    ENDIF.
    t44 = t49.
    IF t44 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t51.
      CREATE OBJECT t51.
      result = t51.
      RETURN.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    DATA(t58) = t54.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t60.
    DATA(t61) = t38.
    t60 = t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t59 = t60->find_all_structures( i_type_9913 = t62 ).
    t57 = t58->concat( p0 = t59 ).
    t56 = t57.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA(t65) = t56.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t67.
    DATA(t68) = t38.
    t67 = t68.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t66 = t67->find_all_structures( i_type_9913 = t69 ).
    t64 = t65->concat( p0 = t66 ).
    t63 = t64.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA(t72) = t63.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t74.
    DATA(t75) = t38.
    t74 = t75.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
    t73 = t74->find_all_structures( i_type_9913 = t76 ).
    t71 = t72->concat( p0 = t73 ).
    t70 = t71.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA(t79) = t70.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    DATA t81 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t81.
    DATA(t82) = t38.
    t81 = t82.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t80 = t81->find_all_structures( i_type_9913 = t83 ).
    t78 = t79->concat( p0 = t80 ).
    t77 = t78.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA(t86) = t77.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t88.
    DATA(t89) = t38.
    t88 = t89.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d711_d9a1643e70c2.
    t87 = t88->find_all_structures( i_type_9913 = t90 ).
    t85 = t86->concat( p0 = t87 ).
    t84 = t85.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA(t93) = t84.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t95.
    DATA(t96) = t38.
    t95 = t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
    t94 = t95->find_all_structures( i_type_9913 = t97 ).
    t92 = t93->concat( p0 = t94 ).
    t91 = t92.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA(t100) = t91.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t102.
    DATA(t103) = t38.
    t102 = t103.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
    t101 = t102->find_all_structures( i_type_9913 = t104 ).
    t99 = t100->concat( p0 = t101 ).
    t98 = t99.
    DATA(t105) = t98.
    t53 = t105.
    t52 = t53.
    DATA(t106) = t52.
    DATA t107 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t107.
    DATA t108 TYPE REF TO object.
    CLEAR t108.
    DATA(t109) = VALUE i( ).
    DO.
      t106->load( ).
      IF t109 >= lines( t106->items ).
        EXIT.
      ENDIF.
      CLEAR t108.
      READ TABLE t106->items INDEX t109 + 1 INTO t108.
      t109 = t109 + 1.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      CLEAR t107.
      IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t110 ?= t108.
        DATA t111 TYPE REF TO object.
        CLEAR t111.
        t111 = t110->as_ref( ).
        t107 ?= t111.
      ELSE.
        t107 ?= t108.
      ENDIF.
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t112.
      DATA t113 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t113.
      DATA(t114) = t107.
      DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t113 = t114->find_first_expression( i_type_9913 = t115 ).
      t112 = t113.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t112.
      t116 = xsdbool( t117 IS BOUND ).
      IF t116 = abap_true.
        DATA(t118) = VALUE string( ).
        DATA(t119) = |Don't declare inline in optional branches|.
        t118 = t119.
        DATA t120 TYPE REF TO zcl_lnt_issue.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        CLEAR t121.
        DATA(t122) = t1.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t123.
        DATA t124 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t124.
        DATA(t125) = t112.
        t124 = t125.
        t123 = t124->get_first_token( ).
        DATA(t126) = t118.
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t128.
        DATA(t129) = VALUE string( ).
        DATA(t130) = |no_inline_in_optional_branches|.
        t129 = t130.
        DATA(t131) = VALUE string( ).
        DATA(t132) = |Don't declare inline in optional branches|.
        t131 = t132.
        DATA(t133) = VALUE string( ).
        DATA(t134) = |Don't declare inline in optional branches|.
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        DATA(t137) = abap_true.
        IF t137 = abap_true.
          DATA(t138) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t138 = t138 && |nABAP.md#dont-declare-inline-in-optional-branches\n\nConsidere|.
          t138 = t138 && |d optional branches:\n* inside IF/ELSEIF/ELSE\n* inside LOOP\n*|.
          t138 = t138 && | inside WHILE\n* inside CASE/WHEN, CASE TYPE OF\n* inside DO\n*|.
          t138 = t138 && | inside SELECT loops\n\nNot considered optional branches:\n* TR|.
          t138 = t138 && |Y/CATCH/CLEANUP|.
          DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t139->has = abap_true.
          t139->value = t138.
          t136 = t139.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          t136 = t140.
        ENDIF.
        t135 = t136.
        DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t141.
        DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t142.
        DATA(t143) = abap_true.
        IF t143 = abap_true.
          DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t144.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t146.
          CREATE OBJECT t146.
          t145 = t146.
          DATA(t147) = t145.
          DATA(t148) = |Styleguide|.
          t147->load( ).
          APPEND t148 TO t147->items.
          t147->save( ).
          DATA(t149) = t145.
          DATA(t150) = |SingleFile|.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
          DATA(t151) = t145.
          t144 = t151.
          t142 = t144.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t152.
          t142 = t152.
        ENDIF.
        t141 = t142.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t153 = t154.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t159 = t160.
        t128 = NEW zcl_lnt_irule_metadata( i_key = t129 i_title = t131 i_short_description = t133 i_bad_example = t153 i_good_example = t155 i_extended_information = t135 i_tags = t141 i_pragma = t157 i_pseudo_comment = t159 ).
        CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
        t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
        t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t166) = |key|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        DATA(t168) = |title|.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
        ENDIF.
        DATA(t170) = |shortDescription|.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
        ENDIF.
        DATA(t172) = |extendedInformation|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |tags|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        t127 = t128->key.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) ).
        t176 = t177->zlnt_view_read_sr_15c06369f827( ).
        DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t178.
        t121 = zcl_lnt_issue=>at_token( i_file = t122 i_token = t123 i_message_26cb = t126 i_key = t127 i_severity = t176 i_fix = t178 ).
        t120 = t121.
        DATA(t179) = t2.
        DATA(t180) = t120.
        t179->load( ).
        APPEND t180 TO t179->items.
        t179->save( ).
      ENDIF.
    ENDDO.
    DATA(t181) = t2.
    result = t181.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_inl_in_optn_brnc_cnf.
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
        t1 = NEW zcl_lnt_n_inl_in_optn_brnc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_i_i_o_b_t_n_i_i_o( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_i_i_o_b_t_n_i_i_o( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1617_ce6e1a00ffa4.
  ENDMETHOD.
ENDCLASS.
