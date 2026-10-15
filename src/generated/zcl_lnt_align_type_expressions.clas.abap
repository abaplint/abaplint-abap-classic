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
    DATA(t1) = NEW zcl_lnt_algn_typ_exprssns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |align_type_expressions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Align TYPE expressions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Align TYPE expressions in statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nCurrently works for METHODS + BEGIN OF\n\nIf BEGIN OF has an |.
      t11 = t11 && |INCLUDE TYPE its ignored\n\nAlso note that clean ABAP does not|.
      t11 = t11 && | recommend aligning TYPE clauses:\nhttps://github.com/SAP/sty|.
      t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#dont-align-type-c|.
      t11 = t11 && |lauses|.
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
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |\nTYPES: BEGIN OF foo,\n         bar TYPE i,\n         foobar T|.
      t31 = t31 && |YPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n    |.
      t31 = t31 && |IMPORTING\n      foo TYPE i\n      foobar TYPE i.\nENDINTERFACE|.
      t31 = t31 && |.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |\nTYPES: BEGIN OF foo,\n         bar    TYPE i,\n         fooba|.
      t37 = t37 && |r TYPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n |.
      t37 = t37 && |   IMPORTING\n      foo    TYPE i\n      foobar TYPE i.\nENDINT|.
      t37 = t37 && |ERFACE.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_al_ty_ex_ts_al_ty_ex.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t7.
    t9 = t10->structure.
    t6 = t9.
    t5 = t6.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = t5.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = t3.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_ddic.
    DATA t20 TYPE REF TO zcl_lnt_ddic.
    DATA(t21) = me->reg.
    t20 = NEW zcl_lnt_ddic( i_reg_f149 = t21 ).
    t19 = t20.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t2.
    t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_class ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_class.
      DATA t27 TYPE REF TO zcl_lnt_class.
      DATA(t28) = t2.
      DATA t29 TYPE REF TO object.
      t29 = t28.
      t27 ?= t29.
      t26 = t27.
      DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t31.
      DATA t32 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_abap_file.
      DATA t34 TYPE REF TO zcl_lnt_abap_file.
      DATA(t35) = t26.
      t34 = t35->get_main_abap_file( ).
      t33 = t34.
      DATA t36 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      IF t37 = abap_true.
        DATA t39 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t39.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zif_lnt_abap_file_information.
        DATA t41 TYPE REF TO zcl_lnt_abap_file.
        DATA t42 TYPE REF TO zcl_lnt_abap_file.
        DATA(t43) = t33.
        t42 = t43.
        t41 = t42.
        DATA t44 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t45) = t41.
        t44 = t45->info.
        t40 = t44.
        t36 = t40.
      ENDIF.
      t32 = t36.
      t31 = t32.
      DATA t46 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t31.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t51 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t52) = t31.
        t51 = t52.
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t55) = t26.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->name.
        t53 = t56.
        t50 = t51->get_class_definition_by_name( i_name = t53 ).
        t46 = t50.
      ENDIF.
      t30 = t46.
      t25 = t30.
      t24 = t25.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t60) = t24.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t59.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ENDIF.
      t58 = t63.
      IF t58 = abap_true.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t65.
        result = t65.
        RETURN.
      ELSE.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t69) = me->conf.
        t68 = t69->zlnt_view_read_sr_93f865df767a( ).
        IF t68 IS BOUND.
          IF t68->has = abap_true.
            t67 = xsdbool( t68->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t66 = t67.
        IF t67 = abap_true.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = t19.
          DATA t72 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t72.
          DATA(t73) = abap_true.
          IF t73 = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t75) = t24.
            t74 = t75.
            t72 = t74.
          ELSE.
            DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t76.
            t72 = t76.
          ENDIF.
          DATA t77 TYPE REF TO zcl_lnt_class.
          DATA(t78) = t2.
          DATA t79 TYPE REF TO object.
          t79 = t78.
          t77 ?= t79.
          t70 = t71->is_exception( i_def = t72 i_obj_ac26 = t77 ).
          t66 = t70.
        ENDIF.
        IF t66 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t80.
          result = t80.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t81) = VALUE i( ).
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zcl_lnt_structure_node.
    DATA(t84) = t5.
    t83 = t84.
    DATA(t85) = t1.
    t82 = me->check_types( i_stru = t83 i_file = t85 ).
    DATA t86 TYPE REF TO zcl_lnt_issue.
    CLEAR t86.
    DATA t87 TYPE REF TO object.
    CLEAR t87.
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
      DATA(t91) = t3.
      DATA(t92) = t86.
      t91->load( ).
      APPEND t92 TO t91->items.
      t91->save( ).
    ENDDO.
    DATA t93 TYPE i.
    DATA(t94) = t3.
    t94->load( ).
    t93 = lines( t94->items ).
    t81 = t93.
    DATA(t95) = VALUE i( ).
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zcl_lnt_structure_node.
    DATA(t98) = t5.
    t97 = t98.
    DATA(t99) = t1.
    t96 = me->check_methods( i_stru = t97 i_file = t99 ).
    DATA t100 TYPE REF TO zcl_lnt_issue.
    CLEAR t100.
    DATA t101 TYPE REF TO object.
    CLEAR t101.
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
      DATA(t105) = t3.
      DATA(t106) = t100.
      t105->load( ).
      APPEND t106 TO t105->items.
      t105->save( ).
    ENDDO.
    DATA t107 TYPE i.
    DATA(t108) = t3.
    t108->load( ).
    t107 = lines( t108->items ).
    t95 = t107.
    DATA(t109) = VALUE i( ).
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zcl_lnt_structure_node.
    DATA(t112) = t5.
    t111 = t112.
    DATA(t113) = t1.
    t110 = me->check_events( i_stru = t111 i_file = t113 ).
    DATA t114 TYPE REF TO zcl_lnt_issue.
    CLEAR t114.
    DATA t115 TYPE REF TO object.
    CLEAR t115.
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
      DATA(t119) = t3.
      DATA(t120) = t114.
      t119->load( ).
      APPEND t120 TO t119->items.
      t119->save( ).
    ENDDO.
    DATA t121 TYPE i.
    DATA(t122) = t3.
    t122->load( ).
    t121 = lines( t122->items ).
    t109 = t121.
    DATA(t123) = t3.
    result = t123.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_fields_62af.
    DATA(t2) = i_column.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    DATA(t7) = NEW zlnt_runtime_set__44559cf8bcc4( ).
    t6 = t7.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_shape_3940daab.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
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
      DATA t15 TYPE f.
      DATA t16 TYPE REF TO zcl_lnt_position.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA(t18) = t9.
      t17 = t18->after_2484.
      t16 = t17.
      DATA t19 TYPE f.
      DATA(t20) = t16.
      t19 = t20->row.
      t15 = t19.
      t14 = t15.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t6.
      DATA(t23) = t14.
      t21 = t22->has( p0 = t23 ).
      IF t21 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t24.
        result = t24.
        RETURN.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
      DATA(t26) = t6.
      DATA(t27) = t14.
      t25 = t26->add( p0 = t27 ).
    ENDDO.
    DATA(t28) = t1.
    DATA t29 TYPE REF TO zcl_lnt_shape_3940daab.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t28->load( ).
      IF t31 >= lines( t28->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t28->items INDEX t31 + 1 INTO t30.
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
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t36 TYPE REF TO zcl_lnt_position.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA(t38) = t29.
      t37 = t38->after_2484.
      t36 = t37.
      DATA t39 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t40) = t36.
      t39 = t40->col.
      t35 = t39.
      DATA(t41) = t2.
      t34 = zlnt_runtime_numb_290eb04a9758=>compare( left = t35 right = t41 op = `==` ).
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t43 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t43.
      t42 = t43.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = t29.
      t47 = t48->after_2484.
      t46 = t47.
      DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t50) = t46.
      t49 = t50->col.
      t45 = t49.
      DATA(t51) = t2.
      t44 = zlnt_runtime_numb_290eb04a9758=>compare( left = t45 right = t51 op = `<` ).
      IF t44 = abap_true.
        DATA t52 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t54.
          DATA(t55) = t3.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA(t57) = t29.
          t56 = t57->after_2484.
          DATA(t58) = VALUE string( ).
          DATA t59 TYPE string.
          DATA(t60) = | |.
          t59 = t60.
          DATA(t61) = VALUE string( ).
          DATA(t62) = t59.
          DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t64) = t2.
          DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA t67 TYPE REF TO zcl_lnt_position.
          DATA(t68) = t29.
          t67 = t68->after_2484.
          t66 = t67.
          DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t70) = t66.
          t69 = t70->col.
          t65 = t69.
          t63 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t64 right = t65 op = `-` ).
          DATA(t71) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t63 ) ).
          DATA(t72) = strlen( t62 ).
          DATA(t73) = CONV f( trunc( t71 ) ).
          IF t73 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          CLEAR t61.
          IF t62 IS NOT INITIAL.
            IF t73 > 2147483647 OR t73 * strlen( t62 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t61 = repeat( val = t62 occ = CONV i( t73 ) ).
          ENDIF.
          t58 = t61.
          t54 = zcl_lnt_edit_helper=>insert_at( i_file = t55 i_pos = t56 i_text = t58 ).
          t52 = t54.
        ELSE.
          DATA t74 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t74.
          t52 = t74.
        ENDIF.
        t42 = t52.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t78) = t3.
          DATA t79 TYPE REF TO zcl_lnt_position.
          DATA t80 TYPE f.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t82 TYPE REF TO zcl_lnt_position.
          DATA(t83) = t29.
          t82 = t83->after_2484.
          t81 = t82.
          DATA t84 TYPE f.
          DATA(t85) = t81.
          t84 = t85->row.
          t80 = t84.
          DATA(t86) = t2.
          t79 = NEW zcl_lnt_position( i_row = t80 i_col = t86 ).
          DATA t87 TYPE REF TO zcl_lnt_position.
          DATA(t88) = t29.
          t87 = t88->after_2484.
          t77 = zcl_lnt_edit_helper=>delete_range( i_file = t78 i_start = t79 i_end = t87 ).
          t75 = t77.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t89.
          t75 = t89.
        ENDIF.
        t42 = t75.
      ENDIF.
      DATA t90 TYPE string.
      DATA t91 TYPE string.
      DATA t92 TYPE string.
      DATA(t93) = |Align TYPE expressions to column |.
      DATA t94 TYPE string.
      DATA(t95) = t2.
      t94 = zlnt_runtime_numb_290eb04a9758=>text( t95 ).
      DATA(t96) = strlen( t93 ).
      t92 = |{ t93 }{ t94 }|.
      DATA(t97) = ||.
      DATA(t98) = strlen( t92 ).
      t91 = |{ t92 }{ t97 }|.
      t90 = t91.
      DATA t99 TYPE REF TO zcl_lnt_issue.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_issue.
      CLEAR t100.
      DATA(t101) = t3.
      DATA t102 TYPE REF TO zcl_lnt_position.
      DATA(t103) = t29.
      t102 = t103->after_2484.
      DATA(t104) = t90.
      DATA(t105) = VALUE string( ).
      DATA t106 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t106.
      DATA t107 TYPE string.
      DATA(t108) = |align_type_expressions|.
      t107 = t108.
      DATA t109 TYPE string.
      DATA(t110) = |Align TYPE expressions|.
      t109 = t110.
      DATA t111 TYPE string.
      DATA(t112) = |Align TYPE expressions in statements|.
      t111 = t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      DATA(t115) = abap_true.
      IF t115 = abap_true.
        DATA(t116) = |\nCurrently works for METHODS + BEGIN OF\n\nIf BEGIN OF has an |.
        t116 = t116 && |INCLUDE TYPE its ignored\n\nAlso note that clean ABAP does not|.
        t116 = t116 && | recommend aligning TYPE clauses:\nhttps://github.com/SAP/sty|.
        t116 = t116 && |leguides/blob/main/clean-abap/CleanABAP.md#dont-align-type-c|.
        t116 = t116 && |lauses|.
        DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t117->has = abap_true.
        t117->value = t116.
        t114 = t117.
      ELSE.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t114 = t118.
      ENDIF.
      t113 = t114.
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t119.
      DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t120.
      DATA(t121) = abap_true.
      IF t121 = abap_true.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t124.
        t123 = t124.
        DATA(t125) = t123.
        DATA(t126) = |SingleFile|.
        t125->load( ).
        APPEND t126 TO t125->items.
        t125->save( ).
        DATA(t127) = t123.
        DATA(t128) = |Whitespace|.
        t127->load( ).
        APPEND t128 TO t127->items.
        t127->save( ).
        DATA(t129) = t123.
        DATA(t130) = |Quickfix|.
        t129->load( ).
        APPEND t130 TO t129->items.
        t129->save( ).
        DATA(t131) = t123.
        t122 = t131.
        t120 = t122.
      ELSE.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t132.
        t120 = t132.
      ENDIF.
      t119 = t120.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t135) = abap_true.
      IF t135 = abap_true.
        DATA(t136) = |\nTYPES: BEGIN OF foo,\n         bar TYPE i,\n         foobar T|.
        t136 = t136 && |YPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n    |.
        t136 = t136 && |IMPORTING\n      foo TYPE i\n      foobar TYPE i.\nENDINTERFACE|.
        t136 = t136 && |.|.
        DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t137->has = abap_true.
        t137->value = t136.
        t134 = t137.
      ELSE.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        t134 = t138.
      ENDIF.
      t133 = t134.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA(t141) = abap_true.
      IF t141 = abap_true.
        DATA(t142) = |\nTYPES: BEGIN OF foo,\n         bar    TYPE i,\n         fooba|.
        t142 = t142 && |r TYPE i,\n       END OF foo.\n\nINTERFACE lif.\n  METHODS bar\n |.
        t142 = t142 && |   IMPORTING\n      foo    TYPE i\n      foobar TYPE i.\nENDINT|.
        t142 = t142 && |ERFACE.|.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t142.
        t140 = t143.
      ELSE.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t140 = t144.
      ENDIF.
      t139 = t140.
      DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      t145 = t146.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t147 = t148.
      t106 = NEW zcl_lnt_irule_metadata( i_key = t107 i_title = t109 i_short_description = t111 i_bad_example = t133 i_good_example = t139 i_extended_information = t113 i_tags = t119 i_pragma = t145 i_pseudo_comment = t147 ).
      CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
      t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t149 ).
      ENDIF.
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
      DATA(t156) = |key|.
      DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t157.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
      ENDIF.
      DATA(t158) = |title|.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
      ENDIF.
      DATA(t160) = |shortDescription|.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
      ENDIF.
      DATA(t162) = |extendedInformation|.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
      ENDIF.
      DATA(t164) = |tags|.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
      ENDIF.
      DATA(t166) = |badExample|.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
      ENDIF.
      DATA(t168) = |goodExample|.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      ENDIF.
      t105 = t106->key.
      DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t171) = me->conf.
      t170 = t171->zlnt_view_read_sr_15c06369f827( ).
      DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t172.
      DATA(t173) = abap_true.
      IF t173 = abap_true.
        DATA t174 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t175) = t42.
        t174 = t175.
        t172 = t174.
      ELSE.
        DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t176.
        t172 = t176.
      ENDIF.
      t100 = zcl_lnt_issue=>at_position( i_file = t101 i_start = t102 i_message_26cb = t104 i_key = t105 i_severity = t170 i_fix = t172 ).
      t99 = t100.
      DATA(t177) = t4.
      DATA(t178) = t99.
      t177->load( ).
      APPEND t178 TO t177->items.
      t177->save( ).
    ENDDO.
    DATA(t179) = t4.
    result = t179.

  ENDMETHOD.

  METHOD check_methods.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t6 = t7->find_all_statements( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t10.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t18 = t19->find_all_expressions( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t22) = CONV f( 0 ).
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = t22.
      t21 = t23.
      DATA(t24) = t17.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t24->load( ).
        IF t27 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t24->items INDEX t27 + 1 INTO t26.
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
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t34) = t25.
        t33 = t34.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = t33.
        t35 = t36->children.
        t32 = t35.
        t31 ?= t32.
        t30 = t31.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t38.
        DATA(t39) = t30.
        DATA t40 TYPE i.
        DATA t41 TYPE i.
        DATA(t42) = t30.
        t42->load( ).
        t41 = lines( t42->items ).
        DATA(t43) = 2.
        t40 = t41 - t43.
        t40 = t40 + 1.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        t39->load( ).
        CLEAR t44.
        READ TABLE t39->items INDEX t40 INTO t44.
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
        DATA(t47) = t15.
        DATA t48 TYPE REF TO zcl_lnt_shape_3940daab.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_position.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_position.
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = t37.
          t54 = t55->get_last_token( ).
          t53 = t54.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA t57 TYPE f.
          DATA t58 TYPE REF TO zcl_lnt_position.
          DATA t59 TYPE REF TO zcl_lnt_position.
          DATA(t60) = t53.
          t59 = t60->start.
          t58 = t59.
          DATA t61 TYPE f.
          DATA(t62) = t58.
          t61 = t62->row.
          t57 = t61.
          DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA(t67) = t53.
          t66 = t67->start.
          t65 = t66.
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t69) = t65.
          t68 = t69->col.
          t64 = t68.
          DATA t70 TYPE f.
          DATA t71 TYPE i.
          DATA t72 TYPE string.
          DATA(t73) = t53.
          t72 = t73->str.
          DATA(t74) = strlen( t72 ).
          t71 = t74.
          t70 = t71.
          DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t75->has = abap_true.
          t75->value = t70.
          t63 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t64 right = t75 op = `+` ).
          t56 = NEW zcl_lnt_position( i_row = t57 i_col = t63 ).
          t52 = t56.
          t50 = t52.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_position.
          CLEAR t76.
          t50 = t76.
        ENDIF.
        t49 = t50.
        DATA t77 TYPE REF TO zcl_lnt_position.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_position.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_position.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA t83 TYPE REF TO zcl_lnt_expression_node.
          DATA t84 TYPE REF TO zcl_lnt_expression_node.
          DATA(t85) = t25.
          DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
          t84 = t85->find_first_expression( i_type_9913 = t86 ).
          t83 = t84.
          t82 = t83->get_first_token( ).
          t81 = t82.
          DATA t87 TYPE REF TO zcl_lnt_position.
          DATA(t88) = t81.
          t87 = t88->start.
          t80 = t87.
          t78 = t80.
        ELSE.
          DATA t89 TYPE REF TO zcl_lnt_position.
          CLEAR t89.
          t78 = t89.
        ENDIF.
        t77 = t78.
        t48 = NEW zcl_lnt_shape_3940daab( i_name_end = t49 i_after = t77 ).
        CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
        t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
        t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |nameEnd|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |after|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        t47->load( ).
        APPEND t48 TO t47->items.
        t47->save( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t97) = t21.
        DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE REF TO zcl_lnt_position.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t104) = t37.
        t103 = t104->get_first_token( ).
        t102 = t103.
        DATA t105 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE f.
        DATA t107 TYPE REF TO zcl_lnt_position.
        DATA t108 TYPE REF TO zcl_lnt_position.
        DATA(t109) = t102.
        t108 = t109->start.
        t107 = t108.
        DATA t110 TYPE f.
        DATA(t111) = t107.
        t110 = t111->row.
        t106 = t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t114 TYPE REF TO zcl_lnt_position.
        DATA t115 TYPE REF TO zcl_lnt_position.
        DATA(t116) = t102.
        t115 = t116->start.
        t114 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t118) = t114.
        t117 = t118->col.
        t113 = t117.
        DATA t119 TYPE f.
        DATA t120 TYPE i.
        DATA t121 TYPE string.
        DATA(t122) = t102.
        t121 = t122->str.
        DATA(t123) = strlen( t121 ).
        t120 = t123.
        t119 = t120.
        DATA(t124) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t124->has = abap_true.
        t124->value = t119.
        t112 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t124 op = `+` ).
        t105 = NEW zcl_lnt_position( i_row = t106 i_col = t112 ).
        t101 = t105.
        t100 = t101.
        DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t126) = t100.
        t125 = t126->col.
        t99 = t125.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = t127.
        t98 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t128 op = `+` ).
        t96 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t97 right = t98 op = `max` ).
        t21 = t96.
      ENDDO.
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      DATA t130 TYPE REF TO zcl_lnt_expression_node.
      DATA(t131) = t10.
      DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca.
      t130 = t131->find_first_expression( i_type_9913 = t132 ).
      t129 = t130.
      DATA t133 TYPE abap_bool.
      DATA(t134) = t129.
      t133 = xsdbool( t134 IS BOUND ).
      IF t133 = abap_true.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t138 TYPE REF TO zcl_lnt_abstract_node.
        DATA t139 TYPE REF TO zcl_lnt_expression_node.
        DATA(t140) = t129.
        t139 = t140.
        t138 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t142) = t138.
        t141 = t142->children.
        t137 = t141.
        t136 ?= t137.
        t135 = t136.
        DATA t143 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t143.
        DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t144.
        DATA(t145) = t135.
        DATA t146 TYPE i.
        DATA t147 TYPE i.
        DATA(t148) = t135.
        t148->load( ).
        t147 = lines( t148->items ).
        DATA(t149) = 2.
        t146 = t147 - t149.
        t146 = t146 + 1.
        DATA t150 TYPE REF TO object.
        CLEAR t150.
        t145->load( ).
        CLEAR t150.
        READ TABLE t145->items INDEX t146 INTO t150.
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
        DATA(t153) = t15.
        DATA t154 TYPE REF TO zcl_lnt_shape_3940daab.
        CLEAR t154.
        DATA t155 TYPE REF TO zcl_lnt_position.
        CLEAR t155.
        DATA t156 TYPE REF TO zcl_lnt_position.
        CLEAR t156.
        DATA(t157) = abap_true.
        IF t157 = abap_true.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA t159 TYPE REF TO zcl_lnt_abstract_token.
          DATA t160 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t161) = t143.
          t160 = t161->get_last_token( ).
          t159 = t160.
          DATA t162 TYPE REF TO zcl_lnt_position.
          DATA t163 TYPE f.
          DATA t164 TYPE REF TO zcl_lnt_position.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA(t166) = t159.
          t165 = t166->start.
          t164 = t165.
          DATA t167 TYPE f.
          DATA(t168) = t164.
          t167 = t168->row.
          t163 = t167.
          DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t171 TYPE REF TO zcl_lnt_position.
          DATA t172 TYPE REF TO zcl_lnt_position.
          DATA(t173) = t159.
          t172 = t173->start.
          t171 = t172.
          DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t175) = t171.
          t174 = t175->col.
          t170 = t174.
          DATA t176 TYPE f.
          DATA t177 TYPE i.
          DATA t178 TYPE string.
          DATA(t179) = t159.
          t178 = t179->str.
          DATA(t180) = strlen( t178 ).
          t177 = t180.
          t176 = t177.
          DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t181->has = abap_true.
          t181->value = t176.
          t169 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ).
          t162 = NEW zcl_lnt_position( i_row = t163 i_col = t169 ).
          t158 = t162.
          t156 = t158.
        ELSE.
          DATA t182 TYPE REF TO zcl_lnt_position.
          CLEAR t182.
          t156 = t182.
        ENDIF.
        t155 = t156.
        DATA t183 TYPE REF TO zcl_lnt_position.
        CLEAR t183.
        DATA t184 TYPE REF TO zcl_lnt_position.
        CLEAR t184.
        DATA(t185) = abap_true.
        IF t185 = abap_true.
          DATA t186 TYPE REF TO zcl_lnt_position.
          DATA t187 TYPE REF TO zcl_lnt_abstract_token.
          DATA t188 TYPE REF TO zcl_lnt_abstract_token.
          DATA t189 TYPE REF TO zcl_lnt_expression_node.
          DATA t190 TYPE REF TO zcl_lnt_expression_node.
          DATA t191 TYPE REF TO zcl_lnt_expression_node.
          DATA(t192) = t129.
          t191 = t192.
          DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
          t190 = t191->find_first_expression( i_type_9913 = t193 ).
          t189 = t190.
          t188 = t189->get_first_token( ).
          t187 = t188.
          DATA t194 TYPE REF TO zcl_lnt_position.
          DATA(t195) = t187.
          t194 = t195->start.
          t186 = t194.
          t184 = t186.
        ELSE.
          DATA t196 TYPE REF TO zcl_lnt_position.
          CLEAR t196.
          t184 = t196.
        ENDIF.
        t183 = t184.
        t154 = NEW zcl_lnt_shape_3940daab( i_name_end = t155 i_after = t183 ).
        CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
        t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t198 ).
        ENDIF.
        CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
        t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t199) = |nameEnd|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        DATA(t201) = |after|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        t153->load( ).
        APPEND t154 TO t153->items.
        t153->save( ).
        DATA t203 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t204) = t21.
        DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t206 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t207 TYPE REF TO zcl_lnt_position.
        DATA t208 TYPE REF TO zcl_lnt_position.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t211) = t143.
        t210 = t211->get_last_token( ).
        t209 = t210.
        DATA t212 TYPE REF TO zcl_lnt_position.
        DATA t213 TYPE f.
        DATA t214 TYPE REF TO zcl_lnt_position.
        DATA t215 TYPE REF TO zcl_lnt_position.
        DATA(t216) = t209.
        t215 = t216->start.
        t214 = t215.
        DATA t217 TYPE f.
        DATA(t218) = t214.
        t217 = t218->row.
        t213 = t217.
        DATA t219 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t220 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t221 TYPE REF TO zcl_lnt_position.
        DATA t222 TYPE REF TO zcl_lnt_position.
        DATA(t223) = t209.
        t222 = t223->start.
        t221 = t222.
        DATA t224 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t225) = t221.
        t224 = t225->col.
        t220 = t224.
        DATA t226 TYPE f.
        DATA t227 TYPE i.
        DATA t228 TYPE string.
        DATA(t229) = t209.
        t228 = t229->str.
        DATA(t230) = strlen( t228 ).
        t227 = t230.
        t226 = t227.
        DATA(t231) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t231->has = abap_true.
        t231->value = t226.
        t219 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t220 right = t231 op = `+` ).
        t212 = NEW zcl_lnt_position( i_row = t213 i_col = t219 ).
        t208 = t212.
        t207 = t208.
        DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t233) = t207.
        t232 = t233->col.
        t206 = t232.
        DATA(t234) = CONV f( 1 ).
        DATA(t235) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t235->has = abap_true.
        t235->value = t234.
        t205 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t206 right = t235 op = `+` ).
        t203 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t204 right = t205 op = `max` ).
        t21 = t203.
      ENDIF.
      DATA(t236) = VALUE i( ).
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t238) = t15.
      DATA(t239) = t21.
      DATA(t240) = t2.
      t237 = me->check_bf6e( i_fields_62af = t238 i_column = t239 i_file = t240 ).
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
        DATA(t246) = t3.
        DATA(t247) = t241.
        t246->load( ).
        APPEND t247 TO t246->items.
        t246->save( ).
      ENDDO.
      DATA t248 TYPE i.
      DATA(t249) = t3.
      t249->load( ).
      t248 = lines( t249->items ).
      t236 = t248.
    ENDDO.
    DATA(t250) = t3.
    result = t250.

  ENDMETHOD.

  METHOD check_events.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t6 = t7->find_all_statements( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = t10.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t18 = t19->find_all_expressions( i_type_9913 = t20 ).
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t22) = CONV f( 0 ).
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = t22.
      t21 = t23.
      DATA(t24) = t17.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t24->load( ).
        IF t27 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t24->items INDEX t27 + 1 INTO t26.
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
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t34) = t25.
        t33 = t34.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = t33.
        t35 = t36->children.
        t32 = t35.
        t31 ?= t32.
        t30 = t31.
        DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t38.
        DATA(t39) = t30.
        DATA t40 TYPE i.
        DATA t41 TYPE i.
        DATA(t42) = t30.
        t42->load( ).
        t41 = lines( t42->items ).
        DATA(t43) = 2.
        t40 = t41 - t43.
        t40 = t40 + 1.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        t39->load( ).
        CLEAR t44.
        READ TABLE t39->items INDEX t40 INTO t44.
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
        DATA(t47) = t15.
        DATA t48 TYPE REF TO zcl_lnt_shape_3940daab.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_position.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zcl_lnt_position.
          DATA t53 TYPE REF TO zcl_lnt_abstract_token.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t55) = t37.
          t54 = t55->get_last_token( ).
          t53 = t54.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA t57 TYPE f.
          DATA t58 TYPE REF TO zcl_lnt_position.
          DATA t59 TYPE REF TO zcl_lnt_position.
          DATA(t60) = t53.
          t59 = t60->start.
          t58 = t59.
          DATA t61 TYPE f.
          DATA(t62) = t58.
          t61 = t62->row.
          t57 = t61.
          DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA t66 TYPE REF TO zcl_lnt_position.
          DATA(t67) = t53.
          t66 = t67->start.
          t65 = t66.
          DATA t68 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t69) = t65.
          t68 = t69->col.
          t64 = t68.
          DATA t70 TYPE f.
          DATA t71 TYPE i.
          DATA t72 TYPE string.
          DATA(t73) = t53.
          t72 = t73->str.
          DATA(t74) = strlen( t72 ).
          t71 = t74.
          t70 = t71.
          DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t75->has = abap_true.
          t75->value = t70.
          t63 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t64 right = t75 op = `+` ).
          t56 = NEW zcl_lnt_position( i_row = t57 i_col = t63 ).
          t52 = t56.
          t50 = t52.
        ELSE.
          DATA t76 TYPE REF TO zcl_lnt_position.
          CLEAR t76.
          t50 = t76.
        ENDIF.
        t49 = t50.
        DATA t77 TYPE REF TO zcl_lnt_position.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_position.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_position.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA t83 TYPE REF TO zcl_lnt_expression_node.
          DATA t84 TYPE REF TO zcl_lnt_expression_node.
          DATA(t85) = t25.
          DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
          t84 = t85->find_first_expression( i_type_9913 = t86 ).
          t83 = t84.
          t82 = t83->get_first_token( ).
          t81 = t82.
          DATA t87 TYPE REF TO zcl_lnt_position.
          DATA(t88) = t81.
          t87 = t88->start.
          t80 = t87.
          t78 = t80.
        ELSE.
          DATA t89 TYPE REF TO zcl_lnt_position.
          CLEAR t89.
          t78 = t89.
        ENDIF.
        t77 = t78.
        t48 = NEW zcl_lnt_shape_3940daab( i_name_end = t49 i_after = t77 ).
        CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
        t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
        t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |nameEnd|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |after|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        t47->load( ).
        APPEND t48 TO t47->items.
        t47->save( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t97) = t21.
        DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE REF TO zcl_lnt_position.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t104) = t37.
        t103 = t104->get_first_token( ).
        t102 = t103.
        DATA t105 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE f.
        DATA t107 TYPE REF TO zcl_lnt_position.
        DATA t108 TYPE REF TO zcl_lnt_position.
        DATA(t109) = t102.
        t108 = t109->start.
        t107 = t108.
        DATA t110 TYPE f.
        DATA(t111) = t107.
        t110 = t111->row.
        t106 = t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t114 TYPE REF TO zcl_lnt_position.
        DATA t115 TYPE REF TO zcl_lnt_position.
        DATA(t116) = t102.
        t115 = t116->start.
        t114 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t118) = t114.
        t117 = t118->col.
        t113 = t117.
        DATA t119 TYPE f.
        DATA t120 TYPE i.
        DATA t121 TYPE string.
        DATA(t122) = t102.
        t121 = t122->str.
        DATA(t123) = strlen( t121 ).
        t120 = t123.
        t119 = t120.
        DATA(t124) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t124->has = abap_true.
        t124->value = t119.
        t112 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t113 right = t124 op = `+` ).
        t105 = NEW zcl_lnt_position( i_row = t106 i_col = t112 ).
        t101 = t105.
        t100 = t101.
        DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t126) = t100.
        t125 = t126->col.
        t99 = t125.
        DATA(t127) = CONV f( 1 ).
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = t127.
        t98 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t99 right = t128 op = `+` ).
        t96 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t97 right = t98 op = `max` ).
        t21 = t96.
      ENDDO.
      DATA(t129) = VALUE i( ).
      DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t131) = t15.
      DATA(t132) = t21.
      DATA(t133) = t2.
      t130 = me->check_bf6e( i_fields_62af = t131 i_column = t132 i_file = t133 ).
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
        DATA(t139) = t3.
        DATA(t140) = t134.
        t139->load( ).
        APPEND t140 TO t139->items.
        t139->save( ).
      ENDDO.
      DATA t141 TYPE i.
      DATA(t142) = t3.
      t142->load( ).
      t141 = lines( t142->items ).
      t129 = t141.
    ENDDO.
    DATA(t143) = t3.
    result = t143.

  ENDMETHOD.

  METHOD check_types.
    DATA(t1) = i_stru.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t6 = t7->find_all_structures_recursive( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
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
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t17) = t10.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t16 = t17->find_direct_statement( i_type_9913 = t18 ).
      t15 = xsdbool( t16 IS BOUND ).
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t20.
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t22) = CONV f( 0 ).
      DATA(t23) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t23->has = abap_true.
      t23->value = t22.
      t21 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = t10.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
      t25 = t26->find_direct_statements( i_type_9913 = t27 ).
      t24 = t25.
      DATA(t28) = t24.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      DATA(t31) = VALUE i( ).
      DO.
        t28->load( ).
        IF t31 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t28->items INDEX t31 + 1 INTO t30.
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
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t38 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t39) = t29.
        t38 = t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t41) = t38.
        t40 = t41->children.
        t37 = t40.
        t36 ?= t37.
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
        DATA(t45) = t19.
        DATA t46 TYPE REF TO zcl_lnt_shape_3940daab.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_position.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_position.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA t50 TYPE REF TO zcl_lnt_position.
          DATA t51 TYPE REF TO zcl_lnt_abstract_token.
          DATA t52 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t53) = t34.
          t52 = t53->get_last_token( ).
          t51 = t52.
          DATA t54 TYPE REF TO zcl_lnt_position.
          DATA t55 TYPE f.
          DATA t56 TYPE REF TO zcl_lnt_position.
          DATA t57 TYPE REF TO zcl_lnt_position.
          DATA(t58) = t51.
          t57 = t58->start.
          t56 = t57.
          DATA t59 TYPE f.
          DATA(t60) = t56.
          t59 = t60->row.
          t55 = t59.
          DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t63 TYPE REF TO zcl_lnt_position.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA(t65) = t51.
          t64 = t65->start.
          t63 = t64.
          DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t67) = t63.
          t66 = t67->col.
          t62 = t66.
          DATA t68 TYPE f.
          DATA t69 TYPE i.
          DATA t70 TYPE string.
          DATA(t71) = t51.
          t70 = t71->str.
          DATA(t72) = strlen( t70 ).
          t69 = t72.
          t68 = t69.
          DATA(t73) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t73->has = abap_true.
          t73->value = t68.
          t61 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t62 right = t73 op = `+` ).
          t54 = NEW zcl_lnt_position( i_row = t55 i_col = t61 ).
          t50 = t54.
          t48 = t50.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_position.
          CLEAR t74.
          t48 = t74.
        ENDIF.
        t47 = t48.
        DATA t75 TYPE REF TO zcl_lnt_position.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_position.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA t78 TYPE REF TO zcl_lnt_position.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t79.
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t80.
          DATA t81 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t84 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t85) = t29.
          t84 = t85.
          DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t87) = t84.
          t86 = t87->children.
          t83 = t86.
          t82 ?= t83.
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
          t80 = t81->get_first_token( ).
          t79 = t80.
          DATA t91 TYPE REF TO zcl_lnt_position.
          DATA(t92) = t79.
          t91 = t92->start.
          t78 = t91.
          t76 = t78.
        ELSE.
          DATA t93 TYPE REF TO zcl_lnt_position.
          CLEAR t93.
          t76 = t93.
        ENDIF.
        t75 = t76.
        t46 = NEW zcl_lnt_shape_3940daab( i_name_end = t47 i_after = t75 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nameEnd` p1 = t94 ).
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `after` p1 = t95 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t96) = |nameEnd|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |after|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        t45->load( ).
        APPEND t46 TO t45->items.
        t45->save( ).
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t101) = t21.
        DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t104 TYPE REF TO zcl_lnt_position.
        DATA t105 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE REF TO zcl_lnt_abstract_token.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t108) = t34.
        t107 = t108->get_first_token( ).
        t106 = t107.
        DATA t109 TYPE REF TO zcl_lnt_position.
        DATA t110 TYPE f.
        DATA t111 TYPE REF TO zcl_lnt_position.
        DATA t112 TYPE REF TO zcl_lnt_position.
        DATA(t113) = t106.
        t112 = t113->start.
        t111 = t112.
        DATA t114 TYPE f.
        DATA(t115) = t111.
        t114 = t115->row.
        t110 = t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t117 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t118 TYPE REF TO zcl_lnt_position.
        DATA t119 TYPE REF TO zcl_lnt_position.
        DATA(t120) = t106.
        t119 = t120->start.
        t118 = t119.
        DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t122) = t118.
        t121 = t122->col.
        t117 = t121.
        DATA t123 TYPE f.
        DATA t124 TYPE i.
        DATA t125 TYPE string.
        DATA(t126) = t106.
        t125 = t126->str.
        DATA(t127) = strlen( t125 ).
        t124 = t127.
        t123 = t124.
        DATA(t128) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t128->has = abap_true.
        t128->value = t123.
        t116 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t117 right = t128 op = `+` ).
        t109 = NEW zcl_lnt_position( i_row = t110 i_col = t116 ).
        t105 = t109.
        t104 = t105.
        DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t130) = t104.
        t129 = t130->col.
        t103 = t129.
        DATA(t131) = CONV f( 1 ).
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t131.
        t102 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t103 right = t132 op = `+` ).
        t100 = zlnt_runtime_numb_290eb04a9758=>minmax( left = t101 right = t102 op = `max` ).
        t21 = t100.
      ENDDO.
      DATA(t133) = VALUE i( ).
      DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t135) = t19.
      DATA(t136) = t21.
      DATA(t137) = t2.
      t134 = me->check_bf6e( i_fields_62af = t135 i_column = t136 i_file = t137 ).
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
        DATA(t143) = t3.
        DATA(t144) = t138.
        t143->load( ).
        APPEND t144 TO t143->items.
        t143->save( ).
      ENDDO.
      DATA t145 TYPE i.
      DATA(t146) = t3.
      t146->load( ).
      t145 = lines( t146->items ).
      t133 = t145.
    ENDDO.
    DATA(t147) = t3.
    result = t147.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_algn_typ_exprssns_cnf( me->g_c_i_s_r_al_ty_ex_ts_al_ty_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_algn_typ_exprssns_cnf.
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
        t1 = NEW zcl_lnt_algn_typ_exprssns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ty_ex_ts_al_ty_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_al_ty_ex_ts_al_ty_ex( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

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
