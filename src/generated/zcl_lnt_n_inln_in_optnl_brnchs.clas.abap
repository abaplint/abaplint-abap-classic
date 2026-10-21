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
    me->conf = NEW zcl_lnt_n_inl_in_optn_brnc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#dont-declare-inline-in-optional-branches\n\nConsidere|.
    t11 = t11 && |d optional branches:\n* inside IF/ELSEIF/ELSE\n* inside LOOP\n*|.
    t11 = t11 && | inside WHILE\n* inside CASE/WHEN, CASE TYPE OF\n* inside DO\n*|.
    t11 = t11 && | inside SELECT loops\n\nNot considered optional branches:\n* TR|.
    t11 = t11 && |Y/CATCH/CLEANUP|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_inline_in_optional_branches| i_title = |Don't declare inline in optional branches| i_short_description = |Don't declare inline in optional branches| i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t18 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t46 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_i_i_o_b_t_n_i_i_o.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_i_i_o_b_t_n_i_i_o.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_i_i_o_b_t_n_i_i_o.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    t4 = me->reg->get_config( )->get_release( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v700| ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t4.
      TRY.
          t16 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t18 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t16 = t18->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t12 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
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
      DATA t24 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t24 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t4 IS BOUND.
        DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t31 TYPE REF TO object.
        t31 = t4.
        TRY.
            t28 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS NOT BOUND.
          TRY.
              t30 ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t30 IS BOUND.
            t28 = t30->source( ).
          ENDIF.
          IF t28 IS NOT BOUND.
            CREATE OBJECT t28.
            t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->oval = t4.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t24 IS BOUND.
        DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t33 TYPE REF TO object.
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
      t8 = me->reg->get_config( )->is_open_abap( ).
    ENDIF.
    IF t8 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zcl_lnt_structure_node.
    t38 = t1->structure.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t38 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    t60 = t38.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t57 = t55->concat( p0 = t60->find_all_structures( i_type_9913 = t62 ) ).
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zcl_lnt_structure_node.
    t67 = t38.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t64 = t57->concat( p0 = t67->find_all_structures( i_type_9913 = t69 ) ).
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zcl_lnt_structure_node.
    t74 = t38.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
    t71 = t64->concat( p0 = t74->find_all_structures( i_type_9913 = t76 ) ).
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zcl_lnt_structure_node.
    t81 = t38.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t78 = t71->concat( p0 = t81->find_all_structures( i_type_9913 = t83 ) ).
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zcl_lnt_structure_node.
    t88 = t38.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d711_d9a1643e70c2.
    t85 = t78->concat( p0 = t88->find_all_structures( i_type_9913 = t90 ) ).
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_structure_node.
    t95 = t38.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
    t92 = t85->concat( p0 = t95->find_all_structures( i_type_9913 = t97 ) ).
    DATA t102 TYPE REF TO zcl_lnt_structure_node.
    t102 = t38.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d751_4d9c6e99dfab.
    t52 = t92->concat( p0 = t102->find_all_structures( i_type_9913 = t104 ) ).
    DATA t107 TYPE REF TO zcl_lnt_structure_node.
    DATA t108 TYPE REF TO object.
    DATA(t109) = VALUE i( ).
    DO.
      t52->load( ).
      IF t109 >= lines( t52->items ).
        EXIT.
      ENDIF.
      CLEAR t108.
      READ TABLE t52->items INDEX t109 + 1 INTO t108.
      t109 = t109 + 1.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t110.
      CLEAR t107.
      IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t110 ?= t108.
        DATA t111 TYPE REF TO object.
        t111 = t110->as_ref( ).
        t107 ?= t111.
      ELSE.
        t107 ?= t108.
      ENDIF.
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t112 = t107->find_first_expression( i_type_9913 = t115 ).
      IF xsdbool( t112 IS BOUND ) = abap_true.
        DATA t121 TYPE REF TO zcl_lnt_issue.
        CLEAR t121.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t123.
        t123 = t112->get_first_token( ).
        DATA(t127) = VALUE string( ).
        DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t138) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t138 = t138 && |nABAP.md#dont-declare-inline-in-optional-branches\n\nConsidere|.
        t138 = t138 && |d optional branches:\n* inside IF/ELSEIF/ELSE\n* inside LOOP\n*|.
        t138 = t138 && | inside WHILE\n* inside CASE/WHEN, CASE TYPE OF\n* inside DO\n*|.
        t138 = t138 && | inside SELECT loops\n\nNot considered optional branches:\n* TR|.
        t138 = t138 && |Y/CATCH/CLEANUP|.
        DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t139->has = abap_true.
        t139->value = t138.
        t135 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t141.
        DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t145.
        t145->load( ).
        APPEND |Styleguide| TO t145->items.
        t145->save( ).
        t145->load( ).
        APPEND |SingleFile| TO t145->items.
        t145->save( ).
        t141 = t145.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        CLEAR t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        CLEAR t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        CLEAR t157.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        CLEAR t159.
        t128 = NEW zcl_lnt_irule_metadata( i_key = |no_inline_in_optional_branches| i_title = |Don't declare inline in optional branches| i_short_description = |Don't declare inline in optional branches| i_bad_example = t153 i_good_example = t155 i_extended_information = t135 i_tags = t141 i_pragma = t157 i_pseudo_comment = t159 ).
        CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
        t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t161 ).
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
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t167 ).
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t169 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t171 ).
        ENDIF.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t173 ).
        ENDIF.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t175 ).
        ENDIF.
        t127 = t128->key.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        t176 = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) )->zlnt_view_read_sr_15c06369f827( ).
        DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t178.
        t121 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t123 i_message_26cb = |Don't declare inline in optional branches| i_key = t127 i_severity = t176 i_fix = t178 ).
        t2->load( ).
        APPEND t121 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_inl_in_optn_brnc_cnf( me->g_c_i_s_r_n_i_i_o_b_t_n_i_i_o( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_inl_in_optn_brnc_cnf.
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
        t1 = NEW zcl_lnt_n_inl_in_optn_brnc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_i_i_o_b_t_n_i_i_o( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_i_i_o_b_t_n_i_i_o( i_file = i_file ) ).

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
