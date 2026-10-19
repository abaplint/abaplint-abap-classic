* TS: src/rules/keep_single_parameter_on_one_line.ts:16:1 KeepSingleParameterCallsOnOneLine
CLASS zcl_lnt_kp_sn_prm_cll_on_on_ln DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_k_s_p_o_o_l_t_k_s_p RETURNING VALUE(result) TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS s_c_i_s_r_k_s_p_o_o_l_t_k_s_p IMPORTING i_conf TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS run_parsed REDEFINITION.
    METHODS contains_field_assigments IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS cntns_nw_ln_tbl_exprssn IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS contains_new_line_value IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS contains_new_line_template IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_bf6e IMPORTING i_c TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS calc_statement_length IMPORTING i_c TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS is_multi_line IMPORTING i_c TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_without_parameters IMPORTING i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_single_parameter IMPORTING i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_kp_sn_prm_cll_on_on_ln IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_k_sn_pr_cl_on_on_ln_cn( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#keep-single-parameter-calls-on-one-line|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Whitespace| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |call_method(\n  2 ).|.
    t30 = t34.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = |call_method( 2 ).|.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |keep_single_parameter_on_one_line| i_title = |Keep single parameters on one line| i_short_description = |Keep single parameter calls on one line| i_bad_example = t30 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_k_s_p_o_o_l_t_k_s_p.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_k_s_p_o_o_l_t_k_s_p.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    t14 = t1->structure.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t14 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t24 = t1->statements.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t24->load( ).
      IF t31 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t24->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE abap_bool.
      DATA t41 TYPE REF TO zif_lnt_union_bb14dc41.
      t41 = t29.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      t45 = t41->get_first_token( ).
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      t48 = t41->get_last_token( ).
      t39 = xsdbool( xsdbool( t45->start->row < t48->start->row ) = abap_false ).
      t38 = t39.
      IF t39 = abap_false.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t71 = me->calc_statement_length( i_c = t29 ).
        DATA t73 TYPE f.
        t73 = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) )->zlnt_view_read_sr_2cad2a7edbae( ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t73.
        t38 = zlnt_runtime_numb_290eb04a9758=>compare( left = t71 right = t75 op = `>` ).
      ENDIF.
      t37 = t38.
      IF t38 = abap_false.
        t37 = me->contains_new_line_value( i_s = t29 ).
      ENDIF.
      t36 = t37.
      IF t37 = abap_false.
        t36 = me->cntns_nw_ln_tbl_exprssn( i_s = t29 ).
      ENDIF.
      t35 = t36.
      IF t36 = abap_false.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
        t84 = t29->find_all_expressions( i_type_9913 = t87 ).
        t84->load( ).
        t35 = xsdbool( lines( t84->items ) > 1 ).
      ENDIF.
      t34 = t35.
      IF t35 = abap_false.
        t34 = me->contains_new_line_template( i_s = t29 ).
      ENDIF.
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t94 = t29->find_all_expressions( i_type_9913 = t96 ).
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      DATA(t99) = VALUE i( ).
      DO.
        t94->load( ).
        IF t99 >= lines( t94->items ).
          EXIT.
        ENDIF.
        CLEAR t98.
        READ TABLE t94->items INDEX t99 + 1 INTO t98.
        t99 = t99 + 1.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        CLEAR t97.
        IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t100 ?= t98.
          DATA t101 TYPE REF TO object.
          t101 = t100->as_ref( ).
          t97 ?= t101.
        ELSE.
          t97 ?= t98.
        ENDIF.
        t3 = t3->concat( p0 = me->check_bf6e( i_c = t97 i_file = t1 ) ).
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD contains_field_assigments.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    t2 = i_s->find_all_expressions( i_type_9913 = t5 ).
    t2->load( ).
    result = xsdbool( lines( t2->items ) > 1 ).

  ENDMETHOD.

  METHOD cntns_nw_ln_tbl_exprssn.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t2 = i_s->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t11 TYPE f.
      DATA t17 TYPE REF TO zcl_lnt_position.
      t17 = t5->get_first_token( )->start.
      t11 = t17->row.
      DATA t27 TYPE REF TO zcl_lnt_position.
      t27 = t5->get_last_token( )->start.
      IF xsdbool( t11 <> t27->row ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD contains_new_line_value.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t2 = i_s->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      t12 = t5->get_first_token( )->str.
      DATA(t18) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t11 = |VALUE| ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t24 TYPE f.
        DATA t30 TYPE REF TO zcl_lnt_position.
        t30 = t5->get_first_token( )->start.
        t24 = t30->row.
        DATA t40 TYPE REF TO zcl_lnt_position.
        t40 = t5->get_last_token( )->start.
        t19 = xsdbool( t24 <> t40->row ).
      ENDIF.
      IF t19 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD contains_new_line_template.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
    t2 = i_s->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t5->get_all_tokens( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      DATA(t14) = VALUE i( ).
      DO.
        t10->load( ).
        IF t14 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t13.
        READ TABLE t10->items INDEX t14 + 1 INTO t13.
        t14 = t14 + 1.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t15.
        CLEAR t12.
        IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t15 ?= t13.
          DATA t16 TYPE REF TO object.
          t16 = t15->as_ref( ).
          t12 ?= t16.
        ELSE.
          t12 ?= t13.
        ENDIF.
        DATA(t18) = VALUE i( ).
        DATA t19 TYPE string.
        t19 = t12->str.
        DATA(t24) = `\n`.
        DATA(t25) = strlen( t19 ).
        IF t24 IS INITIAL.
          t18 = 0.
        ELSE.
          FIND t24 IN t19 MATCH OFFSET t18.
          IF sy-subrc <> 0.
            t18 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t18 >= 0 ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_c.
    DATA(t2) = i_file.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = me->is_single_parameter( i_c = t1 ).
    t4 = xsdbool( t5 = abap_true ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t10 TYPE REF TO zif_lnt_union_bb14dc41.
      t10 = t1.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t10->get_first_token( ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      t17 = t10->get_last_token( ).
      t3 = xsdbool( xsdbool( t14->start->row < t17->start->row ) = abap_true ).
    ENDIF.
    IF t3 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t39 = t1->find_all_expressions( i_type_9913 = t41 ).
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA t43 TYPE REF TO object.
      DATA(t44) = VALUE i( ).
      DO.
        t39->load( ).
        IF t44 >= lines( t39->items ).
          EXIT.
        ENDIF.
        CLEAR t43.
        READ TABLE t39->items INDEX t44 + 1 INTO t43.
        t44 = t44 + 1.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        CLEAR t42.
        IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t45 ?= t43.
          DATA t46 TYPE REF TO object.
          t46 = t45->as_ref( ).
          t42 ?= t46.
        ELSE.
          t42 ?= t43.
        ENDIF.
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA t49 TYPE abap_bool.
        t49 = me->is_single_parameter( i_c = t42 ).
        t48 = xsdbool( t49 = abap_false ).
        t47 = t48.
        IF t48 = abap_true.
          DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t60 TYPE REF TO zcl_lnt_abstract_node.
          t60 = t42.
          t59 = t60->children.
          t58 ?= t59.
          t58->load( ).
          t47 = xsdbool( xsdbool( lines( t58->items ) = 2 ) = abap_false ).
        ENDIF.
        IF t47 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDDO.
      DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t72 TYPE REF TO zcl_lnt_position.
      t72 = t1->get_first_token( )->start.
      DATA t79 TYPE REF TO zcl_lnt_abstract_token.
      t79 = t1->get_last_token( ).
      DATA t83 TYPE f.
      t83 = t79->start->row.
      DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t90 = t79->start->col.
      DATA t96 TYPE f.
      t96 = strlen( t79->str ).
      DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t101->has = abap_true.
      t101->value = t96.
      t70 = zcl_lnt_edit_helper=>replace_range( i_file = t2 i_start = t72 i_end = NEW zcl_lnt_position( i_row = t83 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t90 right = t101 op = `+` ) ) i_text = t1->concat_tokens( ) ).
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t105.
      DATA t108 TYPE REF TO zcl_lnt_issue.
      DATA t110 TYPE REF TO zcl_lnt_abstract_token.
      t110 = t1->get_first_token( ).
      DATA(t113) = VALUE string( ).
      DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t124 = t124 && |nABAP.md#keep-single-parameter-calls-on-one-line|.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t124.
      t121 = t125.
      DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t131.
      t131->load( ).
      APPEND |Whitespace| TO t131->items.
      t131->save( ).
      t131->load( ).
      APPEND |Styleguide| TO t131->items.
      t131->save( ).
      t131->load( ).
      APPEND |SingleFile| TO t131->items.
      t131->save( ).
      t131->load( ).
      APPEND |Quickfix| TO t131->items.
      t131->save( ).
      t127 = t131.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t147->has = abap_true.
      t147->value = |call_method(\n  2 ).|.
      t143 = t147.
      DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t153->has = abap_true.
      t153->value = |call_method( 2 ).|.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t114 = NEW zcl_lnt_irule_metadata( i_key = |keep_single_parameter_on_one_line| i_title = |Keep single parameters on one line| i_short_description = |Keep single parameter calls on one line| i_bad_example = t143 i_good_example = t153 i_extended_information = t121 i_tags = t127 i_pragma = t155 i_pseudo_comment = t157 ).
      CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
      t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t165 ).
      ENDIF.
      CREATE OBJECT t114->zlnt_json_ownkeys_70e5fd461788.
      t114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t167 ).
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t169 ).
      ENDIF.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t171 ).
      ENDIF.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t173 ).
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t175 ).
      ENDIF.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t177 ).
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t179 ).
      ENDIF.
      t113 = t114->key.
      t108 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t110 i_message_26cb = |Keep single parameter on one line| i_key = t113 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t70 ).
      t105->load( ).
      APPEND t108 TO t105->items.
      t105->save( ).
      result = t105.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD calc_statement_length.
    DATA(t1) = i_c.
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t4) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4->has = abap_true.
    t4->value = CONV f( 0 ).
    t2 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_tokens( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t15->has = abap_true.
      t15->value = CONV f( 0 ).
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t2 right = t15 op = `==` ) = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t25 = t7->start->col.
        t2 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t2 right = t25 op = `+` ).
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t30 TYPE f.
      t30 = strlen( t7->str ).
      DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t38->has = abap_true.
      t38->value = t30.
      t28 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t2 right = t38 op = `+` ).
      DATA(t40) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t40->has = abap_true.
      t40->value = CONV f( 1 ).
      t2 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t28 right = t40 op = `+` ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_multi_line.
    DATA(t1) = i_c.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    t3 = t1->get_first_token( ).
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    t6 = t1->get_last_token( ).
    result = xsdbool( t3->start->row < t6->start->row ).

  ENDMETHOD.

  METHOD is_without_parameters.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = i_c.
    t5 = t6->children.
    t4 ?= t5.
    t4->load( ).
    result = xsdbool( lines( t4->items ) = 2 ).

  ENDMETHOD.

  METHOD is_single_parameter.
    DATA(t1) = i_c.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expression( i_type_9913 = t5 ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t6 = t1->find_all_expressions( i_type_9913 = t8 ).
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA t10 TYPE REF TO object.
      DATA(t11) = VALUE i( ).
      DO.
        t6->load( ).
        IF t11 >= lines( t6->items ).
          EXIT.
        ENDIF.
        CLEAR t10.
        READ TABLE t6->items INDEX t11 + 1 INTO t10.
        t11 = t11 + 1.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        CLEAR t9.
        IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t12 ?= t10.
          DATA t13 TYPE REF TO object.
          t13 = t12->as_ref( ).
          t9 ?= t13.
        ELSE.
          t9 ?= t10.
        ENDIF.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t18 TYPE REF TO zcl_lnt_abstract_node.
        t18 = t9.
        t17 = t18->children.
        t16 ?= t17.
        t16->load( ).
        IF xsdbool( lines( t16->items ) > 1 ) = abap_true.
          result = abap_false.
          RETURN.
        ENDIF.
      ENDDO.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t25 = t1->find_direct_expression( i_type_9913 = t28 ).
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t35 TYPE REF TO zcl_lnt_abstract_node.
      t35 = t25.
      t34 = t35->children.
      t33 ?= t34.
      t33->load( ).
      result = xsdbool( lines( t33->items ) = 1 ).
      RETURN.
    ENDIF.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t41 = t1->find_direct_expression( i_type_9913 = t44 ).
    IF xsdbool( t41 IS BOUND ) = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_abstract_node.
      t51 = t41.
      t50 = t51->children.
      t49 ?= t50.
      t49->load( ).
      IF xsdbool( lines( t49->items ) > 2 ) = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      t60 = t41.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t58 = t60->find_direct_expression( i_type_9913 = t62 ).
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      t64 = xsdbool( t58 IS BOUND ).
      t63 = t64.
      IF t64 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zcl_lnt_abstract_node.
        t70 = t58.
        t69 = t70->children.
        t68 ?= t69.
        t68->load( ).
        t63 = xsdbool( lines( t68->items ) = 1 ).
      ENDIF.
      IF t63 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA t79 TYPE REF TO zcl_lnt_expression_node.
      t79 = t41.
      DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
      t77 = t79->find_direct_expression( i_type_9913 = t81 ).
      DATA t82 TYPE abap_bool.
      DATA t83 TYPE abap_bool.
      t83 = xsdbool( t77 IS BOUND ).
      t82 = t83.
      IF t83 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t89 TYPE REF TO zcl_lnt_abstract_node.
        t89 = t77.
        t88 = t89->children.
        t87 ?= t88.
        t87->load( ).
        t82 = xsdbool( lines( t87->items ) = 1 ).
      ENDIF.
      IF t82 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
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
        t1 = NEW zcl_lnt_k_sn_pr_cl_on_on_ln_cn( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_k_s_p_o_o_l_t_k_s_p( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1554_e20a2db94794.
  ENDMETHOD.
ENDCLASS.
