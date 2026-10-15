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
    DATA(t1) = NEW zcl_lnt_align_parameters_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |align_parameters|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Align Parameters|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for vertially aligned parameters|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
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
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Whitespace|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Styleguide|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |Quickfix|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo = 2\n    parameter|.
      t33 = t33 && | = 3.\n\nfoobar( moo = 1\n  param = 1 ).\n\nfoo = VALUE #(\n    fo|.
      t33 = t33 && |o = bar\n        moo = 2 ).|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo       = 2\n    par|.
      t39 = t39 && |ameter = 3.\n\nfoobar( moo   = 1\n        param = 1 ).\n\nfoo = V|.
      t39 = t39 && |ALUE #(\n    foo = bar\n    moo = 2 ).\n\nDATA(sdf) = VALUE type|.
      t39 = t39 && |(\n  common_val     = 2\n  another_common = 5\n  ( row_value = |.
      t39 = t39 && |4\n    value_foo = 5 ) ).|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_al_pr_ts_al_prm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA(t17) = t2.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = VALUE i( ).
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA(t23) = t4.
    t22 = t23.
    t21 = me->function_parameter_candidates( i_stru = t22 ).
    DATA t24 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
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
      DATA(t29) = t18.
      DATA(t30) = t24.
      t29->load( ).
      APPEND t30 TO t29->items.
      t29->save( ).
    ENDDO.
    DATA t31 TYPE i.
    DATA(t32) = t18.
    t32->load( ).
    t31 = lines( t32->items ).
    t20 = t31.
    DATA(t33) = VALUE i( ).
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zcl_lnt_structure_node.
    DATA(t36) = t4.
    t35 = t36.
    t34 = me->method_call_param_candidates( i_stru = t35 ).
    DATA t37 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
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
      DATA(t42) = t18.
      DATA(t43) = t37.
      t42->load( ).
      APPEND t43 TO t42->items.
      t42->save( ).
    ENDDO.
    DATA t44 TYPE i.
    DATA(t45) = t18.
    t45->load( ).
    t44 = lines( t45->items ).
    t33 = t44.
    DATA(t46) = VALUE i( ).
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zcl_lnt_structure_node.
    DATA(t49) = t4.
    t48 = t49.
    t47 = me->value_body_candidates( i_stru = t48 ).
    DATA t50 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t50.
    DATA t51 TYPE REF TO object.
    CLEAR t51.
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
      DATA(t55) = t18.
      DATA(t56) = t50.
      t55->load( ).
      APPEND t56 TO t55->items.
      t55->save( ).
    ENDDO.
    DATA t57 TYPE i.
    DATA(t58) = t18.
    t58->load( ).
    t57 = lines( t58->items ).
    t46 = t57.
    DATA(t59) = VALUE i( ).
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    DATA(t62) = t4.
    t61 = t62.
    t60 = me->raise_and_create_candidates( i_stru = t61 ).
    DATA t63 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t63.
    DATA t64 TYPE REF TO object.
    CLEAR t64.
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
      DATA(t68) = t18.
      DATA(t69) = t63.
      t68->load( ).
      APPEND t69 TO t68->items.
      t68->save( ).
    ENDDO.
    DATA t70 TYPE i.
    DATA(t71) = t18.
    t71->load( ).
    t70 = lines( t71->items ).
    t59 = t70.
    DATA(t72) = VALUE i( ).
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zcl_lnt_structure_node.
    DATA(t75) = t4.
    t74 = t75.
    t73 = me->new_candidates( i_stru = t74 ).
    DATA t76 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t76.
    DATA t77 TYPE REF TO object.
    CLEAR t77.
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
      DATA(t81) = t18.
      DATA(t82) = t76.
      t81->load( ).
      APPEND t82 TO t81->items.
      t81->save( ).
    ENDDO.
    DATA t83 TYPE i.
    DATA(t84) = t18.
    t84->load( ).
    t83 = lines( t84->items ).
    t72 = t83.
    DATA(t85) = t18.
    DATA t86 TYPE REF TO zcl_lnt_icandidate.
    CLEAR t86.
    DATA t87 TYPE REF TO object.
    CLEAR t87.
    DATA(t88) = VALUE i( ).
    DO.
      t85->load( ).
      IF t88 >= lines( t85->items ).
        EXIT.
      ENDIF.
      CLEAR t87.
      READ TABLE t85->items INDEX t88 + 1 INTO t87.
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
      DATA t92 TYPE REF TO zcl_lnt_issue.
      DATA(t93) = t86.
      DATA(t94) = t1.
      t92 = me->check_candidate( i_candidate = t93 i_file = t94 ).
      t91 = t92.
      DATA t95 TYPE abap_bool.
      DATA(t96) = t91.
      t95 = xsdbool( t96 IS BOUND ).
      IF t95 = abap_true.
        DATA(t97) = t2.
        DATA t98 TYPE REF TO zcl_lnt_issue.
        DATA(t99) = t91.
        t98 = t99.
        t97->load( ).
        APPEND t98 TO t97->items.
        t97->save( ).
      ENDIF.
    ENDDO.
    DATA(t100) = t2.
    result = t100.

  ENDMETHOD.

  METHOD check_candidate.
    DATA(t1) = i_candidate.
    DATA(t2) = i_file.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->parameters.
    t5->load( ).
    t4 = lines( t5->items ).
    DATA(t7) = 0.
    t3 = xsdbool( t4 = t7 ).
    IF t3 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_issue.
      CLEAR t8.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t10) = CONV f( 0 ).
    DATA(t11) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t11->has = abap_true.
    t11->value = t10.
    t9 = t11.
    DATA t12 TYPE f.
    DATA(t13) = CONV f( 0 ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t1.
    t14 = t15->parameters.
    DATA t16 TYPE REF TO zcl_lnt_iparameter_data.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
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
      DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zif_lnt_node.
      DATA(t28) = t16.
      t27 = t28->left.
      t26 = t27->get_last_token( ).
      t25 = t26.
      DATA t29 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA(t32) = t25.
      t31 = t32->start.
      t30 = t31.
      DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t34) = t30.
      t33 = t34->col.
      t29 = t33.
      t24 = t29.
      DATA t35 TYPE f.
      DATA t36 TYPE i.
      DATA t37 TYPE string.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA t40 TYPE REF TO zif_lnt_node.
      DATA(t41) = t16.
      t40 = t41->left.
      t39 = t40->get_last_token( ).
      t38 = t39.
      DATA t42 TYPE string.
      DATA(t43) = t38.
      t42 = t43->str.
      t37 = t42.
      DATA(t44) = strlen( t37 ).
      t36 = t44.
      t35 = t36.
      DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t45->has = abap_true.
      t45->value = t35.
      t23 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t24 right = t45 op = `+` ).
      DATA(t46) = CONV f( 1 ).
      DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t47->has = abap_true.
      t47->value = t46.
      t22 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t23 right = t47 op = `+` ).
      t21 = t22.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE f.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA t51 TYPE REF TO zcl_lnt_position.
      DATA(t52) = t16.
      t51 = t52->eq.
      t50 = t51.
      DATA t53 TYPE f.
      DATA(t54) = t50.
      t53 = t54->row.
      t49 = t53.
      DATA(t55) = t12.
      t48 = xsdbool( t49 = t55 ).
      IF t48 = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        CLEAR t56.
        result = t56.
        RETURN.
      ENDIF.
      DATA t57 TYPE f.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA(t60) = t16.
      t59 = t60->eq.
      t58 = t59.
      DATA t61 TYPE f.
      DATA(t62) = t58.
      t61 = t62->row.
      t57 = t61.
      t12 = t57.
      DATA t63 TYPE abap_bool.
      DATA(t64) = t21.
      DATA(t65) = t9.
      t63 = zlnt_runtime_numb_290eb04a9758=>compare( left = t64 right = t65 op = `>` ).
      IF t63 = abap_true.
        DATA(t66) = t21.
        t9 = t66.
      ENDIF.
    ENDDO.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t68) = t1.
    t67 = t68->parameters.
    DATA t69 TYPE REF TO zcl_lnt_iparameter_data.
    CLEAR t69.
    DATA t70 TYPE REF TO object.
    CLEAR t70.
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
      DATA t74 TYPE abap_bool.
      DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t76 TYPE REF TO zcl_lnt_position.
      DATA t77 TYPE REF TO zcl_lnt_position.
      DATA(t78) = t69.
      t77 = t78->eq.
      t76 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t80) = t76.
      t79 = t80->col.
      t75 = t79.
      DATA(t81) = t9.
      t74 = zlnt_runtime_numb_290eb04a9758=>compare( left = t75 right = t81 op = `!=` ).
      IF t74 = abap_true.
        DATA t82 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t82.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE REF TO zcl_lnt_position.
        DATA(t87) = t69.
        t86 = t87->eq.
        t85 = t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t89) = t85.
        t88 = t89->col.
        t84 = t88.
        DATA(t90) = t9.
        t83 = zlnt_runtime_numb_290eb04a9758=>compare( left = t84 right = t90 op = `<` ).
        IF t83 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t91.
          DATA(t92) = abap_true.
          IF t92 = abap_true.
            DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t93.
            DATA(t94) = t2.
            DATA t95 TYPE REF TO zcl_lnt_position.
            DATA(t96) = t69.
            t95 = t96->eq.
            DATA(t97) = VALUE string( ).
            DATA t98 TYPE string.
            DATA(t99) = | |.
            t98 = t99.
            DATA(t100) = VALUE string( ).
            DATA(t101) = t98.
            DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t103) = t9.
            DATA t104 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t105 TYPE REF TO zcl_lnt_position.
            DATA t106 TYPE REF TO zcl_lnt_position.
            DATA(t107) = t69.
            t106 = t107->eq.
            t105 = t106.
            DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t109) = t105.
            t108 = t109->col.
            t104 = t108.
            t102 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t103 right = t104 op = `-` ).
            DATA(t110) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t102 ) ).
            DATA(t111) = strlen( t101 ).
            DATA(t112) = CONV f( trunc( t110 ) ).
            IF t112 < 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            CLEAR t100.
            IF t101 IS NOT INITIAL.
              IF t112 > 2147483647 OR t112 * strlen( t101 ) > 2147483647.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t100 = repeat( val = t101 occ = CONV i( t112 ) ).
            ENDIF.
            t97 = t100.
            t93 = zcl_lnt_edit_helper=>insert_at( i_file = t94 i_pos = t95 i_text = t97 ).
            t91 = t93.
          ELSE.
            DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t113.
            t91 = t113.
          ENDIF.
          t82 = t91.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t114.
          DATA(t115) = abap_true.
          IF t115 = abap_true.
            DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t117) = t2.
            DATA t118 TYPE REF TO zcl_lnt_position.
            DATA t119 TYPE f.
            DATA t120 TYPE REF TO zcl_lnt_position.
            DATA t121 TYPE REF TO zcl_lnt_position.
            DATA(t122) = t69.
            t121 = t122->eq.
            t120 = t121.
            DATA t123 TYPE f.
            DATA(t124) = t120.
            t123 = t124->row.
            t119 = t123.
            DATA(t125) = t9.
            t118 = NEW zcl_lnt_position( i_row = t119 i_col = t125 ).
            DATA t126 TYPE REF TO zcl_lnt_position.
            DATA(t127) = t69.
            t126 = t127->eq.
            t116 = zcl_lnt_edit_helper=>delete_range( i_file = t117 i_start = t118 i_end = t126 ).
            t114 = t116.
          ELSE.
            DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t128.
            t114 = t128.
          ENDIF.
          t82 = t114.
        ENDIF.
        DATA t129 TYPE string.
        DATA t130 TYPE string.
        DATA(t131) = |Align parameters to column |.
        DATA t132 TYPE string.
        DATA(t133) = t9.
        t132 = zlnt_runtime_numb_290eb04a9758=>text( t133 ).
        DATA(t134) = strlen( t131 ).
        t130 = |{ t131 }{ t132 }|.
        t129 = t130.
        DATA t135 TYPE REF TO zcl_lnt_issue.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE REF TO zcl_lnt_issue.
          CLEAR t137.
          DATA(t138) = t2.
          DATA t139 TYPE REF TO zcl_lnt_position.
          DATA(t140) = t69.
          t139 = t140->eq.
          DATA(t141) = t129.
          DATA(t142) = VALUE string( ).
          DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t143.
          DATA t144 TYPE string.
          DATA(t145) = |align_parameters|.
          t144 = t145.
          DATA t146 TYPE string.
          DATA(t147) = |Align Parameters|.
          t146 = t147.
          DATA t148 TYPE string.
          DATA(t149) = |Checks for vertially aligned parameters|.
          t148 = t149.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA(t152) = abap_true.
          IF t152 = abap_true.
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
            t151 = t154.
          ELSE.
            DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t155.
            t151 = t155.
          ENDIF.
          t150 = t151.
          DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA(t158) = abap_true.
          IF t158 = abap_true.
            DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t161.
            t160 = t161.
            DATA(t162) = t160.
            DATA(t163) = |SingleFile|.
            t162->load( ).
            APPEND t163 TO t162->items.
            t162->save( ).
            DATA(t164) = t160.
            DATA(t165) = |Whitespace|.
            t164->load( ).
            APPEND t165 TO t164->items.
            t164->save( ).
            DATA(t166) = t160.
            DATA(t167) = |Styleguide|.
            t166->load( ).
            APPEND t167 TO t166->items.
            t166->save( ).
            DATA(t168) = t160.
            DATA(t169) = |Quickfix|.
            t168->load( ).
            APPEND t169 TO t168->items.
            t168->save( ).
            DATA(t170) = t160.
            t159 = t170.
            t157 = t159.
          ELSE.
            DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t171.
            t157 = t171.
          ENDIF.
          t156 = t157.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA(t174) = abap_true.
          IF t174 = abap_true.
            DATA(t175) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo = 2\n    parameter|.
            t175 = t175 && | = 3.\n\nfoobar( moo = 1\n  param = 1 ).\n\nfoo = VALUE #(\n    fo|.
            t175 = t175 && |o = bar\n        moo = 2 ).|.
            DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t176->has = abap_true.
            t176->value = t175.
            t173 = t176.
          ELSE.
            DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t177.
            t173 = t177.
          ENDIF.
          t172 = t173.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA(t180) = abap_true.
          IF t180 = abap_true.
            DATA(t181) = |CALL FUNCTION 'FOOBAR'\n  EXPORTING\n    foo       = 2\n    par|.
            t181 = t181 && |ameter = 3.\n\nfoobar( moo   = 1\n        param = 1 ).\n\nfoo = V|.
            t181 = t181 && |ALUE #(\n    foo = bar\n    moo = 2 ).\n\nDATA(sdf) = VALUE type|.
            t181 = t181 && |(\n  common_val     = 2\n  another_common = 5\n  ( row_value = |.
            t181 = t181 && |4\n    value_foo = 5 ) ).|.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t181.
            t179 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t179 = t183.
          ENDIF.
          t178 = t179.
          DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          t184 = t185.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          t186 = t187.
          t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t172 i_good_example = t178 i_extended_information = t150 i_tags = t156 i_pragma = t184 i_pseudo_comment = t186 ).
          CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
          t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t188 ).
          ENDIF.
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
          DATA(t195) = |key|.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
          ENDIF.
          DATA(t197) = |title|.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
          ENDIF.
          DATA(t199) = |shortDescription|.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
          ENDIF.
          DATA(t201) = |extendedInformation|.
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
          ENDIF.
          DATA(t203) = |tags|.
          DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t204.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
          ENDIF.
          DATA(t205) = |badExample|.
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
          ENDIF.
          DATA(t207) = |goodExample|.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
          ENDIF.
          t142 = t143->key.
          DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t210) = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).
          t209 = t210->zlnt_view_read_sr_15c06369f827( ).
          DATA t211 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t211.
          DATA(t212) = abap_true.
          IF t212 = abap_true.
            DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t214) = t82.
            t213 = t214.
            t211 = t213.
          ELSE.
            DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t215.
            t211 = t215.
          ENDIF.
          t137 = zcl_lnt_issue=>at_position( i_file = t138 i_start = t139 i_message_26cb = t141 i_key = t142 i_severity = t209 i_fix = t211 ).
          t135 = t137.
        ELSE.
          DATA t216 TYPE REF TO zcl_lnt_issue.
          CLEAR t216.
          t135 = t216.
        ENDIF.
        result = t135.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t217 TYPE REF TO zcl_lnt_issue.
    CLEAR t217.
    result = t217.

  ENDMETHOD.

  METHOD new_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    t4 = t5->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = t7.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t15 = t16->find_direct_expressions( i_type_9913 = t17 ).
      t14 = t15.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE i.
      DATA(t20) = t14.
      t20->load( ).
      t19 = lines( t20->items ).
      DATA(t21) = 2.
      t18 = xsdbool( t19 >= t21 ).
      IF t18 = abap_true.
        DATA(t22) = t14.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        DATA(t25) = VALUE i( ).
        DO.
          t22->load( ).
          IF t25 >= lines( t22->items ).
            EXIT.
          ENDIF.
          CLEAR t24.
          READ TABLE t22->items INDEX t25 + 1 INTO t24.
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
          DATA(t32) = t23.
          t31 = t32.
          DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t34) = t31.
          t33 = t34->children.
          t30 = t33.
          t29 ?= t30.
          t28 = t29.
          DATA t35 TYPE abap_bool.
          DATA t36 TYPE i.
          DATA(t37) = t28.
          t37->load( ).
          t36 = lines( t37->items ).
          DATA(t38) = 3.
          t35 = xsdbool( t36 < t38 ).
          IF t35 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t39) = t12.
          DATA t40 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t40.
          DATA t41 TYPE REF TO zif_lnt_node.
          CLEAR t41.
          DATA t42 TYPE REF TO zif_lnt_node.
          CLEAR t42.
          DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t43.
          DATA(t44) = t28.
          DATA t45 TYPE REF TO object.
          CLEAR t45.
          t44->load( ).
          CLEAR t45.
          READ TABLE t44->items INDEX 1 INTO t45.
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
          DATA t49 TYPE REF TO zcl_lnt_position.
          CLEAR t49.
          DATA t50 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t50.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t51.
          DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t52.
          DATA(t53) = t28.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          t53->load( ).
          CLEAR t54.
          READ TABLE t53->items INDEX 2 INTO t54.
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
          t51 = t52->get_first_token( ).
          t50 = t51.
          DATA t57 TYPE REF TO zcl_lnt_position.
          DATA(t58) = t50.
          t57 = t58->start.
          t49 = t57.
          t48 = t49.
          DATA t59 TYPE REF TO zif_lnt_node.
          CLEAR t59.
          DATA t60 TYPE REF TO zif_lnt_node.
          CLEAR t60.
          DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t61.
          DATA(t62) = t28.
          DATA t63 TYPE REF TO object.
          CLEAR t63.
          t62->load( ).
          CLEAR t63.
          READ TABLE t62->items INDEX 3 INTO t63.
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
          t59 = t60.
          t40 = NEW zcl_lnt_iparameter_data( i_left = t41 i_eq = t48 i_right = t59 ).
          CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
          t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t66.
          IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t66 ).
          ENDIF.
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
          DATA(t69) = |left|.
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
          ENDIF.
          DATA(t71) = |eq|.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
          ENDIF.
          DATA(t73) = |right|.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
          ENDIF.
          t39->load( ).
          APPEND t40 TO t39->items.
          t39->save( ).
        ENDDO.
        DATA t75 TYPE abap_bool.
        DATA t76 TYPE i.
        DATA(t77) = t12.
        t77->load( ).
        t76 = lines( t77->items ).
        DATA(t78) = 0.
        t75 = xsdbool( t76 > t78 ).
        IF t75 = abap_true.
          DATA(t79) = t2.
          DATA t80 TYPE REF TO zcl_lnt_icandidate.
          DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t82) = t12.
          t81 = t82.
          t80 = NEW zcl_lnt_icandidate( i_parameters = t81 ).
          CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
          t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t83 ).
          ENDIF.
          CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
          t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t84) = |parameters|.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
          ENDIF.
          t79->load( ).
          APPEND t80 TO t79->items.
          t79->save( ).
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_expression_node.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      DATA(t88) = t7.
      DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t87 = t88->find_direct_expression( i_type_9913 = t89 ).
      t86 = t87.
      DATA t90 TYPE abap_bool.
      DATA(t91) = t86.
      t90 = xsdbool( t91 IS BOUND ).
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zcl_lnt_abstract_node.
        DATA t95 TYPE REF TO zcl_lnt_expression_node.
        DATA(t96) = t86.
        t95 = t96.
        t94 = t95.
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t98) = t94.
        t97 = t98->children.
        t93 = t97.
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
          DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t106) = t99.
          t105 = t106->get_children( ).
          t104 = t105.
          DATA t107 TYPE abap_bool.
          DATA t108 TYPE i.
          DATA(t109) = t104.
          t109->load( ).
          t108 = lines( t109->items ).
          DATA(t110) = 3.
          t107 = xsdbool( t108 < t110 ).
          IF t107 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t111) = t12.
          DATA t112 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t112.
          DATA t113 TYPE REF TO zif_lnt_node.
          CLEAR t113.
          DATA t114 TYPE REF TO zif_lnt_node.
          CLEAR t114.
          DATA(t115) = t104.
          DATA t116 TYPE REF TO object.
          CLEAR t116.
          t115->load( ).
          CLEAR t116.
          READ TABLE t115->items INDEX 1 INTO t116.
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
          DATA t120 TYPE REF TO zcl_lnt_position.
          CLEAR t120.
          DATA t121 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t121.
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t122.
          DATA t123 TYPE REF TO zif_lnt_node.
          CLEAR t123.
          DATA(t124) = t104.
          DATA t125 TYPE REF TO object.
          CLEAR t125.
          t124->load( ).
          CLEAR t125.
          READ TABLE t124->items INDEX 2 INTO t125.
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
          t122 = t123->get_first_token( ).
          t121 = t122.
          DATA t128 TYPE REF TO zcl_lnt_position.
          DATA(t129) = t121.
          t128 = t129->start.
          t120 = t128.
          t119 = t120.
          DATA t130 TYPE REF TO zif_lnt_node.
          CLEAR t130.
          DATA t131 TYPE REF TO zif_lnt_node.
          CLEAR t131.
          DATA(t132) = t104.
          DATA t133 TYPE REF TO object.
          CLEAR t133.
          t132->load( ).
          CLEAR t133.
          READ TABLE t132->items INDEX 3 INTO t133.
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
          t130 = t131.
          t112 = NEW zcl_lnt_iparameter_data( i_left = t113 i_eq = t119 i_right = t130 ).
          CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
          t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t136 ).
          ENDIF.
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
          DATA(t139) = |left|.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          ENDIF.
          DATA(t141) = |eq|.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
          ENDIF.
          DATA(t143) = |right|.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
          ENDIF.
          t111->load( ).
          APPEND t112 TO t111->items.
          t111->save( ).
        ENDDO.
        DATA t145 TYPE abap_bool.
        DATA t146 TYPE i.
        DATA(t147) = t12.
        t147->load( ).
        t146 = lines( t147->items ).
        DATA(t148) = 0.
        t145 = xsdbool( t146 > t148 ).
        IF t145 = abap_true.
          DATA(t149) = t2.
          DATA t150 TYPE REF TO zcl_lnt_icandidate.
          DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t152) = t12.
          t151 = t152.
          t150 = NEW zcl_lnt_icandidate( i_parameters = t151 ).
          CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
          t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t153 ).
          ENDIF.
          CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
          t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t154) = |parameters|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          t149->load( ).
          APPEND t150 TO t149->items.
          t149->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t156) = t2.
    result = t156.

  ENDMETHOD.

  METHOD value_body_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
    t4 = t5->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t16) = t7.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t15 = t16->find_direct_expressions( i_type_9913 = t17 ).
      t14 = t15.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE i.
      DATA(t20) = t14.
      t20->load( ).
      t19 = lines( t20->items ).
      DATA(t21) = 1.
      t18 = xsdbool( t19 <= t21 ).
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t22) = t14.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t22->load( ).
        IF t25 >= lines( t22->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t22->items INDEX t25 + 1 INTO t24.
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
        DATA(t32) = t23.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t34) = t31.
        t33 = t34->children.
        t30 = t33.
        t29 ?= t30.
        t28 = t29.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE i.
        DATA(t37) = t28.
        t37->load( ).
        t36 = lines( t37->items ).
        DATA(t38) = 3.
        t35 = xsdbool( t36 < t38 ).
        IF t35 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t39) = t12.
        DATA t40 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t40.
        DATA t41 TYPE REF TO zif_lnt_node.
        CLEAR t41.
        DATA t42 TYPE REF TO zif_lnt_node.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t43.
        DATA(t44) = t28.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        t44->load( ).
        CLEAR t45.
        READ TABLE t44->items INDEX 1 INTO t45.
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
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        DATA t52 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t52.
        DATA(t53) = t28.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        t53->load( ).
        CLEAR t54.
        READ TABLE t53->items INDEX 2 INTO t54.
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
        t51 = t52->get_first_token( ).
        t50 = t51.
        DATA t57 TYPE REF TO zcl_lnt_position.
        DATA(t58) = t50.
        t57 = t58->start.
        t49 = t57.
        t48 = t49.
        DATA t59 TYPE REF TO zif_lnt_node.
        CLEAR t59.
        DATA t60 TYPE REF TO zif_lnt_node.
        CLEAR t60.
        DATA t61 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t61.
        DATA(t62) = t28.
        DATA t63 TYPE REF TO object.
        CLEAR t63.
        t62->load( ).
        CLEAR t63.
        READ TABLE t62->items INDEX 3 INTO t63.
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
        t59 = t60.
        t40 = NEW zcl_lnt_iparameter_data( i_left = t41 i_eq = t48 i_right = t59 ).
        CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
        t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t66 ).
        ENDIF.
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
        DATA(t69) = |left|.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
        ENDIF.
        DATA(t71) = |eq|.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
        ENDIF.
        DATA(t73) = |right|.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
        ENDIF.
        t39->load( ).
        APPEND t40 TO t39->items.
        t39->save( ).
      ENDDO.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE i.
      DATA(t77) = t12.
      t77->load( ).
      t76 = lines( t77->items ).
      DATA(t78) = 0.
      t75 = xsdbool( t76 > t78 ).
      IF t75 = abap_true.
        DATA(t79) = t2.
        DATA t80 TYPE REF TO zcl_lnt_icandidate.
        DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t82) = t12.
        t81 = t82.
        t80 = NEW zcl_lnt_icandidate( i_parameters = t81 ).
        CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
        t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t83 ).
        ENDIF.
        CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
        t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t84) = |parameters|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        t79->load( ).
        APPEND t80 TO t79->items.
        t79->save( ).
      ENDIF.
    ENDDO.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t87) = t1.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t86 = t87->find_all_expressions_recursive( i_type_9913 = t88 ).
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t89.
    DATA t90 TYPE REF TO object.
    CLEAR t90.
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
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t95.
      t94 = t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t98) = t89.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
      t97 = t98->find_direct_expressions( i_type_9913 = t99 ).
      t96 = t97.
      DATA t100 TYPE abap_bool.
      DATA t101 TYPE i.
      DATA(t102) = t96.
      t102->load( ).
      t101 = lines( t102->items ).
      DATA(t103) = 1.
      t100 = xsdbool( t101 <= t103 ).
      IF t100 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t104) = t96.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      DATA(t107) = VALUE i( ).
      DO.
        t104->load( ).
        IF t107 >= lines( t104->items ).
          EXIT.
        ENDIF.
        CLEAR t106.
        READ TABLE t104->items INDEX t107 + 1 INTO t106.
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
        DATA(t114) = t105.
        t113 = t114.
        DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t116) = t113.
        t115 = t116->children.
        t112 = t115.
        t111 ?= t112.
        t110 = t111.
        DATA t117 TYPE abap_bool.
        DATA t118 TYPE i.
        DATA(t119) = t110.
        t119->load( ).
        t118 = lines( t119->items ).
        DATA(t120) = 3.
        t117 = xsdbool( t118 < t120 ).
        IF t117 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t121) = t94.
        DATA t122 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t122.
        DATA t123 TYPE REF TO zif_lnt_node.
        CLEAR t123.
        DATA t124 TYPE REF TO zif_lnt_node.
        CLEAR t124.
        DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t125.
        DATA(t126) = t110.
        DATA t127 TYPE REF TO object.
        CLEAR t127.
        t126->load( ).
        CLEAR t127.
        READ TABLE t126->items INDEX 1 INTO t127.
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
        DATA t131 TYPE REF TO zcl_lnt_position.
        CLEAR t131.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t133.
        DATA t134 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t134.
        DATA(t135) = t110.
        DATA t136 TYPE REF TO object.
        CLEAR t136.
        t135->load( ).
        CLEAR t136.
        READ TABLE t135->items INDEX 2 INTO t136.
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
        t133 = t134->get_first_token( ).
        t132 = t133.
        DATA t139 TYPE REF TO zcl_lnt_position.
        DATA(t140) = t132.
        t139 = t140->start.
        t131 = t139.
        t130 = t131.
        DATA t141 TYPE REF TO zif_lnt_node.
        CLEAR t141.
        DATA t142 TYPE REF TO zif_lnt_node.
        CLEAR t142.
        DATA t143 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t143.
        DATA(t144) = t110.
        DATA t145 TYPE REF TO object.
        CLEAR t145.
        t144->load( ).
        CLEAR t145.
        READ TABLE t144->items INDEX 3 INTO t145.
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
        t141 = t142.
        t122 = NEW zcl_lnt_iparameter_data( i_left = t123 i_eq = t130 i_right = t141 ).
        CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
        t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t148 ).
        ENDIF.
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
        DATA(t151) = |left|.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
        ENDIF.
        DATA(t153) = |eq|.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
        ENDIF.
        DATA(t155) = |right|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        ENDIF.
        t121->load( ).
        APPEND t122 TO t121->items.
        t121->save( ).
      ENDDO.
      DATA t157 TYPE abap_bool.
      DATA t158 TYPE i.
      DATA(t159) = t94.
      t159->load( ).
      t158 = lines( t159->items ).
      DATA(t160) = 0.
      t157 = xsdbool( t158 > t160 ).
      IF t157 = abap_true.
        DATA(t161) = t2.
        DATA t162 TYPE REF TO zcl_lnt_icandidate.
        DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t164) = t94.
        t163 = t164.
        t162 = NEW zcl_lnt_icandidate( i_parameters = t163 ).
        CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
        t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
        t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t166) = |parameters|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        t161->load( ).
        APPEND t162 TO t161->items.
        t161->save( ).
      ENDIF.
    ENDDO.
    DATA(t168) = t2.
    result = t168.

  ENDMETHOD.

  METHOD raise_and_create_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d586_198a3628c215.
    t5 = t6->find_all_statements( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE i( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t1.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d435_660f11c8643d.
    t9 = t10->find_all_statements( i_type_9913 = t11 ).
    DATA t12 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
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
      DATA(t17) = t4.
      DATA(t18) = t12.
      t17->load( ).
      APPEND t18 TO t17->items.
      t17->save( ).
    ENDDO.
    DATA t19 TYPE i.
    DATA(t20) = t4.
    t20->load( ).
    t19 = lines( t20->items ).
    t8 = t19.
    DATA(t21) = VALUE i( ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = t1.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d588_a72b5bf675f5.
    t22 = t23->find_all_statements( i_type_9913 = t24 ).
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
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
      DATA(t30) = t4.
      DATA(t31) = t25.
      t30->load( ).
      APPEND t31 TO t30->items.
      t30->save( ).
    ENDDO.
    DATA t32 TYPE i.
    DATA(t33) = t4.
    t33->load( ).
    t32 = lines( t33->items ).
    t21 = t32.
    DATA(t34) = t4.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t34->load( ).
      IF t37 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t34->items INDEX t37 + 1 INTO t36.
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
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t41.
      t40 = t41.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = t35.
      DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t43 = t44->find_direct_expression( i_type_9913 = t45 ).
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      DATA(t50) = t42.
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t51.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t49.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t54.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t57 TYPE REF TO zcl_lnt_abstract_node.
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        DATA(t59) = t49.
        t58 = t59.
        t57 = t58.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t61) = t57.
        t60 = t61->children.
        t56 = t60.
        t55 ?= t56.
        t51 = t55.
      ENDIF.
      t48 = t51.
      t47 = t48.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t62.
      DATA t63 TYPE abap_bool.
      DATA(t64) = t47.
      t63 = xsdbool( t64 IS BOUND ).
      IF t63 = abap_true.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t66) = t47.
        t65 = t66.
        t62 = t65.
      ELSE.
        DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t67.
        t62 = t67.
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
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t75) = t68.
        t74 = t75->get_children( ).
        t73 = t74.
        DATA t76 TYPE abap_bool.
        DATA t77 TYPE i.
        DATA(t78) = t73.
        t78->load( ).
        t77 = lines( t78->items ).
        DATA(t79) = 3.
        t76 = xsdbool( t77 < t79 ).
        IF t76 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t80) = t40.
        DATA t81 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t81.
        DATA t82 TYPE REF TO zif_lnt_node.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_node.
        CLEAR t83.
        DATA(t84) = t73.
        DATA t85 TYPE REF TO object.
        CLEAR t85.
        t84->load( ).
        CLEAR t85.
        READ TABLE t84->items INDEX 1 INTO t85.
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
        DATA t89 TYPE REF TO zcl_lnt_position.
        CLEAR t89.
        DATA t90 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t91.
        DATA t92 TYPE REF TO zif_lnt_node.
        CLEAR t92.
        DATA(t93) = t73.
        DATA t94 TYPE REF TO object.
        CLEAR t94.
        t93->load( ).
        CLEAR t94.
        READ TABLE t93->items INDEX 2 INTO t94.
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
        t91 = t92->get_first_token( ).
        t90 = t91.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA(t98) = t90.
        t97 = t98->start.
        t89 = t97.
        t88 = t89.
        DATA t99 TYPE REF TO zif_lnt_node.
        CLEAR t99.
        DATA t100 TYPE REF TO zif_lnt_node.
        CLEAR t100.
        DATA(t101) = t73.
        DATA t102 TYPE REF TO object.
        CLEAR t102.
        t101->load( ).
        CLEAR t102.
        READ TABLE t101->items INDEX 3 INTO t102.
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
        t99 = t100.
        t81 = NEW zcl_lnt_iparameter_data( i_left = t82 i_eq = t88 i_right = t99 ).
        CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
        t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t105 ).
        ENDIF.
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
        DATA(t108) = |left|.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
        ENDIF.
        DATA(t110) = |eq|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |right|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        t80->load( ).
        APPEND t81 TO t80->items.
        t80->save( ).
      ENDDO.
      DATA t114 TYPE REF TO zcl_lnt_expression_node.
      DATA t115 TYPE REF TO zcl_lnt_expression_node.
      DATA(t116) = t35.
      DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t115 = t116->find_direct_expression( i_type_9913 = t117 ).
      t114 = t115.
      DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t118.
      DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t119.
      DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t120.
      DATA t121 TYPE REF TO zcl_lnt_expression_node.
      DATA(t122) = t114.
      t121 = t122.
      DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t123.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = t121.
      IF t125 IS INITIAL.
        t124 = abap_true.
      ENDIF.
      IF t124 = abap_true.
        DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t126.
        t123 = t126.
      ELSE.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t129 TYPE REF TO zcl_lnt_abstract_node.
        DATA t130 TYPE REF TO zcl_lnt_expression_node.
        DATA(t131) = t121.
        t130 = t131.
        t129 = t130.
        DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t133) = t129.
        t132 = t133->children.
        t128 = t132.
        t127 ?= t128.
        t123 = t127.
      ENDIF.
      t120 = t123.
      t119 = t120.
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t134.
      DATA t135 TYPE abap_bool.
      DATA(t136) = t119.
      t135 = xsdbool( t136 IS BOUND ).
      IF t135 = abap_true.
        DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t138) = t119.
        t137 = t138.
        t134 = t137.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t139.
        t134 = t139.
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
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t147) = t140.
        t146 = t147->get_children( ).
        t145 = t146.
        DATA t148 TYPE abap_bool.
        DATA t149 TYPE i.
        DATA(t150) = t145.
        t150->load( ).
        t149 = lines( t150->items ).
        DATA(t151) = 3.
        t148 = xsdbool( t149 < t151 ).
        IF t148 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t152) = t40.
        DATA t153 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t153.
        DATA t154 TYPE REF TO zif_lnt_node.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_node.
        CLEAR t155.
        DATA(t156) = t145.
        DATA t157 TYPE REF TO object.
        CLEAR t157.
        t156->load( ).
        CLEAR t157.
        READ TABLE t156->items INDEX 1 INTO t157.
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
        DATA t161 TYPE REF TO zcl_lnt_position.
        CLEAR t161.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t162.
        DATA t163 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t163.
        DATA t164 TYPE REF TO zif_lnt_node.
        CLEAR t164.
        DATA(t165) = t145.
        DATA t166 TYPE REF TO object.
        CLEAR t166.
        t165->load( ).
        CLEAR t166.
        READ TABLE t165->items INDEX 2 INTO t166.
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
        t163 = t164->get_first_token( ).
        t162 = t163.
        DATA t169 TYPE REF TO zcl_lnt_position.
        DATA(t170) = t162.
        t169 = t170->start.
        t161 = t169.
        t160 = t161.
        DATA t171 TYPE REF TO zif_lnt_node.
        CLEAR t171.
        DATA t172 TYPE REF TO zif_lnt_node.
        CLEAR t172.
        DATA(t173) = t145.
        DATA t174 TYPE REF TO object.
        CLEAR t174.
        t173->load( ).
        CLEAR t174.
        READ TABLE t173->items INDEX 3 INTO t174.
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
        t171 = t172.
        t153 = NEW zcl_lnt_iparameter_data( i_left = t154 i_eq = t160 i_right = t171 ).
        CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
        t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t177 ).
        ENDIF.
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
        DATA(t180) = |left|.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
        ENDIF.
        DATA(t182) = |eq|.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
        ENDIF.
        DATA(t184) = |right|.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
        ENDIF.
        t152->load( ).
        APPEND t153 TO t152->items.
        t152->save( ).
      ENDDO.
      DATA t186 TYPE abap_bool.
      DATA t187 TYPE i.
      DATA(t188) = t40.
      t188->load( ).
      t187 = lines( t188->items ).
      DATA(t189) = 0.
      t186 = xsdbool( t187 > t189 ).
      IF t186 = abap_true.
        DATA(t190) = t2.
        DATA t191 TYPE REF TO zcl_lnt_icandidate.
        DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t193) = t40.
        t192 = t193.
        t191 = NEW zcl_lnt_icandidate( i_parameters = t192 ).
        CREATE OBJECT t191->zlnt_view_ownkeys_b0e8086400eb.
        t191->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t191->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t191->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t194 ).
        ENDIF.
        CREATE OBJECT t191->zlnt_json_ownkeys_70e5fd461788.
        t191->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t195) = |parameters|.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t191->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t191->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
        ENDIF.
        t190->load( ).
        APPEND t191 TO t190->items.
        t190->save( ).
      ENDIF.
    ENDDO.
    DATA(t197) = t2.
    result = t197.

  ENDMETHOD.

  METHOD method_call_param_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t4 = t5->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = t7.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t18 = t19->find_direct_expression( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t17.
      IF t23 IS INITIAL.
        t22 = abap_true.
      ENDIF.
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t24.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zcl_lnt_abstract_node.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        DATA(t29) = t17.
        t28 = t29.
        t27 = t28.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t31) = t27.
        t30 = t31->children.
        t26 = t30.
        t25 ?= t26.
        t21 = t25.
      ENDIF.
      t16 = t21.
      t15 = t16.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t15.
      t33 = xsdbool( t34 IS BOUND ).
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = t15.
        t35 = t36.
        t32 = t35.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t37.
        t32 = t37.
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
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t45) = t38.
        t44 = t45->get_children( ).
        t43 = t44.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE i.
        DATA(t48) = t43.
        t48->load( ).
        t47 = lines( t48->items ).
        DATA(t49) = 3.
        t46 = xsdbool( t47 < t49 ).
        IF t46 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t50) = t12.
        DATA t51 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t51.
        DATA t52 TYPE REF TO zif_lnt_node.
        CLEAR t52.
        DATA t53 TYPE REF TO zif_lnt_node.
        CLEAR t53.
        DATA(t54) = t43.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t54->load( ).
        CLEAR t55.
        READ TABLE t54->items INDEX 1 INTO t55.
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
        DATA t59 TYPE REF TO zcl_lnt_position.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t61.
        DATA t62 TYPE REF TO zif_lnt_node.
        CLEAR t62.
        DATA(t63) = t43.
        DATA t64 TYPE REF TO object.
        CLEAR t64.
        t63->load( ).
        CLEAR t64.
        READ TABLE t63->items INDEX 2 INTO t64.
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
        t61 = t62->get_first_token( ).
        t60 = t61.
        DATA t67 TYPE REF TO zcl_lnt_position.
        DATA(t68) = t60.
        t67 = t68->start.
        t59 = t67.
        t58 = t59.
        DATA t69 TYPE REF TO zif_lnt_node.
        CLEAR t69.
        DATA t70 TYPE REF TO zif_lnt_node.
        CLEAR t70.
        DATA(t71) = t43.
        DATA t72 TYPE REF TO object.
        CLEAR t72.
        t71->load( ).
        CLEAR t72.
        READ TABLE t71->items INDEX 3 INTO t72.
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
        t69 = t70.
        t51 = NEW zcl_lnt_iparameter_data( i_left = t52 i_eq = t58 i_right = t69 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t75 ).
        ENDIF.
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
        DATA(t78) = |left|.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
        ENDIF.
        DATA(t80) = |eq|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        DATA(t82) = |right|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        t50->load( ).
        APPEND t51 TO t50->items.
        t50->save( ).
      ENDDO.
      DATA t84 TYPE REF TO zcl_lnt_expression_node.
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      DATA(t86) = t7.
      DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
      t85 = t86->find_direct_expression( i_type_9913 = t87 ).
      t84 = t85.
      DATA t88 TYPE abap_bool.
      DATA(t89) = t84.
      t88 = xsdbool( t89 IS BOUND ).
      IF t88 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t92.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        DATA t95 TYPE REF TO zcl_lnt_expression_node.
        DATA(t96) = t84.
        t95 = t96.
        DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
        t94 = t95->find_direct_expression( i_type_9913 = t97 ).
        t93 = t94.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t93.
        IF t100 IS INITIAL.
          t99 = abap_true.
        ENDIF.
        IF t99 = abap_true.
          DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t101.
          t98 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t104 TYPE REF TO zcl_lnt_abstract_node.
          DATA t105 TYPE REF TO zcl_lnt_expression_node.
          DATA(t106) = t93.
          t105 = t106.
          t104 = t105.
          DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t108) = t104.
          t107 = t108->children.
          t103 = t107.
          t102 ?= t103.
          t98 = t102.
        ENDIF.
        t92 = t98.
        t91 = t92.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t109.
        DATA t110 TYPE abap_bool.
        DATA(t111) = t91.
        t110 = xsdbool( t111 IS BOUND ).
        IF t110 = abap_true.
          DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t113) = t91.
          t112 = t113.
          t109 = t112.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t114.
          t109 = t114.
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
          DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t122) = t115.
          t121 = t122->get_children( ).
          t120 = t121.
          DATA t123 TYPE abap_bool.
          DATA t124 TYPE i.
          DATA(t125) = t120.
          t125->load( ).
          t124 = lines( t125->items ).
          DATA(t126) = 3.
          t123 = xsdbool( t124 < t126 ).
          IF t123 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t127) = t12.
          DATA t128 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t128.
          DATA t129 TYPE REF TO zif_lnt_node.
          CLEAR t129.
          DATA t130 TYPE REF TO zif_lnt_node.
          CLEAR t130.
          DATA(t131) = t120.
          DATA t132 TYPE REF TO object.
          CLEAR t132.
          t131->load( ).
          CLEAR t132.
          READ TABLE t131->items INDEX 1 INTO t132.
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
          DATA t136 TYPE REF TO zcl_lnt_position.
          CLEAR t136.
          DATA t137 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t137.
          DATA t138 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t138.
          DATA t139 TYPE REF TO zif_lnt_node.
          CLEAR t139.
          DATA(t140) = t120.
          DATA t141 TYPE REF TO object.
          CLEAR t141.
          t140->load( ).
          CLEAR t141.
          READ TABLE t140->items INDEX 2 INTO t141.
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
          t138 = t139->get_first_token( ).
          t137 = t138.
          DATA t144 TYPE REF TO zcl_lnt_position.
          DATA(t145) = t137.
          t144 = t145->start.
          t136 = t144.
          t135 = t136.
          DATA t146 TYPE REF TO zif_lnt_node.
          CLEAR t146.
          DATA t147 TYPE REF TO zif_lnt_node.
          CLEAR t147.
          DATA(t148) = t120.
          DATA t149 TYPE REF TO object.
          CLEAR t149.
          t148->load( ).
          CLEAR t149.
          READ TABLE t148->items INDEX 3 INTO t149.
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
          t146 = t147.
          t128 = NEW zcl_lnt_iparameter_data( i_left = t129 i_eq = t135 i_right = t146 ).
          CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
          t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t152 ).
          ENDIF.
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
          DATA(t155) = |left|.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          DATA(t157) = |eq|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          ENDIF.
          DATA(t159) = |right|.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
          ENDIF.
          t127->load( ).
          APPEND t128 TO t127->items.
          t127->save( ).
        ENDDO.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t162 TYPE REF TO zcl_lnt_expression_node.
        DATA(t163) = t84.
        t162 = t163.
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
          DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t173) = t165.
          DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
          t172 = t173->find_direct_expressions( i_type_9913 = t174 ).
          t171 = t172.
          DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t175.
          DATA t176 TYPE abap_bool.
          DATA(t177) = t171.
          t176 = xsdbool( t177 IS BOUND ).
          IF t176 = abap_true.
            DATA(t178) = t171.
            t175 = t178.
          ELSE.
            DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t179.
            t175 = t179.
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
            DATA(t189) = t180.
            t188 = t189.
            DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t191) = t188.
            t190 = t191->children.
            t187 = t190.
            t186 ?= t187.
            t185 = t186.
            DATA t192 TYPE abap_bool.
            DATA t193 TYPE i.
            DATA(t194) = t185.
            t194->load( ).
            t193 = lines( t194->items ).
            DATA(t195) = 3.
            t192 = xsdbool( t193 < t195 ).
            IF t192 = abap_true.
              CONTINUE.
            ENDIF.
            DATA(t196) = t12.
            DATA t197 TYPE REF TO zcl_lnt_iparameter_data.
            CLEAR t197.
            DATA t198 TYPE REF TO zif_lnt_node.
            CLEAR t198.
            DATA t199 TYPE REF TO zif_lnt_node.
            CLEAR t199.
            DATA t200 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t200.
            DATA(t201) = t185.
            DATA t202 TYPE REF TO object.
            CLEAR t202.
            t201->load( ).
            CLEAR t202.
            READ TABLE t201->items INDEX 1 INTO t202.
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
            DATA t206 TYPE REF TO zcl_lnt_position.
            CLEAR t206.
            DATA t207 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t207.
            DATA t208 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t208.
            DATA t209 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t209.
            DATA(t210) = t185.
            DATA t211 TYPE REF TO object.
            CLEAR t211.
            t210->load( ).
            CLEAR t211.
            READ TABLE t210->items INDEX 2 INTO t211.
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
            t208 = t209->get_first_token( ).
            t207 = t208.
            DATA t214 TYPE REF TO zcl_lnt_position.
            DATA(t215) = t207.
            t214 = t215->start.
            t206 = t214.
            t205 = t206.
            DATA t216 TYPE REF TO zif_lnt_node.
            CLEAR t216.
            DATA t217 TYPE REF TO zif_lnt_node.
            CLEAR t217.
            DATA t218 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t218.
            DATA(t219) = t185.
            DATA t220 TYPE REF TO object.
            CLEAR t220.
            t219->load( ).
            CLEAR t220.
            READ TABLE t219->items INDEX 3 INTO t220.
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
            t216 = t217.
            t197 = NEW zcl_lnt_iparameter_data( i_left = t198 i_eq = t205 i_right = t216 ).
            CREATE OBJECT t197->zlnt_view_ownkeys_b0e8086400eb.
            t197->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t223.
            IF t197->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t197->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t223 ).
            ENDIF.
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
            DATA(t226) = |left|.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
            ENDIF.
            DATA(t228) = |eq|.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
            ENDIF.
            DATA(t230) = |right|.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            IF t197->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t197->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
            ENDIF.
            t196->load( ).
            APPEND t197 TO t196->items.
            t196->save( ).
          ENDDO.
        ENDDO.
        DATA t232 TYPE REF TO zcl_lnt_expression_node.
        DATA t233 TYPE REF TO zcl_lnt_expression_node.
        DATA t234 TYPE REF TO zcl_lnt_expression_node.
        DATA(t235) = t84.
        t234 = t235.
        DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
        t233 = t234->find_direct_expression( i_type_9913 = t236 ).
        t232 = t233.
        DATA t237 TYPE abap_bool.
        DATA(t238) = t232.
        t237 = xsdbool( t238 IS BOUND ).
        IF t237 = abap_true.
          DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t242 TYPE REF TO zcl_lnt_abstract_node.
          DATA t243 TYPE REF TO zcl_lnt_expression_node.
          DATA(t244) = t232.
          t243 = t244.
          t242 = t243.
          DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t246) = t242.
          t245 = t246->children.
          t241 = t245.
          t240 ?= t241.
          t239 = t240.
          DATA t247 TYPE abap_bool.
          DATA t248 TYPE i.
          DATA(t249) = t239.
          t249->load( ).
          t248 = lines( t249->items ).
          DATA(t250) = 3.
          t247 = xsdbool( t248 < t250 ).
          IF t247 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t251) = t12.
          DATA t252 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t252.
          DATA t253 TYPE REF TO zif_lnt_node.
          CLEAR t253.
          DATA t254 TYPE REF TO zif_lnt_node.
          CLEAR t254.
          DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t255.
          DATA(t256) = t239.
          DATA t257 TYPE REF TO object.
          CLEAR t257.
          t256->load( ).
          CLEAR t257.
          READ TABLE t256->items INDEX 1 INTO t257.
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
          DATA t261 TYPE REF TO zcl_lnt_position.
          CLEAR t261.
          DATA t262 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t262.
          DATA t263 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t263.
          DATA t264 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t264.
          DATA(t265) = t239.
          DATA t266 TYPE REF TO object.
          CLEAR t266.
          t265->load( ).
          CLEAR t266.
          READ TABLE t265->items INDEX 2 INTO t266.
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
          t263 = t264->get_first_token( ).
          t262 = t263.
          DATA t269 TYPE REF TO zcl_lnt_position.
          DATA(t270) = t262.
          t269 = t270->start.
          t261 = t269.
          t260 = t261.
          DATA t271 TYPE REF TO zif_lnt_node.
          CLEAR t271.
          DATA t272 TYPE REF TO zif_lnt_node.
          CLEAR t272.
          DATA t273 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t273.
          DATA(t274) = t239.
          DATA t275 TYPE REF TO object.
          CLEAR t275.
          t274->load( ).
          CLEAR t275.
          READ TABLE t274->items INDEX 3 INTO t275.
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
          t271 = t272.
          t252 = NEW zcl_lnt_iparameter_data( i_left = t253 i_eq = t260 i_right = t271 ).
          CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
          t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t278.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t278 ).
          ENDIF.
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
          DATA(t281) = |left|.
          DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t282.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
          ENDIF.
          DATA(t283) = |eq|.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t284.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
          ENDIF.
          DATA(t285) = |right|.
          DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t286.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
          ENDIF.
          t251->load( ).
          APPEND t252 TO t251->items.
          t251->save( ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t288.
        DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t289.
        DATA t290 TYPE REF TO zcl_lnt_expression_node.
        DATA t291 TYPE REF TO zcl_lnt_expression_node.
        DATA t292 TYPE REF TO zcl_lnt_expression_node.
        DATA(t293) = t84.
        t292 = t293.
        DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
        t291 = t292->find_direct_expression( i_type_9913 = t294 ).
        t290 = t291.
        DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t295.
        DATA(t296) = VALUE abap_bool( ).
        DATA(t297) = t290.
        IF t297 IS INITIAL.
          t296 = abap_true.
        ENDIF.
        IF t296 = abap_true.
          DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t298.
          t295 = t298.
        ELSE.
          DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t301 TYPE REF TO zcl_lnt_abstract_node.
          DATA t302 TYPE REF TO zcl_lnt_expression_node.
          DATA(t303) = t290.
          t302 = t303.
          t301 = t302.
          DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t305) = t301.
          t304 = t305->children.
          t300 = t304.
          t299 ?= t300.
          t295 = t299.
        ENDIF.
        t289 = t295.
        t288 = t289.
        DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t306.
        DATA t307 TYPE abap_bool.
        DATA(t308) = t288.
        t307 = xsdbool( t308 IS BOUND ).
        IF t307 = abap_true.
          DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t310) = t288.
          t309 = t310.
          t306 = t309.
        ELSE.
          DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t311.
          t306 = t311.
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
          DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t319) = t312.
          t318 = t319->get_children( ).
          t317 = t318.
          DATA t320 TYPE abap_bool.
          DATA t321 TYPE i.
          DATA(t322) = t317.
          t322->load( ).
          t321 = lines( t322->items ).
          DATA(t323) = 3.
          t320 = xsdbool( t321 < t323 ).
          IF t320 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t324) = t12.
          DATA t325 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t325.
          DATA t326 TYPE REF TO zif_lnt_node.
          CLEAR t326.
          DATA t327 TYPE REF TO zif_lnt_node.
          CLEAR t327.
          DATA(t328) = t317.
          DATA t329 TYPE REF TO object.
          CLEAR t329.
          t328->load( ).
          CLEAR t329.
          READ TABLE t328->items INDEX 1 INTO t329.
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
          DATA t333 TYPE REF TO zcl_lnt_position.
          CLEAR t333.
          DATA t334 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t334.
          DATA t335 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t335.
          DATA t336 TYPE REF TO zif_lnt_node.
          CLEAR t336.
          DATA(t337) = t317.
          DATA t338 TYPE REF TO object.
          CLEAR t338.
          t337->load( ).
          CLEAR t338.
          READ TABLE t337->items INDEX 2 INTO t338.
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
          t335 = t336->get_first_token( ).
          t334 = t335.
          DATA t341 TYPE REF TO zcl_lnt_position.
          DATA(t342) = t334.
          t341 = t342->start.
          t333 = t341.
          t332 = t333.
          DATA t343 TYPE REF TO zif_lnt_node.
          CLEAR t343.
          DATA t344 TYPE REF TO zif_lnt_node.
          CLEAR t344.
          DATA(t345) = t317.
          DATA t346 TYPE REF TO object.
          CLEAR t346.
          t345->load( ).
          CLEAR t346.
          READ TABLE t345->items INDEX 3 INTO t346.
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
          t343 = t344.
          t325 = NEW zcl_lnt_iparameter_data( i_left = t326 i_eq = t332 i_right = t343 ).
          CREATE OBJECT t325->zlnt_view_ownkeys_b0e8086400eb.
          t325->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          IF t325->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t325->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t349 ).
          ENDIF.
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
          DATA(t352) = |left|.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          IF t325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
          ENDIF.
          DATA(t354) = |eq|.
          DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t355.
          IF t325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
          ENDIF.
          DATA(t356) = |right|.
          DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t357.
          IF t325->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t325->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
          ENDIF.
          t324->load( ).
          APPEND t325 TO t324->items.
          t324->save( ).
        ENDDO.
      ENDIF.
      DATA t358 TYPE abap_bool.
      DATA t359 TYPE i.
      DATA(t360) = t12.
      t360->load( ).
      t359 = lines( t360->items ).
      DATA(t361) = 0.
      t358 = xsdbool( t359 > t361 ).
      IF t358 = abap_true.
        DATA(t362) = t2.
        DATA t363 TYPE REF TO zcl_lnt_icandidate.
        DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t365) = t12.
        t364 = t365.
        t363 = NEW zcl_lnt_icandidate( i_parameters = t364 ).
        CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
        t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t366 ).
        ENDIF.
        CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
        t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t367) = |parameters|.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t367 p1 = t368 ).
        ENDIF.
        t362->load( ).
        APPEND t363 TO t362->items.
        t362->save( ).
      ENDIF.
    ENDDO.
    DATA(t369) = t2.
    result = t369.

  ENDMETHOD.

  METHOD function_parameter_candidates.
    DATA(t1) = i_stru.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d201_586873752c2d.
    t4 = t5->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t7.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d195_e320b2253f20.
      t14 = t15->find_all_expressions( i_type_9913 = t16 ).
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
        DATA(t26) = t17.
        t25 = t26.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = t25.
        t27 = t28->children.
        t24 = t27.
        t23 ?= t24.
        t22 = t23.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE i.
        DATA(t31) = t22.
        t31->load( ).
        t30 = lines( t31->items ).
        DATA(t32) = 3.
        t29 = xsdbool( t30 < t32 ).
        IF t29 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t33) = t12.
        DATA t34 TYPE REF TO zcl_lnt_iparameter_data.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_node.
        CLEAR t35.
        DATA t36 TYPE REF TO zif_lnt_node.
        CLEAR t36.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA(t38) = t22.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        t38->load( ).
        CLEAR t39.
        READ TABLE t38->items INDEX 1 INTO t39.
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
        DATA t43 TYPE REF TO zcl_lnt_position.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA t46 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t46.
        DATA(t47) = t22.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t47->load( ).
        CLEAR t48.
        READ TABLE t47->items INDEX 2 INTO t48.
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
        t45 = t46->get_first_token( ).
        t44 = t45.
        DATA t51 TYPE REF TO zcl_lnt_position.
        DATA(t52) = t44.
        t51 = t52->start.
        t43 = t51.
        t42 = t43.
        DATA t53 TYPE REF TO zif_lnt_node.
        CLEAR t53.
        DATA t54 TYPE REF TO zif_lnt_node.
        CLEAR t54.
        DATA t55 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t55.
        DATA(t56) = t22.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t56->load( ).
        CLEAR t57.
        READ TABLE t56->items INDEX 3 INTO t57.
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
        t53 = t54.
        t34 = NEW zcl_lnt_iparameter_data( i_left = t35 i_eq = t42 i_right = t53 ).
        CREATE OBJECT t34->zlnt_view_ownkeys_b0e8086400eb.
        t34->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t60 ).
        ENDIF.
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
        DATA(t63) = |left|.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
        ENDIF.
        DATA(t65) = |eq|.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
        ENDIF.
        DATA(t67) = |right|.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
        ENDIF.
        t33->load( ).
        APPEND t34 TO t33->items.
        t33->save( ).
      ENDDO.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = t7.
      DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
      t69 = t70->find_direct_expressions( i_type_9913 = t71 ).
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
        DATA(t78) = t72.
        DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
        t77 = t78->find_direct_expressions( i_type_9913 = t79 ).
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
          DATA(t89) = t80.
          t88 = t89.
          DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t91) = t88.
          t90 = t91->children.
          t87 = t90.
          t86 ?= t87.
          t85 = t86.
          DATA t92 TYPE abap_bool.
          DATA t93 TYPE i.
          DATA(t94) = t85.
          t94->load( ).
          t93 = lines( t94->items ).
          DATA(t95) = 3.
          t92 = xsdbool( t93 < t95 ).
          IF t92 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t96) = t12.
          DATA t97 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t97.
          DATA t98 TYPE REF TO zif_lnt_node.
          CLEAR t98.
          DATA t99 TYPE REF TO zif_lnt_node.
          CLEAR t99.
          DATA t100 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t100.
          DATA(t101) = t85.
          DATA t102 TYPE REF TO object.
          CLEAR t102.
          t101->load( ).
          CLEAR t102.
          READ TABLE t101->items INDEX 1 INTO t102.
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
          DATA t106 TYPE REF TO zcl_lnt_position.
          CLEAR t106.
          DATA t107 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t107.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t108.
          DATA t109 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t109.
          DATA(t110) = t85.
          DATA t111 TYPE REF TO object.
          CLEAR t111.
          t110->load( ).
          CLEAR t111.
          READ TABLE t110->items INDEX 2 INTO t111.
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
          t108 = t109->get_first_token( ).
          t107 = t108.
          DATA t114 TYPE REF TO zcl_lnt_position.
          DATA(t115) = t107.
          t114 = t115->start.
          t106 = t114.
          t105 = t106.
          DATA t116 TYPE REF TO zif_lnt_node.
          CLEAR t116.
          DATA t117 TYPE REF TO zif_lnt_node.
          CLEAR t117.
          DATA t118 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t118.
          DATA(t119) = t85.
          DATA t120 TYPE REF TO object.
          CLEAR t120.
          t119->load( ).
          CLEAR t120.
          READ TABLE t119->items INDEX 3 INTO t120.
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
          t116 = t117.
          t97 = NEW zcl_lnt_iparameter_data( i_left = t98 i_eq = t105 i_right = t116 ).
          CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
          t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t123 ).
          ENDIF.
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
          DATA(t126) = |left|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          DATA(t128) = |eq|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          DATA(t130) = |right|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          t96->load( ).
          APPEND t97 TO t96->items.
          t96->save( ).
        ENDDO.
      ENDDO.
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      DATA t133 TYPE REF TO zcl_lnt_expression_node.
      DATA(t134) = t7.
      DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t133 = t134->find_direct_expression( i_type_9913 = t135 ).
      t132 = t133.
      DATA t136 TYPE abap_bool.
      DATA(t137) = t132.
      t136 = xsdbool( t137 IS BOUND ).
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t140) = t132.
        t139 = t140.
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
          DATA(t151) = t142.
          t150 = t151.
          DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t153) = t150.
          t152 = t153->children.
          t149 = t152.
          t148 ?= t149.
          t147 = t148.
          DATA t154 TYPE abap_bool.
          DATA t155 TYPE i.
          DATA(t156) = t147.
          t156->load( ).
          t155 = lines( t156->items ).
          DATA(t157) = 3.
          t154 = xsdbool( t155 < t157 ).
          IF t154 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t158) = t12.
          DATA t159 TYPE REF TO zcl_lnt_iparameter_data.
          CLEAR t159.
          DATA t160 TYPE REF TO zif_lnt_node.
          CLEAR t160.
          DATA t161 TYPE REF TO zif_lnt_node.
          CLEAR t161.
          DATA t162 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t162.
          DATA(t163) = t147.
          DATA t164 TYPE REF TO object.
          CLEAR t164.
          t163->load( ).
          CLEAR t164.
          READ TABLE t163->items INDEX 1 INTO t164.
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
          DATA t168 TYPE REF TO zcl_lnt_position.
          CLEAR t168.
          DATA t169 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t169.
          DATA t170 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t170.
          DATA t171 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t171.
          DATA(t172) = t147.
          DATA t173 TYPE REF TO object.
          CLEAR t173.
          t172->load( ).
          CLEAR t173.
          READ TABLE t172->items INDEX 2 INTO t173.
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
          t170 = t171->get_first_token( ).
          t169 = t170.
          DATA t176 TYPE REF TO zcl_lnt_position.
          DATA(t177) = t169.
          t176 = t177->start.
          t168 = t176.
          t167 = t168.
          DATA t178 TYPE REF TO zif_lnt_node.
          CLEAR t178.
          DATA t179 TYPE REF TO zif_lnt_node.
          CLEAR t179.
          DATA t180 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t180.
          DATA(t181) = t147.
          DATA t182 TYPE REF TO object.
          CLEAR t182.
          t181->load( ).
          CLEAR t182.
          READ TABLE t181->items INDEX 3 INTO t182.
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
          t178 = t179.
          t159 = NEW zcl_lnt_iparameter_data( i_left = t160 i_eq = t167 i_right = t178 ).
          CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
          t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t185 ).
          ENDIF.
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
          DATA(t188) = |left|.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
          ENDIF.
          DATA(t190) = |eq|.
          DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t191.
          IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
          ENDIF.
          DATA(t192) = |right|.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
          ENDIF.
          t158->load( ).
          APPEND t159 TO t158->items.
          t158->save( ).
        ENDDO.
      ENDIF.
      DATA t194 TYPE abap_bool.
      DATA t195 TYPE i.
      DATA(t196) = t12.
      t196->load( ).
      t195 = lines( t196->items ).
      DATA(t197) = 0.
      t194 = xsdbool( t195 > t197 ).
      IF t194 = abap_true.
        DATA(t198) = t2.
        DATA t199 TYPE REF TO zcl_lnt_icandidate.
        DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t201) = t12.
        t200 = t201.
        t199 = NEW zcl_lnt_icandidate( i_parameters = t200 ).
        CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
        t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t202 ).
        ENDIF.
        CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
        t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t203) = |parameters|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        t198->load( ).
        APPEND t199 TO t198->items.
        t198->save( ).
      ENDIF.
    ENDDO.
    DATA(t205) = t2.
    result = t205.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_align_parameters_conf( me->gt_cn_in_sr_rl_al_pr_ts_al_prm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_align_parameters_conf.
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
        t1 = NEW zcl_lnt_align_parameters_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_al_pr_ts_al_prm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_al_pr_ts_al_prm( i_file = i_file ) ).
    result = t1.

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
