* TS: src/rules/remove_descriptions.ts:21:1 RemoveDescriptions
CLASS zcl_lnt_remove_descriptions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_rm_ds_ts_rm_dsc RETURNING VALUE(result) TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS st_cn_in_sr_rl_rm_ds_ts_rm_dsc IMPORTING i_conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS in_in_sr_rl_rmv_dsc_ts_rmv_dsc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_remove_descriptions.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_xml IMPORTING i_xml TYPE string i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_remove_descriptions IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_rmv_dscrptns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Ensures you have no descriptions in metadata of methods, par|.
    t7 = t7 && |ameters, etc.\n\nClass descriptions are required, see rule des|.
    t7 = t7 && |cription_empty.\n\nConsider using ABAP Doc for documentation.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t8.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |remove_descriptions| i_title = |Remove descriptions| i_short_description = t6 i_bad_example = t13 i_good_example = t15 i_extended_information = t17 i_tags = t8 i_pragma = t19 i_pseudo_comment = t21 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t26 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t28 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t30 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t32 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t34 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_rmv_dsc_ts_rmv_dsc.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_ddic.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_ddic( i_reg_f149 = t4 ).
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      TRY.
          DATA t10 TYPE REF TO zcl_lnt_class.
          DATA t11 TYPE REF TO zcl_lnt_class.
          t11 ?= t1.
          t10 = t11.
          DATA t15 TYPE REF TO zif_lnt_abap_file_information.
          DATA t17 TYPE REF TO zcl_lnt_abap_file.
          t17 = t10->get_main_abap_file( ).
          DATA t20 TYPE REF TO zif_lnt_abap_file_information.
          IF xsdbool( t17 IS INITIAL ) = abap_true.
          ELSE.
            t20 = t17->info.
          ENDIF.
          t15 = t20.
          DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
          IF xsdbool( t15 IS INITIAL ) = abap_true.
          ELSE.
            DATA t35 TYPE REF TO zif_lnt_abap_file_information.
            t35 = t15.
            DATA(t37) = VALUE string( ).
            DATA t38 TYPE REF TO zcl_lnt_abstract_object.
            t38 = t10.
            t37 = t38->name.
            t30 = t35->get_class_definition_by_name( i_name = t37 ).
          ENDIF.
          t7 = t30.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t8.
          DATA(t42) = t8->payload.
          CREATE OBJECT result.
          RETURN.
      ENDTRY.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t7 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t54 = me->conf->zlnt_view_read_sr_8c0bcd1bdb14( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          t58 = t7.
          DATA t63 TYPE REF TO zcl_lnt_class.
          t63 ?= t1.
          t52 = t3->is_exception( i_def = t58 i_obj_ac26 = t63 ).
        ENDIF.
        IF t52 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ELSE.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE abap_bool( ).
          t69 = me->conf->zlnt_view_read_sr_cc7a7915a497( ).
          t68 = xsdbool( t69 = abap_true ).
          t67 = t68.
          IF t68 = abap_true.
            DATA t73 TYPE REF TO zcl_lnt_info_implementing.
            DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t74 = t7->interfaces.
            DATA(t78) = VALUE i( ).
            t74->load( ).
            t78 = lines( t74->items ).
            DATA(t81) = VALUE i( ).
            t81 = 0.
            DATA t83 TYPE REF TO zcl_lnt_info_implementing.
            DO.
              IF xsdbool( t81 < t78 ) = abap_false.
                EXIT.
              ENDIF.
              DATA t88 TYPE REF TO zcl_lnt_info_implementing.
              CLEAR t88.
              DATA t90 TYPE REF TO zcl_lnt_info_implementing.
              CLEAR t90.
              DATA t93 TYPE REF TO object.
              t93 = t74->get( p0 = t81 ).
              DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t94.
              CLEAR t90.
              IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t94 ?= t93.
                DATA t95 TYPE REF TO object.
                t95 = t94->as_ref( ).
                t90 ?= t95.
              ELSE.
                t90 ?= t93.
              ENDIF.
              t88 = t90.
              DATA(t97) = VALUE string( ).
              DATA(t98) = VALUE string( ).
              t98 = t88->name.
              DATA(t100) = strlen( t98 ).
              t97 = t98.
              IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t97 TO UPPER CASE.
              ELSE.
                t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
              ENDIF.
              IF xsdbool( t97 = |IF_WORKFLOW| ) = abap_true.
                t83 = t88.
                EXIT.
              ENDIF.
              DATA(t108) = 1.
              t81 = t81 + t108.
            ENDDO.
            t73 = t83.
            t67 = xsdbool( t73 IS BOUND ).
          ENDIF.
          IF t67 = abap_true.
            CREATE OBJECT result.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t112 TYPE REF TO zcl_lnt_class.
      DATA t113 TYPE REF TO zcl_lnt_class.
      t113 ?= t1.
      t112 = t113.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t119 TYPE REF TO zcl_lnt_abstract_object.
      t119 = t112.
      DATA t122 TYPE REF TO zif_lnt_file.
      t122 = t119->get_xml_file( ).
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t122 IS BOUND ) = abap_true.
        DATA(t130) = VALUE string( ).
        t130 = t122->get_raw( ).
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t130.
        t125 = t133.
      ELSE.
        CLEAR t125.
      ENDIF.
      t117 = t125.
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t138 = t117.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t142) = VALUE abap_bool( ).
      IF t138 IS INITIAL.
        t142 = abap_true.
      ELSEIF t138->has = abap_false.
        t142 = abap_true.
      ENDIF.
      IF t142 = abap_true.
        CREATE OBJECT t136.
      ELSE.
        DATA t146 TYPE REF TO zif_lnt_file.
        t146 = t112->get_xml_file( ).
        DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t146 IS INITIAL ) = abap_true.
          CREATE OBJECT t149.
        ELSE.
          DATA(t159) = VALUE string( ).
          t159 = t117->value.
          t149 = me->check_xml( i_xml = t159 i_file = t146 ).
        ENDIF.
        t136 = t149.
      ENDIF.
      result = t136.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_true.
      DATA t166 TYPE REF TO zcl_lnt_ob_interface.
      DATA t167 TYPE REF TO zcl_lnt_ob_interface.
      t167 ?= t1.
      t166 = t167.
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t173 TYPE REF TO zcl_lnt_abstract_object.
      t173 = t166.
      DATA t176 TYPE REF TO zif_lnt_file.
      t176 = t173->get_xml_file( ).
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t176 IS BOUND ) = abap_true.
        DATA(t184) = VALUE string( ).
        t184 = t176->get_raw( ).
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t184.
        t179 = t187.
      ELSE.
        CLEAR t179.
      ENDIF.
      t171 = t179.
      DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t192 = t171.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t196) = VALUE abap_bool( ).
      IF t192 IS INITIAL.
        t196 = abap_true.
      ELSEIF t192->has = abap_false.
        t196 = abap_true.
      ENDIF.
      IF t196 = abap_true.
        CREATE OBJECT t190.
      ELSE.
        DATA t200 TYPE REF TO zif_lnt_file.
        t200 = t166->get_xml_file( ).
        DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t200 IS INITIAL ) = abap_true.
          CREATE OBJECT t203.
        ELSE.
          DATA(t213) = VALUE string( ).
          t213 = t171->value.
          t203 = me->check_xml( i_xml = t213 i_file = t200 ).
        ENDIF.
        t190 = t203.
      ENDIF.
      result = t190.
      RETURN.
    ENDIF.

    CREATE OBJECT result.

  ENDMETHOD.

  METHOD check_interface.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = t1.
    DATA t7 TYPE REF TO zif_lnt_file.
    t7 = t4->get_xml_file( ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t15 TYPE string.
      t15 = t7->get_raw( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t10 = t18.
    ELSE.
      CLEAR t10.
    ENDIF.
    t2 = t10.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t22 = t2.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = VALUE abap_bool( ).
    IF t22 IS INITIAL.
      t26 = abap_true.
    ELSEIF t22->has = abap_false.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_file.
    t29 = t1->get_xml_file( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t29 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    t41 = t2->value.
    result = me->check_xml( i_xml = t41 i_file = t29 ).

  ENDMETHOD.

  METHOD check_class.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    t4 = t1.
    DATA t7 TYPE REF TO zif_lnt_file.
    t7 = t4->get_xml_file( ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t7 IS BOUND ) = abap_true.
      DATA t15 TYPE string.
      t15 = t7->get_raw( ).
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t15.
      t10 = t18.
    ELSE.
      CLEAR t10.
    ENDIF.
    t2 = t10.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t22 = t2.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = VALUE abap_bool( ).
    IF t22 IS INITIAL.
      t26 = abap_true.
    ELSEIF t22->has = abap_false.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_file.
    t29 = t1->get_xml_file( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t29 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    t41 = t2->value.
    result = me->check_xml( i_xml = t41 i_file = t29 ).

  ENDMETHOD.

  METHOD check_xml.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        DATA(t6) = i_xml.
        t3 = zlnt_runtime_xmlw_d7bcce7c35ad=>parse( t6 ).
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t7) = t4->payload.
        CREATE OBJECT result.
        RETURN.
    ENDTRY.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = t3.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t16 IS NOT BOUND.
      t19 = abap_true.
    ELSE.
      t19 = xsdbool( t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t19 = abap_true.
    ELSE.
      t18 = t16->get( p0 = |abapGit| ).
    ENDIF.
    t14 = t18.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t14 IS BOUND.
      t27 = t14.
    ENDIF.
    IF t27 IS NOT BOUND.
      t26 = abap_true.
    ELSE.
      t26 = xsdbool( t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t26 = abap_true.
    ELSE.
      t25 = t14->get( p0 = |asx:abap| ).
    ENDIF.
    t12 = t25.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12 IS BOUND.
      t36 = t12.
    ENDIF.
    IF t36 IS NOT BOUND.
      t35 = abap_true.
    ELSE.
      t35 = xsdbool( t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t35 = abap_true.
    ELSE.
      t34 = t12->get( p0 = |asx:values| ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t34 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t56 = t3.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = VALUE abap_bool( ).
    IF t56 IS NOT BOUND.
      t59 = abap_true.
    ELSE.
      t59 = xsdbool( t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t59 = abap_true.
    ELSE.
      t58 = t56->get( p0 = |abapGit| ).
    ENDIF.
    t54 = t58.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54 IS BOUND.
      t67 = t54.
    ENDIF.
    IF t67 IS NOT BOUND.
      t66 = abap_true.
    ELSE.
      t66 = xsdbool( t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t66 = abap_true.
    ELSE.
      t65 = t54->get( p0 = |asx:abap| ).
    ENDIF.
    t52 = t65.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t52 IS BOUND.
      t76 = t52.
    ENDIF.
    IF t76 IS NOT BOUND.
      t75 = abap_true.
    ELSE.
      t75 = xsdbool( t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t75 = abap_true.
    ELSE.
      t74 = t52->get( p0 = |asx:values| ).
    ENDIF.
    t50 = t74.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = VALUE abap_bool( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t50 IS BOUND.
      t85 = t50.
    ENDIF.
    IF t85 IS NOT BOUND.
      t84 = abap_true.
    ELSE.
      t84 = xsdbool( t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t84 = abap_true.
    ELSE.
      t83 = t50->get( p0 = |DESCRIPTIONS| ).
    ENDIF.
    t48 = t83.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t48 IS INITIAL ) = abap_true.
    ELSE.
      t93 = t48.
    ENDIF.
    t92 = t93.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t92 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t107 = NEW zlnt_runtime_map__45a2315f90b8( ).
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t114 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t92->get( p0 = |SEOCOMPOTX| ) ).
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO object.
    DATA(t121) = VALUE i( ).
    DO.
      t114->load( ).
      IF t121 >= lines( t114->items ).
        EXIT.
      ENDIF.
      CLEAR t120.
      READ TABLE t114->items INDEX t121 + 1 INTO t120.
      t121 = t121 + 1.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t119.
      IF t120 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t120.
        t119 = t122.
      ELSE.
        IF t120 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t123 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t123.
          t123 ?= t120.
          CLEAR t119.
          IF t123 IS BOUND.
            CREATE OBJECT t119.
            t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t119->cval = t123.
          ENDIF.
        ELSE.
          CLEAR t119.
          IF t120 IS BOUND.
            DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t124.
            CLEAR t124.
            TRY.
                t119 ?= t120.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t119 IS NOT BOUND.
              TRY.
                  t124 ?= t120.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t124 IS BOUND.
                t119 = t124->source( ).
              ENDIF.
              IF t119 IS NOT BOUND.
                CREATE OBJECT t119.
                t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t119->oval = t120.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t126) = VALUE string( ).
      DATA(t128) = |Remove description for |.
      DATA(t129) = VALUE string( ).
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t130 = t119->get( p0 = |CMPNAME| ).
      IF t130 IS BOUND.
        IF t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t133) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t134) = |src/rules/remove_descriptions.ts:123:51: ABAP record string |.
          t134 = t134 && |conversion requires primitive dynamic storage|.
          t133->source_location = t134.
          RAISE EXCEPTION t133.
        ENDIF.
      ENDIF.
      IF t130 IS BOUND.
        IF t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t130->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t135) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t136) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t136 = t136 && |rsion requires the original default Object coercion hooks|.
            t135->source_location = t136.
            RAISE EXCEPTION t135.
          ENDIF.
          READ TABLE t130->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t137) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t138) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t138 = t138 && |rsion requires the original default Object coercion hooks|.
            t137->source_location = t138.
            RAISE EXCEPTION t137.
          ENDIF.
          READ TABLE t130->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t139) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t140) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t140 = t140 && |rsion requires the original default Object coercion hooks|.
            t139->source_location = t140.
            RAISE EXCEPTION t139.
          ENDIF.
          t129 = `[object Object]`.
        ELSE.
          t129 = t130->to_string( ).
        ENDIF.
      ELSE.
        t129 = `undefined`.
      ENDIF.
      DATA(t141) = strlen( t128 ).
      t126 = |{ t128 }{ t129 }|.
      DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t143.
      DATA(t146) = VALUE string( ).
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t147 = t119->get( p0 = |CMPNAME| ).
      IF t147 IS BOUND.
        IF t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t150) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t151) = |src/rules/remove_descriptions.ts:124:20: ABAP record string |.
          t151 = t151 && |conversion requires primitive dynamic storage|.
          t150->source_location = t151.
          RAISE EXCEPTION t150.
        ENDIF.
      ENDIF.
      IF t147 IS BOUND.
        IF t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t147->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t152) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t153) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t153 = t153 && |rsion requires the original default Object coercion hooks|.
            t152->source_location = t153.
            RAISE EXCEPTION t152.
          ENDIF.
          READ TABLE t147->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t154) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t155) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t155 = t155 && |rsion requires the original default Object coercion hooks|.
            t154->source_location = t155.
            RAISE EXCEPTION t154.
          ENDIF.
          READ TABLE t147->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t156) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t157) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t157 = t157 && |rsion requires the original default Object coercion hooks|.
            t156->source_location = t157.
            RAISE EXCEPTION t156.
          ENDIF.
          t146 = `[object Object]`.
        ELSE.
          t146 = t147->to_string( ).
        ENDIF.
      ELSE.
        t146 = `undefined`.
      ENDIF.
      t143 = t107->get( p0 = t146 ).
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      CLEAR t158.
      DATA(t161) = VALUE abap_bool( ).
      IF t143 IS INITIAL.
        t161 = abap_true.
      ELSEIF t143->has = abap_false.
        t161 = abap_true.
      ENDIF.
      IF xsdbool( t161 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t164 TYPE REF TO zcl_lnt_position.
      CLEAR t164.
      DATA(t167) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t167->has = abap_true.
      t167->value = CONV f( 1 ).
      t164 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t167 ).
      DATA t169 TYPE REF TO zcl_lnt_issue.
      CLEAR t169.
      DATA(t173) = VALUE string( ).
      DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t179) = VALUE string( ).
      DATA(t180) = |Ensures you have no descriptions in metadata of methods, par|.
      t180 = t180 && |ameters, etc.\n\nClass descriptions are required, see rule des|.
      t180 = t180 && |cription_empty.\n\nConsider using ABAP Doc for documentation.|.
      t179 = t180.
      DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t181.
      CREATE OBJECT t181.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      CLEAR t186.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      CLEAR t188.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      CLEAR t190.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      CLEAR t192.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t194.
      CLEAR t194.
      t174 = NEW zcl_lnt_irule_metadata( i_key = |remove_descriptions| i_title = |Remove descriptions| i_short_description = t179 i_bad_example = t186 i_good_example = t188 i_extended_information = t190 i_tags = t181 i_pragma = t192 i_pseudo_comment = t194 ).
      CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
      t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t196 ).
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t197 ).
      ENDIF.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t198 ).
      ENDIF.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t199 ).
      ENDIF.
      CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
      t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t201 ).
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t203 ).
      ENDIF.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t205.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t205 ).
      ENDIF.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t207 ).
      ENDIF.
      t173 = t174->key.
      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t208.
      t208 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t210.
      t169 = zcl_lnt_issue=>at_position( i_file = t2 i_start = t164 i_message_26cb = t126 i_key = t173 i_severity = t208 i_fix = t210 ).
      t112->load( ).
      APPEND t169 TO t112->items.
      t112->save( ).
      DATA t213 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      CLEAR t213.
      DATA(t215) = VALUE string( ).
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t216 = t119->get( p0 = |CMPNAME| ).
      IF t216 IS BOUND.
        IF t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t219) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t220) = |src/rules/remove_descriptions.ts:132:16: ABAP record string |.
          t220 = t220 && |conversion requires primitive dynamic storage|.
          t219->source_location = t220.
          RAISE EXCEPTION t219.
        ENDIF.
      ENDIF.
      IF t216 IS BOUND.
        IF t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t216->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t221) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t222) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t222 = t222 && |rsion requires the original default Object coercion hooks|.
            t221->source_location = t222.
            RAISE EXCEPTION t221.
          ENDIF.
          READ TABLE t216->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t223) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t224) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t224 = t224 && |rsion requires the original default Object coercion hooks|.
            t223->source_location = t224.
            RAISE EXCEPTION t223.
          ENDIF.
          READ TABLE t216->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t225) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t226) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t226 = t226 && |rsion requires the original default Object coercion hooks|.
            t225->source_location = t226.
            RAISE EXCEPTION t225.
          ENDIF.
          t215 = `[object Object]`.
        ELSE.
          t215 = t216->to_string( ).
        ENDIF.
      ELSE.
        t215 = `undefined`.
      ENDIF.
      t213 = t107->set( p0 = t215 p1 = abap_true ).
    ENDDO.
    result = t112.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_rmv_dscrptns_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_rm_ds_ts_rm_dsc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_rmv_dsc_ts_rmv_dsc( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1682_28fcf90d5cf8.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
