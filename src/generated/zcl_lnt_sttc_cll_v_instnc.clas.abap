* TS: src/rules/static_call_via_instance.ts:19:1 StaticCallViaInstance
CLASS zcl_lnt_sttc_cll_v_instnc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_s_c_v_i_t_st_cl_v_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS s_c_i_s_r_s_c_v_i_t_st_cl_v_in IMPORTING i_conf TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS list_method_calls IMPORTING i_filename TYPE string i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sttc_cll_v_instnc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_sttc_cll_v_instnc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |static_call_via_instance|.
    DATA t4 TYPE string.
    t4 = |Static call via instance variable|.
    DATA t6 TYPE string.
    t6 = |Static method call via instance variable|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#dont-call-static-methods-through-instance-variables|.
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
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |METHOD run.\n  NEW lcl_helper( )->static_method( ).\nENDMETHOD|.
    t27 = t27 && |.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |METHOD run.\n  lcl_helper=>static_method( ).\nENDMETHOD.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_c_v_i_t_st_cl_v_in.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_c_v_i_t_st_cl_v_in.
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
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t8) = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->g_c_i_s_r_s_c_v_i_t_st_cl_v_in( ) ).
    t7 = t8->zlnt_view_read_sr_5f76760e4029( ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t12->has = abap_true.
    t12->value = abap_true.
    t9 = t12.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    IF t7 IS BOUND.
      t14 = t7->has.
    ENDIF.
    IF t9 IS BOUND.
      t15 = t9->has.
    ENDIF.
    IF t14 = t15.
      IF t14 = abap_false.
        t6 = abap_true.
      ELSEIF t7->value = t9->value.
        t6 = abap_true.
      ENDIF.
    ENDIF.
    t5 = t6.
    IF t6 = abap_true.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE i( ).
      DATA t18 TYPE string.
      DATA t19 TYPE REF TO zcl_lnt_abstract_file.
      t19 = t1.
      DATA t21 TYPE string.
      t21 = t19->filename.
      t18 = t21.
      DATA(t23) = |.testclasses.|.
      DATA(t24) = strlen( t18 ).
      IF t23 IS INITIAL.
        t17 = 0.
      ELSE.
        FIND t23 IN t18 MATCH OFFSET t17.
        IF sy-subrc <> 0.
          t17 = -1.
        ENDIF.
      ENDIF.
      DATA(t25) = 0.
      t16 = xsdbool( t17 >= t25 ).
      t5 = t16.
    ENDIF.
    IF t5 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      result = t26.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zcl_lnt_abstract_file.
    t30 = t1.
    DATA t32 TYPE string.
    t32 = t30->filename.
    t29 = t32.
    DATA t34 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t35 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t36 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t37 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t38) = me->reg.
    t37 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t2 ).
    t36 = t37->run( ).
    t35 = t36->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t34 = t35->get_top( ).
    t28 = me->list_method_calls( i_filename = t29 i_node = t34 ).
    t27 = t28.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t41 = t1->get_tokens( i_with_pragmas = t43 ).
    t40 = t41.
    DATA t44 TYPE i.
    t44 = 0.
    DO.
      DATA t46 TYPE abap_bool.
      DATA t48 TYPE i.
      DATA t49 TYPE i.
      t40->load( ).
      t49 = lines( t40->items ).
      DATA(t51) = 1.
      t48 = t49 - t51.
      t46 = xsdbool( t44 < t48 ).
      IF t46 = abap_false.
        EXIT.
      ENDIF.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA(t55) = t44.
      t55 = t55 + 1.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      t40->load( ).
      CLEAR t56.
      READ TABLE t40->items INDEX t55 INTO t56.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      CLEAR t53.
      IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t57 ?= t56.
        DATA t58 TYPE REF TO object.
        t58 = t57->as_ref( ).
        t53 ?= t58.
      ELSE.
        t53 ?= t56.
      ENDIF.
      t52 = t53.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE string.
      DATA t63 TYPE string.
      t63 = t52->str.
      t60 = t63.
      DATA(t65) = |->|.
      t59 = xsdbool( t60 <> t65 ).
      IF t59 = abap_true.
        DATA t66 TYPE i.
        DATA(t68) = 1.
        t66 = t44 + t68.
        t44 = t66.
        CONTINUE.
      ENDIF.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t70.
      DATA t72 TYPE i.
      DATA(t74) = 1.
      t72 = t44 + t74.
      t72 = t72 + 1.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      t40->load( ).
      CLEAR t75.
      READ TABLE t40->items INDEX t72 INTO t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      CLEAR t70.
      IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t75.
        DATA t77 TYPE REF TO object.
        t77 = t76->as_ref( ).
        t70 ?= t77.
      ELSE.
        t70 ?= t75.
      ENDIF.
      t69 = t70.
      DATA t79 TYPE REF TO zcl_lnt_position.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      DATA(t81) = VALUE i( ).
      DO.
        t27->load( ).
        IF t81 >= lines( t27->items ).
          EXIT.
        ENDIF.
        CLEAR t80.
        READ TABLE t27->items INDEX t81 + 1 INTO t80.
        t81 = t81 + 1.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        CLEAR t79.
        IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t82 ?= t80.
          DATA t83 TYPE REF TO object.
          t83 = t82->as_ref( ).
          t79 ?= t83.
        ELSE.
          t79 ?= t80.
        ENDIF.
        DATA t84 TYPE abap_bool.
        DATA t86 TYPE REF TO zcl_lnt_position.
        DATA t89 TYPE REF TO zcl_lnt_position.
        t89 = t69->start.
        t86 = t89.
        t84 = t79->equals( i_p = t86 ).
        IF t84 = abap_true.
          DATA(t92) = |Avoid calling static method via instance|.
          DATA t94 TYPE REF TO zcl_lnt_issue.
          CLEAR t94.
          DATA(t98) = VALUE string( ).
          DATA t99 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t99.
          DATA t100 TYPE string.
          t100 = |static_call_via_instance|.
          DATA t102 TYPE string.
          t102 = |Static call via instance variable|.
          DATA t104 TYPE string.
          t104 = |Static method call via instance variable|.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t109) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t109 = t109 && |nABAP.md#dont-call-static-methods-through-instance-variables|.
          DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t110->has = abap_true.
          t110->value = t109.
          t106 = t110.
          DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t112.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t117.
          t116 = t117.
          DATA(t119) = |Styleguide|.
          t116->load( ).
          APPEND t119 TO t116->items.
          t116->save( ).
          t112 = t116.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t125) = |METHOD run.\n  NEW lcl_helper( )->static_method( ).\nENDMETHOD|.
          t125 = t125 && |.|.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t125.
          t122 = t126.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA(t131) = |METHOD run.\n  lcl_helper=>static_method( ).\nENDMETHOD.|.
          DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t132->has = abap_true.
          t132->value = t131.
          t128 = t132.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          t99 = NEW zcl_lnt_irule_metadata( i_key = t100 i_title = t102 i_short_description = t104 i_bad_example = t122 i_good_example = t128 i_extended_information = t106 i_tags = t112 i_pragma = t134 i_pseudo_comment = t136 ).
          CREATE OBJECT t99->zlnt_view_ownkeys_b0e8086400eb.
          t99->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t138 ).
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t139 ).
          ENDIF.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t140 ).
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t141 ).
          ENDIF.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t142 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t143 ).
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t99->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t99->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t144 ).
          ENDIF.
          CREATE OBJECT t99->zlnt_json_ownkeys_70e5fd461788.
          t99->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t145) = |key|.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
          DATA(t147) = |title|.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
          ENDIF.
          DATA(t149) = |shortDescription|.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
          ENDIF.
          DATA(t151) = |extendedInformation|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          DATA(t153) = |tags|.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
          ENDIF.
          DATA(t155) = |badExample|.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          DATA(t157) = |goodExample|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t99->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t99->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          ENDIF.
          t98 = t99->key.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t160.
          t94 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t52 i_message_26cb = t92 i_key = t98 i_severity = t159 i_fix = t160 ).
          t3->load( ).
          APPEND t94 TO t3->items.
          t3->save( ).
          EXIT.
        ENDIF.
      ENDDO.
      DATA t161 TYPE i.
      DATA(t163) = 1.
      t161 = t44 + t163.
      t44 = t161.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD list_method_calls.
    DATA(t1) = i_filename.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    t6 = t2->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      t15 = t8->reference_type.
      DATA(t17) = |Method|.
      t14 = xsdbool( t15 <> t17 ).
      t13 = t14.
      IF t14 = abap_false.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE string.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8->position_7b94.
        DATA t23 TYPE string.
        t23 = t21->filename.
        t19 = t23.
        t18 = xsdbool( t19 <> t1 ).
        t13 = t18.
      ENDIF.
      IF t13 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
      t28 = t8->resolved.
      t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_method_definition ).
      t26 = t27.
      IF t27 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA t33 TYPE REF TO zcl_lnt_method_definition.
        DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
        t34 = t8->resolved.
        t33 ?= t34.
        DATA t36 TYPE abap_bool.
        t36 = t33->static_9977.
        t31 = t36.
        t30 = xsdbool( t31 = abap_true ).
        t26 = t30.
      ENDIF.
      IF t26 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_position.
        DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
        t42 = t8->position_7b94.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        t46 = t42->token.
        DATA t48 TYPE REF TO zcl_lnt_position.
        t48 = t46->start.
        t40 = t48.
        t3->load( ).
        APPEND t40 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t50 = t2->get_children( ).
    DATA t52 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t53 TYPE REF TO object.
    DATA(t54) = VALUE i( ).
    DO.
      t50->load( ).
      IF t54 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t50->items INDEX t54 + 1 INTO t53.
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
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t58 = me->list_method_calls( i_filename = t1 i_node = t52 ).
      DATA t61 TYPE REF TO zcl_lnt_position.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t58->load( ).
        IF t63 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t58->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        t3->load( ).
        APPEND t61 TO t3->items.
        t3->save( ).
      ENDDO.
      DATA t68 TYPE i.
      t3->load( ).
      t68 = lines( t3->items ).
      t57 = t68.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->g_c_i_s_r_s_c_v_i_t_st_cl_v_in( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_sttc_cll_v_instnc_cnf( me->g_c_i_s_r_s_c_v_i_t_st_cl_v_in( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sttc_cll_v_instnc_cnf.
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
        t1 = NEW zcl_lnt_sttc_cll_v_instnc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_c_v_i_t_st_cl_v_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1716_8e55c1afb772.
  ENDMETHOD.
ENDCLASS.
