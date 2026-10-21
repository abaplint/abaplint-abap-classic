* TS: src/rules/align_type_expressions.ts:23:1 AlignTypeExpressions
CLASS zcl_lnt_align_type_expressions DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_al_ty_ex_ts_al_ty_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS s_c_i_s_r_al_ty_ex_ts_al_ty_ex IMPORTING i_conf TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
    METHODS r_p_i_s_r_al_ty_ex_ts_al_ty_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_column TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_methods IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_events IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_types IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_align_type_expressions IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_algn_typ_exprssns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nCurrently works for METHODS + BEGIN OF\n\nIf BEGIN OF has an |.
    t11 = t11 && |INCLUDE TYPE its ignored\n\nAlso note that clean ABAP does not|.
    t11 = t11 && | recommend aligning TYPE clauses:\nhttps://github.com/SAP/sty|.
    t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#dont-align-type-c|.
    t11 = t11 && |lauses|.
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
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |\nTYPES: BEGIN OF foo,\n         bar TYPE i,\n         foobar T|.
    t31 = t31 && |YPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n    |.
    t31 = t31 && |IMPORTING\n      foo TYPE i\n      foobar TYPE i.\nENDINTERFACE|.
    t31 = t31 && |.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA(t37) = |\nTYPES: BEGIN OF foo,\n         bar    TYPE i,\n         fooba|.
    t37 = t37 && |r TYPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n |.
    t37 = t37 && |   IMPORTING\n      foo    TYPE i\n      foobar TYPE i.\nENDINT|.
    t37 = t37 && |ERFACE.|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |align_type_expressions| i_title = |Align TYPE expressions| i_short_description = |Align TYPE expressions in statements| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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

  METHOD g_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    t5 = t1->structure.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_ddic.
    DATA(t21) = me->reg.
    t20 = NEW zcl_lnt_ddic( i_reg_f149 = t21 ).
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t26 TYPE REF TO zcl_lnt_class.
      DATA t27 TYPE REF TO zcl_lnt_class.
      t27 ?= t2.
      t26 = t27.
      DATA t31 TYPE REF TO zif_lnt_abap_file_information.
      DATA t33 TYPE REF TO zcl_lnt_abap_file.
      t33 = t26->get_main_abap_file( ).
      DATA t36 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
      ELSE.
        t36 = t33->info.
      ENDIF.
      t31 = t36.
      DATA t46 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t31 IS INITIAL ) = abap_true.
      ELSE.
        DATA t51 TYPE REF TO zif_lnt_abap_file_information.
        t51 = t31.
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_abstract_object.
        t54 = t26.
        t53 = t54->name.
        t46 = t51->get_class_definition_by_name( i_name = t53 ).
      ENDIF.
      t24 = t46.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t24 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ELSE.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t68 = me->conf->zlnt_view_read_sr_93f865df767a( ).
        IF t68 IS BOUND.
          IF t68->has = abap_true.
            t67 = xsdbool( t68->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t66 = t67.
        IF t67 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_info_class_definition.
          t72 = t24.
          DATA t77 TYPE REF TO zcl_lnt_class.
          t77 ?= t2.
          t66 = t20->is_exception( i_def = t72 i_obj_ac26 = t77 ).
        ENDIF.
        IF t66 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t81) = VALUE i( ).
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t82 = me->check_types( i_stru = t5 i_file = t1 ).
    DATA t86 TYPE REF TO zcl_lnt_issue.
    DATA t87 TYPE REF TO object.
    DATA(t88) = VALUE i( ).
    DO.
      t82->load( ).
      IF t88 >= lines( t82->items ).
        EXIT.
      ENDIF.
      CLEAR t87.
      READ TABLE t82->items INDEX t88 + 1 INTO t87.
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
      t3->load( ).
      APPEND t86 TO t3->items.
      t3->save( ).
    ENDDO.
    t3->load( ).
    t81 = lines( t3->items ).
    DATA(t95) = VALUE i( ).
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t96 = me->check_methods( i_stru = t5 i_file = t1 ).
    DATA t100 TYPE REF TO zcl_lnt_issue.
    DATA t101 TYPE REF TO object.
    DATA(t102) = VALUE i( ).
    DO.
      t96->load( ).
      IF t102 >= lines( t96->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t96->items INDEX t102 + 1 INTO t101.
      t102 = t102 + 1.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      CLEAR t100.
      IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t103 ?= t101.
        DATA t104 TYPE REF TO object.
        t104 = t103->as_ref( ).
        t100 ?= t104.
      ELSE.
        t100 ?= t101.
      ENDIF.
      t3->load( ).
      APPEND t100 TO t3->items.
      t3->save( ).
    ENDDO.
    t3->load( ).
    t95 = lines( t3->items ).
    DATA(t109) = VALUE i( ).
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t110 = me->check_events( i_stru = t5 i_file = t1 ).
    DATA t114 TYPE REF TO zcl_lnt_issue.
    DATA t115 TYPE REF TO object.
    DATA(t116) = VALUE i( ).
    DO.
      t110->load( ).
      IF t116 >= lines( t110->items ).
        EXIT.
      ENDIF.
      CLEAR t115.
      READ TABLE t110->items INDEX t116 + 1 INTO t115.
      t116 = t116 + 1.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      CLEAR t114.
      IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t117 ?= t115.
        DATA t118 TYPE REF TO object.
        t118 = t117->as_ref( ).
        t114 ?= t118.
      ELSE.
        t114 ?= t115.
      ENDIF.
      t3->load( ).
      APPEND t114 TO t3->items.
      t3->save( ).
    ENDDO.
    t3->load( ).
    t109 = lines( t3->items ).
    result = t3.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_column.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    t6 = NEW zlnt_runtime_set__44559cf8bcc4( ).
    DATA t9 TYPE REF TO zcl_lnt_shape_3940daab.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t1->load( ).
      IF t11 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t1->items INDEX t11 + 1 INTO t10.
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
      DATA t14 TYPE f.
      t14 = t9->after_2484->row.
      IF t6->has( p0 = t14 ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
      t25 = t6->add( p0 = t14 ).
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_shape_3940daab.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t1->load( ).
      IF t31 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t1->items INDEX t31 + 1 INTO t30.
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
      DATA t39 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t39 = t29->after_2484->col.
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t39 right = t2 op = `==` ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t42.
      DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t49 = t29->after_2484->col.
      IF zlnt_runtime_numb_290eb04a9758=>compare( left = t49 right = t2 op = `<` ) = abap_true.
        DATA t56 TYPE REF TO zcl_lnt_position.
        t56 = t29->after_2484.
        DATA t59 TYPE string.
        t59 = | |.
        DATA(t61) = VALUE string( ).
        DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t69 = t29->after_2484->col.
        t63 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t2 right = t69 op = `-` ).
        DATA(t71) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t63 ) ).
        DATA(t72) = strlen( t59 ).
        DATA(t73) = CONV f( trunc( t71 ) ).
        IF t73 < 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t59 IS NOT INITIAL.
          IF t73 > 2147483647 OR t73 * strlen( t59 ) > 2147483647.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t61 = repeat( val = t59 occ = CONV i( t73 ) ).
        ENDIF.
        t42 = zcl_lnt_edit_helper=>insert_at( i_file = t3 i_pos = t56 i_text = t61 ).
      ELSE.
        DATA t79 TYPE REF TO zcl_lnt_position.
        DATA t84 TYPE f.
        t84 = t29->after_2484->row.
        t79 = NEW zcl_lnt_position( i_row = t84 i_col = t2 ).
        DATA t87 TYPE REF TO zcl_lnt_position.
        t87 = t29->after_2484.
        t42 = zcl_lnt_edit_helper=>delete_range( i_file = t3 i_start = t79 i_end = t87 ).
      ENDIF.
      DATA t91 TYPE string.
      DATA t92 TYPE string.
      DATA(t93) = |Align TYPE expressions to column |.
      DATA t94 TYPE string.
      t94 = zlnt_runtime_numb_290eb04a9758=>text( t2 ).
      DATA(t96) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t98) = strlen( t92 ).
      t91 = |{ t92 }{ || }|.
      DATA t100 TYPE REF TO zcl_lnt_issue.
      CLEAR t100.
      DATA t102 TYPE REF TO zcl_lnt_position.
      t102 = t29->after_2484.
      DATA(t105) = VALUE string( ).
      DATA t106 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t116) = |\nCurrently works for METHODS + BEGIN OF\n\nIf BEGIN OF has an |.
      t116 = t116 && |INCLUDE TYPE its ignored\n\nAlso note that clean ABAP does not|.
      t116 = t116 && | recommend aligning TYPE clauses:\nhttps://github.com/SAP/sty|.
      t116 = t116 && |leguides/blob/main/clean-abap/CleanABAP.md#dont-align-type-c|.
      t116 = t116 && |lauses|.
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t116.
      t113 = t117.
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t119.
      DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t123.
      t123->load( ).
      APPEND |SingleFile| TO t123->items.
      t123->save( ).
      t123->load( ).
      APPEND |Whitespace| TO t123->items.
      t123->save( ).
      t123->load( ).
      APPEND |Quickfix| TO t123->items.
      t123->save( ).
      t119 = t123.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA(t136) = |\nTYPES: BEGIN OF foo,\n         bar TYPE i,\n         foobar T|.
      t136 = t136 && |YPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n    |.
      t136 = t136 && |IMPORTING\n      foo TYPE i\n      foobar TYPE i.\nENDINTERFACE|.
      t136 = t136 && |.|.
      DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t137->has = abap_true.
      t137->value = t136.
      t133 = t137.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      DATA(t142) = |\nTYPES: BEGIN OF foo,\n         bar    TYPE i,\n         fooba|.
      t142 = t142 && |r TYPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n |.
      t142 = t142 && |   IMPORTING\n      foo    TYPE i\n      foobar TYPE i.\nENDINT|.
      t142 = t142 && |ERFACE.|.
      DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t143->has = abap_true.
      t143->value = t142.
      t139 = t143.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t145.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t147.
      t106 = NEW zcl_lnt_irule_metadata( i_key = |align_type_expressions| i_title = |Align TYPE expressions| i_short_description = |Align TYPE expressions in statements| i_bad_example = t133 i_good_example = t139 i_extended_information = t113 i_tags = t119 i_pragma = t145 i_pseudo_comment = t147 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t149 ).
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t150 ).
      ENDIF.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t151 ).
      ENDIF.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t153 ).
      ENDIF.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t154 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t155 ).
      ENDIF.
      CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
      t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t157 ).
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t159 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t161 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t163 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t165 ).
      ENDIF.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t167 ).
      ENDIF.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t169 ).
      ENDIF.
      t105 = t106->key.
      t100 = zcl_lnt_issue=>at_position( i_file = t3 i_start = t102 i_message_26cb = t91 i_key = t105 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t42 ).
      t4->load( ).
      APPEND t100 TO t4->items.
      t4->save( ).
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_methods.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t5 = t1->find_all_statements( i_type_9913 = t8 ).
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t17 = t10->find_all_expressions( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = CONV f( 0 ).
      t21 = t23.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t17->load( ).
        IF t27 >= lines( t17->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t17->items INDEX t27 + 1 INTO t26.
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
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zcl_lnt_abstract_node.
        t33 = t25.
        t31 ?= t33->children.
        t30 = t31.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t38.
        DATA t40 TYPE i.
        DATA t41 TYPE i.
        t30->load( ).
        t41 = lines( t30->items ).
        DATA(t43) = 2.
        t40 = t41 - t43.
        t40 = t40 + 1.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        t30->load( ).
        CLEAR t44.
        READ TABLE t30->items INDEX t40 INTO t44.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        CLEAR t38.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t45 ?= t44.
          DATA t46 TYPE REF TO object.
          t46 = t45->as_ref( ).
          t38 ?= t46.
        ELSE.
          t38 ?= t44.
        ENDIF.
        t37 = t38.
        DATA t48 TYPE REF TO zcl_lnt_shape_3940daab.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        t53 = t37->get_last_token( ).
        DATA t57 TYPE f.
        t57 = t53->start->row.
        DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t64 = t53->start->col.
        DATA t70 TYPE f.
        t70 = strlen( t53->str ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t70.
        t49 = NEW zcl_lnt_position( i_row = t57 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t64 right = t75 op = `+` ) ).
        DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
        DATA t87 TYPE REF TO zcl_lnt_position.
        t87 = t25->find_first_expression( i_type_9913 = t86 )->get_first_token( )->start.
        t48 = NEW zcl_lnt_shape_3940daab( i_name_end = t49 i_after = t87 ).
        CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
        t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t90 ).
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
        t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = |nameEnd| p1 = t93 ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = |after| p1 = t95 ).
        ENDIF.
        t15->load( ).
        APPEND t48 TO t15->items.
        t15->save( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        t102 = t37->get_first_token( ).
        DATA t106 TYPE f.
        t106 = t102->start->row.
        DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t113 = t102->start->col.
        DATA t119 TYPE f.
        t119 = strlen( t102->str ).
        DATA(t124) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t124->has = abap_true.
        t124->value = t119.
        t99 = NEW zcl_lnt_position( i_row = t106 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t124 op = `+` ) )->col.
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = CONV f( 1 ).
        t21 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t21 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t128 op = `+` ) op = `max` ).
      ENDDO.
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t129 = t10->find_first_expression( i_type_9913 = t132 ).
      IF xsdbool( t129 IS BOUND ) = abap_true.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t138 TYPE REF TO zcl_lnt_abstract_node.
        t138 = t129.
        t136 ?= t138->children.
        t135 = t136.
        DATA t143 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t143.
        DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t144.
        DATA t146 TYPE i.
        DATA t147 TYPE i.
        t135->load( ).
        t147 = lines( t135->items ).
        DATA(t149) = 2.
        t146 = t147 - t149.
        t146 = t146 + 1.
        DATA t150 TYPE REF TO object.
        CLEAR t150.
        t135->load( ).
        CLEAR t150.
        READ TABLE t135->items INDEX t146 INTO t150.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        CLEAR t144.
        IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t151 ?= t150.
          DATA t152 TYPE REF TO object.
          t152 = t151->as_ref( ).
          t144 ?= t152.
        ELSE.
          t144 ?= t150.
        ENDIF.
        t143 = t144.
        DATA t154 TYPE REF TO zcl_lnt_shape_3940daab.
        DATA t155 TYPE REF TO zcl_lnt_position.
        CLEAR t155.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        t159 = t143->get_last_token( ).
        DATA t163 TYPE f.
        t163 = t159->start->row.
        DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t170 = t159->start->col.
        DATA t176 TYPE f.
        t176 = strlen( t159->str ).
        DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t181->has = abap_true.
        t181->value = t176.
        t155 = NEW zcl_lnt_position( i_row = t163 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ) ).
        DATA t191 TYPE REF TO zcl_lnt_expression_node.
        t191 = t129.
        DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
        DATA t194 TYPE REF TO zcl_lnt_position.
        t194 = t191->find_first_expression( i_type_9913 = t193 )->get_first_token( )->start.
        t154 = NEW zcl_lnt_shape_3940daab( i_name_end = t155 i_after = t194 ).
        CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
        t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t197 ).
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t198 ).
        ENDIF.
        CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
        t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |nameEnd| p1 = t200 ).
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = |after| p1 = t202 ).
        ENDIF.
        t15->load( ).
        APPEND t154 TO t15->items.
        t15->save( ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        t209 = t143->get_last_token( ).
        DATA t213 TYPE f.
        t213 = t209->start->row.
        DATA t220 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t220 = t209->start->col.
        DATA t226 TYPE f.
        t226 = strlen( t209->str ).
        DATA(t231) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t231->has = abap_true.
        t231->value = t226.
        t206 = NEW zcl_lnt_position( i_row = t213 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t220 right = t231 op = `+` ) )->col.
        DATA(t235) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t235->has = abap_true.
        t235->value = CONV f( 1 ).
        t21 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t21 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t206 right = t235 op = `+` ) op = `max` ).
      ENDIF.
      DATA(t236) = VALUE i( ).
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t237 = me->check_bf6e( i_fields_62af = t15 i_column = t21 i_file = t2 ).
      DATA t241 TYPE REF TO zcl_lnt_issue.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      DATA(t243) = VALUE i( ).
      DO.
        t237->load( ).
        IF t243 >= lines( t237->items ).
          EXIT.
        ENDIF.
        CLEAR t242.
        READ TABLE t237->items INDEX t243 + 1 INTO t242.
        t243 = t243 + 1.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        CLEAR t241.
        IF t242 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t244 ?= t242.
          DATA t245 TYPE REF TO object.
          t245 = t244->as_ref( ).
          t241 ?= t245.
        ELSE.
          t241 ?= t242.
        ENDIF.
        t3->load( ).
        APPEND t241 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t236 = lines( t3->items ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD check_events.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t5 = t1->find_all_statements( i_type_9913 = t8 ).
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t17 = t10->find_all_expressions( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = CONV f( 0 ).
      t21 = t23.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t17->load( ).
        IF t27 >= lines( t17->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t17->items INDEX t27 + 1 INTO t26.
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
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zcl_lnt_abstract_node.
        t33 = t25.
        t31 ?= t33->children.
        t30 = t31.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t38.
        DATA t40 TYPE i.
        DATA t41 TYPE i.
        t30->load( ).
        t41 = lines( t30->items ).
        DATA(t43) = 2.
        t40 = t41 - t43.
        t40 = t40 + 1.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        t30->load( ).
        CLEAR t44.
        READ TABLE t30->items INDEX t40 INTO t44.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        CLEAR t38.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t45 ?= t44.
          DATA t46 TYPE REF TO object.
          t46 = t45->as_ref( ).
          t38 ?= t46.
        ELSE.
          t38 ?= t44.
        ENDIF.
        t37 = t38.
        DATA t48 TYPE REF TO zcl_lnt_shape_3940daab.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        t53 = t37->get_last_token( ).
        DATA t57 TYPE f.
        t57 = t53->start->row.
        DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t64 = t53->start->col.
        DATA t70 TYPE f.
        t70 = strlen( t53->str ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t70.
        t49 = NEW zcl_lnt_position( i_row = t57 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t64 right = t75 op = `+` ) ).
        DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
        DATA t87 TYPE REF TO zcl_lnt_position.
        t87 = t25->find_first_expression( i_type_9913 = t86 )->get_first_token( )->start.
        t48 = NEW zcl_lnt_shape_3940daab( i_name_end = t49 i_after = t87 ).
        CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
        t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t90 ).
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
        t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = |nameEnd| p1 = t93 ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = |after| p1 = t95 ).
        ENDIF.
        t15->load( ).
        APPEND t48 TO t15->items.
        t15->save( ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        t102 = t37->get_first_token( ).
        DATA t106 TYPE f.
        t106 = t102->start->row.
        DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t113 = t102->start->col.
        DATA t119 TYPE f.
        t119 = strlen( t102->str ).
        DATA(t124) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t124->has = abap_true.
        t124->value = t119.
        t99 = NEW zcl_lnt_position( i_row = t106 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t124 op = `+` ) )->col.
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = CONV f( 1 ).
        t21 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t21 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t128 op = `+` ) op = `max` ).
      ENDDO.
      DATA(t129) = VALUE i( ).
      DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t130 = me->check_bf6e( i_fields_62af = t15 i_column = t21 i_file = t2 ).
      DATA t134 TYPE REF TO zcl_lnt_issue.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      DATA(t136) = VALUE i( ).
      DO.
        t130->load( ).
        IF t136 >= lines( t130->items ).
          EXIT.
        ENDIF.
        CLEAR t135.
        READ TABLE t130->items INDEX t136 + 1 INTO t135.
        t136 = t136 + 1.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        CLEAR t134.
        IF t135 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t137 ?= t135.
          DATA t138 TYPE REF TO object.
          t138 = t137->as_ref( ).
          t134 ?= t138.
        ELSE.
          t134 ?= t135.
        ENDIF.
        t3->load( ).
        APPEND t134 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t129 = lines( t3->items ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD check_types.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t5 = t1->find_all_structures_recursive( i_type_9913 = t8 ).
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t16 = t10->find_direct_statement( i_type_9913 = t18 ).
      IF xsdbool( t16 IS BOUND ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = CONV f( 0 ).
      t21 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
      t24 = t10->find_direct_statements( i_type_9913 = t27 ).
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
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
        DATA t34 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t38 TYPE REF TO zcl_lnt_abstract_node.
        t38 = t29.
        t36 ?= t38->children.
        DATA t42 TYPE REF TO object.
        CLEAR t42.
        t36->load( ).
        CLEAR t42.
        READ TABLE t36->items INDEX 2 INTO t42.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        CLEAR t35.
        IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t43 ?= t42.
          DATA t44 TYPE REF TO object.
          t44 = t43->as_ref( ).
          t35 ?= t44.
        ELSE.
          t35 ?= t42.
        ENDIF.
        t34 = t35.
        DATA t46 TYPE REF TO zcl_lnt_shape_3940daab.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_position.
        CLEAR t47.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        t51 = t34->get_last_token( ).
        DATA t55 TYPE f.
        t55 = t51->start->row.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t62 = t51->start->col.
        DATA t68 TYPE f.
        t68 = strlen( t51->str ).
        DATA(t73) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t73->has = abap_true.
        t73->value = t68.
        t47 = NEW zcl_lnt_position( i_row = t55 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t62 right = t73 op = `+` ) ).
        DATA t81 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t84 TYPE REF TO zcl_lnt_abstract_node.
        t84 = t29.
        t82 ?= t84->children.
        DATA t88 TYPE REF TO object.
        CLEAR t88.
        t82->load( ).
        CLEAR t88.
        READ TABLE t82->items INDEX 3 INTO t88.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        CLEAR t81.
        IF t88 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t89 ?= t88.
          DATA t90 TYPE REF TO object.
          t90 = t89->as_ref( ).
          t81 ?= t90.
        ELSE.
          t81 ?= t88.
        ENDIF.
        DATA t91 TYPE REF TO zcl_lnt_position.
        t91 = t81->get_first_token( )->start.
        t46 = NEW zcl_lnt_shape_3940daab( i_name_end = t47 i_after = t91 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t94 ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t95 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |nameEnd| p1 = t97 ).
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |after| p1 = t99 ).
        ENDIF.
        t19->load( ).
        APPEND t46 TO t19->items.
        t19->save( ).
        DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        t106 = t34->get_first_token( ).
        DATA t110 TYPE f.
        t110 = t106->start->row.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t117 = t106->start->col.
        DATA t123 TYPE f.
        t123 = strlen( t106->str ).
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = t123.
        t103 = NEW zcl_lnt_position( i_row = t110 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t117 right = t128 op = `+` ) )->col.
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = CONV f( 1 ).
        t21 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t21 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t103 right = t132 op = `+` ) op = `max` ).
      ENDDO.
      DATA(t133) = VALUE i( ).
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t134 = me->check_bf6e( i_fields_62af = t19 i_column = t21 i_file = t2 ).
      DATA t138 TYPE REF TO zcl_lnt_issue.
      CLEAR t138.
      DATA t139 TYPE REF TO object.
      CLEAR t139.
      DATA(t140) = VALUE i( ).
      DO.
        t134->load( ).
        IF t140 >= lines( t134->items ).
          EXIT.
        ENDIF.
        CLEAR t139.
        READ TABLE t134->items INDEX t140 + 1 INTO t139.
        t140 = t140 + 1.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        CLEAR t138.
        IF t139 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t141 ?= t139.
          DATA t142 TYPE REF TO object.
          t142 = t141->as_ref( ).
          t138 ?= t142.
        ELSE.
          t138 ?= t139.
        ENDIF.
        t3->load( ).
        APPEND t138 TO t3->items.
        t3->save( ).
      ENDDO.
      t3->load( ).
      t133 = lines( t3->items ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
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
        t1 = NEW zcl_lnt_algn_typ_exprssns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ty_ex_ts_al_ty_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_al_ty_ex_ts_al_ty_ex( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1398_278430c85320.
  ENDMETHOD.
ENDCLASS.
