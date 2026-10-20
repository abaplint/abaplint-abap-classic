* TS: src/rules/align_parameters.ts:27:1 AlignParameters
CLASS zcl_lnt_align_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_al_pr_ts_al_prm RETURNING VALUE(result) TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS st_cn_in_sr_rl_al_pr_ts_al_prm IMPORTING i_conf TYPE REF TO zcl_lnt_align_parameters_conf.
    METHODS rn_pr_in_sr_rl_al_pr_ts_al_prm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_candidate IMPORTING i_candidate TYPE REF TO zcl_lnt_icandidate i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS new_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS value_body_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS raise_and_create_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS method_call_param_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS function_parameter_candidates IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_align_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_align_parameters_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Checks:\n* function module calls\n* method calls\n* VALUE const|.
    t11 = t11 && |ructors\n* NEW constructors\n* RAISE EXCEPTION statements\n* CR|.
    t11 = t11 && |EATE OBJECT statements\n* RAISE EVENT statements\n\nhttps://git|.
    t11 = t11 && |hub.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#al|.
    t11 = t11 && |ign-parameters\n\nDoes not take effect on non functional metho|.
    t11 = t11 && |d calls, use https://rules.abaplint.org/functional_writing/\n|.
    t11 = t11 && |\nIf parameters are on the same row, no issues are reported, |.
    t11 = t11 && |see\nhttps://rules.abaplint.org/max_one_method_parameter_per_|.
    t11 = t11 && |line/ for splitting parameters to lines|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Whitespace| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo = 2\n    parameter|.
    t33 = t33 && | = 3.\n\nfoobar( moo = 1\n  param = 1 ).\n\nfoo = VALUE #(\n    fo|.
    t33 = t33 && |o = bar\n        moo = 2 ).|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA(t39) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo       = 2\n    par|.
    t39 = t39 && |ameter = 3.\n\nfoobar( moo   = 1\n        param = 1 ).\n\nfoo = V|.
    t39 = t39 && |ALUE #(\n    foo = bar\n    moo = 2 ).\n\nDATA(sdf) = VALUE type|.
    t39 = t39 && |(\n  common_val     = 2\n  another_common = 5\n  ( row_value = |.
    t39 = t39 && |4\n    value_foo = 5 ) ).|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |align_parameters| i_title = |Align Parameters| i_short_description = |Checks for vertially aligned parameters| i_bad_example = t30 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
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

  METHOD gt_cn_in_sr_rl_al_pr_ts_al_prm.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_al_pr_ts_al_prm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA(t20) = VALUE i( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = me->function_parameter_candidates( i_stru = t4 ).
    DATA t24 TYPE REF TO zcl_lnt_icandidate.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t21->load( ).
      IF t26 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t21->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      t18->load( ).
      APPEND t24 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t20 = lines( t18->items ).
    DATA(t33) = VALUE i( ).
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = me->method_call_param_candidates( i_stru = t4 ).
    DATA t37 TYPE REF TO zcl_lnt_icandidate.
    DATA t38 TYPE REF TO object.
    DATA(t39) = VALUE i( ).
    DO.
      t34->load( ).
      IF t39 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t34->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      t18->load( ).
      APPEND t37 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t33 = lines( t18->items ).
    DATA(t46) = VALUE i( ).
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t47 = me->value_body_candidates( i_stru = t4 ).
    DATA t50 TYPE REF TO zcl_lnt_icandidate.
    DATA t51 TYPE REF TO object.
    DATA(t52) = VALUE i( ).
    DO.
      t47->load( ).
      IF t52 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t51.
      READ TABLE t47->items INDEX t52 + 1 INTO t51.
      t52 = t52 + 1.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t50.
      IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t51.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t50 ?= t54.
      ELSE.
        t50 ?= t51.
      ENDIF.
      t18->load( ).
      APPEND t50 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t46 = lines( t18->items ).
    DATA(t59) = VALUE i( ).
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t60 = me->raise_and_create_candidates( i_stru = t4 ).
    DATA t63 TYPE REF TO zcl_lnt_icandidate.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t60->load( ).
      IF t65 >= lines( t60->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t60->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      t18->load( ).
      APPEND t63 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t59 = lines( t18->items ).
    DATA(t72) = VALUE i( ).
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t73 = me->new_candidates( i_stru = t4 ).
    DATA t76 TYPE REF TO zcl_lnt_icandidate.
    DATA t77 TYPE REF TO object.
    DATA(t78) = VALUE i( ).
    DO.
      t73->load( ).
      IF t78 >= lines( t73->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t73->items INDEX t78 + 1 INTO t77.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t76.
      IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t77.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t77.
      ENDIF.
      t18->load( ).
      APPEND t76 TO t18->items.
      t18->save( ).
    ENDDO.
    t18->load( ).
    t72 = lines( t18->items ).
    DATA t86 TYPE REF TO zcl_lnt_icandidate.
    DATA t87 TYPE REF TO object.
    DATA(t88) = VALUE i( ).
    DO.
      t18->load( ).
      IF t88 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t87.
      READ TABLE t18->items INDEX t88 + 1 INTO t87.
      t88 = t88 + 1.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      CLEAR t86.
      IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t89 ?= t87.
        DATA t90 TYPE REF TO object.
        t90 = t89->as_ref( ).
        t86 ?= t90.
      ELSE.
        t86 ?= t87.
      ENDIF.
      DATA t91 TYPE REF TO zcl_lnt_issue.
      t91 = me->check_candidate( i_candidate = t86 i_file = t1 ).
      IF xsdbool( t91 IS BOUND ) = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_issue.
        t98 = t91.
        t2->load( ).
        APPEND t98 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_candidate.
    DATA(t1) = i_candidate.
    DATA(t2) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->parameters.
    t5->load( ).
    IF xsdbool( lines( t5->items ) = 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t11) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t11->has = abap_true.
    t11->value = CONV f( 0 ).
    t9 = t11.
    DATA t12 TYPE f.
    t12 = CONV f( 0 ).
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = t1->parameters.
    DATA t16 TYPE REF TO zcl_lnt_iparameter_data.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t14->load( ).
      IF t18 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t14->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t27 TYPE REF TO zif_lnt_node.
      t27 = t16->left.
      DATA t31 TYPE REF TO zcl_lnt_position.
      t31 = t27->get_last_token( )->start.
      t24 = t31->col.
      DATA t35 TYPE f.
      DATA t42 TYPE string.
      t42 = t16->left->get_last_token( )->str.
      t35 = strlen( t42 ).
      DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t45->has = abap_true.
      t45->value = t35.
      t23 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t24 right = t45 op = `+` ).
      DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t47->has = abap_true.
      t47->value = CONV f( 1 ).
      t21 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t23 right = t47 op = `+` ).
      IF xsdbool( t16->eq->row = t12 ) = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
      t12 = t16->eq->row.
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t21 right = t9 op = `>` ) = abap_true.
        t9 = t21.
      ENDIF.
    ENDDO.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t67 = t1->parameters.
    DATA t69 TYPE REF TO zcl_lnt_iparameter_data.
    DATA t70 TYPE REF TO object.
    DATA(t71) = VALUE i( ).
    DO.
      t67->load( ).
      IF t71 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t70.
      READ TABLE t67->items INDEX t71 + 1 INTO t70.
      t71 = t71 + 1.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      CLEAR t69.
      IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t72 ?= t70.
        DATA t73 TYPE REF TO object.
        t73 = t72->as_ref( ).
        t69 ?= t73.
      ELSE.
        t69 ?= t70.
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t79 = t69->eq->col.
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t79 right = t9 op = `!=` ) = abap_true.
        DATA t82 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t82.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t88 = t69->eq->col.
        IF zlnt_runtime_numb_290eb04a9758=>compare( left = t88 right = t9 op = `<` ) = abap_true.
          DATA t95 TYPE REF TO zcl_lnt_position.
          t95 = t69->eq.
          DATA t98 TYPE string.
          t98 = | |.
          DATA(t100) = VALUE string( ).
          DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t108 = t69->eq->col.
          t102 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t9 right = t108 op = `-` ).
          DATA(t110) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t102 ) ).
          DATA(t111) = strlen( t98 ).
          DATA(t112) = CONV f( trunc( t110 ) ).
          IF t112 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t98 IS NOT INITIAL.
            IF t112 > 2147483647 OR t112 * strlen( t98 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t100 = repeat( val = t98 occ = CONV i( t112 ) ).
          ENDIF.
          t82 = zcl_lnt_edit_helper=>insert_at( i_file = t2 i_pos = t95 i_text = t100 ).
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_position.
          DATA t123 TYPE f.
          t123 = t69->eq->row.
          t118 = NEW zcl_lnt_position( i_row = t123 i_col = t9 ).
          DATA t126 TYPE REF TO zcl_lnt_position.
          t126 = t69->eq.
          t82 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t118 i_end = t126 ).
        ENDIF.
        DATA t130 TYPE string.
        DATA(t131) = |Align parameters to column |.
        DATA t132 TYPE string.
        t132 = zlnt_runtime_numb_290eb04a9758=>text( t9 ).
        DATA(t134) = strlen( t131 ).
        t130 = |{ t131 }{ t132 }|.
        DATA t139 TYPE REF TO zcl_lnt_position.
        t139 = t69->eq.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        DATA(t153) = |Checks:\n* function module calls\n* method calls\n* VALUE const|.
        t153 = t153 && |ructors\n* NEW constructors\n* RAISE EXCEPTION statements\n* CR|.
        t153 = t153 && |EATE OBJECT statements\n* RAISE EVENT statements\n\nhttps://git|.
        t153 = t153 && |hub.com/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#al|.
        t153 = t153 && |ign-parameters\n\nDoes not take effect on non functional metho|.
        t153 = t153 && |d calls, use https://rules.abaplint.org/functional_writing/\n|.
        t153 = t153 && |\nIf parameters are on the same row, no issues are reported, |.
        t153 = t153 && |see\nhttps://rules.abaplint.org/max_one_method_parameter_per_|.
        t153 = t153 && |line/ for splitting parameters to lines|.
        DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t154->has = abap_true.
        t154->value = t153.
        t150 = t154.
        DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t156.
        DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t160.
        t160->load( ).
        APPEND |SingleFile| TO t160->items.
        t160->save( ).
        t160->load( ).
        APPEND |Whitespace| TO t160->items.
        t160->save( ).
        t160->load( ).
        APPEND |Styleguide| TO t160->items.
        t160->save( ).
        t160->load( ).
        APPEND |Quickfix| TO t160->items.
        t160->save( ).
        t156 = t160.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t175) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo = 2\n    parameter|.
        t175 = t175 && | = 3.\n\nfoobar( moo = 1\n  param = 1 ).\n\nfoo = VALUE #(\n    fo|.
        t175 = t175 && |o = bar\n        moo = 2 ).|.
        DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t176->has = abap_true.
        t176->value = t175.
        t172 = t176.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        DATA(t181) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo       = 2\n    par|.
        t181 = t181 && |ameter = 3.\n\nfoobar( moo   = 1\n        param = 1 ).\n\nfoo = V|.
        t181 = t181 && |ALUE #(\n    foo = bar\n    moo = 2 ).\n\nDATA(sdf) = VALUE type|.
        t181 = t181 && |(\n  common_val     = 2\n  another_common = 5\n  ( row_value = |.
        t181 = t181 && |4\n    value_foo = 5 ) ).|.
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t181.
        t178 = t182.
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t184.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t186.
        t143 = NEW zcl_lnt_irule_metadata( i_key = |align_parameters| i_title = |Align Parameters| i_short_description = |Checks for vertially aligned parameters| i_bad_example = t172 i_good_example = t178 i_extended_information = t150 i_tags = t156 i_pragma = t184 i_pseudo_comment = t186 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t188 ).
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t189 ).
        ENDIF.
        DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t190.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t190 ).
        ENDIF.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t191 ).
        ENDIF.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t194 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t196 ).
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t198 ).
        ENDIF.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t200 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t202 ).
        ENDIF.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t204 ).
        ENDIF.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t206 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t208 ).
        ENDIF.
        t142 = t143->key.
        result = zcl_lnt_issue=>at_position( i_file = t2 i_start = t139 i_message_26cb = t130 i_key = t142 i_severity = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t82 ).
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD new_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    t4 = t1->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t14 = t7->find_direct_expressions( i_type_9913 = t17 ).
      t14->load( ).
      IF xsdbool( lines( t14->items ) >= 2 ) = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        DATA(t25) = VALUE i( ).
        DO.
          t14->load( ).
          IF t25 >= lines( t14->items ).
            EXIT.
          ENDIF.
          CLEAR t24.
          READ TABLE t14->items INDEX t25 + 1 INTO t24.
          t25 = t25 + 1.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          CLEAR t23.
          IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t26 ?= t24.
            DATA t27 TYPE REF TO object.
            t27 = t26->as_ref( ).
            t23 ?= t27.
          ELSE.
            t23 ?= t24.
          ENDIF.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t31 TYPE REF TO zcl_lnt_abstract_node.
          t31 = t23.
          t30 = t31->children.
          t29 ?= t30.
          t28 = t29.
          t28->load( ).
          IF xsdbool( lines( t28->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t40 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t40.
          DATA t41 TYPE REF TO zif_lnt_node.
          CLEAR t41.
          DATA t42 TYPE REF TO zif_lnt_node.
          CLEAR t42.
          DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t43.
          DATA t45 TYPE REF TO object.
          CLEAR t45.
          t28->load( ).
          CLEAR t45.
          READ TABLE t28->items INDEX 1 INTO t45.
          DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t46.
          CLEAR t43.
          IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t46 ?= t45.
            DATA t47 TYPE REF TO object.
            t47 = t46->as_ref( ).
            t43 ?= t47.
          ELSE.
            t43 ?= t45.
          ENDIF.
          t42 ?= t43.
          t41 = t42.
          DATA t48 TYPE REF TO zcl_lnt_position.
          CLEAR t48.
          DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t52.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          t28->load( ).
          CLEAR t54.
          READ TABLE t28->items INDEX 2 INTO t54.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          CLEAR t52.
          IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t55 ?= t54.
            DATA t56 TYPE REF TO object.
            t56 = t55->as_ref( ).
            t52 ?= t56.
          ELSE.
            t52 ?= t54.
          ENDIF.
          t48 = t52->get_first_token( )->start.
          DATA t60 TYPE REF TO zif_lnt_node.
          CLEAR t60.
          DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t61.
          DATA t63 TYPE REF TO object.
          CLEAR t63.
          t28->load( ).
          CLEAR t63.
          READ TABLE t28->items INDEX 3 INTO t63.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          CLEAR t61.
          IF t63 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t64 ?= t63.
            DATA t65 TYPE REF TO object.
            t65 = t64->as_ref( ).
            t61 ?= t65.
          ELSE.
            t61 ?= t63.
          ENDIF.
          t60 ?= t61.
          t40 = NEW zcl_lnt_iparameter_data( i_left = t41 i_eq = t48 i_right = t60 ).
          CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
          t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t66 ).
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t67 ).
          ENDIF.
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t68.
          IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t68 ).
          ENDIF.
          CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
          t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t70 ).
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t72 ).
          ENDIF.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t74 ).
          ENDIF.
          t12->load( ).
          APPEND t40 TO t12->items.
          t12->save( ).
        ENDDO.
        t12->load( ).
        IF xsdbool( lines( t12->items ) > 0 ) = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_icandidate.
          t80 = NEW zcl_lnt_icandidate( i_parameters = t12 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t83 ).
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t85 ).
          t2->load( ).
          APPEND t80 TO t2->items.
          t2->save( ).
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_expression_node.
      DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t86 = t7->find_direct_expression( i_type_9913 = t89 ).
      IF xsdbool( t86 IS BOUND ) = abap_true.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zcl_lnt_abstract_node.
        t94 = t86.
        t93 = t94->children.
        t92 ?= t93.
        DATA t99 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t99.
        DATA t100 TYPE REF TO object.
        CLEAR t100.
        DATA(t101) = VALUE i( ).
        DO.
          t92->load( ).
          IF t101 >= lines( t92->items ).
            EXIT.
          ENDIF.
          CLEAR t100.
          READ TABLE t92->items INDEX t101 + 1 INTO t100.
          t101 = t101 + 1.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          CLEAR t99.
          IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t102 ?= t100.
            DATA t103 TYPE REF TO object.
            t103 = t102->as_ref( ).
            t99 ?= t103.
          ELSE.
            t99 ?= t100.
          ENDIF.
          DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t104 = t99->get_children( ).
          t104->load( ).
          IF xsdbool( lines( t104->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t112 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t112.
          DATA t113 TYPE REF TO zif_lnt_node.
          CLEAR t113.
          DATA t114 TYPE REF TO zif_lnt_node.
          CLEAR t114.
          DATA t116 TYPE REF TO object.
          CLEAR t116.
          t104->load( ).
          CLEAR t116.
          READ TABLE t104->items INDEX 1 INTO t116.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          CLEAR t114.
          IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t117 ?= t116.
            DATA t118 TYPE REF TO object.
            t118 = t117->as_ref( ).
            t114 ?= t118.
          ELSE.
            t114 ?= t116.
          ENDIF.
          t113 = t114.
          DATA t119 TYPE REF TO zcl_lnt_position.
          CLEAR t119.
          DATA t123 TYPE REF TO zif_lnt_node.
          CLEAR t123.
          DATA t125 TYPE REF TO object.
          CLEAR t125.
          t104->load( ).
          CLEAR t125.
          READ TABLE t104->items INDEX 2 INTO t125.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          CLEAR t123.
          IF t125 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t126 ?= t125.
            DATA t127 TYPE REF TO object.
            t127 = t126->as_ref( ).
            t123 ?= t127.
          ELSE.
            t123 ?= t125.
          ENDIF.
          t119 = t123->get_first_token( )->start.
          DATA t131 TYPE REF TO zif_lnt_node.
          CLEAR t131.
          DATA t133 TYPE REF TO object.
          CLEAR t133.
          t104->load( ).
          CLEAR t133.
          READ TABLE t104->items INDEX 3 INTO t133.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          CLEAR t131.
          IF t133 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t134 ?= t133.
            DATA t135 TYPE REF TO object.
            t135 = t134->as_ref( ).
            t131 ?= t135.
          ELSE.
            t131 ?= t133.
          ENDIF.
          t112 = NEW zcl_lnt_iparameter_data( i_left = t113 i_eq = t119 i_right = t131 ).
          CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
          t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t136 ).
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t137 ).
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t138 ).
          ENDIF.
          CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
          t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t140 ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t142 ).
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t144 ).
          ENDIF.
          t12->load( ).
          APPEND t112 TO t12->items.
          t12->save( ).
        ENDDO.
        t12->load( ).
        IF xsdbool( lines( t12->items ) > 0 ) = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_icandidate.
          t150 = NEW zcl_lnt_icandidate( i_parameters = t12 ).
          CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
          t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t153 ).
          CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
          t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t155 ).
          t2->load( ).
          APPEND t150 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD value_body_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
    t4 = t1->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t14 = t7->find_direct_expressions( i_type_9913 = t17 ).
      t14->load( ).
      IF xsdbool( lines( t14->items ) <= 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t14->load( ).
        IF t25 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t14->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zcl_lnt_abstract_node.
        t31 = t23.
        t30 = t31->children.
        t29 ?= t30.
        t28 = t29.
        t28->load( ).
        IF xsdbool( lines( t28->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t40 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t40.
        DATA t41 TYPE REF TO zif_lnt_node.
        CLEAR t41.
        DATA t42 TYPE REF TO zif_lnt_node.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t43.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        t28->load( ).
        CLEAR t45.
        READ TABLE t28->items INDEX 1 INTO t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t45.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t45.
        ENDIF.
        t42 ?= t43.
        t41 = t42.
        DATA t48 TYPE REF TO zcl_lnt_position.
        CLEAR t48.
        DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t52.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t28->load( ).
        CLEAR t54.
        READ TABLE t28->items INDEX 2 INTO t54.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        CLEAR t52.
        IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t54.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t52 ?= t56.
        ELSE.
          t52 ?= t54.
        ENDIF.
        t48 = t52->get_first_token( )->start.
        DATA t60 TYPE REF TO zif_lnt_node.
        CLEAR t60.
        DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t61.
        DATA t63 TYPE REF TO object.
        CLEAR t63.
        t28->load( ).
        CLEAR t63.
        READ TABLE t28->items INDEX 3 INTO t63.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t63 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t63.
          DATA t65 TYPE REF TO object.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t63.
        ENDIF.
        t60 ?= t61.
        t40 = NEW zcl_lnt_iparameter_data( i_left = t41 i_eq = t48 i_right = t60 ).
        CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
        t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t66 ).
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t67 ).
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t68 ).
        ENDIF.
        CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
        t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t70 ).
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t72 ).
        ENDIF.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t74 ).
        ENDIF.
        t12->load( ).
        APPEND t40 TO t12->items.
        t12->save( ).
      ENDDO.
      t12->load( ).
      IF xsdbool( lines( t12->items ) > 0 ) = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_icandidate.
        t80 = NEW zcl_lnt_icandidate( i_parameters = t12 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t83 ).
        CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
        t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t85 ).
        t2->load( ).
        APPEND t80 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t86 = t1->find_all_expressions_recursive( i_type_9913 = t88 ).
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    DATA t90 TYPE REF TO object.
    DATA(t91) = VALUE i( ).
    DO.
      t86->load( ).
      IF t91 >= lines( t86->items ).
        EXIT.
      ENDIF.
      CLEAR t90.
      READ TABLE t86->items INDEX t91 + 1 INTO t90.
      t91 = t91 + 1.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      CLEAR t89.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t92 ?= t90.
        DATA t93 TYPE REF TO object.
        t93 = t92->as_ref( ).
        t89 ?= t93.
      ELSE.
        t89 ?= t90.
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t94.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t96 = t89->find_direct_expressions( i_type_9913 = t99 ).
      t96->load( ).
      IF xsdbool( lines( t96->items ) <= 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      DATA(t107) = VALUE i( ).
      DO.
        t96->load( ).
        IF t107 >= lines( t96->items ).
          EXIT.
        ENDIF.
        CLEAR t106.
        READ TABLE t96->items INDEX t107 + 1 INTO t106.
        t107 = t107 + 1.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        CLEAR t105.
        IF t106 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t108 ?= t106.
          DATA t109 TYPE REF TO object.
          t109 = t108->as_ref( ).
          t105 ?= t109.
        ELSE.
          t105 ?= t106.
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t113 TYPE REF TO zcl_lnt_abstract_node.
        t113 = t105.
        t112 = t113->children.
        t111 ?= t112.
        t110 = t111.
        t110->load( ).
        IF xsdbool( lines( t110->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t122 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t122.
        DATA t123 TYPE REF TO zif_lnt_node.
        CLEAR t123.
        DATA t124 TYPE REF TO zif_lnt_node.
        CLEAR t124.
        DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t125.
        DATA t127 TYPE REF TO object.
        CLEAR t127.
        t110->load( ).
        CLEAR t127.
        READ TABLE t110->items INDEX 1 INTO t127.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        CLEAR t125.
        IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t128 ?= t127.
          DATA t129 TYPE REF TO object.
          t129 = t128->as_ref( ).
          t125 ?= t129.
        ELSE.
          t125 ?= t127.
        ENDIF.
        t124 ?= t125.
        t123 = t124.
        DATA t130 TYPE REF TO zcl_lnt_position.
        CLEAR t130.
        DATA t134 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t134.
        DATA t136 TYPE REF TO object.
        CLEAR t136.
        t110->load( ).
        CLEAR t136.
        READ TABLE t110->items INDEX 2 INTO t136.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        CLEAR t134.
        IF t136 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t137 ?= t136.
          DATA t138 TYPE REF TO object.
          t138 = t137->as_ref( ).
          t134 ?= t138.
        ELSE.
          t134 ?= t136.
        ENDIF.
        t130 = t134->get_first_token( )->start.
        DATA t142 TYPE REF TO zif_lnt_node.
        CLEAR t142.
        DATA t143 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t143.
        DATA t145 TYPE REF TO object.
        CLEAR t145.
        t110->load( ).
        CLEAR t145.
        READ TABLE t110->items INDEX 3 INTO t145.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        CLEAR t143.
        IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t146 ?= t145.
          DATA t147 TYPE REF TO object.
          t147 = t146->as_ref( ).
          t143 ?= t147.
        ELSE.
          t143 ?= t145.
        ENDIF.
        t142 ?= t143.
        t122 = NEW zcl_lnt_iparameter_data( i_left = t123 i_eq = t130 i_right = t142 ).
        CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
        t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t148 ).
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t149 ).
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t150 ).
        ENDIF.
        CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
        t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t152 ).
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t154 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t156 ).
        ENDIF.
        t94->load( ).
        APPEND t122 TO t94->items.
        t94->save( ).
      ENDDO.
      t94->load( ).
      IF xsdbool( lines( t94->items ) > 0 ) = abap_true.
        DATA t162 TYPE REF TO zcl_lnt_icandidate.
        t162 = NEW zcl_lnt_icandidate( i_parameters = t94 ).
        CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
        t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t165 ).
        CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
        t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t167 ).
        t2->load( ).
        APPEND t162 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD raise_and_create_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d586_198a3628c215.
    t4 = t1->find_all_statements( i_type_9913 = t7 ).
    DATA(t8) = VALUE i( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d435_660f11c8643d.
    t9 = t1->find_all_statements( i_type_9913 = t11 ).
    DATA t12 TYPE REF TO zcl_lnt_statement_node.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t9->load( ).
      IF t14 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t9->items INDEX t14 + 1 INTO t13.
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
      t4->load( ).
      APPEND t12 TO t4->items.
      t4->save( ).
    ENDDO.
    t4->load( ).
    t8 = lines( t4->items ).
    DATA(t21) = VALUE i( ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d588_a72b5bf675f5.
    t22 = t1->find_all_statements( i_type_9913 = t24 ).
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    DATA t26 TYPE REF TO object.
    DATA(t27) = VALUE i( ).
    DO.
      t22->load( ).
      IF t27 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t22->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      t4->load( ).
      APPEND t25 TO t4->items.
      t4->save( ).
    ENDDO.
    t4->load( ).
    t21 = lines( t4->items ).
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    DATA t36 TYPE REF TO object.
    DATA(t37) = VALUE i( ).
    DO.
      t4->load( ).
      IF t37 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t4->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t43 = t35->find_direct_expression( i_type_9913 = t45 ).
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      t49 = t43.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t51.
      IF xsdbool( t49 IS INITIAL ) = abap_true.
        CLEAR t51.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t57 TYPE REF TO zcl_lnt_abstract_node.
        t57 = t49.
        t56 = t57->children.
        t55 ?= t56.
        t51 = t55.
      ENDIF.
      t47 = t51.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t62.
      IF xsdbool( t47 IS BOUND ) = abap_true.
        t62 = t47.
      ELSE.
        CREATE OBJECT t62.
      ENDIF.
      t46 = t62.
      DATA t68 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t68.
      DATA t69 TYPE REF TO object.
      CLEAR t69.
      DATA(t70) = VALUE i( ).
      DO.
        t46->load( ).
        IF t70 >= lines( t46->items ).
          EXIT.
        ENDIF.
        CLEAR t69.
        READ TABLE t46->items INDEX t70 + 1 INTO t69.
        t70 = t70 + 1.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        CLEAR t68.
        IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t71 ?= t69.
          DATA t72 TYPE REF TO object.
          t72 = t71->as_ref( ).
          t68 ?= t72.
        ELSE.
          t68 ?= t69.
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t73 = t68->get_children( ).
        t73->load( ).
        IF xsdbool( lines( t73->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t81 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t81.
        DATA t82 TYPE REF TO zif_lnt_node.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_node.
        CLEAR t83.
        DATA t85 TYPE REF TO object.
        CLEAR t85.
        t73->load( ).
        CLEAR t85.
        READ TABLE t73->items INDEX 1 INTO t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t83.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t85.
          DATA t87 TYPE REF TO object.
          t87 = t86->as_ref( ).
          t83 ?= t87.
        ELSE.
          t83 ?= t85.
        ENDIF.
        t82 = t83.
        DATA t88 TYPE REF TO zcl_lnt_position.
        CLEAR t88.
        DATA t92 TYPE REF TO zif_lnt_node.
        CLEAR t92.
        DATA t94 TYPE REF TO object.
        CLEAR t94.
        t73->load( ).
        CLEAR t94.
        READ TABLE t73->items INDEX 2 INTO t94.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        CLEAR t92.
        IF t94 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t95 ?= t94.
          DATA t96 TYPE REF TO object.
          t96 = t95->as_ref( ).
          t92 ?= t96.
        ELSE.
          t92 ?= t94.
        ENDIF.
        t88 = t92->get_first_token( )->start.
        DATA t100 TYPE REF TO zif_lnt_node.
        CLEAR t100.
        DATA t102 TYPE REF TO object.
        CLEAR t102.
        t73->load( ).
        CLEAR t102.
        READ TABLE t73->items INDEX 3 INTO t102.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        CLEAR t100.
        IF t102 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t103 ?= t102.
          DATA t104 TYPE REF TO object.
          t104 = t103->as_ref( ).
          t100 ?= t104.
        ELSE.
          t100 ?= t102.
        ENDIF.
        t81 = NEW zcl_lnt_iparameter_data( i_left = t82 i_eq = t88 i_right = t100 ).
        CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
        t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t105 ).
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t107 ).
        ENDIF.
        CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
        t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t109 ).
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t111 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t113 ).
        ENDIF.
        t40->load( ).
        APPEND t81 TO t40->items.
        t40->save( ).
      ENDDO.
      DATA t115 TYPE REF TO zcl_lnt_expression_node.
      DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t115 = t35->find_direct_expression( i_type_9913 = t117 ).
      DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t118.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t119.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      t121 = t115.
      DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t123.
      IF xsdbool( t121 IS INITIAL ) = abap_true.
        CLEAR t123.
      ELSE.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t129 TYPE REF TO zcl_lnt_abstract_node.
        t129 = t121.
        t128 = t129->children.
        t127 ?= t128.
        t123 = t127.
      ENDIF.
      t119 = t123.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t134.
      IF xsdbool( t119 IS BOUND ) = abap_true.
        t134 = t119.
      ELSE.
        CREATE OBJECT t134.
      ENDIF.
      t118 = t134.
      DATA t140 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      DATA(t142) = VALUE i( ).
      DO.
        t118->load( ).
        IF t142 >= lines( t118->items ).
          EXIT.
        ENDIF.
        CLEAR t141.
        READ TABLE t118->items INDEX t142 + 1 INTO t141.
        t142 = t142 + 1.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        CLEAR t140.
        IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t143 ?= t141.
          DATA t144 TYPE REF TO object.
          t144 = t143->as_ref( ).
          t140 ?= t144.
        ELSE.
          t140 ?= t141.
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t145 = t140->get_children( ).
        t145->load( ).
        IF xsdbool( lines( t145->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t153 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t153.
        DATA t154 TYPE REF TO zif_lnt_node.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_node.
        CLEAR t155.
        DATA t157 TYPE REF TO object.
        CLEAR t157.
        t145->load( ).
        CLEAR t157.
        READ TABLE t145->items INDEX 1 INTO t157.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        CLEAR t155.
        IF t157 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t158 ?= t157.
          DATA t159 TYPE REF TO object.
          t159 = t158->as_ref( ).
          t155 ?= t159.
        ELSE.
          t155 ?= t157.
        ENDIF.
        t154 = t155.
        DATA t160 TYPE REF TO zcl_lnt_position.
        CLEAR t160.
        DATA t164 TYPE REF TO zif_lnt_node.
        CLEAR t164.
        DATA t166 TYPE REF TO object.
        CLEAR t166.
        t145->load( ).
        CLEAR t166.
        READ TABLE t145->items INDEX 2 INTO t166.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        CLEAR t164.
        IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t167 ?= t166.
          DATA t168 TYPE REF TO object.
          t168 = t167->as_ref( ).
          t164 ?= t168.
        ELSE.
          t164 ?= t166.
        ENDIF.
        t160 = t164->get_first_token( )->start.
        DATA t172 TYPE REF TO zif_lnt_node.
        CLEAR t172.
        DATA t174 TYPE REF TO object.
        CLEAR t174.
        t145->load( ).
        CLEAR t174.
        READ TABLE t145->items INDEX 3 INTO t174.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        CLEAR t172.
        IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t175 ?= t174.
          DATA t176 TYPE REF TO object.
          t176 = t175->as_ref( ).
          t172 ?= t176.
        ELSE.
          t172 ?= t174.
        ENDIF.
        t153 = NEW zcl_lnt_iparameter_data( i_left = t154 i_eq = t160 i_right = t172 ).
        CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
        t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t177 ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t179 ).
        ENDIF.
        CREATE OBJECT t153->zlnt_json_ownkeys_70e5fd461788.
        t153->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t181 ).
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t183 ).
        ENDIF.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t185 ).
        ENDIF.
        t40->load( ).
        APPEND t153 TO t40->items.
        t40->save( ).
      ENDDO.
      t40->load( ).
      IF xsdbool( lines( t40->items ) > 0 ) = abap_true.
        DATA t191 TYPE REF TO zcl_lnt_icandidate.
        t191 = NEW zcl_lnt_icandidate( i_parameters = t40 ).
        CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
        t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t194 ).
        CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
        t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t196 ).
        t2->load( ).
        APPEND t191 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD method_call_param_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t4 = t1->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t17 = t7->find_direct_expression( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      IF xsdbool( t17 IS INITIAL ) = abap_true.
        CLEAR t21.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zcl_lnt_abstract_node.
        t27 = t17.
        t26 = t27->children.
        t25 ?= t26.
        t21 = t25.
      ENDIF.
      t15 = t21.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      IF xsdbool( t15 IS BOUND ) = abap_true.
        t32 = t15.
      ELSE.
        CREATE OBJECT t32.
      ENDIF.
      t14 = t32.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t14->load( ).
        IF t40 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t14->items INDEX t40 + 1 INTO t39.
        t40 = t40 + 1.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t38.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t39.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t43 = t38->get_children( ).
        t43->load( ).
        IF xsdbool( lines( t43->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t51 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t51.
        DATA t52 TYPE REF TO zif_lnt_node.
        CLEAR t52.
        DATA t53 TYPE REF TO zif_lnt_node.
        CLEAR t53.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t43->load( ).
        CLEAR t55.
        READ TABLE t43->items INDEX 1 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t53.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t53 ?= t57.
        ELSE.
          t53 ?= t55.
        ENDIF.
        t52 = t53.
        DATA t58 TYPE REF TO zcl_lnt_position.
        CLEAR t58.
        DATA t62 TYPE REF TO zif_lnt_node.
        CLEAR t62.
        DATA t64 TYPE REF TO object.
        CLEAR t64.
        t43->load( ).
        CLEAR t64.
        READ TABLE t43->items INDEX 2 INTO t64.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        CLEAR t62.
        IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t65 ?= t64.
          DATA t66 TYPE REF TO object.
          t66 = t65->as_ref( ).
          t62 ?= t66.
        ELSE.
          t62 ?= t64.
        ENDIF.
        t58 = t62->get_first_token( )->start.
        DATA t70 TYPE REF TO zif_lnt_node.
        CLEAR t70.
        DATA t72 TYPE REF TO object.
        CLEAR t72.
        t43->load( ).
        CLEAR t72.
        READ TABLE t43->items INDEX 3 INTO t72.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        CLEAR t70.
        IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t73 ?= t72.
          DATA t74 TYPE REF TO object.
          t74 = t73->as_ref( ).
          t70 ?= t74.
        ELSE.
          t70 ?= t72.
        ENDIF.
        t51 = NEW zcl_lnt_iparameter_data( i_left = t52 i_eq = t58 i_right = t70 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t75 ).
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t76 ).
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t77 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t79 ).
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t81 ).
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t83 ).
        ENDIF.
        t12->load( ).
        APPEND t51 TO t12->items.
        t12->save( ).
      ENDDO.
      DATA t84 TYPE REF TO zcl_lnt_expression_node.
      DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
      t84 = t7->find_direct_expression( i_type_9913 = t87 ).
      IF xsdbool( t84 IS BOUND ) = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t91.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        DATA t95 TYPE REF TO zcl_lnt_expression_node.
        t95 = t84.
        DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
        t93 = t95->find_direct_expression( i_type_9913 = t97 ).
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t98.
        IF xsdbool( t93 IS INITIAL ) = abap_true.
          CLEAR t98.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t104 TYPE REF TO zcl_lnt_abstract_node.
          t104 = t93.
          t103 = t104->children.
          t102 ?= t103.
          t98 = t102.
        ENDIF.
        t91 = t98.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t109.
        IF xsdbool( t91 IS BOUND ) = abap_true.
          t109 = t91.
        ELSE.
          CREATE OBJECT t109.
        ENDIF.
        t90 = t109.
        DATA t115 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t115.
        DATA t116 TYPE REF TO object.
        CLEAR t116.
        DATA(t117) = VALUE i( ).
        DO.
          t90->load( ).
          IF t117 >= lines( t90->items ).
            EXIT.
          ENDIF.
          CLEAR t116.
          READ TABLE t90->items INDEX t117 + 1 INTO t116.
          t117 = t117 + 1.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          CLEAR t115.
          IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t118 ?= t116.
            DATA t119 TYPE REF TO object.
            t119 = t118->as_ref( ).
            t115 ?= t119.
          ELSE.
            t115 ?= t116.
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t120 = t115->get_children( ).
          t120->load( ).
          IF xsdbool( lines( t120->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t128 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t128.
          DATA t129 TYPE REF TO zif_lnt_node.
          CLEAR t129.
          DATA t130 TYPE REF TO zif_lnt_node.
          CLEAR t130.
          DATA t132 TYPE REF TO object.
          CLEAR t132.
          t120->load( ).
          CLEAR t132.
          READ TABLE t120->items INDEX 1 INTO t132.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          CLEAR t130.
          IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t133 ?= t132.
            DATA t134 TYPE REF TO object.
            t134 = t133->as_ref( ).
            t130 ?= t134.
          ELSE.
            t130 ?= t132.
          ENDIF.
          t129 = t130.
          DATA t135 TYPE REF TO zcl_lnt_position.
          CLEAR t135.
          DATA t139 TYPE REF TO zif_lnt_node.
          CLEAR t139.
          DATA t141 TYPE REF TO object.
          CLEAR t141.
          t120->load( ).
          CLEAR t141.
          READ TABLE t120->items INDEX 2 INTO t141.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          CLEAR t139.
          IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t142 ?= t141.
            DATA t143 TYPE REF TO object.
            t143 = t142->as_ref( ).
            t139 ?= t143.
          ELSE.
            t139 ?= t141.
          ENDIF.
          t135 = t139->get_first_token( )->start.
          DATA t147 TYPE REF TO zif_lnt_node.
          CLEAR t147.
          DATA t149 TYPE REF TO object.
          CLEAR t149.
          t120->load( ).
          CLEAR t149.
          READ TABLE t120->items INDEX 3 INTO t149.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          CLEAR t147.
          IF t149 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t150 ?= t149.
            DATA t151 TYPE REF TO object.
            t151 = t150->as_ref( ).
            t147 ?= t151.
          ELSE.
            t147 ?= t149.
          ENDIF.
          t128 = NEW zcl_lnt_iparameter_data( i_left = t129 i_eq = t135 i_right = t147 ).
          CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
          t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t152 ).
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t153 ).
          ENDIF.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t154 ).
          ENDIF.
          CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
          t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t156 ).
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t158 ).
          ENDIF.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t160 ).
          ENDIF.
          t12->load( ).
          APPEND t128 TO t12->items.
          t12->save( ).
        ENDDO.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t162 TYPE REF TO zcl_lnt_expression_node.
        t162 = t84.
        DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
        t161 = t162->find_direct_expressions( i_type_9913 = t164 ).
        DATA t165 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t165.
        DATA t166 TYPE REF TO object.
        CLEAR t166.
        DATA(t167) = VALUE i( ).
        DO.
          t161->load( ).
          IF t167 >= lines( t161->items ).
            EXIT.
          ENDIF.
          CLEAR t166.
          READ TABLE t161->items INDEX t167 + 1 INTO t166.
          t167 = t167 + 1.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          CLEAR t165.
          IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t168 ?= t166.
            DATA t169 TYPE REF TO object.
            t169 = t168->as_ref( ).
            t165 ?= t169.
          ELSE.
            t165 ?= t166.
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t170.
          DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
          t171 = t165->find_direct_expressions( i_type_9913 = t174 ).
          DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t175.
          IF xsdbool( t171 IS BOUND ) = abap_true.
            t175 = t171.
          ELSE.
            CREATE OBJECT t175.
          ENDIF.
          t170 = t175.
          DATA t180 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t180.
          DATA t181 TYPE REF TO object.
          CLEAR t181.
          DATA(t182) = VALUE i( ).
          DO.
            t170->load( ).
            IF t182 >= lines( t170->items ).
              EXIT.
            ENDIF.
            CLEAR t181.
            READ TABLE t170->items INDEX t182 + 1 INTO t181.
            t182 = t182 + 1.
            DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t183.
            CLEAR t180.
            IF t181 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t183 ?= t181.
              DATA t184 TYPE REF TO object.
              t184 = t183->as_ref( ).
              t180 ?= t184.
            ELSE.
              t180 ?= t181.
            ENDIF.
            DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t188 TYPE REF TO zcl_lnt_abstract_node.
            t188 = t180.
            t187 = t188->children.
            t186 ?= t187.
            t185 = t186.
            t185->load( ).
            IF xsdbool( lines( t185->items ) < 3 ) = abap_true.
              CONTINUE.
            ENDIF.
            DATA t197 TYPE REF TO zcl_lnt_iparameter_data.
            CLEAR t197.
            DATA t198 TYPE REF TO zif_lnt_node.
            CLEAR t198.
            DATA t199 TYPE REF TO zif_lnt_node.
            CLEAR t199.
            DATA t200 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t200.
            DATA t202 TYPE REF TO object.
            CLEAR t202.
            t185->load( ).
            CLEAR t202.
            READ TABLE t185->items INDEX 1 INTO t202.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            CLEAR t200.
            IF t202 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t203 ?= t202.
              DATA t204 TYPE REF TO object.
              t204 = t203->as_ref( ).
              t200 ?= t204.
            ELSE.
              t200 ?= t202.
            ENDIF.
            t199 ?= t200.
            t198 = t199.
            DATA t205 TYPE REF TO zcl_lnt_position.
            CLEAR t205.
            DATA t209 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t209.
            DATA t211 TYPE REF TO object.
            CLEAR t211.
            t185->load( ).
            CLEAR t211.
            READ TABLE t185->items INDEX 2 INTO t211.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            CLEAR t209.
            IF t211 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t212 ?= t211.
              DATA t213 TYPE REF TO object.
              t213 = t212->as_ref( ).
              t209 ?= t213.
            ELSE.
              t209 ?= t211.
            ENDIF.
            t205 = t209->get_first_token( )->start.
            DATA t217 TYPE REF TO zif_lnt_node.
            CLEAR t217.
            DATA t218 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t218.
            DATA t220 TYPE REF TO object.
            CLEAR t220.
            t185->load( ).
            CLEAR t220.
            READ TABLE t185->items INDEX 3 INTO t220.
            DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t221.
            CLEAR t218.
            IF t220 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t221 ?= t220.
              DATA t222 TYPE REF TO object.
              t222 = t221->as_ref( ).
              t218 ?= t222.
            ELSE.
              t218 ?= t220.
            ENDIF.
            t217 ?= t218.
            t197 = NEW zcl_lnt_iparameter_data( i_left = t198 i_eq = t205 i_right = t217 ).
            CREATE OBJECT t197->zlnt_view_ownkeys_b0e8086400eb.
            t197->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t223.
            t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t223 ).
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t224.
            IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t224 ).
            ENDIF.
            DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t225.
            IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t225 ).
            ENDIF.
            CREATE OBJECT t197->zlnt_json_ownkeys_70e5fd461788.
            t197->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t227 ).
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t229 ).
            ENDIF.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t231 ).
            ENDIF.
            t12->load( ).
            APPEND t197 TO t12->items.
            t12->save( ).
          ENDDO.
        ENDDO.
        DATA t232 TYPE REF TO zcl_lnt_expression_node.
        DATA t234 TYPE REF TO zcl_lnt_expression_node.
        t234 = t84.
        DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
        t232 = t234->find_direct_expression( i_type_9913 = t236 ).
        IF xsdbool( t232 IS BOUND ) = abap_true.
          DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t242 TYPE REF TO zcl_lnt_abstract_node.
          t242 = t232.
          t241 = t242->children.
          t240 ?= t241.
          t239 = t240.
          t239->load( ).
          IF xsdbool( lines( t239->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t252 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t252.
          DATA t253 TYPE REF TO zif_lnt_node.
          CLEAR t253.
          DATA t254 TYPE REF TO zif_lnt_node.
          CLEAR t254.
          DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t255.
          DATA t257 TYPE REF TO object.
          CLEAR t257.
          t239->load( ).
          CLEAR t257.
          READ TABLE t239->items INDEX 1 INTO t257.
          DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t258.
          CLEAR t255.
          IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t258 ?= t257.
            DATA t259 TYPE REF TO object.
            t259 = t258->as_ref( ).
            t255 ?= t259.
          ELSE.
            t255 ?= t257.
          ENDIF.
          t254 ?= t255.
          t253 = t254.
          DATA t260 TYPE REF TO zcl_lnt_position.
          CLEAR t260.
          DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t264.
          DATA t266 TYPE REF TO object.
          CLEAR t266.
          t239->load( ).
          CLEAR t266.
          READ TABLE t239->items INDEX 2 INTO t266.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t267.
          CLEAR t264.
          IF t266 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t267 ?= t266.
            DATA t268 TYPE REF TO object.
            t268 = t267->as_ref( ).
            t264 ?= t268.
          ELSE.
            t264 ?= t266.
          ENDIF.
          t260 = t264->get_first_token( )->start.
          DATA t272 TYPE REF TO zif_lnt_node.
          CLEAR t272.
          DATA t273 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t273.
          DATA t275 TYPE REF TO object.
          CLEAR t275.
          t239->load( ).
          CLEAR t275.
          READ TABLE t239->items INDEX 3 INTO t275.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          CLEAR t273.
          IF t275 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t276 ?= t275.
            DATA t277 TYPE REF TO object.
            t277 = t276->as_ref( ).
            t273 ?= t277.
          ELSE.
            t273 ?= t275.
          ENDIF.
          t272 ?= t273.
          t252 = NEW zcl_lnt_iparameter_data( i_left = t253 i_eq = t260 i_right = t272 ).
          CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
          t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t278.
          t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t278 ).
          DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t279.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t279 ).
          ENDIF.
          DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t280.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t280 ).
          ENDIF.
          CREATE OBJECT t252->zlnt_json_ownkeys_70e5fd461788.
          t252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t282.
          t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t282 ).
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t284.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t284 ).
          ENDIF.
          DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t286.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t286 ).
          ENDIF.
          t12->load( ).
          APPEND t252 TO t12->items.
          t12->save( ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t288.
        DATA t290 TYPE REF TO zcl_lnt_expression_node.
        DATA t292 TYPE REF TO zcl_lnt_expression_node.
        t292 = t84.
        DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
        t290 = t292->find_direct_expression( i_type_9913 = t294 ).
        DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t295.
        IF xsdbool( t290 IS INITIAL ) = abap_true.
          CLEAR t295.
        ELSE.
          DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t301 TYPE REF TO zcl_lnt_abstract_node.
          t301 = t290.
          t300 = t301->children.
          t299 ?= t300.
          t295 = t299.
        ENDIF.
        t288 = t295.
        DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t306.
        IF xsdbool( t288 IS BOUND ) = abap_true.
          t306 = t288.
        ELSE.
          CREATE OBJECT t306.
        ENDIF.
        t287 = t306.
        DATA t312 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t312.
        DATA t313 TYPE REF TO object.
        CLEAR t313.
        DATA(t314) = VALUE i( ).
        DO.
          t287->load( ).
          IF t314 >= lines( t287->items ).
            EXIT.
          ENDIF.
          CLEAR t313.
          READ TABLE t287->items INDEX t314 + 1 INTO t313.
          t314 = t314 + 1.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          CLEAR t312.
          IF t313 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t315 ?= t313.
            DATA t316 TYPE REF TO object.
            t316 = t315->as_ref( ).
            t312 ?= t316.
          ELSE.
            t312 ?= t313.
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t317 = t312->get_children( ).
          t317->load( ).
          IF xsdbool( lines( t317->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t325 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t325.
          DATA t326 TYPE REF TO zif_lnt_node.
          CLEAR t326.
          DATA t327 TYPE REF TO zif_lnt_node.
          CLEAR t327.
          DATA t329 TYPE REF TO object.
          CLEAR t329.
          t317->load( ).
          CLEAR t329.
          READ TABLE t317->items INDEX 1 INTO t329.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t330.
          CLEAR t327.
          IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t330 ?= t329.
            DATA t331 TYPE REF TO object.
            t331 = t330->as_ref( ).
            t327 ?= t331.
          ELSE.
            t327 ?= t329.
          ENDIF.
          t326 = t327.
          DATA t332 TYPE REF TO zcl_lnt_position.
          CLEAR t332.
          DATA t336 TYPE REF TO zif_lnt_node.
          CLEAR t336.
          DATA t338 TYPE REF TO object.
          CLEAR t338.
          t317->load( ).
          CLEAR t338.
          READ TABLE t317->items INDEX 2 INTO t338.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          CLEAR t336.
          IF t338 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t339 ?= t338.
            DATA t340 TYPE REF TO object.
            t340 = t339->as_ref( ).
            t336 ?= t340.
          ELSE.
            t336 ?= t338.
          ENDIF.
          t332 = t336->get_first_token( )->start.
          DATA t344 TYPE REF TO zif_lnt_node.
          CLEAR t344.
          DATA t346 TYPE REF TO object.
          CLEAR t346.
          t317->load( ).
          CLEAR t346.
          READ TABLE t317->items INDEX 3 INTO t346.
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t347.
          CLEAR t344.
          IF t346 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t347 ?= t346.
            DATA t348 TYPE REF TO object.
            t348 = t347->as_ref( ).
            t344 ?= t348.
          ELSE.
            t344 ?= t346.
          ENDIF.
          t325 = NEW zcl_lnt_iparameter_data( i_left = t326 i_eq = t332 i_right = t344 ).
          CREATE OBJECT t325->zlnt_view_ownkeys_b0e8086400eb.
          t325->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          t325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t349 ).
          DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t350.
          IF t325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t350 ).
          ENDIF.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          IF t325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t351 ).
          ENDIF.
          CREATE OBJECT t325->zlnt_json_ownkeys_70e5fd461788.
          t325->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t353 ).
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t355.
          IF t325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t355 ).
          ENDIF.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          IF t325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t357 ).
          ENDIF.
          t12->load( ).
          APPEND t325 TO t12->items.
          t12->save( ).
        ENDDO.
      ENDIF.
      t12->load( ).
      IF xsdbool( lines( t12->items ) > 0 ) = abap_true.
        DATA t363 TYPE REF TO zcl_lnt_icandidate.
        t363 = NEW zcl_lnt_icandidate( i_parameters = t12 ).
        CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
        t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t366 ).
        CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
        t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t368 ).
        t2->load( ).
        APPEND t363 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD function_parameter_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d201_586873752c2d.
    t4 = t1->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d195_e320b2253f20.
      t14 = t7->find_all_expressions( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      DATA(t19) = VALUE i( ).
      DO.
        t14->load( ).
        IF t19 >= lines( t14->items ).
          EXIT.
        ENDIF.
        CLEAR t18.
        READ TABLE t14->items INDEX t19 + 1 INTO t18.
        t19 = t19 + 1.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t20.
        CLEAR t17.
        IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t20 ?= t18.
          DATA t21 TYPE REF TO object.
          t21 = t20->as_ref( ).
          t17 ?= t21.
        ELSE.
          t17 ?= t18.
        ENDIF.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t25 TYPE REF TO zcl_lnt_abstract_node.
        t25 = t17.
        t24 = t25->children.
        t23 ?= t24.
        t22 = t23.
        t22->load( ).
        IF xsdbool( lines( t22->items ) < 3 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t34 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_node.
        CLEAR t35.
        DATA t36 TYPE REF TO zif_lnt_node.
        CLEAR t36.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        t22->load( ).
        CLEAR t39.
        READ TABLE t22->items INDEX 1 INTO t39.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        CLEAR t37.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t40 ?= t39.
          DATA t41 TYPE REF TO object.
          t41 = t40->as_ref( ).
          t37 ?= t41.
        ELSE.
          t37 ?= t39.
        ENDIF.
        t36 ?= t37.
        t35 = t36.
        DATA t42 TYPE REF TO zcl_lnt_position.
        CLEAR t42.
        DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t46.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t22->load( ).
        CLEAR t48.
        READ TABLE t22->items INDEX 2 INTO t48.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t48.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t48.
        ENDIF.
        t42 = t46->get_first_token( )->start.
        DATA t54 TYPE REF TO zif_lnt_node.
        CLEAR t54.
        DATA t55 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t55.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t22->load( ).
        CLEAR t57.
        READ TABLE t22->items INDEX 3 INTO t57.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        CLEAR t55.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t58 ?= t57.
          DATA t59 TYPE REF TO object.
          t59 = t58->as_ref( ).
          t55 ?= t59.
        ELSE.
          t55 ?= t57.
        ENDIF.
        t54 ?= t55.
        t34 = NEW zcl_lnt_iparameter_data( i_left = t35 i_eq = t42 i_right = t54 ).
        CREATE OBJECT t34->zlnt_view_ownkeys_b0e8086400eb.
        t34->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t60 ).
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t61 ).
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t62 ).
        ENDIF.
        CREATE OBJECT t34->zlnt_json_ownkeys_70e5fd461788.
        t34->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t64 ).
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t66 ).
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t68 ).
        ENDIF.
        t12->load( ).
        APPEND t34 TO t12->items.
        t12->save( ).
      ENDDO.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
      t69 = t7->find_direct_expressions( i_type_9913 = t71 ).
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      DATA(t74) = VALUE i( ).
      DO.
        t69->load( ).
        IF t74 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t73.
        READ TABLE t69->items INDEX t74 + 1 INTO t73.
        t74 = t74 + 1.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        CLEAR t72.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t75 ?= t73.
          DATA t76 TYPE REF TO object.
          t76 = t75->as_ref( ).
          t72 ?= t76.
        ELSE.
          t72 ?= t73.
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
        t77 = t72->find_direct_expressions( i_type_9913 = t79 ).
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
          DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t88 TYPE REF TO zcl_lnt_abstract_node.
          t88 = t80.
          t87 = t88->children.
          t86 ?= t87.
          t85 = t86.
          t85->load( ).
          IF xsdbool( lines( t85->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t97 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t97.
          DATA t98 TYPE REF TO zif_lnt_node.
          CLEAR t98.
          DATA t99 TYPE REF TO zif_lnt_node.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t100.
          DATA t102 TYPE REF TO object.
          CLEAR t102.
          t85->load( ).
          CLEAR t102.
          READ TABLE t85->items INDEX 1 INTO t102.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          CLEAR t100.
          IF t102 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t103 ?= t102.
            DATA t104 TYPE REF TO object.
            t104 = t103->as_ref( ).
            t100 ?= t104.
          ELSE.
            t100 ?= t102.
          ENDIF.
          t99 ?= t100.
          t98 = t99.
          DATA t105 TYPE REF TO zcl_lnt_position.
          CLEAR t105.
          DATA t109 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t109.
          DATA t111 TYPE REF TO object.
          CLEAR t111.
          t85->load( ).
          CLEAR t111.
          READ TABLE t85->items INDEX 2 INTO t111.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          CLEAR t109.
          IF t111 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t112 ?= t111.
            DATA t113 TYPE REF TO object.
            t113 = t112->as_ref( ).
            t109 ?= t113.
          ELSE.
            t109 ?= t111.
          ENDIF.
          t105 = t109->get_first_token( )->start.
          DATA t117 TYPE REF TO zif_lnt_node.
          CLEAR t117.
          DATA t118 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t118.
          DATA t120 TYPE REF TO object.
          CLEAR t120.
          t85->load( ).
          CLEAR t120.
          READ TABLE t85->items INDEX 3 INTO t120.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          CLEAR t118.
          IF t120 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t121 ?= t120.
            DATA t122 TYPE REF TO object.
            t122 = t121->as_ref( ).
            t118 ?= t122.
          ELSE.
            t118 ?= t120.
          ENDIF.
          t117 ?= t118.
          t97 = NEW zcl_lnt_iparameter_data( i_left = t98 i_eq = t105 i_right = t117 ).
          CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
          t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t123 ).
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t124 ).
          ENDIF.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t125 ).
          ENDIF.
          CREATE OBJECT t97->zlnt_json_ownkeys_70e5fd461788.
          t97->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t127 ).
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t129 ).
          ENDIF.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t131 ).
          ENDIF.
          t12->load( ).
          APPEND t97 TO t12->items.
          t12->save( ).
        ENDDO.
      ENDDO.
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t132 = t7->find_direct_expression( i_type_9913 = t135 ).
      IF xsdbool( t132 IS BOUND ) = abap_true.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        t139 = t132.
        DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
        t138 = t139->find_direct_expressions( i_type_9913 = t141 ).
        DATA t142 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t142.
        DATA t143 TYPE REF TO object.
        CLEAR t143.
        DATA(t144) = VALUE i( ).
        DO.
          t138->load( ).
          IF t144 >= lines( t138->items ).
            EXIT.
          ENDIF.
          CLEAR t143.
          READ TABLE t138->items INDEX t144 + 1 INTO t143.
          t144 = t144 + 1.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          CLEAR t142.
          IF t143 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t145 ?= t143.
            DATA t146 TYPE REF TO object.
            t146 = t145->as_ref( ).
            t142 ?= t146.
          ELSE.
            t142 ?= t143.
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t150 TYPE REF TO zcl_lnt_abstract_node.
          t150 = t142.
          t149 = t150->children.
          t148 ?= t149.
          t147 = t148.
          t147->load( ).
          IF xsdbool( lines( t147->items ) < 3 ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t159 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t159.
          DATA t160 TYPE REF TO zif_lnt_node.
          CLEAR t160.
          DATA t161 TYPE REF TO zif_lnt_node.
          CLEAR t161.
          DATA t162 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t162.
          DATA t164 TYPE REF TO object.
          CLEAR t164.
          t147->load( ).
          CLEAR t164.
          READ TABLE t147->items INDEX 1 INTO t164.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          CLEAR t162.
          IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t165 ?= t164.
            DATA t166 TYPE REF TO object.
            t166 = t165->as_ref( ).
            t162 ?= t166.
          ELSE.
            t162 ?= t164.
          ENDIF.
          t161 ?= t162.
          t160 = t161.
          DATA t167 TYPE REF TO zcl_lnt_position.
          CLEAR t167.
          DATA t171 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t171.
          DATA t173 TYPE REF TO object.
          CLEAR t173.
          t147->load( ).
          CLEAR t173.
          READ TABLE t147->items INDEX 2 INTO t173.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          CLEAR t171.
          IF t173 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t174 ?= t173.
            DATA t175 TYPE REF TO object.
            t175 = t174->as_ref( ).
            t171 ?= t175.
          ELSE.
            t171 ?= t173.
          ENDIF.
          t167 = t171->get_first_token( )->start.
          DATA t179 TYPE REF TO zif_lnt_node.
          CLEAR t179.
          DATA t180 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t180.
          DATA t182 TYPE REF TO object.
          CLEAR t182.
          t147->load( ).
          CLEAR t182.
          READ TABLE t147->items INDEX 3 INTO t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          CLEAR t180.
          IF t182 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t183 ?= t182.
            DATA t184 TYPE REF TO object.
            t184 = t183->as_ref( ).
            t180 ?= t184.
          ELSE.
            t180 ?= t182.
          ENDIF.
          t179 ?= t180.
          t159 = NEW zcl_lnt_iparameter_data( i_left = t160 i_eq = t167 i_right = t179 ).
          CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
          t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t185 ).
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `eq` p1 = t186 ).
          ENDIF.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t187 ).
          ENDIF.
          CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
          t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |left| p1 = t189 ).
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |eq| p1 = t191 ).
          ENDIF.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |right| p1 = t193 ).
          ENDIF.
          t12->load( ).
          APPEND t159 TO t12->items.
          t12->save( ).
        ENDDO.
      ENDIF.
      t12->load( ).
      IF xsdbool( lines( t12->items ) > 0 ) = abap_true.
        DATA t199 TYPE REF TO zcl_lnt_icandidate.
        t199 = NEW zcl_lnt_icandidate( i_parameters = t12 ).
        CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
        t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t202 ).
        CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
        t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |parameters| p1 = t204 ).
        t2->load( ).
        APPEND t199 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_align_parameters_conf.
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
        t1 = NEW zcl_lnt_align_parameters_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_al_pr_ts_al_prm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_al_pr_ts_al_prm( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1394_2cecdcc856dd.
  ENDMETHOD.
ENDCLASS.
