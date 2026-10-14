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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implement_methods IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_implement_methods_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |implement_methods|.
    DATA(t3) = |Implement methods|.
    DATA(t4) = |Checks for abstract methods and methods from interfaces whic|.
    t4 = t4 && |h need implementing.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |INCLUDE programs are only checked in connection with their m|.
      t9 = t9 && |ain programs.|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t18) = |Syntax|.
      APPEND t18 TO t17->items.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA(t20) = |Quickfix|.
      APPEND t20 TO t19->items.
      DATA(t21) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      t14 = t21.
      t12 = t14.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      t12 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t12 i_pragma = t23 i_pseudo_comment = t24 ).
    result = t1.
    
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_im_mt_ts_im_mth.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( me->conf ).
    result = t1.
    
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_im_mt_ts_im_mth.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/implement_methods.ts:42|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = CAST zcl_lnt_abap_file( t1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA(t11) = CAST zcl_lnt_abap_file( t8 ).
    t10 = t11->structure.
    t7 = t10.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zcl_lnt_structure_node( t6 ).
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
      DATA(t19) = CAST zcl_lnt_abap_object( t2 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_ob_program ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zcl_lnt_ob_program.
        DATA t23 TYPE REF TO zcl_lnt_ob_program.
        DATA(t24) = CAST zcl_lnt_abap_object( t2 ).
        t23 ?= t24.
        t22 = t23.
        DATA t25 TYPE abap_bool.
        DATA(t26) = CAST zcl_lnt_ob_program( t22 ).
        t26->parse_xml(  ).
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA t29 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA(t30) = CAST zcl_lnt_ob_program( t22 ).
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
    DATA(t33) = CAST zcl_lnt_abap_object( t2 ).
    me->obj = t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zif_lnt_abap_file_information.
    DATA t36 TYPE REF TO zcl_lnt_abap_file.
    DATA(t37) = CAST zcl_lnt_abap_file( t1 ).
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t39) = CAST zcl_lnt_abap_file( t36 ).
    t38 = t39->info.
    t35 = t38.
    t34 = t35->list_class_definitions(  ).
    DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    LOOP AT t34->items INTO t41.
      t40 ?= t41.
      DATA t42 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t43 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t44 TYPE string.
      DATA(t45) = CAST zcl_lnt_info_class_definition( t40 ).
      t44 = t45->name.
      DATA(t46) = CAST zcl_lnt_abap_object( t2 ).
      t43 = me->lkp_implmnttn_in_objct( i_name = t44 i_obj_1ed0 = t46 ).
      t42 = t43.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t50) = CAST zcl_lnt_info_class_definition( t40 ).
      DATA(t51) = CAST zcl_lnt_inf_clss_implmnttn( t42 ).
      t49 = me->check_class( i_def = t50 i_impl = t51 ).
      t47 = t48->concat( p0 = t49 ).
      t3 = t47.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = CAST zcl_lnt_info_class_definition( t40 ).
      DATA(t56) = CAST zcl_lnt_inf_clss_implmnttn( t42 ).
      t54 = me->check_interfaces( i_def = t55 i_impl = t56 ).
      t52 = t53->concat( p0 = t54 ).
      t3 = t52.
    ENDLOOP.
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t57.
    
  ENDMETHOD.
  METHOD lkp_implmnttn_in_objct.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abap_object.
    DATA(t5) = CAST zcl_lnt_abap_object( t2 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_abap_object( t4 ).
    t6 = t7->parsed.
    t3 = t6.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t3->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t11 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t12 TYPE REF TO zif_lnt_abap_file_information.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      DATA(t14) = CAST zcl_lnt_abap_file( t8 ).
      t13 = t14.
      DATA t15 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t16) = CAST zcl_lnt_abap_file( t13 ).
      t15 = t16->info.
      t12 = t15.
      DATA(t17) = t1.
      t11 = t12->gt_clss_implmnttn_by_nm( i_name = t17 ).
      t10 = t11.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t20) = CAST zcl_lnt_inf_clss_implmnttn( t10 ).
      t19 = t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = CAST zcl_lnt_inf_clss_implmnttn( t19 ).
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t23 = xsdbool( t24 = abap_false ).
      t18 = t23.
      IF t18 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t26.
        DATA(t27) = abap_true.
        IF t27 = abap_true.
          DATA t28 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t29) = CAST zcl_lnt_inf_clss_implmnttn( t10 ).
          t28 = t29.
          t26 = t28.
        ELSE.
          DATA t30 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t30.
          t26 = t30.
        ENDIF.
        result = t26.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t31 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t31.
    result = t31.
    
  ENDMETHOD.
  METHOD lookup_definition_in_object.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abap_object.
    DATA(t4) = CAST zcl_lnt_abap_object( me->obj ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_abap_object( t3 ).
    t5 = t6->parsed.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t2->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t10 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t11 TYPE REF TO zif_lnt_abap_file_information.
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      DATA(t13) = CAST zcl_lnt_abap_file( t7 ).
      t12 = t13.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t15) = CAST zcl_lnt_abap_file( t12 ).
      t14 = t15->info.
      t11 = t14.
      DATA(t16) = t1.
      t10 = t11->get_class_definition_by_name( i_name = t16 ).
      t9 = t10.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t19) = CAST zcl_lnt_info_class_definition( t9 ).
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t20 = t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = CAST zcl_lnt_info_class_definition( t18 ).
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      t22 = xsdbool( t23 = abap_false ).
      t17 = t22.
      IF t17 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA t27 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t28) = CAST zcl_lnt_info_class_definition( t9 ).
          t27 = t28.
          t25 = t27.
        ELSE.
          DATA t29 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t29.
          t25 = t29.
        ENDIF.
        result = t25.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t30.
    result = t30.
    
  ENDMETHOD.
  METHOD check_class.
    DATA(t1) = CAST zcl_lnt_info_class_definition( i_def ).
    DATA(t2) = CAST zcl_lnt_inf_clss_implmnttn( i_impl ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_info_class_definition( t1 ).
    t5 = t6->methods.
    DATA t7 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t5->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t14) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zcl_lnt_inf_clss_implmnttn( t13 ).
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      IF t16 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t18.
        t15 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t20 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        DATA(t21) = CAST zcl_lnt_inf_clss_implmnttn( t13 ).
        t20 = t21.
        t19 = t20->methods.
        t15 = t19.
      ENDIF.
      t12 = t15.
      t11 = t12.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t25.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t26.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
        t28 = t29.
        t27 = t28.
        DATA t30 TYPE i.
        DATA t31 TYPE i.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
        t31 = lines( t32->items ).
        t30 = t31.
        DATA t33 TYPE i.
        DATA(t34) = 0.
        t33 = t34.
        DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t36.
        t35 = t36.
        DO.
          DATA t37 TYPE abap_bool.
          DATA(t38) = t33.
          DATA(t39) = t30.
          t37 = xsdbool( t38 < t39 ).
          IF t37 = abap_false.
            EXIT.
          ENDIF.
          DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t27 ).
          DATA(t44) = t33.
          DATA t45 TYPE REF TO object.
          t45 = t43->get( p0 = t44 ).
          t42 ?= t45.
          t41 = t42.
          t40 = t41.
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE string( ).
          DATA(t48) = VALUE string( ).
          DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t50) = CAST zcl_lnt_fi_identifier( t40 ).
          t49 = t50.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE string.
          DATA t53 TYPE string.
          DATA t54 TYPE REF TO zcl_lnt_abstract_token.
          DATA t55 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t56) = CAST zcl_lnt_fi_identifier( t49 ).
          t55 = t56->token.
          t54 = t55.
          DATA t57 TYPE string.
          DATA(t58) = CAST zcl_lnt_abstract_token( t54 ).
          t57 = t58->str.
          t53 = t57.
          t52 = t53.
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE string( ).
          DATA(t61) = t52.
          DATA(t62) = 0.
          DATA(t63) = 1.
          DATA(t64) = strlen( t61 ).
          IF t62 < 0.
            t62 = t62 + t64.
            IF t62 < 0.
              t62 = 0.
            ENDIF.
          ENDIF.
          IF t62 > t64 OR t63 <= 0.
            CLEAR t60.
          ELSE.
            IF t63 > t64 - t62.
              t63 = t64 - t62.
            ENDIF.
            t60 = t61+t62(t63).
          ENDIF.
          DATA(t65) = |!|.
          t59 = xsdbool( t60 = t65 ).
          IF t59 = abap_true.
            DATA(t66) = VALUE string( ).
            DATA t67 TYPE string.
            DATA(t68) = t52.
            t67 = t68.
            DATA(t69) = VALUE string( ).
            DATA(t70) = t67.
            DATA(t71) = 1.
            DATA t72 TYPE i.
            DATA(t73) = t67.
            DATA(t74) = strlen( t73 ).
            t72 = t74.
            DATA(t75) = strlen( t70 ).
            IF t71 < 0.
              t71 = t71 + t75.
              IF t71 < 0.
                t71 = 0.
              ENDIF.
            ENDIF.
            IF t71 > t75 OR t72 <= 0.
              CLEAR t69.
            ELSE.
              IF t72 > t75 - t71.
                t72 = t75 - t71.
              ENDIF.
              t69 = t70+t71(t72).
            ENDIF.
            t66 = t69.
            t52 = t66.
          ENDIF.
          DATA(t76) = t52.
          t51 = t76.
          t48 = t51.
          DATA(t77) = strlen( t48 ).
          t47 = t48.
          IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t47 TO UPPER CASE.
          ELSE.
            t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
          ENDIF.
          DATA t78 TYPE string.
          DATA t79 TYPE string.
          DATA(t80) = CAST zcl_lnt_info_method_definition( t7 ).
          t79 = t80->name.
          DATA(t81) = strlen( t79 ).
          t78 = t79.
          IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t78 TO UPPER CASE.
          ELSE.
            t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
          ENDIF.
          t46 = xsdbool( t47 = t78 ).
          IF t46 = abap_true.
            DATA t82 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t82.
            DATA(t83) = abap_true.
            IF t83 = abap_true.
              DATA(t84) = CAST zcl_lnt_fi_identifier( t40 ).
              t82 = t84.
            ELSE.
              DATA t85 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t85.
              t82 = t85.
            ENDIF.
            t35 = t82.
            EXIT.
          ENDIF.
          DATA t86 TYPE i.
          DATA(t87) = t33.
          DATA(t88) = 1.
          t86 = t87 + t88.
          t33 = t86.
        ENDDO.
        DATA(t89) = CAST zcl_lnt_fi_identifier( t35 ).
        t26 = t89.
        t22 = t26.
      ENDIF.
      t10 = t22.
      t9 = t10.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE abap_bool.
      DATA(t92) = CAST zcl_lnt_info_method_definition( t7 ).
      t91 = t92->is_abstract.
      DATA(t93) = abap_true.
      t90 = xsdbool( t91 = t93 ).
      IF t90 = abap_true.
        DATA(t94) = VALUE abap_bool( ).
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t96) = CAST zcl_lnt_fi_identifier( t9 ).
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t97 = t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = CAST zcl_lnt_fi_identifier( t95 ).
        IF t101 IS INITIAL.
          t100 = abap_true.
        ENDIF.
        t99 = xsdbool( t100 = abap_false ).
        t94 = t99.
        IF t94 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_issue.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_issue.
          CLEAR t103.
          DATA t104 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t105) = CAST zcl_lnt_fi_identifier( t9 ).
          t104 = t105.
          DATA t106 TYPE string.
          DATA t107 TYPE string.
          DATA(t108) = |Do not implement abstract method "|.
          DATA t109 TYPE string.
          DATA(t110) = CAST zcl_lnt_info_method_definition( t7 ).
          t109 = t110->name.
          DATA(t111) = strlen( t108 ).
          t107 = |{ t108 }{ t109 }|.
          DATA(t112) = |"|.
          DATA(t113) = strlen( t107 ).
          t106 = |{ t107 }{ t112 }|.
          DATA(t114) = VALUE string( ).
          DATA t115 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t115.
          DATA(t116) = |implement_methods|.
          DATA(t117) = |Implement methods|.
          DATA(t118) = |Checks for abstract methods and methods from interfaces whic|.
          t118 = t118 && |h need implementing.|.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t122) = abap_true.
          IF t122 = abap_true.
            DATA(t123) = |INCLUDE programs are only checked in connection with their m|.
            t123 = t123 && |ain programs.|.
            DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t124->has = abap_true.
            t124->value = t123.
            t121 = t124.
          ELSE.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t121 = t125.
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          DATA(t127) = abap_true.
          IF t127 = abap_true.
            DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t130.
            t129 = t130.
            DATA(t131) = CAST zlnt_runtime_arra_8ecd6afe19e0( t129 ).
            DATA(t132) = |Syntax|.
            APPEND t132 TO t131->items.
            DATA(t133) = CAST zlnt_runtime_arra_8ecd6afe19e0( t129 ).
            DATA(t134) = |Quickfix|.
            APPEND t134 TO t133->items.
            DATA(t135) = CAST zlnt_runtime_arra_8ecd6afe19e0( t129 ).
            t128 = t135.
            t126 = t128.
          ELSE.
            DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t136.
            t126 = t136.
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t115 = NEW zcl_lnt_irule_metadata( i_key = t116 i_title = t117 i_short_description = t118 i_bad_example = t119 i_good_example = t120 i_extended_information = t121 i_tags = t126 i_pragma = t137 i_pseudo_comment = t138 ).
          t114 = t115->key.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t140) = CAST zcl_lnt_implement_methods_conf( me->conf ).
          t139 = t140->severity.
          DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t141.
          t103 = zcl_lnt_issue=>at_identifier( i_identifier = t104 i_message_26cb = t106 i_key = t114 i_severity = t139 i_fix = t141 ).
          t102 = t103.
          DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t143) = CAST zcl_lnt_issue( t102 ).
          APPEND t143 TO t142->items.
        ENDIF.
        DATA t144 TYPE abap_bool.
        DATA(t145) = CAST zcl_lnt_info_class_definition( t1 ).
        t144 = t145->is_abstract.
        IF t144 = abap_true.
          CONTINUE.
        ELSE.
          DATA t146 TYPE string.
          DATA t147 TYPE string.
          DATA(t148) = |Abstract methods can only be defined in abstract classes, |.
          DATA t149 TYPE string.
          DATA(t150) = CAST zcl_lnt_info_method_definition( t7 ).
          t149 = t150->name.
          DATA(t151) = strlen( t148 ).
          t147 = |{ t148 }{ t149 }|.
          t146 = t147.
          DATA t152 TYPE REF TO zcl_lnt_issue.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_issue.
          CLEAR t153.
          DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t155) = CAST zcl_lnt_info_method_definition( t7 ).
          t154 = t155->identifier.
          DATA(t156) = t146.
          DATA(t157) = VALUE string( ).
          DATA t158 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t158.
          DATA(t159) = |implement_methods|.
          DATA(t160) = |Implement methods|.
          DATA(t161) = |Checks for abstract methods and methods from interfaces whic|.
          t161 = t161 && |h need implementing.|.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA(t166) = |INCLUDE programs are only checked in connection with their m|.
            t166 = t166 && |ain programs.|.
            DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t167->has = abap_true.
            t167->value = t166.
            t164 = t167.
          ELSE.
            DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t168.
            t164 = t168.
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t169.
          DATA(t170) = abap_true.
          IF t170 = abap_true.
            DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t173.
            t172 = t173.
            DATA(t174) = CAST zlnt_runtime_arra_8ecd6afe19e0( t172 ).
            DATA(t175) = |Syntax|.
            APPEND t175 TO t174->items.
            DATA(t176) = CAST zlnt_runtime_arra_8ecd6afe19e0( t172 ).
            DATA(t177) = |Quickfix|.
            APPEND t177 TO t176->items.
            DATA(t178) = CAST zlnt_runtime_arra_8ecd6afe19e0( t172 ).
            t171 = t178.
            t169 = t171.
          ELSE.
            DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t179.
            t169 = t179.
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t158 = NEW zcl_lnt_irule_metadata( i_key = t159 i_title = t160 i_short_description = t161 i_bad_example = t162 i_good_example = t163 i_extended_information = t164 i_tags = t169 i_pragma = t180 i_pseudo_comment = t181 ).
          t157 = t158->key.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t183) = CAST zcl_lnt_implement_methods_conf( me->conf ).
          t182 = t183->severity.
          DATA t184 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t184.
          t153 = zcl_lnt_issue=>at_identifier( i_identifier = t154 i_message_26cb = t156 i_key = t157 i_severity = t182 i_fix = t184 ).
          t152 = t153.
          DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t186) = CAST zcl_lnt_issue( t152 ).
          APPEND t186 TO t185->items.
          EXIT.
        ENDIF.
      ENDIF.
      DATA(t187) = VALUE abap_bool( ).
      DATA t188 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t189) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
      t188 = t189.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      t190 = t191.
      DATA(t192) = VALUE abap_bool( ).
      DATA(t193) = CAST zcl_lnt_inf_clss_implmnttn( t188 ).
      IF t193 IS INITIAL.
        t192 = abap_true.
      ENDIF.
      t187 = t192.
      IF t187 = abap_true.
        DATA t194 TYPE string.
        DATA t195 TYPE string.
        DATA t196 TYPE string.
        DATA(t197) = |Class implementation for "|.
        DATA t198 TYPE string.
        DATA(t199) = CAST zcl_lnt_info_class_definition( t1 ).
        t198 = t199->name.
        DATA(t200) = strlen( t197 ).
        t196 = |{ t197 }{ t198 }|.
        DATA(t201) = |" not found|.
        DATA(t202) = strlen( t196 ).
        t195 = |{ t196 }{ t201 }|.
        t194 = t195.
        DATA t203 TYPE REF TO zcl_lnt_issue.
        CLEAR t203.
        DATA t204 TYPE REF TO zcl_lnt_issue.
        CLEAR t204.
        DATA t205 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t206) = CAST zcl_lnt_info_class_definition( t1 ).
        t205 = t206->identifier.
        DATA(t207) = t194.
        DATA(t208) = VALUE string( ).
        DATA t209 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t209.
        DATA(t210) = |implement_methods|.
        DATA(t211) = |Implement methods|.
        DATA(t212) = |Checks for abstract methods and methods from interfaces whic|.
        t212 = t212 && |h need implementing.|.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t215.
        DATA(t216) = abap_true.
        IF t216 = abap_true.
          DATA(t217) = |INCLUDE programs are only checked in connection with their m|.
          t217 = t217 && |ain programs.|.
          DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t218->has = abap_true.
          t218->value = t217.
          t215 = t218.
        ELSE.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          t215 = t219.
        ENDIF.
        DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t220.
        DATA(t221) = abap_true.
        IF t221 = abap_true.
          DATA t222 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t223 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t224.
          t223 = t224.
          DATA(t225) = CAST zlnt_runtime_arra_8ecd6afe19e0( t223 ).
          DATA(t226) = |Syntax|.
          APPEND t226 TO t225->items.
          DATA(t227) = CAST zlnt_runtime_arra_8ecd6afe19e0( t223 ).
          DATA(t228) = |Quickfix|.
          APPEND t228 TO t227->items.
          DATA(t229) = CAST zlnt_runtime_arra_8ecd6afe19e0( t223 ).
          t222 = t229.
          t220 = t222.
        ELSE.
          DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t230.
          t220 = t230.
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t231.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        t209 = NEW zcl_lnt_irule_metadata( i_key = t210 i_title = t211 i_short_description = t212 i_bad_example = t213 i_good_example = t214 i_extended_information = t215 i_tags = t220 i_pragma = t231 i_pseudo_comment = t232 ).
        t208 = t209->key.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t234) = CAST zcl_lnt_implement_methods_conf( me->conf ).
        t233 = t234->severity.
        DATA t235 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t235.
        t204 = zcl_lnt_issue=>at_identifier( i_identifier = t205 i_message_26cb = t207 i_key = t208 i_severity = t233 i_fix = t235 ).
        t203 = t204.
        DATA(t236) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t237) = CAST zcl_lnt_issue( t203 ).
        APPEND t237 TO t236->items.
      ELSE.
        DATA(t238) = VALUE abap_bool( ).
        DATA t239 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t240) = CAST zcl_lnt_fi_identifier( t9 ).
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        t241 = t242.
        DATA(t243) = VALUE abap_bool( ).
        DATA(t244) = CAST zcl_lnt_fi_identifier( t239 ).
        IF t244 IS INITIAL.
          t243 = abap_true.
        ENDIF.
        t238 = t243.
        IF t238 = abap_true.
          DATA t245 TYPE string.
          DATA t246 TYPE string.
          DATA t247 TYPE string.
          DATA(t248) = |Implement method "|.
          DATA t249 TYPE string.
          DATA(t250) = CAST zcl_lnt_info_method_definition( t7 ).
          t249 = t250->name.
          DATA(t251) = strlen( t248 ).
          t247 = |{ t248 }{ t249 }|.
          DATA(t252) = |"|.
          DATA(t253) = strlen( t247 ).
          t246 = |{ t247 }{ t252 }|.
          t245 = t246.
          DATA t254 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t255 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t256 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t257) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
          t256 = t257.
          DATA t258 TYPE string.
          DATA(t259) = CAST zcl_lnt_info_method_definition( t7 ).
          t258 = t259->name.
          t255 = me->build_fix( i_impl = t256 i_method_name = t258 ).
          t254 = t255.
          DATA t260 TYPE REF TO zcl_lnt_issue.
          CLEAR t260.
          DATA t261 TYPE REF TO zcl_lnt_issue.
          CLEAR t261.
          DATA t262 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t263 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t264) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
          t263 = t264.
          t262 = t263->identifier.
          DATA(t265) = t245.
          DATA(t266) = VALUE string( ).
          DATA t267 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t267.
          DATA(t268) = |implement_methods|.
          DATA(t269) = |Implement methods|.
          DATA(t270) = |Checks for abstract methods and methods from interfaces whic|.
          t270 = t270 && |h need implementing.|.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t272.
          DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t273.
          DATA(t274) = abap_true.
          IF t274 = abap_true.
            DATA(t275) = |INCLUDE programs are only checked in connection with their m|.
            t275 = t275 && |ain programs.|.
            DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t276->has = abap_true.
            t276->value = t275.
            t273 = t276.
          ELSE.
            DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t277.
            t273 = t277.
          ENDIF.
          DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t278.
          DATA(t279) = abap_true.
          IF t279 = abap_true.
            DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t282.
            t281 = t282.
            DATA(t283) = CAST zlnt_runtime_arra_8ecd6afe19e0( t281 ).
            DATA(t284) = |Syntax|.
            APPEND t284 TO t283->items.
            DATA(t285) = CAST zlnt_runtime_arra_8ecd6afe19e0( t281 ).
            DATA(t286) = |Quickfix|.
            APPEND t286 TO t285->items.
            DATA(t287) = CAST zlnt_runtime_arra_8ecd6afe19e0( t281 ).
            t280 = t287.
            t278 = t280.
          ELSE.
            DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t288.
            t278 = t288.
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t289.
          DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t290.
          t267 = NEW zcl_lnt_irule_metadata( i_key = t268 i_title = t269 i_short_description = t270 i_bad_example = t271 i_good_example = t272 i_extended_information = t273 i_tags = t278 i_pragma = t289 i_pseudo_comment = t290 ).
          t266 = t267->key.
          DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t292) = CAST zcl_lnt_implement_methods_conf( me->conf ).
          t291 = t292->severity.
          DATA(t293) = CAST zlnt_runtime_map__4fdf767b61ba( t254 ).
          t261 = zcl_lnt_issue=>at_identifier( i_identifier = t262 i_message_26cb = t265 i_key = t266 i_severity = t291 i_fix = t293 ).
          t260 = t261.
          DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t295) = CAST zcl_lnt_issue( t260 ).
          APPEND t295 TO t294->items.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t296.
    
  ENDMETHOD.
  METHOD build_fix.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_inf_clss_implmnttn( i_impl ).
    DATA(t2) = i_method_name.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_object( me->obj ).
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t9) = CAST zcl_lnt_inf_clss_implmnttn( t1 ).
    t8 = t9->identifier.
    t7 = t8.
    DATA t10 TYPE string.
    DATA(t11) = CAST zcl_lnt_fi_identifier( t7 ).
    t10 = t11->filename.
    t6 = t10.
    t4 = t5->get_abap_file_by_name( i_filename = t6 ).
    t3 = t4.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = CAST zcl_lnt_abap_file( t3 ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zcl_lnt_abap_file( t13 ).
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
    DATA(t27) = CAST zcl_lnt_abap_file( t3 ).
    t26 = t27.
    t25 = t26.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA(t29) = CAST zcl_lnt_abap_file( t25 ).
    t28 = t29->structure.
    t24 = t28.
    t23 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_structure_node( t23 ).
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
      DATA(t36) = CAST zcl_lnt_structure_node( t23 ).
      t35 = t36.
      DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d396_f66c9403a435 ).
      t34 = t35->find_all_statements( i_type_9913 = t37 ).
      t30 = t34.
    ENDIF.
    t22 = t30.
    t21 = t22.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE abap_bool.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t21 ).
    t39 = xsdbool( t40 IS BOUND ).
    IF t39 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t21 ).
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
    LOOP AT t20->items INTO t45.
      t44 ?= t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t50.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA(t54) = CAST zcl_lnt_statement_node( t44 ).
      DATA(t55) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687 ).
      t53 = t54->find_first_expression( i_type_9913 = t55 ).
      t52 = t53.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = CAST zcl_lnt_expression_node( t52 ).
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t59.
        t56 = t59.
      ELSE.
        DATA t60 TYPE REF TO zcl_lnt_abstract_token.
        DATA t61 TYPE REF TO zcl_lnt_expression_node.
        DATA(t62) = CAST zcl_lnt_expression_node( t52 ).
        t61 = t62.
        t60 = t61->get_first_token(  ).
        t56 = t60.
      ENDIF.
      t51 = t56.
      t50 = t51.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = CAST zcl_lnt_abstract_token( t50 ).
      IF t65 IS INITIAL.
        t64 = abap_true.
      ENDIF.
      IF t64 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t63 = t66.
      ELSE.
        DATA t67 TYPE string.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t70) = CAST zcl_lnt_abstract_token( t50 ).
        t69 = t70.
        t68 = t69.
        DATA t71 TYPE string.
        DATA(t72) = CAST zcl_lnt_abstract_token( t68 ).
        t71 = t72->str.
        t67 = t71.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t67.
        t63 = t73.
      ENDIF.
      t49 = t63.
      t48 = t49.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
      IF t76 IS INITIAL.
        t75 = abap_true.
      ELSEIF t76->has = abap_false.
        t75 = abap_true.
      ENDIF.
      IF t75 = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        t74 = t77.
      ELSE.
        DATA t78 TYPE string.
        DATA t79 TYPE string.
        DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
        t79 = t80->value.
        DATA(t81) = strlen( t79 ).
        t78 = t79.
        IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t78 TO UPPER CASE.
        ELSE.
          t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
        ENDIF.
        DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t82->has = abap_true.
        t82->value = t78.
        t74 = t82.
      ENDIF.
      t47 = t74.
      t46 = t47.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = CAST zlnt_runtime_opti_4ba3bdccd169( t46 ).
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      DATA(t86) = abap_true.
      IF t86 = abap_true.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE string( ).
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t90 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t91) = CAST zcl_lnt_inf_clss_implmnttn( t1 ).
        t90 = t91->identifier.
        t89 = t90.
        DATA(t92) = VALUE string( ).
        DATA t93 TYPE string.
        DATA t94 TYPE string.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA t96 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t97) = CAST zcl_lnt_fi_identifier( t89 ).
        t96 = t97->token.
        t95 = t96.
        DATA t98 TYPE string.
        DATA(t99) = CAST zcl_lnt_abstract_token( t95 ).
        t98 = t99->str.
        t94 = t98.
        t93 = t94.
        DATA(t100) = VALUE abap_bool( ).
        DATA(t101) = VALUE string( ).
        DATA(t102) = t93.
        DATA(t103) = 0.
        DATA(t104) = 1.
        DATA(t105) = strlen( t102 ).
        IF t103 < 0.
          t103 = t103 + t105.
          IF t103 < 0.
            t103 = 0.
          ENDIF.
        ENDIF.
        IF t103 > t105 OR t104 <= 0.
          CLEAR t101.
        ELSE.
          IF t104 > t105 - t103.
            t104 = t105 - t103.
          ENDIF.
          t101 = t102+t103(t104).
        ENDIF.
        DATA(t106) = |!|.
        t100 = xsdbool( t101 = t106 ).
        IF t100 = abap_true.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE string.
          DATA(t109) = t93.
          t108 = t109.
          DATA(t110) = VALUE string( ).
          DATA(t111) = t108.
          DATA(t112) = 1.
          DATA t113 TYPE i.
          DATA(t114) = t108.
          DATA(t115) = strlen( t114 ).
          t113 = t115.
          DATA(t116) = strlen( t111 ).
          IF t112 < 0.
            t112 = t112 + t116.
            IF t112 < 0.
              t112 = 0.
            ENDIF.
          ENDIF.
          IF t112 > t116 OR t113 <= 0.
            CLEAR t110.
          ELSE.
            IF t113 > t116 - t112.
              t113 = t116 - t112.
            ENDIF.
            t110 = t111+t112(t113).
          ENDIF.
          t107 = t110.
          t93 = t107.
        ENDIF.
        DATA(t117) = t93.
        t92 = t117.
        t88 = t92.
        DATA(t118) = strlen( t88 ).
        t87 = t88.
        IF t87 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t87 TO UPPER CASE.
        ELSE.
          t87 = zlnt_runtime_uppe_91169605024d=>full( t87 ).
        ENDIF.
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t87.
        t85 = t119.
      ELSE.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        t85 = t120.
      ENDIF.
      DATA(t121) = VALUE abap_bool( ).
      DATA(t122) = VALUE abap_bool( ).
      IF t84 IS BOUND.
        t121 = t84->has.
      ENDIF.
      IF t85 IS BOUND.
        t122 = t85->has.
      ENDIF.
      IF t121 = t122.
        IF t121 = abap_false.
          t83 = abap_true.
        ELSEIF t84->value = t85->value.
          t83 = abap_true.
        ENDIF.
      ENDIF.
      IF t83 = abap_true.
        DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t123.
        DATA(t124) = abap_true.
        IF t124 = abap_true.
          DATA t125 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_abap_file.
          DATA(t127) = CAST zcl_lnt_abap_file( t3 ).
          t126 = t127.
          DATA t128 TYPE REF TO zcl_lnt_position.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_abstract_token.
          DATA t130 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t131) = CAST zcl_lnt_statement_node( t44 ).
          t130 = t131->get_last_token(  ).
          t129 = t130.
          DATA t132 TYPE REF TO zcl_lnt_position.
          CLEAR t132.
          DATA t133 TYPE int8.
          DATA t134 TYPE REF TO zcl_lnt_position.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA(t136) = CAST zcl_lnt_abstract_token( t129 ).
          t135 = t136->start.
          t134 = t135.
          DATA t137 TYPE int8.
          DATA(t138) = CAST zcl_lnt_position( t134 ).
          t137 = t138->row.
          t133 = t137.
          DATA t139 TYPE int8.
          DATA t140 TYPE int8.
          DATA t141 TYPE REF TO zcl_lnt_position.
          DATA t142 TYPE REF TO zcl_lnt_position.
          DATA(t143) = CAST zcl_lnt_abstract_token( t129 ).
          t142 = t143->start.
          t141 = t142.
          DATA t144 TYPE int8.
          DATA(t145) = CAST zcl_lnt_position( t141 ).
          t144 = t145->col.
          t140 = t144.
          DATA t146 TYPE int8.
          DATA t147 TYPE i.
          DATA t148 TYPE string.
          DATA(t149) = CAST zcl_lnt_abstract_token( t129 ).
          t148 = t149->str.
          DATA(t150) = strlen( t148 ).
          t147 = t150.
          t146 = t147.
          t139 = t140 + t146.
          IF t139 < range_int8_bound_min OR t139 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t132 = NEW zcl_lnt_position( i_row = t133 i_col = t139 ).
          t128 = t132.
          DATA t151 TYPE string.
          DATA t152 TYPE string.
          DATA(t153) = ||.
          DATA t154 TYPE c LENGTH 1.
          CLEAR t154.
          t154 = cl_abap_conv_in_ce=>uccpi( 10 ).
          CONCATENATE t153 t154 INTO t153 RESPECTING BLANKS.
          t153 = t153 && |  METHOD |.
          DATA t155 TYPE string.
          DATA(t156) = t2.
          DATA(t157) = strlen( t156 ).
          t155 = t156.
          TRANSLATE t155 TO LOWER CASE.
          DATA(t158) = strlen( t153 ).
          t152 = |{ t153 }{ t155 }|.
          DATA(t159) = |.|.
          DATA t160 TYPE c LENGTH 1.
          CLEAR t160.
          t160 = cl_abap_conv_in_ce=>uccpi( 10 ).
          CONCATENATE t159 t160 INTO t159 RESPECTING BLANKS.
          t159 = t159 && |    RETURN. " todo, implement method|.
          DATA t161 TYPE c LENGTH 1.
          CLEAR t161.
          t161 = cl_abap_conv_in_ce=>uccpi( 10 ).
          CONCATENATE t159 t161 INTO t159 RESPECTING BLANKS.
          t159 = t159 && |  ENDMETHOD.|.
          DATA(t162) = strlen( t152 ).
          t151 = |{ t152 }{ t159 }|.
          t125 = zcl_lnt_edit_helper=>insert_at( i_file = t126 i_pos = t128 i_text = t151 ).
          t123 = t125.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t163.
          t123 = t163.
        ENDIF.
        result = t123.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t164.
    result = t164.
    
  ENDMETHOD.
  METHOD find_interface.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t4 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t5) = t2.
    t4 = me->find_interface_by_name( i_name = t5 ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t8) = CAST zcl_lnt_inf_intrfc_dfntn( t3 ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_inf_intrfc_dfntn( t7 ).
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
      DATA(t23) = CAST zcl_lnt_fi_identifier( t1 ).
      DATA(t24) = t13.
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t26.
      DATA(t27) = |implement_methods|.
      DATA(t28) = |Implement methods|.
      DATA(t29) = |Checks for abstract methods and methods from interfaces whic|.
      t29 = t29 && |h need implementing.|.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = |INCLUDE programs are only checked in connection with their m|.
        t34 = t34 && |ain programs.|.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t34.
        t32 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        t32 = t36.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t41.
        t40 = t41.
        DATA(t42) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
        DATA(t43) = |Syntax|.
        APPEND t43 TO t42->items.
        DATA(t44) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
        DATA(t45) = |Quickfix|.
        APPEND t45 TO t44->items.
        DATA(t46) = CAST zlnt_runtime_arra_8ecd6afe19e0( t40 ).
        t39 = t46.
        t37 = t39.
      ELSE.
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t47.
        t37 = t47.
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t26 = NEW zcl_lnt_irule_metadata( i_key = t27 i_title = t28 i_short_description = t29 i_bad_example = t30 i_good_example = t31 i_extended_information = t32 i_tags = t37 i_pragma = t48 i_pseudo_comment = t49 ).
      t25 = t26->key.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t51) = CAST zcl_lnt_implement_methods_conf( me->conf ).
      t50 = t51->severity.
      DATA t52 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t52.
      t22 = zcl_lnt_issue=>at_identifier( i_identifier = t23 i_message_26cb = t24 i_key = t25 i_severity = t50 i_fix = t52 ).
      t21 = t22.
      DATA(t53) = CAST zcl_lnt_issue( t21 ).
      result = t53.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA(t55) = CAST zcl_lnt_inf_intrfc_dfntn( t3 ).
    t54 = t55.
    result = t54.
    
  ENDMETHOD.
  METHOD find_interface_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_object.
    CLEAR t6.
    DATA(t7) = CAST zif_lnt_registry( me->reg ).
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = |INTF|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t8 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = t1.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t13 = t17.
    ENDIF.
    t6 = t7->get_object( i_type_9913 = t8 i_name = t13 ).
    DATA t18 TYPE REF TO object.
    t18 = t6.
    t5 ?= t18.
    t4 = t5.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_ob_interface.
    DATA(t21) = CAST zcl_lnt_ob_interface( t4 ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zcl_lnt_ob_interface( t20 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zcl_lnt_abap_object.
      DATA(t28) = CAST zcl_lnt_abap_object( me->obj ).
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = CAST zcl_lnt_abap_object( t27 ).
      t29 = t30->parsed.
      t26 = t29.
      DATA t31 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      LOOP AT t26->items INTO t32.
        t31 ?= t32.
        DATA t33 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t34 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t35 TYPE REF TO zif_lnt_abap_file_information.
        DATA t36 TYPE REF TO zcl_lnt_abap_file.
        DATA(t37) = CAST zcl_lnt_abap_file( t31 ).
        t36 = t37.
        DATA t38 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t39) = CAST zcl_lnt_abap_file( t36 ).
        t38 = t39->info.
        t35 = t38.
        DATA(t40) = t1.
        t34 = t35->gt_intrfc_dfntn_by_nm( i_name = t40 ).
        t33 = t34.
        DATA t41 TYPE abap_bool.
        DATA(t42) = CAST zcl_lnt_inf_intrfc_dfntn( t33 ).
        t41 = xsdbool( t42 IS BOUND ).
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          CLEAR t43.
          DATA(t44) = abap_true.
          IF t44 = abap_true.
            DATA t45 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
            DATA(t46) = CAST zcl_lnt_inf_intrfc_dfntn( t33 ).
            t45 = t46.
            t43 = t45.
          ELSE.
            DATA t47 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
            CLEAR t47.
            t43 = t47.
          ENDIF.
          t2 = t43.
          EXIT.
        ENDIF.
      ENDLOOP.
    ELSE.
      DATA t48 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t50.
      DATA t51 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t51.
      DATA t52 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t52.
      DATA t53 TYPE REF TO zcl_lnt_abap_file.
      DATA t54 TYPE REF TO zcl_lnt_abap_file.
      DATA t55 TYPE REF TO zcl_lnt_ob_interface.
      DATA(t56) = CAST zcl_lnt_ob_interface( t4 ).
      t55 = t56.
      t54 = t55->get_main_abap_file(  ).
      t53 = t54.
      DATA t57 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = CAST zcl_lnt_abap_file( t53 ).
      IF t59 IS INITIAL.
        t58 = abap_true.
      ENDIF.
      IF t58 = abap_true.
        DATA t60 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t60.
        t57 = t60.
      ELSE.
        DATA t61 TYPE REF TO zif_lnt_abap_file_information.
        DATA t62 TYPE REF TO zcl_lnt_abap_file.
        DATA t63 TYPE REF TO zcl_lnt_abap_file.
        DATA(t64) = CAST zcl_lnt_abap_file( t53 ).
        t63 = t64.
        t62 = t63.
        DATA t65 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t66) = CAST zcl_lnt_abap_file( t62 ).
        t65 = t66->info.
        t61 = t65.
        t57 = t61.
      ENDIF.
      t52 = t57.
      t51 = t52.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = CAST zif_lnt_abap_file_information( t51 ).
      IF t69 IS INITIAL.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t72 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t73) = CAST zif_lnt_abap_file_information( t51 ).
        t72 = t73.
        t71 = t72->list_interface_definitions(  ).
        t67 = t71.
      ENDIF.
      t50 = t67.
      t49 = t50.
      DATA t74 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
      IF t76 IS INITIAL.
        t75 = abap_true.
      ENDIF.
      IF t75 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        CLEAR t77.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t80) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
        t79 = t80.
        DATA t81 TYPE REF TO object.
        CLEAR t81.
        READ TABLE t79->items INDEX 1 INTO t81.
        t78 ?= t81.
        t74 = t78.
      ENDIF.
      t48 = t74.
      t2 = t48.
    ENDIF.
    DATA(t82) = CAST zcl_lnt_inf_intrfc_dfntn( t2 ).
    result = t82.
    
  ENDMETHOD.
  METHOD find_interface_methods.
    DATA(t1) = CAST zcl_lnt_inf_intrfc_dfntn( i_idef ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_inf_intrfc_dfntn( t1 ).
    t6 = t7->methods.
    DATA t8 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t6->items INTO t9.
      t8 ?= t9.
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA t11 TYPE REF TO zcl_lnt_imethod.
      DATA t12 TYPE string.
      DATA(t13) = CAST zcl_lnt_inf_intrfc_dfntn( t1 ).
      t12 = t13->name.
      DATA(t14) = CAST zcl_lnt_info_method_definition( t8 ).
      t11 = NEW zcl_lnt_imethod( i_object_name = t12 i_method = t14 ).
      APPEND t11 TO t10->items.
    ENDLOOP.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t3 = t15.
    t2 = t3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = CAST zcl_lnt_inf_intrfc_dfntn( t1 ).
    t16 = t17->interfaces.
    DATA t18 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t16->items INTO t19.
      t18 ?= t19.
      DATA t20 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t21 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t23) = CAST zcl_lnt_inf_intrfc_dfntn( t1 ).
      t22 = t23->identifier.
      DATA t24 TYPE string.
      DATA(t25) = CAST zcl_lnt_info_implementing( t18 ).
      t24 = t25->name.
      t21 = me->find_interface( i_identifier = t22 i_name = t24 ).
      t20 = t21.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA(t29) = CAST zif_lnt_union_eff0d09a( t20 ).
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t30 = t31.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = CAST zif_lnt_union_eff0d09a( t28 ).
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      t32 = xsdbool( t33 = abap_false ).
      t27 = t32.
      t26 = t27.
      IF t27 = abap_true.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE REF TO zif_lnt_union_eff0d09a.
        DATA(t38) = CAST zif_lnt_union_eff0d09a( t20 ).
        t37 = t38.
        t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_issue ).
        t35 = xsdbool( t36 = abap_false ).
        t26 = t35.
      ENDIF.
      IF t26 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t42 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t43) = CAST zif_lnt_union_eff0d09a( t20 ).
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42 ?= t44.
        t41 = t42->methods.
        t40 = t41.
        DATA t45 TYPE i.
        DATA t46 TYPE i.
        DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
        t46 = lines( t47->items ).
        t45 = t46.
        DATA t48 TYPE i.
        DATA(t49) = 0.
        t48 = t49.
        DO.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t48.
          DATA(t52) = t45.
          t50 = xsdbool( t51 < t52 ).
          IF t50 = abap_false.
            EXIT.
          ENDIF.
          DATA t53 TYPE REF TO zcl_lnt_info_method_definition.
          DATA t54 TYPE REF TO zcl_lnt_info_method_definition.
          DATA t55 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
          DATA(t57) = t48.
          DATA t58 TYPE REF TO object.
          t58 = t56->get( p0 = t57 ).
          t55 ?= t58.
          t54 = t55.
          t53 = t54.
          DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t60 TYPE REF TO zcl_lnt_imethod.
          DATA t61 TYPE string.
          DATA t62 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          DATA(t63) = CAST zif_lnt_union_eff0d09a( t20 ).
          DATA t64 TYPE REF TO object.
          t64 = t63.
          t62 ?= t64.
          t61 = t62->name.
          DATA(t65) = CAST zcl_lnt_info_method_definition( t53 ).
          t60 = NEW zcl_lnt_imethod( i_object_name = t61 i_method = t65 ).
          APPEND t60 TO t59->items.
          DATA t66 TYPE i.
          DATA(t67) = t48.
          DATA(t68) = 1.
          t66 = t67 + t68.
          t48 = t66.
        ENDDO.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        t39 = t69.
      ENDIF.
    ENDLOOP.
    DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t70.
    
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
    DATA(t8) = CAST zcl_lnt_abap_object( me->obj ).
    t6 = me->lkp_implmnttn_in_objct( i_name = t7 i_obj_1ed0 = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zcl_lnt_info_class_definition( t2 ).
    t10 = xsdbool( t11 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zcl_lnt_inf_clss_implmnttn( t5 ).
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
        DATA(t18) = abap_true.
        IF t18 = abap_true.
          DATA t19 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t20) = CAST zcl_lnt_info_class_definition( t2 ).
          t19 = t20.
          t17 = t19.
        ELSE.
          DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t21.
          t17 = t21.
        ENDIF.
        DATA t22 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA t24 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t25) = CAST zcl_lnt_inf_clss_implmnttn( t5 ).
          t24 = t25.
          t22 = t24.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t26.
          t22 = t26.
        ENDIF.
        t16 = NEW zcl_lnt_shape_e8fb1d71( i_def = t17 i_impl = t22 ).
        t14 = t16.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        CLEAR t27.
        t14 = t27.
      ENDIF.
      result = t14.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_class.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_class.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_object.
    CLEAR t30.
    DATA(t31) = CAST zif_lnt_registry( me->reg ).
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = abap_true.
    IF t33 = abap_true.
      DATA(t34) = |CLAS|.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t34.
      t32 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t32 = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = t1.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t30 = t31->get_object( i_type_9913 = t32 i_name = t37 ).
    DATA t42 TYPE REF TO object.
    t42 = t30.
    t29 ?= t42.
    t28 = t29.
    DATA t43 TYPE abap_bool.
    DATA(t44) = CAST zcl_lnt_class( t28 ).
    t43 = xsdbool( t44 IS BOUND ).
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t45.
      DATA t46 TYPE REF TO zcl_lnt_class.
      DATA t47 TYPE REF TO zcl_lnt_class.
      DATA(t48) = CAST zcl_lnt_class( t28 ).
      t47 = t48.
      t46 = t47.
      DATA t49 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t49.
      DATA t50 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t50.
      DATA t51 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abap_file.
      DATA t53 TYPE REF TO zcl_lnt_abap_file.
      DATA(t54) = CAST zcl_lnt_class( t46 ).
      t53 = t54->get_main_abap_file(  ).
      t52 = t53.
      DATA t55 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CAST zcl_lnt_abap_file( t52 ).
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zif_lnt_abap_file_information.
        DATA t60 TYPE REF TO zcl_lnt_abap_file.
        DATA t61 TYPE REF TO zcl_lnt_abap_file.
        DATA(t62) = CAST zcl_lnt_abap_file( t52 ).
        t61 = t62.
        t60 = t61.
        DATA t63 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t64) = CAST zcl_lnt_abap_file( t60 ).
        t63 = t64->info.
        t59 = t63.
        t55 = t59.
      ENDIF.
      t51 = t55.
      t50 = t51.
      DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = CAST zif_lnt_abap_file_information( t50 ).
      IF t67 IS INITIAL.
        t66 = abap_true.
      ENDIF.
      IF t66 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t68.
        t65 = t68.
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t70 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t71) = CAST zif_lnt_abap_file_information( t50 ).
        t70 = t71.
        DATA t72 TYPE string.
        DATA t73 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t74) = CAST zcl_lnt_class( t46 ).
        t73 = t74.
        DATA t75 TYPE string.
        DATA(t76) = CAST zcl_lnt_abstract_object( t73 ).
        t75 = t76->name.
        t72 = t75.
        t69 = t70->get_class_definition_by_name( i_name = t72 ).
        t65 = t69.
      ENDIF.
      t49 = t65.
      t45 = t49.
      t2 = t45.
      DATA t77 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA(t78) = t1.
      DATA t79 TYPE REF TO zcl_lnt_class.
      DATA(t80) = CAST zcl_lnt_class( t28 ).
      t79 = t80.
      t77 = me->lkp_implmnttn_in_objct( i_name = t78 i_obj_1ed0 = t79 ).
      t5 = t77.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      DATA(t83) = CAST zcl_lnt_info_class_definition( t2 ).
      t82 = xsdbool( t83 IS BOUND ).
      t81 = t82.
      IF t82 = abap_true.
        DATA t84 TYPE abap_bool.
        DATA(t85) = CAST zcl_lnt_inf_clss_implmnttn( t5 ).
        t84 = xsdbool( t85 IS BOUND ).
        t81 = t84.
      ENDIF.
      IF t81 = abap_true.
        DATA t86 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t89.
          DATA(t90) = abap_true.
          IF t90 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_info_class_definition.
            DATA(t92) = CAST zcl_lnt_info_class_definition( t2 ).
            t91 = t92.
            t89 = t91.
          ELSE.
            DATA t93 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t93.
            t89 = t93.
          ENDIF.
          DATA t94 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA t96 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t97) = CAST zcl_lnt_inf_clss_implmnttn( t5 ).
            t96 = t97.
            t94 = t96.
          ELSE.
            DATA t98 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            CLEAR t98.
            t94 = t98.
          ENDIF.
          t88 = NEW zcl_lnt_shape_e8fb1d71( i_def = t89 i_impl = t94 ).
          t86 = t88.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_shape_e8fb1d71.
          CLEAR t99.
          t86 = t99.
        ENDIF.
        result = t86.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zcl_lnt_shape_e8fb1d71.
    CLEAR t100.
    result = t100.
    
  ENDMETHOD.
  METHOD check_interfaces.
    DATA(t1) = CAST zcl_lnt_info_class_definition( i_def ).
    DATA(t2) = CAST zcl_lnt_inf_clss_implmnttn( i_impl ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_info_class_definition( t1 ).
    t5 = t6->interfaces.
    DATA t7 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t5->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t10 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t12) = CAST zcl_lnt_info_class_definition( t1 ).
      t11 = t12->identifier.
      DATA t13 TYPE string.
      DATA(t14) = CAST zcl_lnt_info_implementing( t7 ).
      t13 = t14->name.
      t10 = me->find_interface( i_identifier = t11 i_name = t13 ).
      t9 = t10.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zif_lnt_union_eff0d09a.
      DATA(t19) = CAST zif_lnt_union_eff0d09a( t9 ).
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t20 = t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = CAST zif_lnt_union_eff0d09a( t18 ).
      IF t23 IS INITIAL.
        t22 = abap_true.
      ENDIF.
      t17 = t22.
      t16 = t17.
      IF t17 = abap_false.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE abap_bool.
        DATA(t26) = CAST zcl_lnt_info_implementing( t7 ).
        t25 = t26->partial.
        DATA(t27) = abap_true.
        t24 = xsdbool( t25 = t27 ).
        t16 = t24.
      ENDIF.
      t15 = t16.
      IF t16 = abap_false.
        DATA t28 TYPE abap_bool.
        DATA t29 TYPE abap_bool.
        DATA(t30) = CAST zcl_lnt_info_implementing( t7 ).
        t29 = t30->all_abstract.
        DATA(t31) = abap_true.
        t28 = xsdbool( t29 = t31 ).
        t15 = t28.
      ENDIF.
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA t32 TYPE abap_bool.
        DATA(t33) = CAST zif_lnt_union_eff0d09a( t9 ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_issue ).
        IF t32 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t36.
          t35 = t36.
          DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
          DATA t38 TYPE REF TO zcl_lnt_issue.
          DATA(t39) = CAST zif_lnt_union_eff0d09a( t9 ).
          DATA t40 TYPE REF TO object.
          t40 = t39.
          t38 ?= t40.
          APPEND t38 TO t37->items.
          DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
          t34 = t41.
          result = t34.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA(t44) = CAST zif_lnt_union_eff0d09a( t9 ).
      DATA t45 TYPE REF TO object.
      t45 = t44.
      t43 ?= t45.
      t42 = me->find_interface_methods( i_idef = t43 ).
      DATA t46 TYPE REF TO zcl_lnt_imethod.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      LOOP AT t42->items INTO t47.
        t46 ?= t47.
        DATA t48 TYPE abap_bool.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE abap_bool.
        DATA t51 TYPE REF TO zcl_lnt_info_method_definition.
        DATA(t52) = CAST zcl_lnt_imethod( t46 ).
        t51 = t52->method.
        t50 = t51->is_default_ignore.
        DATA(t53) = abap_true.
        t49 = xsdbool( t50 = t53 ).
        t48 = t49.
        IF t49 = abap_false.
          DATA t54 TYPE abap_bool.
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t57) = CAST zcl_lnt_imethod( t46 ).
          t56 = t57->method.
          t55 = t56->is_default_fail.
          DATA(t58) = abap_true.
          t54 = xsdbool( t55 = t58 ).
          t48 = t54.
        ENDIF.
        IF t48 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t59 TYPE abap_bool.
        DATA(t60) = CAST zcl_lnt_imethod( t46 ).
        DATA(t61) = CAST zcl_lnt_info_implementing( t7 ).
        DATA(t62) = CAST zcl_lnt_info_class_definition( t1 ).
        t59 = me->is_abstract( i_m = t60 i_interface_info = t61 i_def = t62 ).
        IF t59 = abap_true.
          DATA t63 TYPE abap_bool.
          DATA(t64) = CAST zcl_lnt_info_class_definition( t1 ).
          t63 = t64->is_abstract.
          IF t63 = abap_true.
            CONTINUE.
          ELSE.
          ENDIF.
        ENDIF.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE abap_bool.
        DATA(t67) = CAST zcl_lnt_imethod( t46 ).
        DATA(t68) = CAST zcl_lnt_info_class_definition( t1 ).
        DATA(t69) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
        t66 = me->is_implemented( i_m = t67 i_def = t68 i_impl = t69 ).
        DATA(t70) = abap_false.
        t65 = xsdbool( t66 = t70 ).
        IF t65 = abap_true.
          DATA t71 TYPE string.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          DATA t74 TYPE string.
          DATA t75 TYPE string.
          DATA(t76) = |Implement method "|.
          DATA t77 TYPE string.
          DATA t78 TYPE REF TO zcl_lnt_info_method_definition.
          DATA(t79) = CAST zcl_lnt_imethod( t46 ).
          t78 = t79->method.
          t77 = t78->name.
          DATA(t80) = strlen( t76 ).
          t75 = |{ t76 }{ t77 }|.
          DATA(t81) = |" from interface "|.
          DATA(t82) = strlen( t75 ).
          t74 = |{ t75 }{ t81 }|.
          DATA t83 TYPE string.
          DATA(t84) = CAST zcl_lnt_imethod( t46 ).
          t83 = t84->object_name.
          DATA(t85) = strlen( t74 ).
          t73 = |{ t74 }{ t83 }|.
          DATA(t86) = |"|.
          DATA(t87) = strlen( t73 ).
          t72 = |{ t73 }{ t86 }|.
          t71 = t72.
          DATA t88 TYPE abap_bool.
          DATA(t89) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
          t88 = xsdbool( t89 IS BOUND ).
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t91 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t92 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t93) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
            t92 = t93.
            DATA t94 TYPE string.
            DATA t95 TYPE string.
            DATA t96 TYPE string.
            DATA(t97) = CAST zcl_lnt_imethod( t46 ).
            t96 = t97->object_name.
            DATA(t98) = |~|.
            DATA(t99) = strlen( t96 ).
            t95 = |{ t96 }{ t98 }|.
            DATA t100 TYPE string.
            DATA t101 TYPE REF TO zcl_lnt_info_method_definition.
            DATA(t102) = CAST zcl_lnt_imethod( t46 ).
            t101 = t102->method.
            t100 = t101->name.
            DATA(t103) = strlen( t95 ).
            t94 = |{ t95 }{ t100 }|.
            t91 = me->build_fix( i_impl = t92 i_method_name = t94 ).
            t90 = t91.
            DATA t104 TYPE REF TO zcl_lnt_issue.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_issue.
            CLEAR t105.
            DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t107 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
            DATA(t108) = CAST zcl_lnt_inf_clss_implmnttn( t2 ).
            t107 = t108.
            t106 = t107->identifier.
            DATA(t109) = t71.
            DATA(t110) = VALUE string( ).
            DATA t111 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t111.
            DATA(t112) = |implement_methods|.
            DATA(t113) = |Implement methods|.
            DATA(t114) = |Checks for abstract methods and methods from interfaces whic|.
            t114 = t114 && |h need implementing.|.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t116.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t117.
            DATA(t118) = abap_true.
            IF t118 = abap_true.
              DATA(t119) = |INCLUDE programs are only checked in connection with their m|.
              t119 = t119 && |ain programs.|.
              DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t120->has = abap_true.
              t120->value = t119.
              t117 = t120.
            ELSE.
              DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t121.
              t117 = t121.
            ENDIF.
            DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t122.
            DATA(t123) = abap_true.
            IF t123 = abap_true.
              DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t126.
              t125 = t126.
              DATA(t127) = CAST zlnt_runtime_arra_8ecd6afe19e0( t125 ).
              DATA(t128) = |Syntax|.
              APPEND t128 TO t127->items.
              DATA(t129) = CAST zlnt_runtime_arra_8ecd6afe19e0( t125 ).
              DATA(t130) = |Quickfix|.
              APPEND t130 TO t129->items.
              DATA(t131) = CAST zlnt_runtime_arra_8ecd6afe19e0( t125 ).
              t124 = t131.
              t122 = t124.
            ELSE.
              DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t132.
              t122 = t132.
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t133.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t111 = NEW zcl_lnt_irule_metadata( i_key = t112 i_title = t113 i_short_description = t114 i_bad_example = t115 i_good_example = t116 i_extended_information = t117 i_tags = t122 i_pragma = t133 i_pseudo_comment = t134 ).
            t110 = t111->key.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t136) = CAST zcl_lnt_implement_methods_conf( me->conf ).
            t135 = t136->severity.
            DATA(t137) = CAST zlnt_runtime_map__4fdf767b61ba( t90 ).
            t105 = zcl_lnt_issue=>at_identifier( i_identifier = t106 i_message_26cb = t109 i_key = t110 i_severity = t135 i_fix = t137 ).
            t104 = t105.
            DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
            DATA(t139) = CAST zcl_lnt_issue( t104 ).
            APPEND t139 TO t138->items.
          ELSE.
            DATA t140 TYPE REF TO zcl_lnt_issue.
            CLEAR t140.
            DATA t141 TYPE REF TO zcl_lnt_issue.
            CLEAR t141.
            DATA t142 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t143) = CAST zcl_lnt_info_class_definition( t1 ).
            t142 = t143->identifier.
            DATA(t144) = t71.
            DATA(t145) = VALUE string( ).
            DATA t146 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t146.
            DATA(t147) = |implement_methods|.
            DATA(t148) = |Implement methods|.
            DATA(t149) = |Checks for abstract methods and methods from interfaces whic|.
            t149 = t149 && |h need implementing.|.
            DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t150.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t151.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t152.
            DATA(t153) = abap_true.
            IF t153 = abap_true.
              DATA(t154) = |INCLUDE programs are only checked in connection with their m|.
              t154 = t154 && |ain programs.|.
              DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t155->has = abap_true.
              t155->value = t154.
              t152 = t155.
            ELSE.
              DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t156.
              t152 = t156.
            ENDIF.
            DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t157.
            DATA(t158) = abap_true.
            IF t158 = abap_true.
              DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t161.
              t160 = t161.
              DATA(t162) = CAST zlnt_runtime_arra_8ecd6afe19e0( t160 ).
              DATA(t163) = |Syntax|.
              APPEND t163 TO t162->items.
              DATA(t164) = CAST zlnt_runtime_arra_8ecd6afe19e0( t160 ).
              DATA(t165) = |Quickfix|.
              APPEND t165 TO t164->items.
              DATA(t166) = CAST zlnt_runtime_arra_8ecd6afe19e0( t160 ).
              t159 = t166.
              t157 = t159.
            ELSE.
              DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t167.
              t157 = t167.
            ENDIF.
            DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t168.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t169.
            t146 = NEW zcl_lnt_irule_metadata( i_key = t147 i_title = t148 i_short_description = t149 i_bad_example = t150 i_good_example = t151 i_extended_information = t152 i_tags = t157 i_pragma = t168 i_pseudo_comment = t169 ).
            t145 = t146->key.
            DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t171) = CAST zcl_lnt_implement_methods_conf( me->conf ).
            t170 = t171->severity.
            DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t172.
            t141 = zcl_lnt_issue=>at_identifier( i_identifier = t142 i_message_26cb = t144 i_key = t145 i_severity = t170 i_fix = t172 ).
            t140 = t141.
            DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
            DATA(t174) = CAST zcl_lnt_issue( t140 ).
            APPEND t174 TO t173->items.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t175.
    
  ENDMETHOD.
  METHOD is_abstract.
    DATA(t1) = CAST zcl_lnt_imethod( i_m ).
    DATA(t2) = CAST zcl_lnt_info_implementing( i_interface_info ).
    DATA(t3) = CAST zcl_lnt_info_class_definition( i_def ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = CAST zcl_lnt_info_implementing( t2 ).
    t5 = t6->abstract_methods.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_info_method_definition.
    DATA(t10) = CAST zcl_lnt_imethod( t1 ).
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
    DATA(t16) = CAST zcl_lnt_info_class_definition( t3 ).
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
    DATA(t22) = CAST zcl_lnt_info_class_definition( t3 ).
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
    DATA(t30) = CAST zcl_lnt_shape_e8fb1d71( t18 ).
    t29 = t30.
    DATA t31 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = CAST zcl_lnt_shape_e8fb1d71( t29 ).
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
      DATA(t37) = CAST zcl_lnt_shape_e8fb1d71( t29 ).
      t36 = t37.
      t35 = t36->def.
      t31 = t35.
    ENDIF.
    t28 = t31.
    t27 = t28.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = CAST zcl_lnt_info_class_definition( t27 ).
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
      DATA(t44) = CAST zcl_lnt_info_class_definition( t27 ).
      t43 = t44.
      t42 = t43->interfaces.
      t38 = t42.
    ENDIF.
    t26 = t38.
    t25 = t26.
    DATA t45 TYPE REF TO zcl_lnt_info_implementing.
    CLEAR t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
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
      DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
      t51 = t52.
      t50 = t51.
      DATA t53 TYPE i.
      DATA t54 TYPE i.
      DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
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
        DATA t64 TYPE REF TO zcl_lnt_info_implementing.
        DATA t65 TYPE REF TO zcl_lnt_info_implementing.
        DATA(t66) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
        DATA(t67) = t56.
        DATA t68 TYPE REF TO object.
        t68 = t66->get( p0 = t67 ).
        t65 ?= t68.
        t64 = t65.
        t63 = t64.
        DATA(t69) = VALUE abap_bool( ).
        DATA t70 TYPE string.
        DATA t71 TYPE string.
        DATA(t72) = CAST zcl_lnt_info_implementing( t63 ).
        t71 = t72->name.
        DATA(t73) = strlen( t71 ).
        t70 = t71.
        IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t70 TO UPPER CASE.
        ELSE.
          t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
        ENDIF.
        DATA t74 TYPE string.
        DATA t75 TYPE string.
        DATA(t76) = CAST zcl_lnt_imethod( t1 ).
        t75 = t76->object_name.
        DATA(t77) = strlen( t75 ).
        t74 = t75.
        IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t74 TO UPPER CASE.
        ELSE.
          t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
        ENDIF.
        t69 = xsdbool( t70 = t74 ).
        IF t69 = abap_true.
          DATA t78 TYPE REF TO zcl_lnt_info_implementing.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA(t80) = CAST zcl_lnt_info_implementing( t63 ).
            t78 = t80.
          ELSE.
            DATA t81 TYPE REF TO zcl_lnt_info_implementing.
            CLEAR t81.
            t78 = t81.
          ENDIF.
          t58 = t78.
          EXIT.
        ENDIF.
        DATA t82 TYPE i.
        DATA(t83) = t56.
        DATA(t84) = 1.
        t82 = t83 + t84.
        t56 = t82.
      ENDDO.
      DATA(t85) = CAST zcl_lnt_info_implementing( t58 ).
      t49 = t85.
      t45 = t49.
    ENDIF.
    t24 = t45.
    t23 = t24.
    DATA t86 TYPE abap_bool.
    DATA t87 TYPE abap_bool.
    DATA(t88) = CAST zcl_lnt_shape_e8fb1d71( t18 ).
    t87 = xsdbool( t88 IS BOUND ).
    t86 = t87.
    IF t87 = abap_true.
      DATA t89 TYPE abap_bool.
      DATA(t90) = CAST zcl_lnt_info_implementing( t23 ).
      t89 = xsdbool( t90 IS BOUND ).
      t86 = t89.
    ENDIF.
    IF t86 = abap_true.
      DATA t91 TYPE abap_bool.
      DATA(t92) = CAST zcl_lnt_imethod( t1 ).
      DATA t93 TYPE REF TO zcl_lnt_info_implementing.
      DATA(t94) = CAST zcl_lnt_info_implementing( t23 ).
      t93 = t94.
      DATA t95 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t96 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA(t97) = CAST zcl_lnt_shape_e8fb1d71( t18 ).
      t96 = t97.
      t95 = t96->def.
      t91 = me->is_abstract( i_m = t92 i_interface_info = t93 i_def = t95 ).
      result = t91.
      RETURN.
    ELSE.
      DATA(t98) = abap_false.
      result = t98.
      
    ENDIF.
  ENDMETHOD.
  METHOD is_implemented.
    DATA(t1) = CAST zcl_lnt_imethod( i_m ).
    DATA(t2) = CAST zcl_lnt_info_class_definition( i_def ).
    DATA(t3) = CAST zcl_lnt_inf_clss_implmnttn( i_impl ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t6) = CAST zcl_lnt_inf_clss_implmnttn( t3 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_inf_clss_implmnttn( t5 ).
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
    DATA(t16) = CAST zcl_lnt_imethod( t1 ).
    t15 = t16->object_name.
    DATA(t17) = |~|.
    DATA(t18) = strlen( t15 ).
    t14 = |{ t15 }{ t17 }|.
    DATA t19 TYPE string.
    DATA t20 TYPE REF TO zcl_lnt_info_method_definition.
    DATA(t21) = CAST zcl_lnt_imethod( t1 ).
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
    DATA(t28) = CAST zcl_lnt_inf_clss_implmnttn( t3 ).
    t27 = t28.
    t26 = t27->methods.
    t25 = t26.
    DATA t29 TYPE i.
    DATA t30 TYPE i.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
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
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t41 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
      DATA(t43) = t32.
      DATA t44 TYPE REF TO object.
      t44 = t42->get( p0 = t43 ).
      t41 ?= t44.
      t40 = t41.
      t39 = t40.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t49) = CAST zcl_lnt_fi_identifier( t39 ).
      t48 = t49.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE string.
      DATA t52 TYPE string.
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t55) = CAST zcl_lnt_fi_identifier( t48 ).
      t54 = t55->token.
      t53 = t54.
      DATA t56 TYPE string.
      DATA(t57) = CAST zcl_lnt_abstract_token( t53 ).
      t56 = t57->str.
      t52 = t56.
      t51 = t52.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE string( ).
      DATA(t60) = t51.
      DATA(t61) = 0.
      DATA(t62) = 1.
      DATA(t63) = strlen( t60 ).
      IF t61 < 0.
        t61 = t61 + t63.
        IF t61 < 0.
          t61 = 0.
        ENDIF.
      ENDIF.
      IF t61 > t63 OR t62 <= 0.
        CLEAR t59.
      ELSE.
        IF t62 > t63 - t61.
          t62 = t63 - t61.
        ENDIF.
        t59 = t60+t61(t62).
      ENDIF.
      DATA(t64) = |!|.
      t58 = xsdbool( t59 = t64 ).
      IF t58 = abap_true.
        DATA(t65) = VALUE string( ).
        DATA t66 TYPE string.
        DATA(t67) = t51.
        t66 = t67.
        DATA(t68) = VALUE string( ).
        DATA(t69) = t66.
        DATA(t70) = 1.
        DATA t71 TYPE i.
        DATA(t72) = t66.
        DATA(t73) = strlen( t72 ).
        t71 = t73.
        DATA(t74) = strlen( t69 ).
        IF t70 < 0.
          t70 = t70 + t74.
          IF t70 < 0.
            t70 = 0.
          ENDIF.
        ENDIF.
        IF t70 > t74 OR t71 <= 0.
          CLEAR t68.
        ELSE.
          IF t71 > t74 - t70.
            t71 = t74 - t70.
          ENDIF.
          t68 = t69+t70(t71).
        ENDIF.
        t65 = t68.
        t51 = t65.
      ENDIF.
      DATA(t75) = t51.
      t50 = t75.
      t47 = t50.
      DATA(t76) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      DATA t77 TYPE string.
      DATA(t78) = t12.
      DATA(t79) = strlen( t78 ).
      t77 = t78.
      IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t77 TO UPPER CASE.
      ELSE.
        t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
      ENDIF.
      t45 = xsdbool( t46 = t77 ).
      IF t45 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = CAST zcl_lnt_fi_identifier( t39 ).
          t80 = t82.
        ELSE.
          DATA t83 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t83.
          t80 = t83.
        ENDIF.
        t34 = t80.
        EXIT.
      ENDIF.
      DATA t84 TYPE i.
      DATA(t85) = t32.
      DATA(t86) = 1.
      t84 = t85 + t86.
      t32 = t84.
    ENDDO.
    DATA(t87) = CAST zcl_lnt_fi_identifier( t34 ).
    t24 = t87.
    t23 = t24.
    DATA(t88) = VALUE abap_bool( ).
    DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t90) = CAST zcl_lnt_fi_identifier( t23 ).
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    t91 = t92.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = CAST zcl_lnt_fi_identifier( t89 ).
    IF t94 IS INITIAL.
      t93 = abap_true.
    ENDIF.
    t88 = t93.
    IF t88 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t96) = CAST zcl_lnt_info_class_definition( t2 ).
      t95 = t96->aliases_62bb.
      DATA t97 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      LOOP AT t95->items INTO t98.
        t97 ?= t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA(t102) = CAST zcl_lnt_info_alias( t97 ).
        t101 = t102->component.
        DATA(t103) = strlen( t101 ).
        t100 = t101.
        IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t100 TO UPPER CASE.
        ELSE.
          t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
        ENDIF.
        DATA t104 TYPE string.
        DATA(t105) = t12.
        DATA(t106) = strlen( t105 ).
        t104 = t105.
        IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t104 TO UPPER CASE.
        ELSE.
          t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
        ENDIF.
        t99 = xsdbool( t100 = t104 ).
        IF t99 = abap_true.
          DATA t107 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t107.
          DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t110 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t111) = CAST zcl_lnt_inf_clss_implmnttn( t3 ).
          t110 = t111.
          t109 = t110->methods.
          t108 = t109.
          DATA t112 TYPE i.
          DATA t113 TYPE i.
          DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
          t113 = lines( t114->items ).
          t112 = t113.
          DATA t115 TYPE i.
          DATA(t116) = 0.
          t115 = t116.
          DATA t117 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t118.
          t117 = t118.
          DO.
            DATA t119 TYPE abap_bool.
            DATA(t120) = t115.
            DATA(t121) = t112.
            t119 = xsdbool( t120 < t121 ).
            IF t119 = abap_false.
              EXIT.
            ENDIF.
            DATA t122 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
            DATA(t126) = t115.
            DATA t127 TYPE REF TO object.
            t127 = t125->get( p0 = t126 ).
            t124 ?= t127.
            t123 = t124.
            t122 = t123.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE string( ).
            DATA(t130) = VALUE string( ).
            DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t132) = CAST zcl_lnt_fi_identifier( t122 ).
            t131 = t132.
            DATA(t133) = VALUE string( ).
            DATA t134 TYPE string.
            DATA t135 TYPE string.
            DATA t136 TYPE REF TO zcl_lnt_abstract_token.
            DATA t137 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t138) = CAST zcl_lnt_fi_identifier( t131 ).
            t137 = t138->token.
            t136 = t137.
            DATA t139 TYPE string.
            DATA(t140) = CAST zcl_lnt_abstract_token( t136 ).
            t139 = t140->str.
            t135 = t139.
            t134 = t135.
            DATA(t141) = VALUE abap_bool( ).
            DATA(t142) = VALUE string( ).
            DATA(t143) = t134.
            DATA(t144) = 0.
            DATA(t145) = 1.
            DATA(t146) = strlen( t143 ).
            IF t144 < 0.
              t144 = t144 + t146.
              IF t144 < 0.
                t144 = 0.
              ENDIF.
            ENDIF.
            IF t144 > t146 OR t145 <= 0.
              CLEAR t142.
            ELSE.
              IF t145 > t146 - t144.
                t145 = t146 - t144.
              ENDIF.
              t142 = t143+t144(t145).
            ENDIF.
            DATA(t147) = |!|.
            t141 = xsdbool( t142 = t147 ).
            IF t141 = abap_true.
              DATA(t148) = VALUE string( ).
              DATA t149 TYPE string.
              DATA(t150) = t134.
              t149 = t150.
              DATA(t151) = VALUE string( ).
              DATA(t152) = t149.
              DATA(t153) = 1.
              DATA t154 TYPE i.
              DATA(t155) = t149.
              DATA(t156) = strlen( t155 ).
              t154 = t156.
              DATA(t157) = strlen( t152 ).
              IF t153 < 0.
                t153 = t153 + t157.
                IF t153 < 0.
                  t153 = 0.
                ENDIF.
              ENDIF.
              IF t153 > t157 OR t154 <= 0.
                CLEAR t151.
              ELSE.
                IF t154 > t157 - t153.
                  t154 = t157 - t153.
                ENDIF.
                t151 = t152+t153(t154).
              ENDIF.
              t148 = t151.
              t134 = t148.
            ENDIF.
            DATA(t158) = t134.
            t133 = t158.
            t130 = t133.
            DATA(t159) = strlen( t130 ).
            t129 = t130.
            IF t129 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t129 TO UPPER CASE.
            ELSE.
              t129 = zlnt_runtime_uppe_91169605024d=>full( t129 ).
            ENDIF.
            DATA t160 TYPE string.
            DATA t161 TYPE string.
            DATA(t162) = CAST zcl_lnt_info_alias( t97 ).
            t161 = t162->name.
            DATA(t163) = strlen( t161 ).
            t160 = t161.
            IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t160 TO UPPER CASE.
            ELSE.
              t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
            ENDIF.
            t128 = xsdbool( t129 = t160 ).
            IF t128 = abap_true.
              DATA t164 TYPE REF TO zcl_lnt_fi_identifier.
              CLEAR t164.
              DATA(t165) = abap_true.
              IF t165 = abap_true.
                DATA(t166) = CAST zcl_lnt_fi_identifier( t122 ).
                t164 = t166.
              ELSE.
                DATA t167 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t167.
                t164 = t167.
              ENDIF.
              t117 = t164.
              EXIT.
            ENDIF.
            DATA t168 TYPE i.
            DATA(t169) = t115.
            DATA(t170) = 1.
            t168 = t169 + t170.
            t115 = t168.
          ENDDO.
          DATA(t171) = CAST zcl_lnt_fi_identifier( t117 ).
          t107 = t171.
          t23 = t107.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA(t172) = VALUE abap_bool( ).
    DATA(t173) = VALUE abap_bool( ).
    DATA t174 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t175) = CAST zcl_lnt_fi_identifier( t23 ).
    t174 = t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    t176 = t177.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = CAST zcl_lnt_fi_identifier( t174 ).
    IF t179 IS INITIAL.
      t178 = abap_true.
    ENDIF.
    t173 = t178.
    t172 = t173.
    IF t173 = abap_true.
      DATA(t180) = VALUE abap_bool( ).
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t183) = CAST zcl_lnt_info_class_definition( t2 ).
      t182 = t183->super_class_name.
      t181 = t182.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      t184 = t185.
      DATA(t186) = VALUE abap_bool( ).
      DATA(t187) = VALUE abap_bool( ).
      DATA(t188) = CAST zlnt_runtime_opti_4ba3bdccd169( t181 ).
      IF t188 IS INITIAL.
        t187 = abap_true.
      ELSEIF t188->has = abap_false.
        t187 = abap_true.
      ENDIF.
      t186 = xsdbool( t187 = abap_false ).
      t180 = t186.
      t172 = t180.
    ENDIF.
    IF t172 = abap_true.
      DATA t189 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA t190 TYPE REF TO zcl_lnt_shape_e8fb1d71.
      DATA t191 TYPE string.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t193) = CAST zcl_lnt_info_class_definition( t2 ).
      t192 = t193->super_class_name.
      t191 = t192->value.
      t190 = me->find_class( i_name = t191 ).
      t189 = t190.
      DATA t194 TYPE abap_bool.
      DATA(t195) = CAST zcl_lnt_shape_e8fb1d71( t189 ).
      t194 = xsdbool( t195 IS BOUND ).
      IF t194 = abap_true.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = CAST zcl_lnt_imethod( t1 ).
        DATA t198 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t198.
        DATA t199 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t199.
        DATA t200 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA t201 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA(t202) = CAST zcl_lnt_shape_e8fb1d71( t189 ).
        t201 = t202.
        t200 = t201.
        DATA t203 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t203.
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = CAST zcl_lnt_shape_e8fb1d71( t200 ).
        IF t205 IS INITIAL.
          t204 = abap_true.
        ENDIF.
        IF t204 = abap_true.
          DATA t206 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t206.
          t203 = t206.
        ELSE.
          DATA t207 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t208) = CAST zcl_lnt_shape_e8fb1d71( t200 ).
          t207 = t208->def.
          t203 = t207.
        ENDIF.
        t199 = t203.
        t198 = t199.
        DATA t209 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t209.
        DATA t210 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA t211 TYPE REF TO zcl_lnt_shape_e8fb1d71.
        DATA(t212) = CAST zcl_lnt_shape_e8fb1d71( t189 ).
        t211 = t212.
        t210 = t211.
        DATA t213 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        CLEAR t213.
        DATA(t214) = VALUE abap_bool( ).
        DATA(t215) = CAST zcl_lnt_shape_e8fb1d71( t210 ).
        IF t215 IS INITIAL.
          t214 = abap_true.
        ENDIF.
        IF t214 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t216.
          t213 = t216.
        ELSE.
          DATA t217 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          DATA(t218) = CAST zcl_lnt_shape_e8fb1d71( t210 ).
          t217 = t218->impl.
          t213 = t217.
        ENDIF.
        t209 = t213.
        t196 = me->is_implemented( i_m = t197 i_def = t198 i_impl = t209 ).
        result = t196.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t219) = VALUE abap_bool( ).
    DATA t220 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t221) = CAST zcl_lnt_fi_identifier( t23 ).
    t220 = t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    t222 = t223.
    DATA(t224) = VALUE abap_bool( ).
    DATA(t225) = CAST zcl_lnt_fi_identifier( t220 ).
    IF t225 IS INITIAL.
      t224 = abap_true.
    ENDIF.
    t219 = t224.
    IF t219 = abap_true.
      DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t227) = CAST zcl_lnt_info_class_definition( t2 ).
      t226 = t227->interfaces.
      DATA t228 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t228.
      DATA t229 TYPE REF TO object.
      CLEAR t229.
      LOOP AT t226->items INTO t229.
        t228 ?= t229.
        DATA t230 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t231 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA t232 TYPE string.
        DATA(t233) = CAST zcl_lnt_info_implementing( t228 ).
        t232 = t233->name.
        t231 = me->find_interface_by_name( i_name = t232 ).
        t230 = t231.
        DATA(t234) = VALUE abap_bool( ).
        DATA t235 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t236) = CAST zcl_lnt_inf_intrfc_dfntn( t230 ).
        t235 = t236.
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        t237 = t238.
        DATA(t239) = VALUE abap_bool( ).
        DATA(t240) = CAST zcl_lnt_inf_intrfc_dfntn( t235 ).
        IF t240 IS INITIAL.
          t239 = abap_true.
        ENDIF.
        t234 = t239.
        IF t234 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t241 TYPE abap_bool.
        DATA t242 TYPE abap_bool.
        DATA(t243) = CAST zcl_lnt_imethod( t1 ).
        DATA t244 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
        DATA(t245) = CAST zcl_lnt_inf_intrfc_dfntn( t230 ).
        t244 = t245.
        DATA t246 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
        DATA(t247) = CAST zcl_lnt_inf_clss_implmnttn( t3 ).
        t246 = t247.
        t242 = me->via_alias_in_interface( i_m = t243 i_intf = t244 i_impl = t246 ).
        t241 = t242.
        DATA(t248) = t241.
        IF t248 = abap_true.
          DATA(t249) = t241.
          result = t249.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA(t250) = VALUE abap_bool( ).
    DATA t251 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t252) = CAST zcl_lnt_fi_identifier( t23 ).
    t251 = t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    t253 = t254.
    DATA(t255) = VALUE abap_bool( ).
    DATA(t256) = VALUE abap_bool( ).
    DATA(t257) = CAST zcl_lnt_fi_identifier( t251 ).
    IF t257 IS INITIAL.
      t256 = abap_true.
    ENDIF.
    t255 = xsdbool( t256 = abap_false ).
    t250 = t255.
    result = t250.
    
  ENDMETHOD.
  METHOD via_alias_in_interface.
    DATA(t1) = CAST zcl_lnt_imethod( i_m ).
    DATA(t2) = CAST zcl_lnt_inf_intrfc_dfntn( i_intf ).
    DATA(t3) = CAST zcl_lnt_inf_clss_implmnttn( i_impl ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/rules/implement_methods.ts:319|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_implement_methods_conf( me->gt_cn_in_sr_rl_im_mt_ts_im_mth(  ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_implement_methods_conf.
    CLEAR t1.
    DATA t2 TYPE REF TO object.
    CLEAR t2.
    t2 = i_conf->as_ref( ).
    t1 ?= t2.
    me->st_cn_in_sr_rl_im_mt_ts_im_mth( i_conf = t1 ).
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1439_aabb187fbbab.
  ENDMETHOD.
ENDCLASS.
