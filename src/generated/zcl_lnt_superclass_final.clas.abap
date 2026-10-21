* TS: src/rules/superclass_final.ts:15:1 SuperclassFinal
CLASS zcl_lnt_superclass_final DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_superclass_final_conf.
    DATA graph TYPE REF TO zcl_lnt_include_graph.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_sp_fn_ts_sp_fnl RETURNING VALUE(result) TYPE REF TO zcl_lnt_superclass_final_conf.
    METHODS st_cn_in_sr_rl_sp_fn_ts_sp_fnl IMPORTING i_conf TYPE REF TO zcl_lnt_superclass_final_conf.
    METHODS run_parsed REDEFINITION.
    METHODS fnd_in_rltd_prgrm_inclds IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_super_class_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_superclass_final IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_superclass_final_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    CLEAR me->graph.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that classes which are inherited from are not declare|.
    t7 = t7 && |d as FINAL.|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |superclass_final| i_title = |Super class final| i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t12 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t33 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t35 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Superclasses cannot be FINAL|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sp_fn_ts_sp_fnl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->info->list_class_definitions( ).
    DATA t11 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t5->load( ).
      IF t13 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t5->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t16 = t11->super_class_name.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t20 = t16.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      DATA(t24) = VALUE abap_bool( ).
      IF t20 IS INITIAL.
        t24 = abap_true.
      ELSEIF t20->has = abap_false.
        t24 = abap_true.
      ENDIF.
      IF t24 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE abap_bool.
      t26 = abap_true.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      t29 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
      t28 = t29.
      IF t29 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_file.
        t34 = t1.
        DATA t36 TYPE string.
        t36 = t34->filename.
        DATA t39 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t39 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `\.clas\.abap$` flags = ||.
        t28 = t39->match_test( p0 = t36 ).
      ENDIF.
      IF t28 = abap_true.
        t26 = abap_false.
      ENDIF.
      DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t44.
      IF t26 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t47 = t2->parsed.
        DATA t52 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t52.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        DATA(t54) = VALUE i( ).
        DO.
          t47->load( ).
          IF t54 >= lines( t47->items ).
            EXIT.
          ENDIF.
          CLEAR t53.
          READ TABLE t47->items INDEX t54 + 1 INTO t53.
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
          DATA t58 TYPE REF TO zif_lnt_abap_file_information.
          t58 = t52->info.
          DATA t63 TYPE string.
          t63 = t16->value.
          t44 = t58->get_class_definition_by_name( i_name = t63 ).
          DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t68.
          IF xsdbool( xsdbool( t44 IS INITIAL ) = abap_false ) = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      t74 = xsdbool( t44 IS INITIAL ).
      t73 = t74.
      IF t74 = abap_true.
        t73 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ).
      ENDIF.
      IF t73 = abap_true.
        DATA t85 TYPE string.
        t85 = t16->value.
        t44 = me->fnd_in_rltd_prgrm_inclds( i_file = t1 i_super_class_name = t85 ).
      ENDIF.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF xsdbool( t44 IS INITIAL ) = abap_true.
        DATA t94 TYPE REF TO zcl_lnt_class.
        DATA t95 TYPE REF TO zcl_lnt_class.
        CLEAR t95.
        DATA t96 TYPE REF TO zif_lnt_object.
        DATA(t97) = me->reg.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t101->has = abap_true.
        t101->value = |CLAS|.
        t98 = t101.
        DATA t105 TYPE string.
        t105 = t16->value.
        DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t107->has = abap_true.
        t107->value = t105.
        t96 = t97->get_object( i_type_9913 = t98 i_name = t107 ).
        t95 ?= t96.
        t94 = t95.
        IF xsdbool( t94 IS BOUND ) = abap_true.
          DATA t112 TYPE REF TO zcl_lnt_class.
          t112 = t94.
          DATA t115 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t115.
          DATA t117 TYPE REF TO zcl_lnt_abap_file.
          t117 = t112->get_main_abap_file( ).
          DATA t120 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t120.
          IF xsdbool( t117 IS INITIAL ) = abap_true.
            CLEAR t120.
          ELSE.
            t120 = t117->info.
          ENDIF.
          t115 = t120.
          DATA t130 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t130.
          IF xsdbool( t115 IS INITIAL ) = abap_true.
            CLEAR t130.
          ELSE.
            DATA t135 TYPE REF TO zif_lnt_abap_file_information.
            t135 = t115.
            DATA t137 TYPE string.
            DATA t138 TYPE REF TO zcl_lnt_abstract_object.
            t138 = t112.
            t137 = t138->name.
            t130 = t135->get_class_definition_by_name( i_name = t137 ).
          ENDIF.
          t44 = t130.
        ENDIF.
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF xsdbool( t44 IS INITIAL ) = abap_true.
        DATA t150 TYPE string.
        DATA t151 TYPE string.
        DATA(t152) = |Super class "|.
        DATA t153 TYPE string.
        t153 = t16->value.
        DATA(t155) = strlen( t152 ).
        t151 = |{ t152 }{ t153 }|.
        DATA(t157) = strlen( t151 ).
        t150 = |{ t151 }{ |" not found| }|.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        CLEAR t159.
        DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
        t160 = t11->identifier.
        DATA(t163) = VALUE string( ).
        DATA t164 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t169 TYPE string.
        DATA(t170) = |Checks that classes which are inherited from are not declare|.
        t170 = t170 && |d as FINAL.|.
        t169 = t170.
        DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t171.
        DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t175.
        t175->load( ).
        APPEND |Syntax| TO t175->items.
        t175->save( ).
        t171 = t175.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t185.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t164 = NEW zcl_lnt_irule_metadata( i_key = |superclass_final| i_title = |Super class final| i_short_description = t169 i_bad_example = t181 i_good_example = t183 i_extended_information = t185 i_tags = t171 i_pragma = t187 i_pseudo_comment = t189 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t194 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t196 ).
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t198 ).
        ENDIF.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t200 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t202 ).
        ENDIF.
        t163 = t164->key.
        DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t203 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t205 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t205.
        t159 = zcl_lnt_issue=>at_identifier( i_identifier = t160 i_message_26cb = t150 i_key = t163 i_severity = t203 i_fix = t205 ).
        t3->load( ).
        APPEND t159 TO t3->items.
        t3->save( ).
        CONTINUE.
      ENDIF.
      IF xsdbool( t44->is_final = abap_true ) = abap_true.
        DATA t214 TYPE REF TO zcl_lnt_issue.
        CLEAR t214.
        DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
        t215 = t11->identifier.
        DATA(t218) = VALUE string( ).
        DATA t219 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t224 TYPE string.
        DATA(t225) = |Checks that classes which are inherited from are not declare|.
        t225 = t225 && |d as FINAL.|.
        t224 = t225.
        DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t226.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t230.
        t230->load( ).
        APPEND |Syntax| TO t230->items.
        t230->save( ).
        t226 = t230.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t240.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t244.
        t219 = NEW zcl_lnt_irule_metadata( i_key = |superclass_final| i_title = |Super class final| i_short_description = t224 i_bad_example = t236 i_good_example = t238 i_extended_information = t240 i_tags = t226 i_pragma = t242 i_pseudo_comment = t244 ).
        CREATE OBJECT t219->zlnt_view_ownkeys_b0e8086400eb.
        t219->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t246 ).
        DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t247.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t247 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t248 ).
        ENDIF.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        IF t219->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t219->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t249 ).
        ENDIF.
        CREATE OBJECT t219->zlnt_json_ownkeys_70e5fd461788.
        t219->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t251 ).
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t253 ).
        ENDIF.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t255 ).
        ENDIF.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        IF t219->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t219->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t257 ).
        ENDIF.
        t218 = t219->key.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t258 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t260.
        t214 = zcl_lnt_issue=>at_identifier( i_identifier = t215 i_message_26cb = |Superclasses cannot be FINAL| i_key = t218 i_severity = t258 i_fix = t260 ).
        t3->load( ).
        APPEND t214 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD fnd_in_rltd_prgrm_inclds.
    DATA(t1) = i_file.
    DATA(t2) = i_super_class_name.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->graph IS INITIAL ) = abap_true.
      DATA(t13) = me->reg.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      me->graph = NEW zcl_lnt_include_graph( i_reg_f149 = t13 i_severity = t14 i_allow_unused = t15 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `graph`.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zcl_lnt_include_graph.
    t19 = me->graph.
    DATA t24 TYPE REF TO zcl_lnt_abstract_file.
    t24 = t1.
    DATA(t26) = VALUE string( ).
    t26 = t24->filename.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t26.
    t17 = t19->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t28 ).
    t17->load( ).
    IF xsdbool( lines( t17->items ) = 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t35 = me->reg->get_objects_by_type( i_type_9913 = |PROG| )->iterate( ).
    DO.
      DATA t41 TYPE REF TO zcl_lnt_generator_17955b8b.
      t41 = t35->next( ).
      IF t41->done = abap_true.
        EXIT.
      ENDIF.
      DATA t46 TYPE REF TO zif_lnt_object.
      t46 = t41->value.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      t52 = abap_false.
      DATA t54 TYPE REF TO cx_root.
      CLEAR t54.
      TRY.
          t51 = xsdbool( xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ).
          t52 = abap_true.
        CATCH cx_root INTO t54.
          IF xsdbool( t52 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t54.
      ENDTRY.
      IF xsdbool( t52 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      IF t51 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t66.
      DATA t68 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t68.
      DATA(t69) = VALUE abap_bool( ).
      t69 = abap_false.
      DATA t71 TYPE REF TO cx_root.
      CLEAR t71.
      TRY.
          DATA t73 TYPE REF TO zcl_lnt_ob_program.
          CLEAR t73.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t75 = t46.
          t73 ?= t75.
          t68 = t73->get_main_abap_file( ).
          t69 = abap_true.
        CATCH cx_root INTO t71.
          IF xsdbool( t69 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t71.
      ENDTRY.
      IF xsdbool( t69 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      t66 = t68.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      t86 = abap_false.
      DATA t88 TYPE REF TO cx_root.
      CLEAR t88.
      TRY.
          DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t92.
          CLEAR t92.
          t85 = xsdbool( t66 IS INITIAL ).
          t86 = abap_true.
        CATCH cx_root INTO t88.
          IF xsdbool( t86 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t88.
      ENDTRY.
      IF xsdbool( t86 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      IF t85 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t104.
      DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t106.
      DATA(t107) = VALUE abap_bool( ).
      t107 = abap_false.
      DATA t109 TYPE REF TO cx_root.
      CLEAR t109.
      TRY.
          DATA t111 TYPE REF TO zcl_lnt_include_graph.
          CLEAR t111.
          t111 = me->graph.
          DATA t116 TYPE REF TO zcl_lnt_abstract_file.
          t116 = t66.
          DATA(t119) = VALUE string( ).
          t119 = t116->filename.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t119.
          t106 = t111->l_m_f_i_i_sr_ut_in_gr_ts_in_gr( i_filename = t121 ).
          t107 = abap_true.
        CATCH cx_root INTO t109.
          IF xsdbool( t107 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t109.
      ENDTRY.
      IF xsdbool( t107 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      t104 = t106.
      DATA(t132) = VALUE abap_bool( ).
      DATA(t133) = VALUE abap_bool( ).
      t133 = abap_false.
      DATA t135 TYPE REF TO cx_root.
      CLEAR t135.
      TRY.
          DATA(t138) = VALUE abap_bool( ).
          t138 = abap_false.
          DATA(t141) = VALUE string( ).
          t17->dense( ).
          DATA(t142) = VALUE i( ).
          DO.
            t17->load( ).
            IF t142 >= lines( t17->items ).
              EXIT.
            ENDIF.
            CLEAR t141.
            READ TABLE t17->items INDEX t142 + 1 INTO t141.
            IF t17->has( t142 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t142 = t142 + 1.
            IF t104->includes( p0 = t141 ) = abap_true.
              t138 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t132 = xsdbool( t138 = abap_false ).
          t133 = abap_true.
        CATCH cx_root INTO t135.
          IF xsdbool( t133 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t135.
      ENDTRY.
      IF xsdbool( t133 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      IF t132 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t157 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t157.
      DATA t159 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t159.
      DATA(t160) = VALUE abap_bool( ).
      t160 = abap_false.
      DATA t162 TYPE REF TO cx_root.
      CLEAR t162.
      TRY.
          t159 = t66->info->get_class_definition_by_name( i_name = t2 ).
          t160 = abap_true.
        CATCH cx_root INTO t162.
          IF xsdbool( t160 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t162.
      ENDTRY.
      IF xsdbool( t160 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      t157 = t159.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      t181 = abap_false.
      DATA t183 TYPE REF TO cx_root.
      CLEAR t183.
      TRY.
          DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t187.
          CLEAR t187.
          t180 = xsdbool( xsdbool( t157 IS INITIAL ) = abap_false ).
          t181 = abap_true.
        CATCH cx_root INTO t183.
          IF xsdbool( t181 = abap_false ) = abap_true.
            t35->close( ).
          ENDIF.
          RAISE EXCEPTION t183.
      ENDTRY.
      IF xsdbool( t181 = abap_false ) = abap_true.
        t35->close( ).
      ENDIF.
      IF t180 = abap_true.
        DATA t202 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t202.
        DATA(t203) = VALUE abap_bool( ).
        t203 = abap_false.
        DATA t205 TYPE REF TO cx_root.
        CLEAR t205.
        TRY.
            t202 = t157.
            t203 = abap_true.
          CATCH cx_root INTO t205.
            IF xsdbool( t203 = abap_false ) = abap_true.
              t35->close( ).
            ENDIF.
            RAISE EXCEPTION t205.
        ENDTRY.
        IF xsdbool( t203 = abap_false ) = abap_true.
          t35->close( ).
        ENDIF.
        t35->close( ).
        result = t202.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_superclass_final_conf( me->gt_cn_in_sr_rl_sp_fn_ts_sp_fnl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_superclass_final_conf( me->gt_cn_in_sr_rl_sp_fn_ts_sp_fnl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_superclass_final_conf.
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
        t1 = NEW zcl_lnt_superclass_final_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sp_fn_ts_sp_fnl( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1720_e579ccabee51.
  ENDMETHOD.
ENDCLASS.
