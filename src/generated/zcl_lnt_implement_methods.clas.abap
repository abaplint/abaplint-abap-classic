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
    DATA(t1) = NEW zcl_lnt_implement_methods_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |implement_methods|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Implement methods|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for abstract methods and methods from interfaces whic|.
    t7 = t7 && |h need implementing.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |INCLUDE programs are only checked in connection with their m|.
      t11 = t11 && |ain programs.|.
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
      DATA(t21) = |Syntax|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
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
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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

  METHOD gt_cn_in_sr_rl_im_mt_ts_im_mth.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_im_mt_ts_im_mth.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
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
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA(t11) = t8.
    t10 = t11->structure.
    t7 = t10.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t6.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t5 = t14.
    IF t5 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t16.
      result = t16.
      RETURN.
    ELSE.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t2.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_ob_program ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zcl_lnt_ob_program.
        DATA t23 TYPE REF TO zcl_lnt_ob_program.
        DATA(t24) = t2.
        t23 ?= t24.
        t22 = t23.
        DATA t25 TYPE abap_bool.
        DATA(t26) = t22.
        t26->parse_xml( ).
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE REF TO zcl_lnt_shape_d77da4ed.
        DATA t29 TYPE REF TO zcl_lnt_shape_d77da4ed.
        DATA(t30) = t22.
        t29 = t30->parsed_xml.
        t28 = t29.
        t27 = t28->is_include.
        t25 = t27.
        t21 = t25.
        DATA(t31) = abap_true.
        t20 = xsdbool( t21 = t31 ).
        t17 = t20.
      ENDIF.
      IF t17 = abap_true.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t32.
        result = t32.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t33) = t2.
    me->obj = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zif_lnt_abap_file_information.
    DATA t36 TYPE REF TO zcl_lnt_abap_file.
    DATA(t37) = t1.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t39) = t36.
    t38 = t39->info.
    t35 = t38.
    t34 = t35->list_class_definitions( ).
    DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
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
      DATA t46 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t47 TYPE string.
      DATA(t48) = t40.
      t47 = t48->name.
      DATA(t49) = t2.
      t46 = me->lkp_implmnttn_in_objct( i_name = t47 i_obj_1ed0 = t49 ).
      t45 = t46.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t51) = t3.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t53) = t40.
      DATA(t54) = t45.
      t52 = me->check_class( i_def = t53 i_impl = t54 ).
      t50 = t51->concat( p0 = t52 ).
      t3 = t50.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t56) = t3.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t58) = t40.
      DATA(t59) = t45.
      t57 = me->check_interfaces( i_def = t58 i_impl = t59 ).
      t55 = t56->concat( p0 = t57 ).
      t3 = t55.
    ENDDO.
    DATA(t60) = t3.
    result = t60.

  ENDMETHOD.

  METHOD lkp_implmnttn_in_objct.
    DATA(t1) = i_name.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->parsed.
    t3 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA t14 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t15 TYPE REF TO zif_lnt_abap_file_information.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      DATA(t17) = t8.
      t16 = t17.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t19) = t16.
      t18 = t19->info.
      t15 = t18.
      DATA(t20) = t1.
      t14 = t15->gt_clss_implmnttn_by_nm( i_name = t20 ).
      t13 = t14.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t23) = t13.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t24 = t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t22.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      t26 = xsdbool( t27 = abap_false ).
      t21 = t26.
      IF t21 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t29.
        DATA(t30) = abap_true.
        IF t30 = abap_true.
          DATA t31 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t32) = t13.
          t31 = t32.
          t29 = t31.
        ELSE.
          DATA t33 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t33.
          t29 = t33.
        ENDIF.
        result = t29.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t34 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t34.
    result = t34.

  ENDMETHOD.

  METHOD lookup_definition_in_object.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    DATA(t4) = me->obj.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t3.
    t5 = t6->parsed.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      DATA t15 TYPE REF TO zcl_lnt_abap_file.
      DATA(t16) = t7.
      t15 = t16.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t18) = t15.
      t17 = t18->info.
      t14 = t17.
      DATA(t19) = t1.
      t13 = t14->get_class_definition_by_name( i_name = t19 ).
      t12 = t13.
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t22) = t12.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      t23 = t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t21.
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      t25 = xsdbool( t26 = abap_false ).
      t20 = t25.
      IF t20 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t28.
        DATA(t29) = abap_true.
        IF t29 = abap_true.
          DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t31) = t12.
          t30 = t31.
          t28 = t30.
        ELSE.
          DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t32.
          t28 = t32.
        ENDIF.
        result = t28.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t33 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t33.
    result = t33.

  ENDMETHOD.

  METHOD check_class.
    DATA(t1) = i_def.
    DATA(t2) = i_impl.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->methods.
    DATA t7 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t17) = t2.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t16.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t21.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t23 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        DATA(t24) = t16.
        t23 = t24.
        t22 = t23->methods.
        t18 = t22.
      ENDIF.
      t15 = t18.
      t14 = t15.
      DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t14.
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t28.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t14.
        t31 = t32.
        t30 = t31.
        DATA t33 TYPE i.
        DATA t34 TYPE i.
        DATA(t35) = t30.
        t35->load( ).
        t34 = lines( t35->items ).
        t33 = t34.
        DATA t36 TYPE i.
        DATA(t37) = 0.
        t36 = t37.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t39.
        t38 = t39.
        DO.
          DATA t40 TYPE abap_bool.
          DATA(t41) = t36.
          DATA(t42) = t33.
          t40 = xsdbool( t41 < t42 ).
          IF t40 = abap_false.
            EXIT.
          ENDIF.
          DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t43.
          DATA t44 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t44.
          DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t45.
          DATA(t46) = t30.
          DATA(t47) = t36.
          DATA t48 TYPE REF TO object.
          t48 = t46->get( p0 = t47 ).
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
          t44 = t45.
          t43 = t44.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE string( ).
          DATA(t53) = VALUE string( ).
          DATA t54 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t55) = t43.
          t54 = t55.
          DATA(t56) = VALUE string( ).
          DATA t57 TYPE string.
          DATA t58 TYPE string.
          DATA t59 TYPE REF TO zcl_lnt_abstract_token.
          DATA t60 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t61) = t54.
          t60 = t61->token.
          t59 = t60.
          DATA t62 TYPE string.
          DATA(t63) = t59.
          t62 = t63->str.
          t58 = t62.
          t57 = t58.
          DATA(t64) = VALUE abap_bool( ).
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
            CLEAR t65.
          ELSE.
            IF t68 > t69 - t67.
              t68 = t69 - t67.
            ENDIF.
            t65 = t66+t67(t68).
          ENDIF.
          DATA(t70) = |!|.
          t64 = xsdbool( t65 = t70 ).
          IF t64 = abap_true.
            DATA(t71) = VALUE string( ).
            DATA t72 TYPE string.
            DATA(t73) = t57.
            t72 = t73.
            DATA(t74) = VALUE string( ).
            DATA(t75) = t72.
            DATA(t76) = 1.
            DATA t77 TYPE i.
            DATA(t78) = t72.
            DATA(t79) = strlen( t78 ).
            t77 = t79.
            DATA(t80) = strlen( t75 ).
            IF t76 < 0.
              t76 = t76 + t80.
              IF t76 < 0.
                t76 = 0.
              ENDIF.
            ENDIF.
            IF t76 > t80 OR t77 <= 0.
              CLEAR t74.
            ELSE.
              IF t77 > t80 - t76.
                t77 = t80 - t76.
              ENDIF.
              t74 = t75+t76(t77).
            ENDIF.
            t71 = t74.
            t57 = t71.
          ENDIF.
          DATA(t81) = t57.
          t56 = t81.
          t53 = t56.
          DATA(t82) = strlen( t53 ).
          t52 = t53.
          IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t52 TO UPPER CASE.
          ELSE.
            t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
          ENDIF.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = t7.
          t84 = t85->name.
          DATA(t86) = strlen( t84 ).
          t83 = t84.
          IF t83 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t83 TO UPPER CASE.
          ELSE.
            t83 = zlnt_runtime_uppe_91169605024d=>full( t83 ).
          ENDIF.
          t51 = xsdbool( t52 = t83 ).
          IF t51 = abap_true.
            DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t87.
            DATA(t88) = abap_true.
            IF t88 = abap_true.
              DATA(t89) = t43.
              t87 = t89.
            ELSE.
              DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t90.
              t87 = t90.
            ENDIF.
            t38 = t87.
            EXIT.
          ENDIF.
          DATA t91 TYPE i.
          DATA(t92) = t36.
          DATA(t93) = 1.
          t91 = t92 + t93.
          t36 = t91.
        ENDDO.
        DATA(t94) = t38.
        t29 = t94.
        t25 = t29.
      ENDIF.
      t13 = t25.
      t12 = t13.
      DATA t95 TYPE abap_bool.
      DATA t96 TYPE abap_bool.
      DATA(t97) = t7.
      t96 = t97->is_abstract.
      DATA(t98) = abap_true.
      t95 = xsdbool( t96 = t98 ).
      IF t95 = abap_true.
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t101) = t12.
        t100 = t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t102 = t103.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = t100.
        IF t106 IS INITIAL.
          t105 = abap_true.
        ENDIF.
        t104 = xsdbool( t105 = abap_false ).
        t99 = t104.
        IF t99 = abap_true.
          DATA t107 TYPE REF TO zcl_lnt_issue.
          CLEAR t107.
          DATA t108 TYPE REF TO zcl_lnt_issue.
          CLEAR t108.
          DATA t109 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t110) = t12.
          t109 = t110.
          DATA t111 TYPE string.
          DATA t112 TYPE string.
          DATA(t113) = |Do not implement abstract method "|.
          DATA t114 TYPE string.
          DATA(t115) = t7.
          t114 = t115->name.
          DATA(t116) = strlen( t113 ).
          t112 = |{ t113 }{ t114 }|.
          DATA(t117) = |"|.
          DATA(t118) = strlen( t112 ).
          t111 = |{ t112 }{ t117 }|.
          DATA(t119) = VALUE string( ).
          DATA t120 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t120.
          DATA t121 TYPE string.
          DATA(t122) = |implement_methods|.
          t121 = t122.
          DATA t123 TYPE string.
          DATA(t124) = |Implement methods|.
          t123 = t124.
          DATA t125 TYPE string.
          DATA(t126) = |Checks for abstract methods and methods from interfaces whic|.
          t126 = t126 && |h need implementing.|.
          t125 = t126.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA(t129) = abap_true.
          IF t129 = abap_true.
            DATA(t130) = |INCLUDE programs are only checked in connection with their m|.
            t130 = t130 && |ain programs.|.
            DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t131->has = abap_true.
            t131->value = t130.
            t128 = t131.
          ELSE.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            t128 = t132.
          ENDIF.
          t127 = t128.
          DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t133.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t134.
          DATA(t135) = abap_true.
          IF t135 = abap_true.
            DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t138.
            t137 = t138.
            DATA(t139) = t137.
            DATA(t140) = |Syntax|.
            t139->load( ).
            APPEND t140 TO t139->items.
            t139->save( ).
            DATA(t141) = t137.
            DATA(t142) = |Quickfix|.
            t141->load( ).
            APPEND t142 TO t141->items.
            t141->save( ).
            DATA(t143) = t137.
            t136 = t143.
            t134 = t136.
          ELSE.
            DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t144.
            t134 = t144.
          ENDIF.
          t133 = t134.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          t145 = t146.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          t147 = t148.
          DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          t149 = t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t151 = t152.
          t120 = NEW zcl_lnt_irule_metadata( i_key = t121 i_title = t123 i_short_description = t125 i_bad_example = t145 i_good_example = t147 i_extended_information = t127 i_tags = t133 i_pragma = t149 i_pseudo_comment = t151 ).
          CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
          t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t153 ).
          ENDIF.
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
          DATA(t158) = |key|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          DATA(t160) = |title|.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
          ENDIF.
          DATA(t162) = |shortDescription|.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
          ENDIF.
          DATA(t164) = |extendedInformation|.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
          ENDIF.
          DATA(t166) = |tags|.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
          ENDIF.
          t119 = t120->key.
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t169) = me->conf.
          t168 = t169->zlnt_view_read_sr_15c06369f827( ).
          DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t170.
          t108 = zcl_lnt_issue=>at_identifier( i_identifier = t109 i_message_26cb = t111 i_key = t119 i_severity = t168 i_fix = t170 ).
          t107 = t108.
          DATA(t171) = t3.
          DATA(t172) = t107.
          t171->load( ).
          APPEND t172 TO t171->items.
          t171->save( ).
        ENDIF.
        DATA(t173) = VALUE abap_bool( ).
        DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t175) = t1.
        t174 = t175->is_abstract.
        IF t174 IS BOUND.
          IF t174->has = abap_true.
            t173 = xsdbool( t174->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        IF t173 = abap_true.
          CONTINUE.
        ELSE.
          DATA t176 TYPE string.
          DATA t177 TYPE string.
          DATA(t178) = |Abstract methods can only be defined in abstract classes, |.
          DATA t179 TYPE string.
          DATA(t180) = t7.
          t179 = t180->name.
          DATA(t181) = strlen( t178 ).
          t177 = |{ t178 }{ t179 }|.
          t176 = t177.
          DATA t182 TYPE REF TO zcl_lnt_issue.
          CLEAR t182.
          DATA t183 TYPE REF TO zcl_lnt_issue.
          CLEAR t183.
          DATA t184 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t185) = t7.
          t184 = t185->identifier.
          DATA(t186) = t176.
          DATA(t187) = VALUE string( ).
          DATA t188 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t188.
          DATA t189 TYPE string.
          DATA(t190) = |implement_methods|.
          t189 = t190.
          DATA t191 TYPE string.
          DATA(t192) = |Implement methods|.
          t191 = t192.
          DATA t193 TYPE string.
          DATA(t194) = |Checks for abstract methods and methods from interfaces whic|.
          t194 = t194 && |h need implementing.|.
          t193 = t194.
          DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t195.
          DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t196.
          DATA(t197) = abap_true.
          IF t197 = abap_true.
            DATA(t198) = |INCLUDE programs are only checked in connection with their m|.
            t198 = t198 && |ain programs.|.
            DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t199->has = abap_true.
            t199->value = t198.
            t196 = t199.
          ELSE.
            DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t200.
            t196 = t200.
          ENDIF.
          t195 = t196.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t201.
          DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t202.
          DATA(t203) = abap_true.
          IF t203 = abap_true.
            DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t206.
            t205 = t206.
            DATA(t207) = t205.
            DATA(t208) = |Syntax|.
            t207->load( ).
            APPEND t208 TO t207->items.
            t207->save( ).
            DATA(t209) = t205.
            DATA(t210) = |Quickfix|.
            t209->load( ).
            APPEND t210 TO t209->items.
            t209->save( ).
            DATA(t211) = t205.
            t204 = t211.
            t202 = t204.
          ELSE.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t212.
            t202 = t212.
          ENDIF.
          t201 = t202.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t213 = t214.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          t215 = t216.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t218.
          t217 = t218.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          t219 = t220.
          t188 = NEW zcl_lnt_irule_metadata( i_key = t189 i_title = t191 i_short_description = t193 i_bad_example = t213 i_good_example = t215 i_extended_information = t195 i_tags = t201 i_pragma = t217 i_pseudo_comment = t219 ).
          CREATE OBJECT t188->zlnt_view_ownkeys_b0e8086400eb.
          t188->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t188->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t188->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t221 ).
          ENDIF.
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
          DATA(t226) = |key|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          DATA(t228) = |title|.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
          ENDIF.
          DATA(t230) = |shortDescription|.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
          ENDIF.
          DATA(t232) = |extendedInformation|.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
          ENDIF.
          DATA(t234) = |tags|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t188->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t188->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          t187 = t188->key.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t237) = me->conf.
          t236 = t237->zlnt_view_read_sr_15c06369f827( ).
          DATA t238 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t238.
          t183 = zcl_lnt_issue=>at_identifier( i_identifier = t184 i_message_26cb = t186 i_key = t187 i_severity = t236 i_fix = t238 ).
          t182 = t183.
          DATA(t239) = t3.
          DATA(t240) = t182.
          t239->load( ).
          APPEND t240 TO t239->items.
          t239->save( ).
          EXIT.
        ENDIF.
      ENDIF.
      DATA(t241) = VALUE abap_bool( ).
      DATA t242 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t243) = t2.
      t242 = t243.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t245.
      t244 = t245.
      DATA(t246) = VALUE abap_bool( ).
      DATA(t247) = t242.
      IF t247 IS INITIAL.
        t246 = abap_true.
      ENDIF.
      t241 = t246.
      IF t241 = abap_true.
        DATA t248 TYPE string.
        DATA t249 TYPE string.
        DATA t250 TYPE string.
        DATA(t251) = |Class implementation for "|.
        DATA t252 TYPE string.
        DATA(t253) = t1.
        t252 = t253->name.
        DATA(t254) = strlen( t251 ).
        t250 = |{ t251 }{ t252 }|.
        DATA(t255) = |" not found|.
        DATA(t256) = strlen( t250 ).
        t249 = |{ t250 }{ t255 }|.
        t248 = t249.
        DATA t257 TYPE REF TO zcl_lnt_issue.
        CLEAR t257.
        DATA t258 TYPE REF TO zcl_lnt_issue.
        CLEAR t258.
        DATA t259 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t260) = t1.
        t259 = t260->identifier.
        DATA(t261) = t248.
        DATA(t262) = VALUE string( ).
        DATA t263 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t263.
        DATA t264 TYPE string.
        DATA(t265) = |implement_methods|.
        t264 = t265.
        DATA t266 TYPE string.
        DATA(t267) = |Implement methods|.
        t266 = t267.
        DATA t268 TYPE string.
        DATA(t269) = |Checks for abstract methods and methods from interfaces whic|.
        t269 = t269 && |h need implementing.|.
        t268 = t269.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA(t272) = abap_true.
        IF t272 = abap_true.
          DATA(t273) = |INCLUDE programs are only checked in connection with their m|.
          t273 = t273 && |ain programs.|.
          DATA(t274) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t274->has = abap_true.
          t274->value = t273.
          t271 = t274.
        ELSE.
          DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t275.
          t271 = t275.
        ENDIF.
        t270 = t271.
        DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t276.
        DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t277.
        DATA(t278) = abap_true.
        IF t278 = abap_true.
          DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t281.
          t280 = t281.
          DATA(t282) = t280.
          DATA(t283) = |Syntax|.
          t282->load( ).
          APPEND t283 TO t282->items.
          t282->save( ).
          DATA(t284) = t280.
          DATA(t285) = |Quickfix|.
          t284->load( ).
          APPEND t285 TO t284->items.
          t284->save( ).
          DATA(t286) = t280.
          t279 = t286.
          t277 = t279.
        ELSE.
          DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t287.
          t277 = t287.
        ENDIF.
        t276 = t277.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t289.
        t288 = t289.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t291.
        t290 = t291.
        DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        t292 = t293.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        t294 = t295.
        t263 = NEW zcl_lnt_irule_metadata( i_key = t264 i_title = t266 i_short_description = t268 i_bad_example = t288 i_good_example = t290 i_extended_information = t270 i_tags = t276 i_pragma = t292 i_pseudo_comment = t294 ).
        CREATE OBJECT t263->zlnt_view_ownkeys_b0e8086400eb.
        t263->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t296.
        IF t263->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t263->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t296 ).
        ENDIF.
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
        DATA(t301) = |key|.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
        ENDIF.
        DATA(t303) = |title|.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
        ENDIF.
        DATA(t305) = |shortDescription|.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
        ENDIF.
        DATA(t307) = |extendedInformation|.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
        ENDIF.
        DATA(t309) = |tags|.
        DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t310.
        IF t263->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t263->zlnt_json_ownkeys_70e5fd461788->put( p0 = t309 p1 = t310 ).
        ENDIF.
        t262 = t263->key.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t312) = me->conf.
        t311 = t312->zlnt_view_read_sr_15c06369f827( ).
        DATA t313 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t313.
        t258 = zcl_lnt_issue=>at_identifier( i_identifier = t259 i_message_26cb = t261 i_key = t262 i_severity = t311 i_fix = t313 ).
        t257 = t258.
        DATA(t314) = t3.
        DATA(t315) = t257.
        t314->load( ).
        APPEND t315 TO t314->items.
        t314->save( ).
      ELSE.
        DATA(t316) = VALUE abap_bool( ).
        DATA t317 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t318) = t12.
        t317 = t318.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t320.
        t319 = t320.
        DATA(t321) = VALUE abap_bool( ).
        DATA(t322) = t317.
        IF t322 IS INITIAL.
          t321 = abap_true.
        ENDIF.
        t316 = t321.
        IF t316 = abap_true.
          DATA t323 TYPE string.
          DATA t324 TYPE string.
          DATA t325 TYPE string.
          DATA(t326) = |Implement method "|.
          DATA t327 TYPE string.
          DATA(t328) = t7.
          t327 = t328->name.
          DATA(t329) = strlen( t326 ).
          t325 = |{ t326 }{ t327 }|.
          DATA(t330) = |"|.
          DATA(t331) = strlen( t325 ).
          t324 = |{ t325 }{ t330 }|.
          t323 = t324.
          DATA t332 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t333 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t334 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t335) = t2.
          t334 = t335.
          DATA t336 TYPE string.
          DATA(t337) = t7.
          t336 = t337->name.
          t333 = me->build_fix( i_impl = t334 i_method_name = t336 ).
          t332 = t333.
          DATA t338 TYPE REF TO zcl_lnt_issue.
          CLEAR t338.
          DATA t339 TYPE REF TO zcl_lnt_issue.
          CLEAR t339.
          DATA t340 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t341 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t342) = t2.
          t341 = t342.
          t340 = t341->identifier.
          DATA(t343) = t323.
          DATA(t344) = VALUE string( ).
          DATA t345 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t345.
          DATA t346 TYPE string.
          DATA(t347) = |implement_methods|.
          t346 = t347.
          DATA t348 TYPE string.
          DATA(t349) = |Implement methods|.
          t348 = t349.
          DATA t350 TYPE string.
          DATA(t351) = |Checks for abstract methods and methods from interfaces whic|.
          t351 = t351 && |h need implementing.|.
          t350 = t351.
          DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t352.
          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t353.
          DATA(t354) = abap_true.
          IF t354 = abap_true.
            DATA(t355) = |INCLUDE programs are only checked in connection with their m|.
            t355 = t355 && |ain programs.|.
            DATA(t356) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t356->has = abap_true.
            t356->value = t355.
            t353 = t356.
          ELSE.
            DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t357.
            t353 = t357.
          ENDIF.
          t352 = t353.
          DATA t358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t358.
          DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t359.
          DATA(t360) = abap_true.
          IF t360 = abap_true.
            DATA t361 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t362 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t363 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t363.
            t362 = t363.
            DATA(t364) = t362.
            DATA(t365) = |Syntax|.
            t364->load( ).
            APPEND t365 TO t364->items.
            t364->save( ).
            DATA(t366) = t362.
            DATA(t367) = |Quickfix|.
            t366->load( ).
            APPEND t367 TO t366->items.
            t366->save( ).
            DATA(t368) = t362.
            t361 = t368.
            t359 = t361.
          ELSE.
            DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t369.
            t359 = t369.
          ENDIF.
          t358 = t359.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          t370 = t371.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t373.
          t372 = t373.
          DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t375.
          t374 = t375.
          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          t376 = t377.
          t345 = NEW zcl_lnt_irule_metadata( i_key = t346 i_title = t348 i_short_description = t350 i_bad_example = t370 i_good_example = t372 i_extended_information = t352 i_tags = t358 i_pragma = t374 i_pseudo_comment = t376 ).
          CREATE OBJECT t345->zlnt_view_ownkeys_b0e8086400eb.
          t345->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t378.
          IF t345->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t345->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t378 ).
          ENDIF.
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
          DATA(t383) = |key|.
          DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t384.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t383 p1 = t384 ).
          ENDIF.
          DATA(t385) = |title|.
          DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t386.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t385 p1 = t386 ).
          ENDIF.
          DATA(t387) = |shortDescription|.
          DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t388.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t387 p1 = t388 ).
          ENDIF.
          DATA(t389) = |extendedInformation|.
          DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t390.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t389 p1 = t390 ).
          ENDIF.
          DATA(t391) = |tags|.
          DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t392.
          IF t345->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t345->zlnt_json_ownkeys_70e5fd461788->put( p0 = t391 p1 = t392 ).
          ENDIF.
          t344 = t345->key.
          DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t394) = me->conf.
          t393 = t394->zlnt_view_read_sr_15c06369f827( ).
          DATA(t395) = t332.
          t339 = zcl_lnt_issue=>at_identifier( i_identifier = t340 i_message_26cb = t343 i_key = t344 i_severity = t393 i_fix = t395 ).
          t338 = t339.
          DATA(t396) = t3.
          DATA(t397) = t338.
          t396->load( ).
          APPEND t397 TO t396->items.
          t396->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t398) = t3.
    result = t398.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_impl.
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = me->obj.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = t1.
    t8 = t9->identifier.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = t7.
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = t3.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = t13.
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA t25 TYPE REF TO zcl_lnt_abap_file.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t3.
    t26 = t27.
    t25 = t26.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA(t29) = t25.
    t28 = t29->structure.
    t24 = t28.
    t23 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t23.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t35 TYPE REF TO zcl_lnt_structure_node.
      DATA(t36) = t23.
      t35 = t36.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0.
      t34 = t35->find_all_statements( i_type_9913 = t37 ).
      t30 = t34.
    ENDIF.
    t22 = t30.
    t21 = t22.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE abap_bool.
    DATA(t40) = t21.
    t39 = xsdbool( t40 IS BOUND ).
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t21.
      t41 = t42.
      t38 = t41.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      t38 = t43.
    ENDIF.
    t20 = t38.
    DATA t44 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
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
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = t44.
      DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t56 = t57->find_first_expression( i_type_9913 = t58 ).
      t55 = t56.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t55.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      IF t60 = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t62.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        DATA(t65) = t55.
        t64 = t65.
        t63 = t64->get_first_token( ).
        t59 = t63.
      ENDIF.
      t54 = t59.
      t53 = t54.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t53.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t66 = t69.
      ELSE.
        DATA t70 TYPE string.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t73) = t53.
        t72 = t73.
        t71 = t72.
        DATA t74 TYPE string.
        DATA(t75) = t71.
        t74 = t75->str.
        t70 = t74.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t70.
        t66 = t76.
      ENDIF.
      t52 = t66.
      t51 = t52.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = t51.
      IF t79 IS INITIAL.
        t78 = abap_true.
      ELSEIF t79->has = abap_false.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t77 = t80.
      ELSE.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA(t83) = t51.
        t82 = t83->value.
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
      t50 = t77.
      t49 = t50.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = t49.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA(t89) = abap_true.
      IF t89 = abap_true.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t94) = t1.
        t93 = t94->identifier.
        t92 = t93.
        DATA(t95) = VALUE string( ).
        DATA t96 TYPE string.
        DATA t97 TYPE string.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA t99 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t100) = t92.
        t99 = t100->token.
        t98 = t99.
        DATA t101 TYPE string.
        DATA(t102) = t98.
        t101 = t102->str.
        t97 = t101.
        t96 = t97.
        DATA(t103) = VALUE abap_bool( ).
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
          CLEAR t104.
        ELSE.
          IF t107 > t108 - t106.
            t107 = t108 - t106.
          ENDIF.
          t104 = t105+t106(t107).
        ENDIF.
        DATA(t109) = |!|.
        t103 = xsdbool( t104 = t109 ).
        IF t103 = abap_true.
          DATA(t110) = VALUE string( ).
          DATA t111 TYPE string.
          DATA(t112) = t96.
          t111 = t112.
          DATA(t113) = VALUE string( ).
          DATA(t114) = t111.
          DATA(t115) = 1.
          DATA t116 TYPE i.
          DATA(t117) = t111.
          DATA(t118) = strlen( t117 ).
          t116 = t118.
          DATA(t119) = strlen( t114 ).
          IF t115 < 0.
            t115 = t115 + t119.
            IF t115 < 0.
              t115 = 0.
            ENDIF.
          ENDIF.
          IF t115 > t119 OR t116 <= 0.
            CLEAR t113.
          ELSE.
            IF t116 > t119 - t115.
              t116 = t119 - t115.
            ENDIF.
            t113 = t114+t115(t116).
          ENDIF.
          t110 = t113.
          t96 = t110.
        ENDIF.
        DATA(t120) = t96.
        t95 = t120.
        t91 = t95.
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
      ELSE.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        t88 = t123.
      ENDIF.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      IF t87 IS BOUND.
        t124 = t87->has.
      ENDIF.
      IF t88 IS BOUND.
        t125 = t88->has.
      ENDIF.
      IF t124 = t125.
        IF t124 = abap_false.
          t86 = abap_true.
        ELSEIF t87->value = t88->value.
          t86 = abap_true.
        ENDIF.
      ENDIF.
      IF t86 = abap_true.
        DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA t128 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t129 TYPE REF TO zcl_lnt_abap_file.
          DATA(t130) = t3.
          t129 = t130.
          DATA t131 TYPE REF TO zcl_lnt_position.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA t133 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t134) = t44.
          t133 = t134->get_last_token( ).
          t132 = t133.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA t136 TYPE f.
          DATA t137 TYPE REF TO zcl_lnt_position.
          DATA t138 TYPE REF TO zcl_lnt_position.
          DATA(t139) = t132.
          t138 = t139->start.
          t137 = t138.
          DATA t140 TYPE f.
          DATA(t141) = t137.
          t140 = t141->row.
          t136 = t140.
          DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t144 TYPE REF TO zcl_lnt_position.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA(t146) = t132.
          t145 = t146->start.
          t144 = t145.
          DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t148) = t144.
          t147 = t148->col.
          t143 = t147.
          DATA t149 TYPE f.
          DATA t150 TYPE i.
          DATA t151 TYPE string.
          DATA(t152) = t132.
          t151 = t152->str.
          DATA(t153) = strlen( t151 ).
          t150 = t153.
          t149 = t150.
          DATA(t154) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t154->has = abap_true.
          t154->value = t149.
          t142 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t143 right = t154 op = `+` ).
          t135 = NEW zcl_lnt_position( i_row = t136 i_col = t142 ).
          t131 = t135.
          DATA t155 TYPE string.
          DATA t156 TYPE string.
          DATA(t157) = |\n  METHOD |.
          DATA t158 TYPE string.
          DATA(t159) = t2.
          DATA(t160) = strlen( t159 ).
          t158 = t159.
          TRANSLATE t158 TO LOWER CASE.
          DATA(t161) = strlen( t157 ).
          t156 = |{ t157 }{ t158 }|.
          DATA(t162) = |.\n    RETURN. " todo, implement method\n  ENDMETHOD.|.
          DATA(t163) = strlen( t156 ).
          t155 = |{ t156 }{ t162 }|.
          t128 = zcl_lnt_edit_helper=>insert_at( i_file = t129 i_pos = t131 i_text = t155 ).
          t126 = t128.
        ELSE.
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          t126 = t164.
        ENDIF.
        result = t126.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t165.
    result = t165.

  ENDMETHOD.

  METHOD find_interface.
    DATA(t1) = i_identifier.
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t4 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t5) = t2.
    t4 = me->find_interface_by_name( i_name = t5 ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t8) = t3.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA(t16) = |Implemented interface "|.
      DATA(t17) = t2.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t17 }|.
      DATA(t19) = |" not found|.
      DATA(t20) = strlen( t15 ).
      t14 = |{ t15 }{ t19 }|.
      t13 = t14.
      DATA t21 TYPE REF TO zcl_lnt_issue.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_issue.
      CLEAR t22.
      DATA(t23) = t1.
      DATA(t24) = t13.
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t26.
      DATA t27 TYPE string.
      DATA(t28) = |implement_methods|.
      t27 = t28.
      DATA t29 TYPE string.
      DATA(t30) = |Implement methods|.
      t29 = t30.
      DATA t31 TYPE string.
      DATA(t32) = |Checks for abstract methods and methods from interfaces whic|.
      t32 = t32 && |h need implementing.|.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA(t36) = |INCLUDE programs are only checked in connection with their m|.
        t36 = t36 && |ain programs.|.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t36.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t34 = t38.
      ENDIF.
      t33 = t34.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t40.
      DATA(t41) = abap_true.
      IF t41 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t44.
        t43 = t44.
        DATA(t45) = t43.
        DATA(t46) = |Syntax|.
        t45->load( ).
        APPEND t46 TO t45->items.
        t45->save( ).
        DATA(t47) = t43.
        DATA(t48) = |Quickfix|.
        t47->load( ).
        APPEND t48 TO t47->items.
        t47->save( ).
        DATA(t49) = t43.
        t42 = t49.
        t40 = t42.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t50.
        t40 = t50.
      ENDIF.
      t39 = t40.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      t51 = t52.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      t53 = t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      t55 = t56.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t57 = t58.
      t26 = NEW zcl_lnt_irule_metadata( i_key = t27 i_title = t29 i_short_description = t31 i_bad_example = t51 i_good_example = t53 i_extended_information = t33 i_tags = t39 i_pragma = t55 i_pseudo_comment = t57 ).
      CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
      t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t60 ).
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t61 ).
      ENDIF.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t62 ).
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t63 ).
      ENDIF.
      CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
      t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t64) = |key|.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
      ENDIF.
      DATA(t66) = |title|.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
      ENDIF.
      DATA(t68) = |shortDescription|.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
      ENDIF.
      DATA(t70) = |extendedInformation|.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
      ENDIF.
      DATA(t72) = |tags|.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
      ENDIF.
      t25 = t26->key.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t75) = me->conf.
      t74 = t75->zlnt_view_read_sr_15c06369f827( ).
      DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t76.
      t22 = zcl_lnt_issue=>at_identifier( i_identifier = t23 i_message_26cb = t24 i_key = t25 i_severity = t74 i_fix = t76 ).
      t21 = t22.
      DATA(t77) = t21.
      result = t77.
      RETURN.
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t79) = t3.
    t78 = t79.
    result = t78.

  ENDMETHOD.

  METHOD find_interface_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_object.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_object.
    CLEAR t8.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = |INTF|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = t1.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t8 = t9->get_object( i_type_9913 = t10 i_name = t15 ).
    t7 = t8.
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
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
    CLEAR t5.
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
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t23.
    DATA(t24) = t4.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t23.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    t22 = t27.
    IF t22 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t30.
      DATA(t31) = me->obj.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA(t33) = t30.
      t32 = t33->parsed.
      t29 = t32.
      DATA t34 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
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
          CLEAR t38.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA t39 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t40.
        DATA t41 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t42.
        DATA(t43) = t34.
        t42 = t43.
        DATA t44 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t44.
        DATA(t45) = t42.
        t44 = t45->info.
        t41 = t44.
        DATA(t46) = t1.
        t40 = t41->gt_intrfc_dfntn_by_nm( i_name = t46 ).
        t39 = t40.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t39.
        t47 = xsdbool( t48 IS BOUND ).
        IF t47 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          CLEAR t49.
          DATA(t50) = abap_true.
          IF t50 = abap_true.
            DATA t51 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
            CLEAR t51.
            DATA(t52) = t39.
            t51 = t52.
            t49 = t51.
          ELSE.
            DATA t53 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
            CLEAR t53.
            t49 = t53.
          ENDIF.
          t2 = t49.
          EXIT.
        ENDIF.
      ENDDO.
    ELSE.
      DATA t54 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t56.
      DATA t57 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t57.
      DATA t58 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t61.
      DATA(t62) = t4.
      t61 = t62.
      t60 = t61->get_main_abap_file( ).
      t59 = t60.
      DATA t63 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t59.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t69.
        DATA(t70) = t59.
        t69 = t70.
        t68 = t69.
        DATA t71 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t71.
        DATA(t72) = t68.
        t71 = t72->info.
        t67 = t71.
        t63 = t67.
      ENDIF.
      t58 = t63.
      t57 = t58.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t57.
      IF t75 IS INITIAL.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t76.
        t73 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t78.
        DATA(t79) = t57.
        t78 = t79.
        t77 = t78->list_interface_definitions( ).
        t73 = t77.
      ENDIF.
      t56 = t73.
      t55 = t56.
      DATA t80 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t80.
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t55.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ENDIF.
      IF t81 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t83.
        t80 = t83.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t85.
        DATA(t86) = t55.
        t85 = t86.
        DATA t87 TYPE REF TO object.
        CLEAR t87.
        t85->load( ).
        CLEAR t87.
        READ TABLE t85->items INDEX 1 INTO t87.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        CLEAR t84.
        IF t87 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t88 ?= t87.
          DATA t89 TYPE REF TO object.
          CLEAR t89.
          t89 = t88->as_ref( ).
          t84 ?= t89.
        ELSE.
          t84 ?= t87.
        ENDIF.
        t80 = t84.
      ENDIF.
      t54 = t80.
      t2 = t54.
    ENDIF.
    DATA(t90) = t2.
    result = t90.

  ENDMETHOD.

  METHOD find_interface_methods.
    DATA(t1) = i_idef.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    t6 = t7->methods.
    DATA t8 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
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
      DATA(t13) = t4.
      DATA t14 TYPE REF TO zcl_lnt_imethod.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = t1.
      t16 = t17->name.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_info_method_definition.
      DATA(t19) = t8.
      t18 = t19.
      t14 = NEW zcl_lnt_imethod( i_object_name = t15 i_method = t18 ).
      CREATE OBJECT t14->zlnt_view_ownkeys_b0e8086400eb.
      t14->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t14->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectName` p1 = t20 ).
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t14->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t14->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t21 ).
      ENDIF.
      CREATE OBJECT t14->zlnt_json_ownkeys_70e5fd461788.
      t14->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t22) = |objectName|.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      IF t14->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
      ENDIF.
      DATA(t24) = |method|.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      IF t14->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t14->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
      ENDIF.
      t13->load( ).
      APPEND t14 TO t13->items.
      t13->save( ).
    ENDDO.
    DATA(t26) = t4.
    t3 = t26.
    t2 = t3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = t1.
    t27 = t28->interfaces.
    DATA t29 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
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
      DATA t35 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t37) = t1.
      t36 = t37->identifier.
      DATA t38 TYPE string.
      DATA(t39) = t29.
      t38 = t39->name.
      t35 = me->find_interface( i_identifier = t36 i_name = t38 ).
      t34 = t35.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA(t43) = t34.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t42.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ENDIF.
      t46 = xsdbool( t47 = abap_false ).
      t41 = t46.
      t40 = t41.
      IF t41 = abap_true.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE abap_bool.
        DATA t51 TYPE REF TO zif_lnt_union_eff0d09a.
        DATA(t52) = t34.
        t51 = t52.
        t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_issue ).
        t49 = xsdbool( t50 = abap_false ).
        t40 = t49.
      ENDIF.
      IF t40 = abap_true.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t56 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t57) = t34.
        DATA t58 TYPE REF TO object.
        t58 = t57.
        t56 ?= t58.
        t55 = t56->methods.
        t54 = t55.
        DATA t59 TYPE i.
        DATA t60 TYPE i.
        DATA(t61) = t54.
        t61->load( ).
        t60 = lines( t61->items ).
        t59 = t60.
        DATA t62 TYPE i.
        DATA(t63) = 0.
        t62 = t63.
        DO.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t62.
          DATA(t66) = t59.
          t64 = xsdbool( t65 < t66 ).
          IF t64 = abap_false.
            EXIT.
          ENDIF.
          DATA t67 TYPE REF TO zcl_lnt_info_method_definition.
          CLEAR t67.
          DATA t68 TYPE REF TO zcl_lnt_info_method_definition.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_info_method_definition.
          CLEAR t69.
          DATA(t70) = t54.
          DATA(t71) = t62.
          DATA t72 TYPE REF TO object.
          t72 = t70->get( p0 = t71 ).
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
          t68 = t69.
          t67 = t68.
          DATA(t75) = t2.
          DATA t76 TYPE REF TO zcl_lnt_imethod.
          DATA t77 TYPE string.
          DATA t78 TYPE string.
          DATA t79 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          DATA(t80) = t34.
          DATA t81 TYPE REF TO object.
          t81 = t80.
          t79 ?= t81.
          t78 = t79->name.
          t77 = t78.
          DATA t82 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t83) = t67.
          t82 = t83.
          t76 = NEW zcl_lnt_imethod( i_object_name = t77 i_method = t82 ).
          CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
          t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `objectName` p1 = t84 ).
          ENDIF.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `method` p1 = t85 ).
          ENDIF.
          CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
          t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t86) = |objectName|.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
          ENDIF.
          DATA(t88) = |method|.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
          ENDIF.
          t75->load( ).
          APPEND t76 TO t75->items.
          t75->save( ).
          DATA t90 TYPE i.
          DATA(t91) = t62.
          DATA(t92) = 1.
          t90 = t91 + t92.
          t62 = t90.
        ENDDO.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t53 = t93.
      ENDIF.
    ENDDO.
    DATA(t94) = t2.
    result = t94.

  ENDMETHOD.

  METHOD find_class.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t3 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t4) = t1.
    t3 = me->lookup_definition_in_object( i_name = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA t6 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t7) = t1.
    DATA(t8) = me->obj.
    t6 = me->lkp_implmnttn_in_objct( i_name = t7 i_obj_1ed0 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t2.
    t10 = xsdbool( t11 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t5.
      t12 = xsdbool( t13 IS BOUND ).
      t9 = t12.
    ENDIF.
    IF t9 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t21) = t2.
          t20 = t21.
          t18 = t20.
        ELSE.
          DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = t18.
        DATA t23 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t23.
        DATA t24 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t27) = t5.
          t26 = t27.
          t24 = t26.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t28.
          t24 = t28.
        ENDIF.
        t23 = t24.
        t16 = NEW zcl_lnt_shape_e8fb1d71( i_def = t17 i_impl = t23 ).
        CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
        t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t29 ).
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        IF t16->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `impl` p1 = t30 ).
        ENDIF.
        CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
        t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t31) = |def|.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
        ENDIF.
        DATA(t33) = |impl|.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        IF t16->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
        ENDIF.
        t14 = t16.
      ELSE.
        DATA t35 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        CLEAR t35.
        t14 = t35.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_class.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_class.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_object.
    CLEAR t38.
    DATA(t39) = me->reg.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = abap_true.
    IF t41 = abap_true.
      DATA(t42) = |CLAS|.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t42.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t40 = t44.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    DATA(t46) = abap_true.
    IF t46 = abap_true.
      DATA(t47) = t1.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t47.
      t45 = t48.
    ELSE.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t45 = t49.
    ENDIF.
    t38 = t39->get_object( i_type_9913 = t40 i_name = t45 ).
    DATA t50 TYPE REF TO object.
    t50 = t38.
    t37 ?= t50.
    t36 = t37.
    DATA t51 TYPE abap_bool.
    DATA(t52) = t36.
    t51 = xsdbool( t52 IS BOUND ).
    IF t51 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_class.
      DATA t55 TYPE REF TO zcl_lnt_class.
      DATA(t56) = t36.
      t55 = t56.
      t54 = t55.
      DATA t57 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t57.
      DATA t58 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t58.
      DATA t59 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_abap_file.
      DATA t61 TYPE REF TO zcl_lnt_abap_file.
      DATA(t62) = t54.
      t61 = t62->get_main_abap_file( ).
      t60 = t61.
      DATA t63 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t60.
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_abap_file_information.
        DATA t68 TYPE REF TO zcl_lnt_abap_file.
        DATA t69 TYPE REF TO zcl_lnt_abap_file.
        DATA(t70) = t60.
        t69 = t70.
        t68 = t69.
        DATA t71 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t72) = t68.
        t71 = t72->info.
        t67 = t71.
        t63 = t67.
      ENDIF.
      t59 = t63.
      t58 = t59.
      DATA t73 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = t58.
      IF t75 IS INITIAL.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t76.
        t73 = t76.
      ELSE.
        DATA t77 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t78 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t79) = t58.
        t78 = t79.
        DATA t80 TYPE string.
        DATA t81 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t82) = t54.
        t81 = t82.
        DATA t83 TYPE string.
        DATA(t84) = t81.
        t83 = t84->name.
        t80 = t83.
        t77 = t78->get_class_definition_by_name( i_name = t80 ).
        t73 = t77.
      ENDIF.
      t57 = t73.
      t53 = t57.
      t2 = t53.
      DATA t85 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t86) = t1.
      DATA t87 TYPE REF TO zcl_lnt_class.
      DATA(t88) = t36.
      t87 = t88.
      t85 = me->lkp_implmnttn_in_objct( i_name = t86 i_obj_1ed0 = t87 ).
      t5 = t85.
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE abap_bool.
      DATA(t91) = t2.
      t90 = xsdbool( t91 IS BOUND ).
      t89 = t90.
      IF t90 = abap_true.
        DATA t92 TYPE abap_bool.
        DATA(t93) = t5.
        t92 = xsdbool( t93 IS BOUND ).
        t89 = t92.
      ENDIF.
      IF t89 = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA t96 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          CLEAR t96.
          DATA t97 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t97.
          DATA t98 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA t100 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t101) = t2.
            t100 = t101.
            t98 = t100.
          ELSE.
            DATA t102 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t102.
            t98 = t102.
          ENDIF.
          t97 = t98.
          DATA t103 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t103.
          DATA t104 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t104.
          DATA(t105) = abap_true.
          IF t105 = abap_true.
            DATA t106 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t107) = t5.
            t106 = t107.
            t104 = t106.
          ELSE.
            DATA t108 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            CLEAR t108.
            t104 = t108.
          ENDIF.
          t103 = t104.
          t96 = NEW zcl_lnt_shape_e8fb1d71( i_def = t97 i_impl = t103 ).
          CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
          t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `def` p1 = t109 ).
          ENDIF.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `impl` p1 = t110 ).
          ENDIF.
          CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
          t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t111) = |def|.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
          ENDIF.
          DATA(t113) = |impl|.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          ENDIF.
          t94 = t96.
        ELSE.
          DATA t115 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          CLEAR t115.
          t94 = t115.
        ENDIF.
        result = t94.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t116 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    CLEAR t116.
    result = t116.

  ENDMETHOD.

  METHOD check_interfaces.
    DATA(t1) = i_def.
    DATA(t2) = i_impl.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->interfaces.
    DATA t7 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA t13 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t15) = t1.
      t14 = t15->identifier.
      DATA t16 TYPE string.
      DATA(t17) = t7.
      t16 = t17->name.
      t13 = me->find_interface( i_identifier = t14 i_name = t16 ).
      t12 = t13.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA(t22) = t12.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      t23 = t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t21.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      t20 = t25.
      t19 = t20.
      IF t20 = abap_false.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t7.
        t28 = t29->partial.
        DATA(t30) = abap_true.
        t27 = xsdbool( t28 = t30 ).
        t19 = t27.
      ENDIF.
      t18 = t19.
      IF t19 = abap_false.
        DATA t31 TYPE abap_bool.
        DATA t32 TYPE abap_bool.
        DATA(t33) = t7.
        t32 = t33->all_abstract.
        DATA(t34) = abap_true.
        t31 = xsdbool( t32 = t34 ).
        t18 = t31.
      ENDIF.
      IF t18 = abap_true.
        CONTINUE.
      ELSE.
        DATA t35 TYPE abap_bool.
        DATA(t36) = t12.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_issue ).
        IF t35 = abap_true.
          DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t39.
          t38 = t39.
          DATA(t40) = t38.
          DATA t41 TYPE REF TO zcl_lnt_issue.
          DATA(t42) = t12.
          DATA t43 TYPE REF TO object.
          t43 = t42.
          t41 ?= t43.
          t40->load( ).
          APPEND t41 TO t40->items.
          t40->save( ).
          DATA(t44) = t38.
          t37 = t44.
          result = t37.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t46 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA(t47) = t12.
      DATA t48 TYPE REF TO object.
      t48 = t47.
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
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE REF TO zcl_lnt_info_method_definition.
        DATA(t58) = t49.
        t57 = t58->method.
        t56 = t57->is_default_ignore.
        DATA(t59) = abap_true.
        t55 = xsdbool( t56 = t59 ).
        t54 = t55.
        IF t55 = abap_false.
          DATA t60 TYPE abap_bool.
          DATA t61 TYPE abap_bool.
          DATA t62 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t63) = t49.
          t62 = t63->method.
          t61 = t62->is_default_fail.
          DATA(t64) = abap_true.
          t60 = xsdbool( t61 = t64 ).
          t54 = t60.
        ENDIF.
        IF t54 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t65 TYPE abap_bool.
        DATA(t66) = t49.
        DATA(t67) = t7.
        DATA(t68) = t1.
        t65 = me->is_abstract( i_m = t66 i_interface_info = t67 i_def = t68 ).
        IF t65 = abap_true.
          DATA(t69) = VALUE abap_bool( ).
          DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t71) = t1.
          t70 = t71->is_abstract.
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
        DATA t72 TYPE abap_bool.
        DATA t73 TYPE abap_bool.
        DATA(t74) = t49.
        DATA(t75) = t1.
        DATA(t76) = t2.
        t73 = me->is_implemented( i_m = t74 i_def = t75 i_impl = t76 ).
        DATA(t77) = abap_false.
        t72 = xsdbool( t73 = t77 ).
        IF t72 = abap_true.
          DATA t78 TYPE string.
          DATA t79 TYPE string.
          DATA t80 TYPE string.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA(t83) = |Implement method "|.
          DATA t84 TYPE string.
          DATA t85 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t86) = t49.
          t85 = t86->method.
          t84 = t85->name.
          DATA(t87) = strlen( t83 ).
          t82 = |{ t83 }{ t84 }|.
          DATA(t88) = |" from interface "|.
          DATA(t89) = strlen( t82 ).
          t81 = |{ t82 }{ t88 }|.
          DATA t90 TYPE string.
          DATA(t91) = t49.
          t90 = t91->object_name.
          DATA(t92) = strlen( t81 ).
          t80 = |{ t81 }{ t90 }|.
          DATA(t93) = |"|.
          DATA(t94) = strlen( t80 ).
          t79 = |{ t80 }{ t93 }|.
          t78 = t79.
          DATA t95 TYPE abap_bool.
          DATA(t96) = t2.
          t95 = xsdbool( t96 IS BOUND ).
          IF t95 = abap_true.
            DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t99 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t100) = t2.
            t99 = t100.
            DATA t101 TYPE string.
            DATA t102 TYPE string.
            DATA t103 TYPE string.
            DATA(t104) = t49.
            t103 = t104->object_name.
            DATA(t105) = |~|.
            DATA(t106) = strlen( t103 ).
            t102 = |{ t103 }{ t105 }|.
            DATA t107 TYPE string.
            DATA t108 TYPE REF TO zcl_lnt_info_method_definition.
            DATA(t109) = t49.
            t108 = t109->method.
            t107 = t108->name.
            DATA(t110) = strlen( t102 ).
            t101 = |{ t102 }{ t107 }|.
            t98 = me->build_fix( i_impl = t99 i_method_name = t101 ).
            t97 = t98.
            DATA t111 TYPE REF TO zcl_lnt_issue.
            CLEAR t111.
            DATA t112 TYPE REF TO zcl_lnt_issue.
            CLEAR t112.
            DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t114 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t115) = t2.
            t114 = t115.
            t113 = t114->identifier.
            DATA(t116) = t78.
            DATA(t117) = VALUE string( ).
            DATA t118 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t118.
            DATA t119 TYPE string.
            DATA(t120) = |implement_methods|.
            t119 = t120.
            DATA t121 TYPE string.
            DATA(t122) = |Implement methods|.
            t121 = t122.
            DATA t123 TYPE string.
            DATA(t124) = |Checks for abstract methods and methods from interfaces whic|.
            t124 = t124 && |h need implementing.|.
            t123 = t124.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            DATA(t127) = abap_true.
            IF t127 = abap_true.
              DATA(t128) = |INCLUDE programs are only checked in connection with their m|.
              t128 = t128 && |ain programs.|.
              DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t129->has = abap_true.
              t129->value = t128.
              t126 = t129.
            ELSE.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              t126 = t130.
            ENDIF.
            t125 = t126.
            DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t132.
            DATA(t133) = abap_true.
            IF t133 = abap_true.
              DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t136.
              t135 = t136.
              DATA(t137) = t135.
              DATA(t138) = |Syntax|.
              t137->load( ).
              APPEND t138 TO t137->items.
              t137->save( ).
              DATA(t139) = t135.
              DATA(t140) = |Quickfix|.
              t139->load( ).
              APPEND t140 TO t139->items.
              t139->save( ).
              DATA(t141) = t135.
              t134 = t141.
              t132 = t134.
            ELSE.
              DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t142.
              t132 = t142.
            ENDIF.
            t131 = t132.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            t143 = t144.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            t145 = t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            t147 = t148.
            DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t150.
            t149 = t150.
            t118 = NEW zcl_lnt_irule_metadata( i_key = t119 i_title = t121 i_short_description = t123 i_bad_example = t143 i_good_example = t145 i_extended_information = t125 i_tags = t131 i_pragma = t147 i_pseudo_comment = t149 ).
            CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
            t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t151.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
            ENDIF.
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
            DATA(t156) = |key|.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t157.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
            ENDIF.
            DATA(t158) = |title|.
            DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t159.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
            ENDIF.
            DATA(t160) = |shortDescription|.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
            ENDIF.
            DATA(t162) = |extendedInformation|.
            DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t163.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
            ENDIF.
            DATA(t164) = |tags|.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
            ENDIF.
            t117 = t118->key.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t167) = me->conf.
            t166 = t167->zlnt_view_read_sr_15c06369f827( ).
            DATA(t168) = t97.
            t112 = zcl_lnt_issue=>at_identifier( i_identifier = t113 i_message_26cb = t116 i_key = t117 i_severity = t166 i_fix = t168 ).
            t111 = t112.
            DATA(t169) = t3.
            DATA(t170) = t111.
            t169->load( ).
            APPEND t170 TO t169->items.
            t169->save( ).
          ELSE.
            DATA t171 TYPE REF TO zcl_lnt_issue.
            CLEAR t171.
            DATA t172 TYPE REF TO zcl_lnt_issue.
            CLEAR t172.
            DATA t173 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t174) = t1.
            t173 = t174->identifier.
            DATA(t175) = t78.
            DATA(t176) = VALUE string( ).
            DATA t177 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t177.
            DATA t178 TYPE string.
            DATA(t179) = |implement_methods|.
            t178 = t179.
            DATA t180 TYPE string.
            DATA(t181) = |Implement methods|.
            t180 = t181.
            DATA t182 TYPE string.
            DATA(t183) = |Checks for abstract methods and methods from interfaces whic|.
            t183 = t183 && |h need implementing.|.
            t182 = t183.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t185.
            DATA(t186) = abap_true.
            IF t186 = abap_true.
              DATA(t187) = |INCLUDE programs are only checked in connection with their m|.
              t187 = t187 && |ain programs.|.
              DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t188->has = abap_true.
              t188->value = t187.
              t185 = t188.
            ELSE.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t189.
              t185 = t189.
            ENDIF.
            t184 = t185.
            DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t190.
            DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t191.
            DATA(t192) = abap_true.
            IF t192 = abap_true.
              DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t195.
              t194 = t195.
              DATA(t196) = t194.
              DATA(t197) = |Syntax|.
              t196->load( ).
              APPEND t197 TO t196->items.
              t196->save( ).
              DATA(t198) = t194.
              DATA(t199) = |Quickfix|.
              t198->load( ).
              APPEND t199 TO t198->items.
              t198->save( ).
              DATA(t200) = t194.
              t193 = t200.
              t191 = t193.
            ELSE.
              DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t201.
              t191 = t201.
            ENDIF.
            t190 = t191.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            t202 = t203.
            DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t205.
            t204 = t205.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t207.
            t206 = t207.
            DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            t208 = t209.
            t177 = NEW zcl_lnt_irule_metadata( i_key = t178 i_title = t180 i_short_description = t182 i_bad_example = t202 i_good_example = t204 i_extended_information = t184 i_tags = t190 i_pragma = t206 i_pseudo_comment = t208 ).
            CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
            t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t210 ).
            ENDIF.
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
            DATA(t215) = |key|.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
            ENDIF.
            DATA(t217) = |title|.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t217 p1 = t218 ).
            ENDIF.
            DATA(t219) = |shortDescription|.
            DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t220.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t219 p1 = t220 ).
            ENDIF.
            DATA(t221) = |extendedInformation|.
            DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t222.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
            ENDIF.
            DATA(t223) = |tags|.
            DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t224.
            IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
            ENDIF.
            t176 = t177->key.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t226) = me->conf.
            t225 = t226->zlnt_view_read_sr_15c06369f827( ).
            DATA t227 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t227.
            t172 = zcl_lnt_issue=>at_identifier( i_identifier = t173 i_message_26cb = t175 i_key = t176 i_severity = t225 i_fix = t227 ).
            t171 = t172.
            DATA(t228) = t3.
            DATA(t229) = t171.
            t228->load( ).
            APPEND t229 TO t228->items.
            t228->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t230) = t3.
    result = t230.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = i_m.
    DATA(t2) = i_interface_info.
    DATA(t3) = i_def.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = t2.
    t5 = t6->abstract_methods.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_info_method_definition.
    DATA(t10) = t1.
    t9 = t10->method.
    t8 = t9->name.
    DATA(t11) = strlen( t8 ).
    t7 = t8.
    IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t7 TO UPPER CASE.
    ELSE.
      t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
    ENDIF.
    t4 = t5->includes( p0 = t7 ).
    IF t4 = abap_true.
      DATA(t12) = abap_true.
      result = t12.
      RETURN.
    ENDIF.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = t3.
    t15 = t16->super_class_name.
    IF t15 IS BOUND.
      IF t15->has = abap_true.
        t14 = xsdbool( strlen( t15->value ) > 0 ).
      ENDIF.
    ENDIF.
    t13 = xsdbool( t14 = abap_false ).
    IF t13 = abap_true.
      DATA(t17) = abap_false.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    DATA t19 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    DATA t20 TYPE string.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = t3.
    t21 = t22->super_class_name.
    t20 = t21->value.
    t19 = me->find_class( i_name = t20 ).
    t18 = t19.
    DATA t23 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    DATA(t30) = t18.
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = t29.
    IF t33 IS INITIAL.
      t32 = abap_true.
    ENDIF.
    IF t32 = abap_true.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t34.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t36 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA(t37) = t29.
      t36 = t37.
      t35 = t36->def.
      t31 = t35.
    ENDIF.
    t28 = t31.
    t27 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t27.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      t38 = t41.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t44) = t27.
      t43 = t44.
      t42 = t43->interfaces.
      t38 = t42.
    ENDIF.
    t26 = t38.
    t25 = t26.
    DATA t45 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t25.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t48.
      t45 = t48.
    ELSE.
      DATA t49 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t52) = t25.
      t51 = t52.
      t50 = t51.
      DATA t53 TYPE i.
      DATA t54 TYPE i.
      DATA(t55) = t50.
      t55->load( ).
      t54 = lines( t55->items ).
      t53 = t54.
      DATA t56 TYPE i.
      DATA(t57) = 0.
      t56 = t57.
      DATA t58 TYPE REF TO zcl_lnt_info_implementing.
      DATA t59 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t59.
      t58 = t59.
      DO.
        DATA t60 TYPE abap_bool.
        DATA(t61) = t56.
        DATA(t62) = t53.
        t60 = xsdbool( t61 < t62 ).
        IF t60 = abap_false.
          EXIT.
        ENDIF.
        DATA t63 TYPE REF TO zcl_lnt_info_implementing.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_info_implementing.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_info_implementing.
        CLEAR t65.
        DATA(t66) = t50.
        DATA(t67) = t56.
        DATA t68 TYPE REF TO object.
        t68 = t66->get( p0 = t67 ).
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
        t64 = t65.
        t63 = t64.
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE string.
        DATA t73 TYPE string.
        DATA(t74) = t63.
        t73 = t74->name.
        DATA(t75) = strlen( t73 ).
        t72 = t73.
        IF t72 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t72 TO UPPER CASE.
        ELSE.
          t72 = zlnt_runtime_uppe_91169605024d=>full( t72 ).
        ENDIF.
        DATA t76 TYPE string.
        DATA t77 TYPE string.
        DATA(t78) = t1.
        t77 = t78->object_name.
        DATA(t79) = strlen( t77 ).
        t76 = t77.
        IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t76 TO UPPER CASE.
        ELSE.
          t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
        ENDIF.
        t71 = xsdbool( t72 = t76 ).
        IF t71 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_info_implementing.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA(t82) = t63.
            t80 = t82.
          ELSE.
            DATA t83 TYPE REF TO zcl_lnt_info_implementing.
            CLEAR t83.
            t80 = t83.
          ENDIF.
          t58 = t80.
          EXIT.
        ENDIF.
        DATA t84 TYPE i.
        DATA(t85) = t56.
        DATA(t86) = 1.
        t84 = t85 + t86.
        t56 = t84.
      ENDDO.
      DATA(t87) = t58.
      t49 = t87.
      t45 = t49.
    ENDIF.
    t24 = t45.
    t23 = t24.
    DATA t88 TYPE abap_bool.
    DATA t89 TYPE abap_bool.
    DATA(t90) = t18.
    t89 = xsdbool( t90 IS BOUND ).
    t88 = t89.
    IF t89 = abap_true.
      DATA t91 TYPE abap_bool.
      DATA(t92) = t23.
      t91 = xsdbool( t92 IS BOUND ).
      t88 = t91.
    ENDIF.
    IF t88 = abap_true.
      DATA t93 TYPE abap_bool.
      DATA(t94) = t1.
      DATA t95 TYPE REF TO zcl_lnt_info_implementing.
      DATA(t96) = t23.
      t95 = t96.
      DATA t97 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t98 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA(t99) = t18.
      t98 = t99.
      t97 = t98->def.
      t93 = me->is_abstract( i_m = t94 i_interface_info = t95 i_def = t97 ).
      result = t93.
      RETURN.
    ELSE.
      DATA(t100) = abap_false.
      result = t100.

    ENDIF.
  ENDMETHOD.

  METHOD is_implemented.
    DATA(t1) = i_m.
    DATA(t2) = i_def.
    DATA(t3) = i_impl.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t6) = t3.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA(t11) = abap_false.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA(t16) = t1.
    t15 = t16->object_name.
    DATA(t17) = |~|.
    DATA(t18) = strlen( t15 ).
    t14 = |{ t15 }{ t17 }|.
    DATA t19 TYPE string.
    DATA t20 TYPE REF TO zcl_lnt_info_method_definition.
    DATA(t21) = t1.
    t20 = t21->method.
    t19 = t20->name.
    DATA(t22) = strlen( t14 ).
    t13 = |{ t14 }{ t19 }|.
    t12 = t13.
    DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t28) = t3.
    t27 = t28.
    t26 = t27->methods.
    t25 = t26.
    DATA t29 TYPE i.
    DATA t30 TYPE i.
    DATA(t31) = t25.
    t31->load( ).
    t30 = lines( t31->items ).
    t29 = t30.
    DATA t32 TYPE i.
    DATA(t33) = 0.
    t32 = t33.
    DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t35.
    t34 = t35.
    DO.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t32.
      DATA(t38) = t29.
      t36 = xsdbool( t37 < t38 ).
      IF t36 = abap_false.
        EXIT.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t41.
      DATA(t42) = t25.
      DATA(t43) = t32.
      DATA t44 TYPE REF TO object.
      t44 = t42->get( p0 = t43 ).
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
      t40 = t41.
      t39 = t40.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE string( ).
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t51) = t39.
      t50 = t51.
      DATA(t52) = VALUE string( ).
      DATA t53 TYPE string.
      DATA t54 TYPE string.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t57) = t50.
      t56 = t57->token.
      t55 = t56.
      DATA t58 TYPE string.
      DATA(t59) = t55.
      t58 = t59->str.
      t54 = t58.
      t53 = t54.
      DATA(t60) = VALUE abap_bool( ).
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
        CLEAR t61.
      ELSE.
        IF t64 > t65 - t63.
          t64 = t65 - t63.
        ENDIF.
        t61 = t62+t63(t64).
      ENDIF.
      DATA(t66) = |!|.
      t60 = xsdbool( t61 = t66 ).
      IF t60 = abap_true.
        DATA(t67) = VALUE string( ).
        DATA t68 TYPE string.
        DATA(t69) = t53.
        t68 = t69.
        DATA(t70) = VALUE string( ).
        DATA(t71) = t68.
        DATA(t72) = 1.
        DATA t73 TYPE i.
        DATA(t74) = t68.
        DATA(t75) = strlen( t74 ).
        t73 = t75.
        DATA(t76) = strlen( t71 ).
        IF t72 < 0.
          t72 = t72 + t76.
          IF t72 < 0.
            t72 = 0.
          ENDIF.
        ENDIF.
        IF t72 > t76 OR t73 <= 0.
          CLEAR t70.
        ELSE.
          IF t73 > t76 - t72.
            t73 = t76 - t72.
          ENDIF.
          t70 = t71+t72(t73).
        ENDIF.
        t67 = t70.
        t53 = t67.
      ENDIF.
      DATA(t77) = t53.
      t52 = t77.
      t49 = t52.
      DATA(t78) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      DATA t79 TYPE string.
      DATA(t80) = t12.
      DATA(t81) = strlen( t80 ).
      t79 = t80.
      IF t79 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t79 TO UPPER CASE.
      ELSE.
        t79 = zlnt_runtime_uppe_91169605024d=>full( t79 ).
      ENDIF.
      t47 = xsdbool( t48 = t79 ).
      IF t47 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t82.
        DATA(t83) = abap_true.
        IF t83 = abap_true.
          DATA(t84) = t39.
          t82 = t84.
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t85.
          t82 = t85.
        ENDIF.
        t34 = t82.
        EXIT.
      ENDIF.
      DATA t86 TYPE i.
      DATA(t87) = t32.
      DATA(t88) = 1.
      t86 = t87 + t88.
      t32 = t86.
    ENDDO.
    DATA(t89) = t34.
    t24 = t89.
    t23 = t24.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t92) = t23.
    t91 = t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    t93 = t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = t91.
    IF t96 IS INITIAL.
      t95 = abap_true.
    ENDIF.
    t90 = t95.
    IF t90 = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t98) = t2.
      t97 = t98->aliases_62bb.
      DATA t99 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t99.
      DATA t100 TYPE REF TO object.
      CLEAR t100.
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
        DATA(t104) = VALUE abap_bool( ).
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        DATA(t107) = t99.
        t106 = t107->component.
        DATA(t108) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA t109 TYPE string.
        DATA(t110) = t12.
        DATA(t111) = strlen( t110 ).
        t109 = t110.
        IF t109 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t109 TO UPPER CASE.
        ELSE.
          t109 = zlnt_runtime_uppe_91169605024d=>full( t109 ).
        ENDIF.
        t104 = xsdbool( t105 = t109 ).
        IF t104 = abap_true.
          DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t115 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t116) = t3.
          t115 = t116.
          t114 = t115->methods.
          t113 = t114.
          DATA t117 TYPE i.
          DATA t118 TYPE i.
          DATA(t119) = t113.
          t119->load( ).
          t118 = lines( t119->items ).
          t117 = t118.
          DATA t120 TYPE i.
          DATA(t121) = 0.
          t120 = t121.
          DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t123.
          t122 = t123.
          DO.
            DATA t124 TYPE abap_bool.
            DATA(t125) = t120.
            DATA(t126) = t117.
            t124 = xsdbool( t125 < t126 ).
            IF t124 = abap_false.
              EXIT.
            ENDIF.
            DATA t127 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t127.
            DATA t128 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t128.
            DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t129.
            DATA(t130) = t113.
            DATA(t131) = t120.
            DATA t132 TYPE REF TO object.
            t132 = t130->get( p0 = t131 ).
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
            t128 = t129.
            t127 = t128.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = VALUE string( ).
            DATA(t137) = VALUE string( ).
            DATA t138 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t139) = t127.
            t138 = t139.
            DATA(t140) = VALUE string( ).
            DATA t141 TYPE string.
            DATA t142 TYPE string.
            DATA t143 TYPE REF TO zcl_lnt_abstract_token.
            DATA t144 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t145) = t138.
            t144 = t145->token.
            t143 = t144.
            DATA t146 TYPE string.
            DATA(t147) = t143.
            t146 = t147->str.
            t142 = t146.
            t141 = t142.
            DATA(t148) = VALUE abap_bool( ).
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
              CLEAR t149.
            ELSE.
              IF t152 > t153 - t151.
                t152 = t153 - t151.
              ENDIF.
              t149 = t150+t151(t152).
            ENDIF.
            DATA(t154) = |!|.
            t148 = xsdbool( t149 = t154 ).
            IF t148 = abap_true.
              DATA(t155) = VALUE string( ).
              DATA t156 TYPE string.
              DATA(t157) = t141.
              t156 = t157.
              DATA(t158) = VALUE string( ).
              DATA(t159) = t156.
              DATA(t160) = 1.
              DATA t161 TYPE i.
              DATA(t162) = t156.
              DATA(t163) = strlen( t162 ).
              t161 = t163.
              DATA(t164) = strlen( t159 ).
              IF t160 < 0.
                t160 = t160 + t164.
                IF t160 < 0.
                  t160 = 0.
                ENDIF.
              ENDIF.
              IF t160 > t164 OR t161 <= 0.
                CLEAR t158.
              ELSE.
                IF t161 > t164 - t160.
                  t161 = t164 - t160.
                ENDIF.
                t158 = t159+t160(t161).
              ENDIF.
              t155 = t158.
              t141 = t155.
            ENDIF.
            DATA(t165) = t141.
            t140 = t165.
            t137 = t140.
            DATA(t166) = strlen( t137 ).
            t136 = t137.
            IF t136 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t136 TO UPPER CASE.
            ELSE.
              t136 = zlnt_runtime_uppe_91169605024d=>full( t136 ).
            ENDIF.
            DATA t167 TYPE string.
            DATA t168 TYPE string.
            DATA(t169) = t99.
            t168 = t169->name.
            DATA(t170) = strlen( t168 ).
            t167 = t168.
            IF t167 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t167 TO UPPER CASE.
            ELSE.
              t167 = zlnt_runtime_uppe_91169605024d=>full( t167 ).
            ENDIF.
            t135 = xsdbool( t136 = t167 ).
            IF t135 = abap_true.
              DATA t171 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t171.
              DATA(t172) = abap_true.
              IF t172 = abap_true.
                DATA(t173) = t127.
                t171 = t173.
              ELSE.
                DATA t174 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t174.
                t171 = t174.
              ENDIF.
              t122 = t171.
              EXIT.
            ENDIF.
            DATA t175 TYPE i.
            DATA(t176) = t120.
            DATA(t177) = 1.
            t175 = t176 + t177.
            t120 = t175.
          ENDDO.
          DATA(t178) = t122.
          t112 = t178.
          t23 = t112.
          EXIT.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t179) = VALUE abap_bool( ).
    DATA(t180) = VALUE abap_bool( ).
    DATA t181 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t182) = t23.
    t181 = t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    t183 = t184.
    DATA(t185) = VALUE abap_bool( ).
    DATA(t186) = t181.
    IF t186 IS INITIAL.
      t185 = abap_true.
    ENDIF.
    t180 = t185.
    t179 = t180.
    IF t180 = abap_true.
      DATA(t187) = VALUE abap_bool( ).
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t190) = t2.
      t189 = t190->super_class_name.
      t188 = t189.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      t191 = t192.
      DATA(t193) = VALUE abap_bool( ).
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = t188.
      IF t195 IS INITIAL.
        t194 = abap_true.
      ELSEIF t195->has = abap_false.
        t194 = abap_true.
      ENDIF.
      t193 = xsdbool( t194 = abap_false ).
      t187 = t193.
      t179 = t187.
    ENDIF.
    IF t179 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA t197 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA t198 TYPE string.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t200) = t2.
      t199 = t200->super_class_name.
      t198 = t199->value.
      t197 = me->find_class( i_name = t198 ).
      t196 = t197.
      DATA t201 TYPE abap_bool.
      DATA(t202) = t196.
      t201 = xsdbool( t202 IS BOUND ).
      IF t201 = abap_true.
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = t1.
        DATA t205 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t205.
        DATA t206 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA t207 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA(t208) = t196.
        t207 = t208.
        t206 = t207.
        DATA t209 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t209.
        DATA t210 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t210.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = t206.
        IF t212 IS INITIAL.
          t211 = abap_true.
        ENDIF.
        IF t211 = abap_true.
          DATA t213 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t213.
          t210 = t213.
        ELSE.
          DATA t214 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t215) = t206.
          t214 = t215->def.
          t210 = t214.
        ENDIF.
        t209 = t210.
        t205 = t209.
        DATA t216 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t216.
        DATA(t217) = abap_true.
        IF t217 = abap_true.
          DATA t218 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t218.
          DATA t219 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          DATA t220 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          DATA(t221) = t196.
          t220 = t221.
          t219 = t220.
          DATA t222 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t222.
          DATA t223 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t223.
          DATA(t224) = VALUE abap_bool( ).
          DATA(t225) = t219.
          IF t225 IS INITIAL.
            t224 = abap_true.
          ENDIF.
          IF t224 = abap_true.
            DATA t226 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            CLEAR t226.
            t223 = t226.
          ELSE.
            DATA t227 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t228) = t219.
            t227 = t228->impl.
            t223 = t227.
          ENDIF.
          t222 = t223.
          t218 = t222.
          t216 = t218.
        ELSE.
          DATA t229 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t229.
          t216 = t229.
        ENDIF.
        t203 = me->is_implemented( i_m = t204 i_def = t205 i_impl = t216 ).
        result = t203.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t230) = VALUE abap_bool( ).
    DATA t231 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t232) = t23.
    t231 = t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    t233 = t234.
    DATA(t235) = VALUE abap_bool( ).
    DATA(t236) = t231.
    IF t236 IS INITIAL.
      t235 = abap_true.
    ENDIF.
    t230 = t235.
    IF t230 = abap_true.
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t238) = t2.
      t237 = t238->interfaces.
      DATA t239 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t239.
      DATA t240 TYPE REF TO object.
      CLEAR t240.
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
        DATA t245 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t246 TYPE string.
        DATA(t247) = t239.
        t246 = t247->name.
        t245 = me->find_interface_by_name( i_name = t246 ).
        t244 = t245.
        DATA(t248) = VALUE abap_bool( ).
        DATA t249 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t250) = t244.
        t249 = t250.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        t251 = t252.
        DATA(t253) = VALUE abap_bool( ).
        DATA(t254) = t249.
        IF t254 IS INITIAL.
          t253 = abap_true.
        ENDIF.
        t248 = t253.
        IF t248 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t255 TYPE abap_bool.
        DATA t256 TYPE abap_bool.
        DATA(t257) = t1.
        DATA t258 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t259) = t244.
        t258 = t259.
        DATA t260 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        DATA(t261) = t3.
        t260 = t261.
        t256 = me->via_alias_in_interface( i_m = t257 i_intf = t258 i_impl = t260 ).
        t255 = t256.
        DATA(t262) = t255.
        IF t262 = abap_true.
          DATA(t263) = t255.
          result = t263.
          RETURN.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t264) = VALUE abap_bool( ).
    DATA t265 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t266) = t23.
    t265 = t266.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    t267 = t268.
    DATA(t269) = VALUE abap_bool( ).
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = t265.
    IF t271 IS INITIAL.
      t270 = abap_true.
    ENDIF.
    t269 = xsdbool( t270 = abap_false ).
    t264 = t269.
    result = t264.

  ENDMETHOD.

  METHOD via_alias_in_interface.
    DATA(t1) = i_m.
    DATA(t2) = i_intf.
    DATA(t3) = i_impl.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t2.
    t4 = t5->aliases_62bb.
    DATA t6 TYPE REF TO zcl_lnt_info_alias.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA(t14) = t6.
      t13 = t14->component.
      DATA(t15) = strlen( t13 ).
      t12 = t13.
      IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t12 TO UPPER CASE.
      ELSE.
        t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
      ENDIF.
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE string.
      DATA t19 TYPE string.
      DATA(t20) = t1.
      t19 = t20->object_name.
      DATA(t21) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      DATA(t22) = |~|.
      DATA(t23) = strlen( t18 ).
      t17 = |{ t18 }{ t22 }|.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_info_method_definition.
      DATA(t27) = t1.
      t26 = t27->method.
      t25 = t26->name.
      DATA(t28) = strlen( t25 ).
      t24 = t25.
      IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t24 TO UPPER CASE.
      ELSE.
        t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
      ENDIF.
      DATA(t29) = strlen( t17 ).
      t16 = |{ t17 }{ t24 }|.
      t11 = xsdbool( t12 = t16 ).
      IF t11 = abap_true.
        DATA t30 TYPE string.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA(t34) = t2.
        t33 = t34->name.
        DATA(t35) = |~|.
        DATA(t36) = strlen( t33 ).
        t32 = |{ t33 }{ t35 }|.
        DATA t37 TYPE string.
        DATA(t38) = t6.
        t37 = t38->name.
        DATA(t39) = strlen( t32 ).
        t31 = |{ t32 }{ t37 }|.
        t30 = t31.
        DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t44) = t3.
        t43 = t44->methods.
        t42 = t43.
        DATA t45 TYPE i.
        DATA t46 TYPE i.
        DATA(t47) = t42.
        t47->load( ).
        t46 = lines( t47->items ).
        t45 = t46.
        DATA t48 TYPE i.
        DATA(t49) = 0.
        t48 = t49.
        DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t51.
        t50 = t51.
        DO.
          DATA t52 TYPE abap_bool.
          DATA(t53) = t48.
          DATA(t54) = t45.
          t52 = xsdbool( t53 < t54 ).
          IF t52 = abap_false.
            EXIT.
          ENDIF.
          DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t56.
          DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t57.
          DATA(t58) = t42.
          DATA(t59) = t48.
          DATA t60 TYPE REF TO object.
          t60 = t58->get( p0 = t59 ).
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
          t56 = t57.
          t55 = t56.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE string( ).
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t67) = t55.
          t66 = t67.
          DATA(t68) = VALUE string( ).
          DATA t69 TYPE string.
          DATA t70 TYPE string.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t73) = t66.
          t72 = t73->token.
          t71 = t72.
          DATA t74 TYPE string.
          DATA(t75) = t71.
          t74 = t75->str.
          t70 = t74.
          t69 = t70.
          DATA(t76) = VALUE abap_bool( ).
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
            CLEAR t77.
          ELSE.
            IF t80 > t81 - t79.
              t80 = t81 - t79.
            ENDIF.
            t77 = t78+t79(t80).
          ENDIF.
          DATA(t82) = |!|.
          t76 = xsdbool( t77 = t82 ).
          IF t76 = abap_true.
            DATA(t83) = VALUE string( ).
            DATA t84 TYPE string.
            DATA(t85) = t69.
            t84 = t85.
            DATA(t86) = VALUE string( ).
            DATA(t87) = t84.
            DATA(t88) = 1.
            DATA t89 TYPE i.
            DATA(t90) = t84.
            DATA(t91) = strlen( t90 ).
            t89 = t91.
            DATA(t92) = strlen( t87 ).
            IF t88 < 0.
              t88 = t88 + t92.
              IF t88 < 0.
                t88 = 0.
              ENDIF.
            ENDIF.
            IF t88 > t92 OR t89 <= 0.
              CLEAR t86.
            ELSE.
              IF t89 > t92 - t88.
                t89 = t92 - t88.
              ENDIF.
              t86 = t87+t88(t89).
            ENDIF.
            t83 = t86.
            t69 = t83.
          ENDIF.
          DATA(t93) = t69.
          t68 = t93.
          t65 = t68.
          DATA(t94) = strlen( t65 ).
          t64 = t65.
          IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t64 TO UPPER CASE.
          ELSE.
            t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
          ENDIF.
          DATA t95 TYPE string.
          DATA(t96) = t30.
          DATA(t97) = strlen( t96 ).
          t95 = t96.
          IF t95 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t95 TO UPPER CASE.
          ELSE.
            t95 = zlnt_runtime_uppe_91169605024d=>full( t95 ).
          ENDIF.
          t63 = xsdbool( t64 = t95 ).
          IF t63 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t98.
            DATA(t99) = abap_true.
            IF t99 = abap_true.
              DATA(t100) = t55.
              t98 = t100.
            ELSE.
              DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t101.
              t98 = t101.
            ENDIF.
            t50 = t98.
            EXIT.
          ENDIF.
          DATA t102 TYPE i.
          DATA(t103) = t48.
          DATA(t104) = 1.
          t102 = t103 + t104.
          t48 = t102.
        ENDDO.
        DATA(t105) = t50.
        t41 = t105.
        t40 = t41.
        DATA t106 TYPE abap_bool.
        DATA(t107) = t40.
        t106 = xsdbool( t107 IS BOUND ).
        IF t106 = abap_true.
          DATA(t108) = abap_true.
          result = t108.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t109) = abap_false.
    result = t109.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_implement_methods_conf.
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
