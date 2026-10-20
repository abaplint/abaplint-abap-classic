* TS: src/rules/implement_methods.ts:24:1 ImplementMethods
CLASS zcl_lnt_implement_methods DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_implement_methods_conf.
    DATA obj TYPE REF TO zcl_lnt_abap_object.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_im_mt_ts_im_mth RETURNING VALUE(result) TYPE REF TO zcl_lnt_implement_methods_conf.
    METHODS st_cn_in_sr_rl_im_mt_ts_im_mth IMPORTING i_conf TYPE REF TO zcl_lnt_implement_methods_conf.
    METHODS run_parsed REDEFINITION.
    METHODS lkp_implmnttn_in_objct IMPORTING i_name TYPE string i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    METHODS lookup_definition_in_object IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS check_class IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn i_method_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS find_interface IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_union_eff0d09a.
    METHODS find_interface_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS find_interface_methods IMPORTING i_idef TYPE REF TO zcl_lnt_inf_intrfc_dfntn RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_class IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_e8fb1d71.
    METHODS check_interfaces IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_abstract IMPORTING i_m TYPE REF TO zcl_lnt_imethod i_interface_info TYPE REF TO zcl_lnt_info_implementing i_def TYPE REF TO zcl_lnt_info_class_definition RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_implemented IMPORTING i_m TYPE REF TO zcl_lnt_imethod i_def TYPE REF TO zcl_lnt_info_class_definition i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn RETURNING VALUE(result) TYPE abap_bool.
    METHODS via_alias_in_interface IMPORTING i_m TYPE REF TO zcl_lnt_imethod i_intf TYPE REF TO zcl_lnt_inf_intrfc_dfntn i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implement_methods IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_implement_methods_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for abstract methods and methods from interfaces whic|.
    t7 = t7 && |h need implementing.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |INCLUDE programs are only checked in connection with their m|.
    t11 = t11 && |ain programs.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t18 i_pragma = t30 i_pseudo_comment = t32 ).
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

  METHOD gt_cn_in_sr_rl_im_mt_ts_im_mth.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_im_mt_ts_im_mth.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    t10 = t1->structure.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE abap_bool.
    t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ).
    t17 = t18.
    IF t18 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_ob_program.
      DATA t23 TYPE REF TO zcl_lnt_ob_program.
      t23 ?= t2.
      t22 = t23.
      t22->parse_xml( ).
      t17 = xsdbool( t22->parsed_xml->is_include = abap_true ).
    ENDIF.
    IF t17 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.

    me->obj = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t1->info->list_class_definitions( ).
    DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t41 TYPE REF TO object.
    DATA(t42) = VALUE i( ).
    DO.
      t34->load( ).
      IF t42 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t34->items INDEX t42 + 1 INTO t41.
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
      DATA t45 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t47 TYPE string.
      t47 = t40->name.
      t45 = me->lkp_implmnttn_in_objct( i_name = t47 i_obj_1ed0 = t2 ).
      t3 = t3->concat( p0 = me->check_class( i_def = t40 i_impl = t45 ) ).
      t3 = t3->concat( p0 = me->check_interfaces( i_def = t40 i_impl = t45 ) ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD lkp_implmnttn_in_objct.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_obj_1ed0->parsed.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t3->load( ).
      IF t10 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t3->items INDEX t10 + 1 INTO t9.
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
      DATA t13 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      t13 = t8->info->gt_clss_implmnttn_by_nm( i_name = t1 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF xsdbool( xsdbool( t13 IS INITIAL ) = abap_false ) = abap_true.
        result = t13.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD lookup_definition_in_object.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = me->obj->parsed.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t2->load( ).
      IF t9 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t2->items INDEX t9 + 1 INTO t8.
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
      DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
      t12 = t7->info->get_class_definition_by_name( i_name = t1 ).
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      IF xsdbool( xsdbool( t12 IS INITIAL ) = abap_false ) = abap_true.
        result = t12.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_class.
    DATA(t1) = i_def.
    DATA(t2) = i_impl.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->methods.
    DATA t7 TYPE REF TO zcl_lnt_info_method_definition.
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
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t16 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      t16 = t2.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      IF xsdbool( t16 IS INITIAL ) = abap_true.
        CLEAR t18.
      ELSE.
        t18 = t16->methods.
      ENDIF.
      t14 = t18.
      DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t25.
      IF xsdbool( t14 IS INITIAL ) = abap_true.
        CLEAR t25.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t30 = t14.
        DATA t33 TYPE i.
        t30->load( ).
        t33 = lines( t30->items ).
        DATA t36 TYPE i.
        t36 = 0.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t38.
        DO.
          IF xsdbool( t36 < t33 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t43.
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t45.
          DATA t48 TYPE REF TO object.
          t48 = t30->get( p0 = t36 ).
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          CLEAR t45.
          IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t49 ?= t48.
            DATA t50 TYPE REF TO object.
            t50 = t49->as_ref( ).
            t45 ?= t50.
          ELSE.
            t45 ?= t48.
          ENDIF.
          t43 = t45.
          DATA(t52) = VALUE string( ).
          DATA(t53) = VALUE string( ).
          DATA t57 TYPE string.
          t57 = t43->token->str.
          DATA(t65) = VALUE string( ).
          DATA(t66) = t57.
          DATA(t67) = 0.
          DATA(t68) = 1.
          DATA(t69) = strlen( t66 ).
          IF t67 < 0.
            t67 = t67 + t69.
            IF t67 < 0.
              t67 = 0.
            ENDIF.
          ENDIF.
          IF t67 > t69 OR t68 <= 0.
          ELSE.
            IF t68 > t69 - t67.
              t68 = t69 - t67.
            ENDIF.
            t65 = t66+t67(t68).
          ENDIF.
          IF xsdbool( t65 = |!| ) = abap_true.
            DATA t72 TYPE string.
            t72 = t57.
            DATA(t74) = VALUE string( ).
            DATA(t76) = 1.
            DATA t77 TYPE i.
            t77 = strlen( t72 ).
            DATA(t80) = strlen( t72 ).
            IF t76 < 0.
              t76 = t76 + t80.
              IF t76 < 0.
                t76 = 0.
              ENDIF.
            ENDIF.
            IF t76 > t80 OR t77 <= 0.
            ELSE.
              IF t77 > t80 - t76.
                t77 = t80 - t76.
              ENDIF.
              t74 = t72+t76(t77).
            ENDIF.
            t57 = t74.
          ENDIF.
          t53 = t57.
          DATA(t82) = strlen( t53 ).
          t52 = t53.
          IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t52 TO UPPER CASE.
          ELSE.
            t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
          ENDIF.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          t84 = t7->name.
          DATA(t86) = strlen( t84 ).
          t83 = t84.
          IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t83 TO UPPER CASE.
          ELSE.
            t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
          ENDIF.
          IF xsdbool( t52 = t83 ) = abap_true.
            t38 = t43.
            EXIT.
          ENDIF.
          DATA(t93) = 1.
          t36 = t36 + t93.
        ENDDO.
        t25 = t38.
      ENDIF.
      t12 = t25.
      IF xsdbool( t7->is_abstract = abap_true ) = abap_true.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF xsdbool( xsdbool( t12 IS INITIAL ) = abap_false ) = abap_true.
          DATA t108 TYPE REF TO zcl_lnt_issue.
          CLEAR t108.
          DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
          t109 = t12.
          DATA t111 TYPE string.
          DATA t112 TYPE string.
          DATA(t113) = |Do not implement abstract method "|.
          DATA t114 TYPE string.
          t114 = t7->name.
          DATA(t116) = strlen( t113 ).
          t112 = |{ t113 }{ t114 }|.
          DATA(t118) = strlen( t112 ).
          t111 = |{ t112 }{ |"| }|.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t125 TYPE string.
          DATA(t126) = |Checks for abstract methods and methods from interfaces whic|.
          t126 = t126 && |h need implementing.|.
          t125 = t126.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          DATA(t130) = |INCLUDE programs are only checked in connection with their m|.
          t130 = t130 && |ain programs.|.
          DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t131->has = abap_true.
          t131->value = t130.
          t127 = t131.
          DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t133.
          DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t137.
          t137->load( ).
          APPEND |Syntax| TO t137->items.
          t137->save( ).
          t137->load( ).
          APPEND |Quickfix| TO t137->items.
          t137->save( ).
          t133 = t137.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t149.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          t120 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t125 i_bad_example = t145 i_good_example = t147 i_extended_information = t127 i_tags = t133 i_pragma = t149 i_pseudo_comment = t151 ).
          CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
          t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t153 ).
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t154 ).
          ENDIF.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t155 ).
          ENDIF.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t156 ).
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t157 ).
          ENDIF.
          CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
          t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t159 ).
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t161 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t163 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t165 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t167 ).
          ENDIF.
          t119 = t120->key.
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t168 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t170.
          t108 = zcl_lnt_issue=>at_identifier( i_identifier = t109 i_message_26cb = t111 i_key = t119 i_severity = t168 i_fix = t170 ).
          t3->load( ).
          APPEND t108 TO t3->items.
          t3->save( ).
        ENDIF.
        DATA(t173) = VALUE abap_bool( ).
        DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t174 = t1->is_abstract.
        IF t174 IS BOUND.
          IF t174->has = abap_true.
            t173 = xsdbool( t174->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t173 = abap_true.
          CONTINUE.
        ELSE.
          DATA t177 TYPE string.
          DATA(t178) = |Abstract methods can only be defined in abstract classes, |.
          DATA t179 TYPE string.
          t179 = t7->name.
          DATA(t181) = strlen( t178 ).
          t177 = |{ t178 }{ t179 }|.
          DATA t183 TYPE REF TO zcl_lnt_issue.
          CLEAR t183.
          DATA t184 TYPE REF TO zcl_lnt_fi_identifier.
          t184 = t7->identifier.
          DATA(t187) = VALUE string( ).
          DATA t188 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t193 TYPE string.
          DATA(t194) = |Checks for abstract methods and methods from interfaces whic|.
          t194 = t194 && |h need implementing.|.
          t193 = t194.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          DATA(t198) = |INCLUDE programs are only checked in connection with their m|.
          t198 = t198 && |ain programs.|.
          DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t199->has = abap_true.
          t199->value = t198.
          t195 = t199.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t201.
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t205.
          t205->load( ).
          APPEND |Syntax| TO t205->items.
          t205->save( ).
          t205->load( ).
          APPEND |Quickfix| TO t205->items.
          t205->save( ).
          t201 = t205.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          t188 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t193 i_bad_example = t213 i_good_example = t215 i_extended_information = t195 i_tags = t201 i_pragma = t217 i_pseudo_comment = t219 ).
          CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
          t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t221 ).
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t222 ).
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t223 ).
          ENDIF.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t224 ).
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t225 ).
          ENDIF.
          CREATE OBJECT t188->zlnt_json_ownkeys_70e5fd461788.
          t188->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t227 ).
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t229 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t231 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t233 ).
          ENDIF.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t235 ).
          ENDIF.
          t187 = t188->key.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t236 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t183 = zcl_lnt_issue=>at_identifier( i_identifier = t184 i_message_26cb = t177 i_key = t187 i_severity = t236 i_fix = t238 ).
          t3->load( ).
          APPEND t183 TO t3->items.
          t3->save( ).
          EXIT.
        ENDIF.
      ENDIF.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t244.
      IF xsdbool( t2 IS INITIAL ) = abap_true.
        DATA t249 TYPE string.
        DATA t250 TYPE string.
        DATA(t251) = |Class implementation for "|.
        DATA t252 TYPE string.
        t252 = t1->name.
        DATA(t254) = strlen( t251 ).
        t250 = |{ t251 }{ t252 }|.
        DATA(t256) = strlen( t250 ).
        t249 = |{ t250 }{ |" not found| }|.
        DATA t258 TYPE REF TO zcl_lnt_issue.
        CLEAR t258.
        DATA t259 TYPE REF TO zcl_lnt_fi_identifier.
        t259 = t1->identifier.
        DATA(t262) = VALUE string( ).
        DATA t263 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t268 TYPE string.
        DATA(t269) = |Checks for abstract methods and methods from interfaces whic|.
        t269 = t269 && |h need implementing.|.
        t268 = t269.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        DATA(t273) = |INCLUDE programs are only checked in connection with their m|.
        t273 = t273 && |ain programs.|.
        DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t274->has = abap_true.
        t274->value = t273.
        t270 = t274.
        DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t276.
        DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t280.
        t280->load( ).
        APPEND |Syntax| TO t280->items.
        t280->save( ).
        t280->load( ).
        APPEND |Quickfix| TO t280->items.
        t280->save( ).
        t276 = t280.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t290.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t292.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        t263 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t268 i_bad_example = t288 i_good_example = t290 i_extended_information = t270 i_tags = t276 i_pragma = t292 i_pseudo_comment = t294 ).
        CREATE OBJECT t263->zlnt_view_ownkeys_b0e8086400eb.
        t263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t296.
        t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t296 ).
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t297.
        IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t297 ).
        ENDIF.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t298 ).
        ENDIF.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t299 ).
        ENDIF.
        DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t300.
        IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t300 ).
        ENDIF.
        CREATE OBJECT t263->zlnt_json_ownkeys_70e5fd461788.
        t263->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t302 ).
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t304 ).
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t306 ).
        ENDIF.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t308 ).
        ENDIF.
        DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t310.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t310 ).
        ENDIF.
        t262 = t263->key.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t311 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t313 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t313.
        t258 = zcl_lnt_issue=>at_identifier( i_identifier = t259 i_message_26cb = t249 i_key = t262 i_severity = t311 i_fix = t313 ).
        t3->load( ).
        APPEND t258 TO t3->items.
        t3->save( ).
      ELSE.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t319.
        IF xsdbool( t12 IS INITIAL ) = abap_true.
          DATA t324 TYPE string.
          DATA t325 TYPE string.
          DATA(t326) = |Implement method "|.
          DATA t327 TYPE string.
          t327 = t7->name.
          DATA(t329) = strlen( t326 ).
          t325 = |{ t326 }{ t327 }|.
          DATA(t331) = strlen( t325 ).
          t324 = |{ t325 }{ |"| }|.
          DATA t333 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t334 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          t334 = t2.
          DATA t336 TYPE string.
          t336 = t7->name.
          t333 = me->build_fix( i_impl = t334 i_method_name = t336 ).
          DATA t339 TYPE REF TO zcl_lnt_issue.
          CLEAR t339.
          DATA t340 TYPE REF TO zcl_lnt_fi_identifier.
          t340 = t2->identifier.
          DATA(t344) = VALUE string( ).
          DATA t345 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t350 TYPE string.
          DATA(t351) = |Checks for abstract methods and methods from interfaces whic|.
          t351 = t351 && |h need implementing.|.
          t350 = t351.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t352.
          DATA(t355) = |INCLUDE programs are only checked in connection with their m|.
          t355 = t355 && |ain programs.|.
          DATA(t356) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t356->has = abap_true.
          t356->value = t355.
          t352 = t356.
          DATA t358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t358.
          DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t362.
          t362->load( ).
          APPEND |Syntax| TO t362->items.
          t362->save( ).
          t362->load( ).
          APPEND |Quickfix| TO t362->items.
          t362->save( ).
          t358 = t362.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t374.
          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t376.
          t345 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t350 i_bad_example = t370 i_good_example = t372 i_extended_information = t352 i_tags = t358 i_pragma = t374 i_pseudo_comment = t376 ).
          CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
          t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t378.
          t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t378 ).
          DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t379.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t379 ).
          ENDIF.
          DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t380.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t380 ).
          ENDIF.
          DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t381.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t381 ).
          ENDIF.
          DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t382.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t382 ).
          ENDIF.
          CREATE OBJECT t345->zlnt_json_ownkeys_70e5fd461788.
          t345->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t384.
          t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t384 ).
          DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t386.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t386 ).
          ENDIF.
          DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t388.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t388 ).
          ENDIF.
          DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t390.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t390 ).
          ENDIF.
          DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t392.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t392 ).
          ENDIF.
          t344 = t345->key.
          t339 = zcl_lnt_issue=>at_identifier( i_identifier = t340 i_message_26cb = t324 i_key = t344 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t333 ).
          t3->load( ).
          APPEND t339 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_impl.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t10 TYPE string.
    t10 = t1->identifier->filename.
    t3 = me->obj->get_abap_file_by_name( i_filename = t10 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    t23 = t3->structure.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
    ELSE.
      DATA t35 TYPE REF TO zcl_lnt_structure_node.
      t35 = t23.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0.
      t30 = t35->find_all_statements( i_type_9913 = t37 ).
    ENDIF.
    t21 = t30.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t21 IS BOUND ) = abap_true.
      t38 = t21.
    ELSE.
      CREATE OBJECT t38.
    ENDIF.
    t20 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    DATA t45 TYPE REF TO object.
    DATA(t46) = VALUE i( ).
    DO.
      t20->load( ).
      IF t46 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t45.
      READ TABLE t20->items INDEX t46 + 1 INTO t45.
      t46 = t46 + 1.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t44.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t45.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t44 ?= t48.
      ELSE.
        t44 ?= t45.
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t55 = t44->find_first_expression( i_type_9913 = t58 ).
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      IF xsdbool( t55 IS INITIAL ) = abap_true.
        CLEAR t59.
      ELSE.
        t59 = t55->get_first_token( ).
      ENDIF.
      t53 = t59.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      IF xsdbool( t53 IS INITIAL ) = abap_true.
        CLEAR t66.
      ELSE.
        DATA t74 TYPE string.
        t74 = t53->str.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t74.
        t66 = t76.
      ENDIF.
      t51 = t66.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      IF t51 IS INITIAL.
        t78 = abap_true.
      ELSEIF t51->has = abap_false.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        CLEAR t77.
      ELSE.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        t82 = t51->value.
        DATA(t84) = strlen( t82 ).
        t81 = t82.
        IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t81 TO UPPER CASE.
        ELSE.
          t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
        ENDIF.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t81.
        t77 = t85.
      ENDIF.
      t49 = t77.
      DATA(t86) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA(t90) = VALUE string( ).
      DATA(t91) = VALUE string( ).
      DATA t96 TYPE string.
      t96 = t1->identifier->token->str.
      DATA(t104) = VALUE string( ).
      DATA(t105) = t96.
      DATA(t106) = 0.
      DATA(t107) = 1.
      DATA(t108) = strlen( t105 ).
      IF t106 < 0.
        t106 = t106 + t108.
        IF t106 < 0.
          t106 = 0.
        ENDIF.
      ENDIF.
      IF t106 > t108 OR t107 <= 0.
      ELSE.
        IF t107 > t108 - t106.
          t107 = t108 - t106.
        ENDIF.
        t104 = t105+t106(t107).
      ENDIF.
      IF xsdbool( t104 = |!| ) = abap_true.
        DATA t111 TYPE string.
        t111 = t96.
        DATA(t113) = VALUE string( ).
        DATA(t115) = 1.
        DATA t116 TYPE i.
        t116 = strlen( t111 ).
        DATA(t119) = strlen( t111 ).
        IF t115 < 0.
          t115 = t115 + t119.
          IF t115 < 0.
            t115 = 0.
          ENDIF.
        ENDIF.
        IF t115 > t119 OR t116 <= 0.
        ELSE.
          IF t116 > t119 - t115.
            t116 = t119 - t115.
          ENDIF.
          t113 = t111+t115(t116).
        ENDIF.
        t96 = t113.
      ENDIF.
      t91 = t96.
      DATA(t121) = strlen( t91 ).
      t90 = t91.
      IF t90 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t90 TO UPPER CASE.
      ELSE.
        t90 = zlnt_runtime_uppe_91169605024d=>full( t90 ).
      ENDIF.
      DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t122->has = abap_true.
      t122->value = t90.
      t88 = t122.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      IF t49 IS BOUND.
        t124 = t49->has.
      ENDIF.
      IF t88 IS BOUND.
        t125 = t88->has.
      ENDIF.
      IF t124 = t125.
        IF t124 = abap_false.
          t86 = abap_true.
        ELSEIF t49->value = t88->value.
          t86 = abap_true.
        ENDIF.
      ENDIF.
      IF t86 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_abap_file.
        t129 = t3.
        DATA t131 TYPE REF TO zcl_lnt_position.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        t132 = t44->get_last_token( ).
        DATA t136 TYPE f.
        t136 = t132->start->row.
        DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t143 = t132->start->col.
        DATA t149 TYPE f.
        t149 = strlen( t132->str ).
        DATA(t154) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t154->has = abap_true.
        t154->value = t149.
        t131 = NEW zcl_lnt_position( i_row = t136 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t143 right = t154 op = `+` ) ).
        DATA t156 TYPE string.
        DATA(t157) = |\n  METHOD |.
        DATA t158 TYPE string.
        DATA(t160) = strlen( t2 ).
        t158 = t2.
        TRANSLATE t158 TO LOWER CASE.
        DATA(t161) = strlen( t157 ).
        t156 = |{ t157 }{ t158 }|.
        DATA(t163) = strlen( t156 ).
        result = zcl_lnt_edit_helper=>insert_at( i_file = t129 i_pos = t131 i_text = |{ t156 }{ |.\n    RETURN. " todo, implement method\n  ENDMETHOD.| }| ).
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_interface.
    DATA(t1) = i_identifier.
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    t3 = me->find_interface_by_name( i_name = t2 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA(t16) = |Implemented interface "|.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t2 }|.
      DATA(t20) = strlen( t15 ).
      t14 = |{ t15 }{ |" not found| }|.
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t31 TYPE string.
      DATA(t32) = |Checks for abstract methods and methods from interfaces whic|.
      t32 = t32 && |h need implementing.|.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t36) = |INCLUDE programs are only checked in connection with their m|.
      t36 = t36 && |ain programs.|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t33 = t37.
      DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t43.
      t43->load( ).
      APPEND |Syntax| TO t43->items.
      t43->save( ).
      t43->load( ).
      APPEND |Quickfix| TO t43->items.
      t43->save( ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t31 i_bad_example = t51 i_good_example = t53 i_extended_information = t33 i_tags = t43 i_pragma = t55 i_pseudo_comment = t57 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t59 ).
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t60 ).
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t61 ).
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t62 ).
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t63 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t65 ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t67 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t69 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t71 ).
      ENDIF.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t73 ).
      ENDIF.
      t25 = t26->key.
      DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      result = zcl_lnt_issue=>at_identifier( i_identifier = t1 i_message_26cb = t14 i_key = t25 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t76 ).
      RETURN.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD find_interface_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    DATA t5 TYPE REF TO zcl_lnt_abap_object.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_object.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t13->has = abap_true.
    t13->value = |INTF|.
    t10 = t13.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t1.
    t7 = t9->get_object( i_type_9913 = t10 i_name = t18 ).
    IF t7 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t7.
      TRY.
          t6 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t20 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t6 = t20->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t6 IS BOUND.
      IF t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t5 ?= t6->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t5 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
      ENDIF.
    ENDIF.
    t4 = t5.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t29 = me->obj->parsed.
      DATA t34 TYPE REF TO zcl_lnt_abap_file.
      DATA t35 TYPE REF TO object.
      DATA(t36) = VALUE i( ).
      DO.
        t29->load( ).
        IF t36 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t29->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA t39 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        t39 = t34->info->gt_intrfc_dfntn_by_nm( i_name = t1 ).
        IF xsdbool( t39 IS BOUND ) = abap_true.
          t2 = t39.
          EXIT.
        ENDIF.
      ENDDO.
    ELSE.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t57 TYPE REF TO zif_lnt_abap_file_information.
      DATA t59 TYPE REF TO zcl_lnt_abap_file.
      t59 = t4->get_main_abap_file( ).
      DATA t63 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t59 IS INITIAL ) = abap_true.
      ELSE.
        t63 = t59->info.
      ENDIF.
      t57 = t63.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t57 IS INITIAL ) = abap_true.
      ELSE.
        t73 = t57->list_interface_definitions( ).
      ENDIF.
      t55 = t73.
      DATA t80 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      IF xsdbool( t55 IS INITIAL ) = abap_true.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t85 = t55.
        DATA t87 TYPE REF TO object.
        t85->load( ).
        READ TABLE t85->items INDEX 1 INTO t87.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t88 ?= t87.
          DATA t89 TYPE REF TO object.
          t89 = t88->as_ref( ).
          t84 ?= t89.
        ELSE.
          t84 ?= t87.
        ENDIF.
        t80 = t84.
      ENDIF.
      t2 = t80.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_interface_methods.
    DATA(t1) = i_idef.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->methods.
    DATA t8 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
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
      DATA t14 TYPE REF TO zcl_lnt_imethod.
      DATA t15 TYPE string.
      t15 = t1->name.
      t14 = NEW zcl_lnt_imethod( i_object_name = t15 i_method = t8 ).
      CREATE OBJECT t14->zlnt_view_ownkeys_b0e8086400eb.
      t14->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectName` p1 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t14->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t21 ).
      ENDIF.
      CREATE OBJECT t14->zlnt_json_ownkeys_70e5fd461788.
      t14->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = |objectName| p1 = t23 ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      IF t14->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t25 ).
      ENDIF.
      t4->load( ).
      APPEND t14 TO t4->items.
      t4->save( ).
    ENDDO.
    t2 = t4.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t27 = t1->interfaces.
    DATA t29 TYPE REF TO zcl_lnt_info_implementing.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t27->load( ).
      IF t31 >= lines( t27->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t27->items INDEX t31 + 1 INTO t30.
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
      DATA t34 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      t36 = t1->identifier.
      DATA t38 TYPE string.
      t38 = t29->name.
      t34 = me->find_interface( i_identifier = t36 i_name = t38 ).
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t41 = xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ).
      t40 = t41.
      IF t41 = abap_true.
        DATA t51 TYPE REF TO zif_lnt_union_eff0d09a.
        t51 = t34.
        t40 = xsdbool( xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_issue ) = abap_false ).
      ENDIF.
      IF t40 = abap_true.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t58 TYPE REF TO object.
        t58 = t34.
        t56 ?= t58.
        t54 = t56->methods.
        DATA t59 TYPE i.
        t54->load( ).
        t59 = lines( t54->items ).
        DATA t62 TYPE i.
        t62 = 0.
        DO.
          IF xsdbool( t62 < t59 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t69 TYPE REF TO zcl_lnt_info_method_definition.
          CLEAR t69.
          DATA t72 TYPE REF TO object.
          t72 = t54->get( p0 = t62 ).
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          CLEAR t69.
          IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t73 ?= t72.
            DATA t74 TYPE REF TO object.
            t74 = t73->as_ref( ).
            t69 ?= t74.
          ELSE.
            t69 ?= t72.
          ENDIF.
          DATA t76 TYPE REF TO zcl_lnt_imethod.
          DATA t77 TYPE string.
          DATA t79 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          DATA t81 TYPE REF TO object.
          t81 = t34.
          t79 ?= t81.
          t77 = t79->name.
          t76 = NEW zcl_lnt_imethod( i_object_name = t77 i_method = t69 ).
          CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
          t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectName` p1 = t84 ).
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t85 ).
          ENDIF.
          CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
          t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |objectName| p1 = t87 ).
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |method| p1 = t89 ).
          ENDIF.
          t2->load( ).
          APPEND t76 TO t2->items.
          t2->save( ).
          DATA(t92) = 1.
          t62 = t62 + t92.
        ENDDO.
        CLEAR t53.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_class.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
    t2 = me->lookup_definition_in_object( i_name = t1 ).
    DATA t5 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t8) = me->obj.
    t5 = me->lkp_implmnttn_in_objct( i_name = t1 i_obj_1ed0 = t8 ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t2 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      t9 = xsdbool( t5 IS BOUND ).
    ENDIF.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      t16 = NEW zcl_lnt_shape_e8fb1d71( i_def = t2 i_impl = t5 ).
      CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
      t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t29 ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `impl` p1 = t30 ).
      ENDIF.
      CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
      t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t32 ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |impl| p1 = t34 ).
      ENDIF.
      result = t16.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_class.
    DATA t37 TYPE REF TO zcl_lnt_class.
    DATA(t39) = me->reg.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = |CLAS|.
    t40 = t43.
    DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t48->has = abap_true.
    t48->value = t1.
    DATA t50 TYPE REF TO object.
    t50 = t39->get_object( i_type_9913 = t40 i_name = t48 ).
    t37 ?= t50.
    t36 = t37.
    IF xsdbool( t36 IS BOUND ) = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_class.
      t54 = t36.
      DATA t58 TYPE REF TO zif_lnt_abap_file_information.
      DATA t60 TYPE REF TO zcl_lnt_abap_file.
      t60 = t54->get_main_abap_file( ).
      DATA t63 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t60 IS INITIAL ) = abap_true.
      ELSE.
        t63 = t60->info.
      ENDIF.
      t58 = t63.
      DATA t73 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t58 IS INITIAL ) = abap_true.
      ELSE.
        DATA t78 TYPE REF TO zif_lnt_abap_file_information.
        t78 = t58.
        DATA t80 TYPE string.
        DATA t81 TYPE REF TO zcl_lnt_abstract_object.
        t81 = t54.
        t80 = t81->name.
        t73 = t78->get_class_definition_by_name( i_name = t80 ).
      ENDIF.
      t2 = t73.
      t5 = me->lkp_implmnttn_in_objct( i_name = t1 i_obj_1ed0 = t36 ).
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE abap_bool.
      t90 = xsdbool( t2 IS BOUND ).
      t89 = t90.
      IF t90 = abap_true.
        t89 = xsdbool( t5 IS BOUND ).
      ENDIF.
      IF t89 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        t96 = NEW zcl_lnt_shape_e8fb1d71( i_def = t2 i_impl = t5 ).
        CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
        t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t109 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `impl` p1 = t110 ).
        ENDIF.
        CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
        t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |def| p1 = t112 ).
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |impl| p1 = t114 ).
        ENDIF.
        result = t96.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD check_interfaces.
    DATA(t1) = i_def.
    DATA(t2) = i_impl.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->interfaces.
    DATA t7 TYPE REF TO zcl_lnt_info_implementing.
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
      DATA t12 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      t14 = t1->identifier.
      DATA t16 TYPE string.
      t16 = t7->name.
      t12 = me->find_interface( i_identifier = t14 i_name = t16 ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      t20 = xsdbool( t12 IS INITIAL ).
      t19 = t20.
      IF t20 = abap_false.
        t19 = xsdbool( t7->partial = abap_true ).
      ENDIF.
      t18 = t19.
      IF t19 = abap_false.
        t18 = xsdbool( t7->all_abstract = abap_true ).
      ENDIF.
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_issue ) = abap_true.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t38.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        DATA t43 TYPE REF TO object.
        t43 = t12.
        t41 ?= t43.
        t38->load( ).
        APPEND t41 TO t38->items.
        t38->save( ).
        result = t38.
        RETURN.
      ENDIF.

      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t48 TYPE REF TO object.
      t48 = t12.
      t46 ?= t48.
      t45 = me->find_interface_methods( i_idef = t46 ).
      DATA t49 TYPE REF TO zcl_lnt_imethod.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      DATA(t51) = VALUE i( ).
      DO.
        t45->load( ).
        IF t51 >= lines( t45->items ).
          EXIT.
        ENDIF.
        CLEAR t50.
        READ TABLE t45->items INDEX t51 + 1 INTO t50.
        t51 = t51 + 1.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        CLEAR t49.
        IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t52 ?= t50.
          DATA t53 TYPE REF TO object.
          t53 = t52->as_ref( ).
          t49 ?= t53.
        ELSE.
          t49 ?= t50.
        ENDIF.
        DATA t54 TYPE abap_bool.
        DATA t55 TYPE abap_bool.
        t55 = xsdbool( t49->method->is_default_ignore = abap_true ).
        t54 = t55.
        IF t55 = abap_false.
          t54 = xsdbool( t49->method->is_default_fail = abap_true ).
        ENDIF.
        IF t54 = abap_true.
          CONTINUE.
        ENDIF.
        IF me->is_abstract( i_m = t49 i_interface_info = t7 i_def = t1 ) = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t70 = t1->is_abstract.
          IF t70 IS BOUND.
            IF t70->has = abap_true.
              t69 = xsdbool( t70->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          IF t69 = abap_true.
            CONTINUE.
          ELSE.
          ENDIF.
        ENDIF.
        DATA t73 TYPE abap_bool.
        t73 = me->is_implemented( i_m = t49 i_def = t1 i_impl = t2 ).
        IF xsdbool( t73 = abap_false ) = abap_true.
          DATA t78 TYPE string.
          DATA t80 TYPE string.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA(t83) = |Implement method "|.
          DATA t84 TYPE string.
          t84 = t49->method->name.
          DATA(t87) = strlen( t83 ).
          t82 = |{ t83 }{ t84 }|.
          DATA(t89) = strlen( t82 ).
          t81 = |{ t82 }{ |" from interface "| }|.
          DATA t90 TYPE string.
          t90 = t49->object_name.
          DATA(t92) = strlen( t81 ).
          t80 = |{ t81 }{ t90 }|.
          DATA(t94) = strlen( t80 ).
          t78 = |{ t80 }{ |"| }|.
          IF xsdbool( t2 IS BOUND ) = abap_true.
            DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t99 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            t99 = t2.
            DATA t102 TYPE string.
            DATA t103 TYPE string.
            t103 = t49->object_name.
            DATA(t106) = strlen( t103 ).
            t102 = |{ t103 }{ |~| }|.
            DATA t107 TYPE string.
            t107 = t49->method->name.
            DATA(t110) = strlen( t102 ).
            t98 = me->build_fix( i_impl = t99 i_method_name = |{ t102 }{ t107 }| ).
            DATA t112 TYPE REF TO zcl_lnt_issue.
            CLEAR t112.
            DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
            t113 = t2->identifier.
            DATA(t117) = VALUE string( ).
            DATA t118 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t123 TYPE string.
            DATA(t124) = |Checks for abstract methods and methods from interfaces whic|.
            t124 = t124 && |h need implementing.|.
            t123 = t124.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            DATA(t128) = |INCLUDE programs are only checked in connection with their m|.
            t128 = t128 && |ain programs.|.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t128.
            t125 = t129.
            DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t131.
            DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t135.
            t135->load( ).
            APPEND |Syntax| TO t135->items.
            t135->save( ).
            t135->load( ).
            APPEND |Quickfix| TO t135->items.
            t135->save( ).
            t131 = t135.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t149.
            t118 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t123 i_bad_example = t143 i_good_example = t145 i_extended_information = t125 i_tags = t131 i_pragma = t147 i_pseudo_comment = t149 ).
            CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
            t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t151.
            t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
            DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t152.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t152 ).
            ENDIF.
            DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t153.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t153 ).
            ENDIF.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t154.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t154 ).
            ENDIF.
            DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t155.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t155 ).
            ENDIF.
            CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
            t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t157.
            t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t157 ).
            DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t159.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t159 ).
            ENDIF.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t161 ).
            ENDIF.
            DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t163.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t163 ).
            ENDIF.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t165 ).
            ENDIF.
            t117 = t118->key.
            t112 = zcl_lnt_issue=>at_identifier( i_identifier = t113 i_message_26cb = t78 i_key = t117 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t98 ).
            t3->load( ).
            APPEND t112 TO t3->items.
            t3->save( ).
          ELSE.
            DATA t172 TYPE REF TO zcl_lnt_issue.
            CLEAR t172.
            DATA t173 TYPE REF TO zcl_lnt_fi_identifier.
            t173 = t1->identifier.
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t182 TYPE string.
            DATA(t183) = |Checks for abstract methods and methods from interfaces whic|.
            t183 = t183 && |h need implementing.|.
            t182 = t183.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            DATA(t187) = |INCLUDE programs are only checked in connection with their m|.
            t187 = t187 && |ain programs.|.
            DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t188->has = abap_true.
            t188->value = t187.
            t184 = t188.
            DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t190.
            DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t194.
            t194->load( ).
            APPEND |Syntax| TO t194->items.
            t194->save( ).
            t194->load( ).
            APPEND |Quickfix| TO t194->items.
            t194->save( ).
            t190 = t194.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t204.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t208.
            t177 = NEW zcl_lnt_irule_metadata( i_key = |implement_methods| i_title = |Implement methods| i_short_description = t182 i_bad_example = t202 i_good_example = t204 i_extended_information = t184 i_tags = t190 i_pragma = t206 i_pseudo_comment = t208 ).
            CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
            t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t210 ).
            DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t211.
            IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t211 ).
            ENDIF.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t212 ).
            ENDIF.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t213 ).
            ENDIF.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t214 ).
            ENDIF.
            CREATE OBJECT t177->zlnt_json_ownkeys_70e5fd461788.
            t177->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t216 ).
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t218 ).
            ENDIF.
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t220 ).
            ENDIF.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t222 ).
            ENDIF.
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t224.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t224 ).
            ENDIF.
            t176 = t177->key.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t225 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t227 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t227.
            t172 = zcl_lnt_issue=>at_identifier( i_identifier = t173 i_message_26cb = t78 i_key = t176 i_severity = t225 i_fix = t227 ).
            t3->load( ).
            APPEND t172 TO t3->items.
            t3->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = i_m.
    DATA(t3) = i_def.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = i_interface_info->abstract_methods.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    t8 = t1->method->name.
    DATA(t11) = strlen( t8 ).
    t7 = t8.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    IF t5->includes( p0 = t7 ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t3->super_class_name.
    IF t15 IS BOUND.
      IF t15->has = abap_true.
        t14 = xsdbool( strlen( t15->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF xsdbool( t14 = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    DATA t20 TYPE string.
    t20 = t3->super_class_name->value.
    t18 = me->find_class( i_name = t20 ).
    DATA t23 TYPE REF TO zcl_lnt_info_implementing.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t29 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    t29 = t18.
    DATA t31 TYPE REF TO zcl_lnt_info_class_definition.
    IF xsdbool( t29 IS INITIAL ) = abap_true.
    ELSE.
      t31 = t29->def.
    ENDIF.
    t27 = t31.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t27 IS INITIAL ) = abap_true.
    ELSE.
      t38 = t27->interfaces.
    ENDIF.
    t25 = t38.
    DATA t45 TYPE REF TO zcl_lnt_info_implementing.
    IF xsdbool( t25 IS INITIAL ) = abap_true.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t50 = t25.
      DATA t53 TYPE i.
      t50->load( ).
      t53 = lines( t50->items ).
      DATA t56 TYPE i.
      t56 = 0.
      DATA t58 TYPE REF TO zcl_lnt_info_implementing.
      DO.
        IF xsdbool( t56 < t53 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t63 TYPE REF TO zcl_lnt_info_implementing.
        CLEAR t63.
        DATA t65 TYPE REF TO zcl_lnt_info_implementing.
        CLEAR t65.
        DATA t68 TYPE REF TO object.
        t68 = t50->get( p0 = t56 ).
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        CLEAR t65.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t69 ?= t68.
          DATA t70 TYPE REF TO object.
          t70 = t69->as_ref( ).
          t65 ?= t70.
        ELSE.
          t65 ?= t68.
        ENDIF.
        t63 = t65.
        DATA t72 TYPE string.
        DATA t73 TYPE string.
        t73 = t63->name.
        DATA(t75) = strlen( t73 ).
        t72 = t73.
        IF t72 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t72 TO UPPER CASE.
        ELSE.
          t72 = zlnt_runtime_uppe_91169605024d=>full( t72 ).
        ENDIF.
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        t77 = t1->object_name.
        DATA(t79) = strlen( t77 ).
        t76 = t77.
        IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t76 TO UPPER CASE.
        ELSE.
          t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
        ENDIF.
        IF xsdbool( t72 = t76 ) = abap_true.
          t58 = t63.
          EXIT.
        ENDIF.
        DATA(t86) = 1.
        t56 = t56 + t86.
      ENDDO.
      t45 = t58.
    ENDIF.
    t23 = t45.
    DATA t88 TYPE abap_bool.
    DATA t89 TYPE abap_bool.
    t89 = xsdbool( t18 IS BOUND ).
    t88 = t89.
    IF t89 = abap_true.
      t88 = xsdbool( t23 IS BOUND ).
    ENDIF.
    IF t88 = abap_true.
      DATA t95 TYPE REF TO zcl_lnt_info_implementing.
      t95 = t23.
      DATA t97 TYPE REF TO zcl_lnt_info_class_definition.
      t97 = t18->def.
      result = me->is_abstract( i_m = t1 i_interface_info = t95 i_def = t97 ).
      RETURN.
    ENDIF.
    result = abap_false.


  ENDMETHOD.

  METHOD is_implemented.
    DATA(t1) = i_m.
    DATA(t2) = i_def.
    DATA(t3) = i_impl.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t12 TYPE string.
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    t15 = t1->object_name.
    DATA(t18) = strlen( t15 ).
    t14 = |{ t15 }{ |~| }|.
    DATA t19 TYPE string.
    t19 = t1->method->name.
    DATA(t22) = strlen( t14 ).
    t12 = |{ t14 }{ t19 }|.
    DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 = t3->methods.
    DATA t29 TYPE i.
    t25->load( ).
    t29 = lines( t25->items ).
    DATA t32 TYPE i.
    t32 = 0.
    DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
    DO.
      IF xsdbool( t32 < t29 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t39.
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t41.
      DATA t44 TYPE REF TO object.
      t44 = t25->get( p0 = t32 ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t41.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t44.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t41 ?= t46.
      ELSE.
        t41 ?= t44.
      ENDIF.
      t39 = t41.
      DATA(t48) = VALUE string( ).
      DATA(t49) = VALUE string( ).
      DATA t53 TYPE string.
      t53 = t39->token->str.
      DATA(t61) = VALUE string( ).
      DATA(t62) = t53.
      DATA(t63) = 0.
      DATA(t64) = 1.
      DATA(t65) = strlen( t62 ).
      IF t63 < 0.
        t63 = t63 + t65.
        IF t63 < 0.
          t63 = 0.
        ENDIF.
      ENDIF.
      IF t63 > t65 OR t64 <= 0.
      ELSE.
        IF t64 > t65 - t63.
          t64 = t65 - t63.
        ENDIF.
        t61 = t62+t63(t64).
      ENDIF.
      IF xsdbool( t61 = |!| ) = abap_true.
        DATA t68 TYPE string.
        t68 = t53.
        DATA(t70) = VALUE string( ).
        DATA(t72) = 1.
        DATA t73 TYPE i.
        t73 = strlen( t68 ).
        DATA(t76) = strlen( t68 ).
        IF t72 < 0.
          t72 = t72 + t76.
          IF t72 < 0.
            t72 = 0.
          ENDIF.
        ENDIF.
        IF t72 > t76 OR t73 <= 0.
        ELSE.
          IF t73 > t76 - t72.
            t73 = t76 - t72.
          ENDIF.
          t70 = t68+t72(t73).
        ENDIF.
        t53 = t70.
      ENDIF.
      t49 = t53.
      DATA(t78) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      DATA t79 TYPE string.
      DATA(t81) = strlen( t12 ).
      t79 = t12.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      IF xsdbool( t48 = t79 ) = abap_true.
        t34 = t39.
        EXIT.
      ENDIF.
      DATA(t88) = 1.
      t32 = t32 + t88.
    ENDDO.
    t23 = t34.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t97 = t2->aliases_62bb.
      DATA t99 TYPE REF TO zcl_lnt_info_alias.
      DATA t100 TYPE REF TO object.
      DATA(t101) = VALUE i( ).
      DO.
        t97->load( ).
        IF t101 >= lines( t97->items ).
          EXIT.
        ENDIF.
        CLEAR t100.
        READ TABLE t97->items INDEX t101 + 1 INTO t100.
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
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        t106 = t99->component.
        DATA(t108) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA t109 TYPE string.
        DATA(t111) = strlen( t12 ).
        t109 = t12.
        IF t109 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t109 TO UPPER CASE.
        ELSE.
          t109 = zlnt_runtime_uppe_91169605024d=>full( t109 ).
        ENDIF.
        IF xsdbool( t105 = t109 ) = abap_true.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t113 = t3->methods.
          DATA t117 TYPE i.
          t113->load( ).
          t117 = lines( t113->items ).
          DATA t120 TYPE i.
          t120 = 0.
          DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t122.
          DO.
            IF xsdbool( t120 < t117 ) = abap_false.
              EXIT.
            ENDIF.
            DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t127.
            DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t129.
            DATA t132 TYPE REF TO object.
            t132 = t113->get( p0 = t120 ).
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            CLEAR t129.
            IF t132 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t133 ?= t132.
              DATA t134 TYPE REF TO object.
              t134 = t133->as_ref( ).
              t129 ?= t134.
            ELSE.
              t129 ?= t132.
            ENDIF.
            t127 = t129.
            DATA(t136) = VALUE string( ).
            DATA(t137) = VALUE string( ).
            DATA t141 TYPE string.
            t141 = t127->token->str.
            DATA(t149) = VALUE string( ).
            DATA(t150) = t141.
            DATA(t151) = 0.
            DATA(t152) = 1.
            DATA(t153) = strlen( t150 ).
            IF t151 < 0.
              t151 = t151 + t153.
              IF t151 < 0.
                t151 = 0.
              ENDIF.
            ENDIF.
            IF t151 > t153 OR t152 <= 0.
            ELSE.
              IF t152 > t153 - t151.
                t152 = t153 - t151.
              ENDIF.
              t149 = t150+t151(t152).
            ENDIF.
            IF xsdbool( t149 = |!| ) = abap_true.
              DATA t156 TYPE string.
              t156 = t141.
              DATA(t158) = VALUE string( ).
              DATA(t160) = 1.
              DATA t161 TYPE i.
              t161 = strlen( t156 ).
              DATA(t164) = strlen( t156 ).
              IF t160 < 0.
                t160 = t160 + t164.
                IF t160 < 0.
                  t160 = 0.
                ENDIF.
              ENDIF.
              IF t160 > t164 OR t161 <= 0.
              ELSE.
                IF t161 > t164 - t160.
                  t161 = t164 - t160.
                ENDIF.
                t158 = t156+t160(t161).
              ENDIF.
              t141 = t158.
            ENDIF.
            t137 = t141.
            DATA(t166) = strlen( t137 ).
            t136 = t137.
            IF t136 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t136 TO UPPER CASE.
            ELSE.
              t136 = zlnt_runtime_uppe_91169605024d=>full( t136 ).
            ENDIF.
            DATA t167 TYPE string.
            DATA t168 TYPE string.
            t168 = t99->name.
            DATA(t170) = strlen( t168 ).
            t167 = t168.
            IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t167 TO UPPER CASE.
            ELSE.
              t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
            ENDIF.
            IF xsdbool( t136 = t167 ) = abap_true.
              t122 = t127.
              EXIT.
            ENDIF.
            DATA(t177) = 1.
            t120 = t120 + t177.
          ENDDO.
          t23 = t122.
          EXIT.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = VALUE abap_bool( ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t180 = xsdbool( t23 IS INITIAL ).
    t179 = t180.
    IF t180 = abap_true.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t188 = t2->super_class_name.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t194) = VALUE abap_bool( ).
      IF t188 IS INITIAL.
        t194 = abap_true.
      ELSEIF t188->has = abap_false.
        t194 = abap_true.
      ENDIF.
      t179 = xsdbool( t194 = abap_false ).
    ENDIF.
    IF t179 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA t198 TYPE string.
      t198 = t2->super_class_name->value.
      t196 = me->find_class( i_name = t198 ).
      IF xsdbool( t196 IS BOUND ) = abap_true.
        DATA t205 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t206 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        t206 = t196.
        DATA t210 TYPE REF TO zcl_lnt_info_class_definition.
        IF xsdbool( t206 IS INITIAL ) = abap_true.
        ELSE.
          t210 = t206->def.
        ENDIF.
        t205 = t210.
        DATA t219 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        t219 = t196.
        DATA t223 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        IF xsdbool( t219 IS INITIAL ) = abap_true.
        ELSE.
          t223 = t219->impl.
        ENDIF.
        result = me->is_implemented( i_m = t1 i_def = t205 i_impl = t223 ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t23 IS INITIAL ) = abap_true.
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t237 = t2->interfaces.
      DATA t239 TYPE REF TO zcl_lnt_info_implementing.
      DATA t240 TYPE REF TO object.
      DATA(t241) = VALUE i( ).
      DO.
        t237->load( ).
        IF t241 >= lines( t237->items ).
          EXIT.
        ENDIF.
        CLEAR t240.
        READ TABLE t237->items INDEX t241 + 1 INTO t240.
        t241 = t241 + 1.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        CLEAR t239.
        IF t240 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t242 ?= t240.
          DATA t243 TYPE REF TO object.
          t243 = t242->as_ref( ).
          t239 ?= t243.
        ELSE.
          t239 ?= t240.
        ENDIF.
        DATA t244 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t246 TYPE string.
        t246 = t239->name.
        t244 = me->find_interface_by_name( i_name = t246 ).
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF xsdbool( t244 IS INITIAL ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t255 TYPE abap_bool.
        t255 = me->via_alias_in_interface( i_m = t1 i_intf = t244 i_impl = t3 ).
        IF t255 = abap_true.
          result = t255.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = xsdbool( xsdbool( t23 IS INITIAL ) = abap_false ).

  ENDMETHOD.

  METHOD via_alias_in_interface.
    DATA(t1) = i_m.
    DATA(t2) = i_intf.
    DATA(t3) = i_impl.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t2->aliases_62bb.
    DATA t6 TYPE REF TO zcl_lnt_info_alias.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      t13 = t6->component.
      DATA(t15) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      t19 = t1->object_name.
      DATA(t21) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      DATA(t23) = strlen( t18 ).
      t17 = |{ t18 }{ |~| }|.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      t25 = t1->method->name.
      DATA(t28) = strlen( t25 ).
      t24 = t25.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      DATA(t29) = strlen( t17 ).
      IF xsdbool( t12 = |{ t17 }{ t24 }| ) = abap_true.
        DATA t30 TYPE string.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        t33 = t2->name.
        DATA(t36) = strlen( t33 ).
        t32 = |{ t33 }{ |~| }|.
        DATA t37 TYPE string.
        t37 = t6->name.
        DATA(t39) = strlen( t32 ).
        t30 = |{ t32 }{ t37 }|.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t42 = t3->methods.
        DATA t45 TYPE i.
        t42->load( ).
        t45 = lines( t42->items ).
        DATA t48 TYPE i.
        t48 = 0.
        DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t50.
        DO.
          IF xsdbool( t48 < t45 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t55.
          DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t57.
          DATA t60 TYPE REF TO object.
          t60 = t42->get( p0 = t48 ).
          DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t61.
          CLEAR t57.
          IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t61 ?= t60.
            DATA t62 TYPE REF TO object.
            t62 = t61->as_ref( ).
            t57 ?= t62.
          ELSE.
            t57 ?= t60.
          ENDIF.
          t55 = t57.
          DATA(t64) = VALUE string( ).
          DATA(t65) = VALUE string( ).
          DATA t69 TYPE string.
          t69 = t55->token->str.
          DATA(t77) = VALUE string( ).
          DATA(t78) = t69.
          DATA(t79) = 0.
          DATA(t80) = 1.
          DATA(t81) = strlen( t78 ).
          IF t79 < 0.
            t79 = t79 + t81.
            IF t79 < 0.
              t79 = 0.
            ENDIF.
          ENDIF.
          IF t79 > t81 OR t80 <= 0.
          ELSE.
            IF t80 > t81 - t79.
              t80 = t81 - t79.
            ENDIF.
            t77 = t78+t79(t80).
          ENDIF.
          IF xsdbool( t77 = |!| ) = abap_true.
            DATA t84 TYPE string.
            t84 = t69.
            DATA(t86) = VALUE string( ).
            DATA(t88) = 1.
            DATA t89 TYPE i.
            t89 = strlen( t84 ).
            DATA(t92) = strlen( t84 ).
            IF t88 < 0.
              t88 = t88 + t92.
              IF t88 < 0.
                t88 = 0.
              ENDIF.
            ENDIF.
            IF t88 > t92 OR t89 <= 0.
            ELSE.
              IF t89 > t92 - t88.
                t89 = t92 - t88.
              ENDIF.
              t86 = t84+t88(t89).
            ENDIF.
            t69 = t86.
          ENDIF.
          t65 = t69.
          DATA(t94) = strlen( t65 ).
          t64 = t65.
          IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t64 TO UPPER CASE.
          ELSE.
            t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
          ENDIF.
          DATA t95 TYPE string.
          DATA(t97) = strlen( t30 ).
          t95 = t30.
          IF t95 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t95 TO UPPER CASE.
          ELSE.
            t95 = zlnt_runtime_uppe_91169605024d=>full( t95 ).
          ENDIF.
          IF xsdbool( t64 = t95 ) = abap_true.
            t50 = t55.
            EXIT.
          ENDIF.
          DATA(t104) = 1.
          t48 = t48 + t104.
        ENDDO.
        IF xsdbool( t50 IS BOUND ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_implement_methods_conf.
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
        t1 = NEW zcl_lnt_implement_methods_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_im_mt_ts_im_mth( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1538_7241e4111af0.
  ENDMETHOD.
ENDCLASS.
