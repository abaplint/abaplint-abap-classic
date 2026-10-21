* TS: src/rules/nrob_consistency.ts:11:1 NROBConsistency
CLASS zcl_lnt_nrob_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_nr_cn_ts_nr_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS st_cn_in_sr_rl_nr_cn_ts_nr_cns IMPORTING i_conf TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS in_in_sr_rl_nrb_cns_ts_nrb_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_nrob_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_nrob_consistency IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_nrob_consistency_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
    t11 = t11 && |rted if the referenced domain is not found(taking error name|.
    t11 = t11 && |space into account)|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |nrob_consistency| i_title = |Number range consistency| i_short_description = |Consistency checks for number ranges| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_nr_cn_ts_nr_cns.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_nr_cn_ts_nr_cns.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_nrb_cns_ts_nrb_cns.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_number_range ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t10 TYPE REF TO zcl_lnt_abstract_object.
    DATA t11 TYPE REF TO zcl_lnt_number_range.
    t11 ?= t1.
    t10 = t11.
    DATA t15 TYPE REF TO zif_lnt_file.
    t15 = t10->get_xml_file( ).
    DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA(t34) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t34->has = abap_true.
      t34->value = CONV f( 1 ).
      t31 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t34 ).
      DATA t35 TYPE string.
      t35 = t10->name.
      t18 = NEW zcl_lnt_fi_identifier( i_token = NEW zcl_lnt_lx_identifier( i_start = t31 i_str = t35 ) i_filename = t15->get_filename( ) ).
    ENDIF.
    t8 = t18.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t52 TYPE REF TO zcl_lnt_number_range.
    DATA t53 TYPE REF TO zcl_lnt_number_range.
    t53 ?= t1.
    t52 = t53.
    DATA t57 TYPE REF TO zcl_lnt_iparse_result.
    t57 = t52->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ).
    DATA t60 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t60 = t52->parsed_xml.
    DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    IF xsdbool( t60 IS INITIAL ) = abap_true.
    ELSE.
      t63 = t60->percentage.
    ENDIF.
    t51 = t63.
    IF t51 IS BOUND.
      IF t51->has = abap_true.
        IF t51->number_special <> 0.
          t50 = xsdbool( t51->number_special <> 1 ).
        ELSE.
          t50 = xsdbool( t51->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = t50.
    IF t50 = abap_false.
      t49 = xsdbool( 0 > 50 ).
    ENDIF.
    IF t49 = abap_true.
      DATA t76 TYPE REF TO zcl_lnt_issue.
      DATA t77 TYPE REF TO zcl_lnt_fi_identifier.
      t77 = t8.
      DATA(t80) = VALUE string( ).
      DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t91) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
      t91 = t91 && |rted if the referenced domain is not found(taking error name|.
      t91 = t91 && |space into account)|.
      DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t92->has = abap_true.
      t92->value = t91.
      t88 = t92.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t98.
      t98->load( ).
      APPEND |SingleFile| TO t98->items.
      t98->save( ).
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t81 = NEW zcl_lnt_irule_metadata( i_key = |nrob_consistency| i_title = |Number range consistency| i_short_description = |Consistency checks for number ranges| i_bad_example = t104 i_good_example = t106 i_extended_information = t88 i_tags = t98 i_pragma = t108 i_pseudo_comment = t110 ).
      CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
      t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t112 ).
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t116 ).
      ENDIF.
      CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
      t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t118 ).
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t120 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t122 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t124 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t126 ).
      ENDIF.
      t80 = t81->key.
      DATA t129 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t76 = zcl_lnt_issue=>at_identifier( i_identifier = t77 i_message_26cb = |Percentage more than 50| i_key = t80 i_severity = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t129 ).
      t6->load( ).
      APPEND t76 TO t6->items.
      t6->save( ).
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t132 TYPE REF TO zcl_lnt_number_range.
    DATA t133 TYPE REF TO zcl_lnt_number_range.
    t133 ?= t1.
    t132 = t133.
    DATA t137 TYPE REF TO zcl_lnt_iparse_result.
    t137 = t132->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ).
    DATA t140 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    t140 = t132->parsed_xml.
    DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t140 IS INITIAL ) = abap_true.
    ELSE.
      t143 = t140->domain.
    ENDIF.
    t130 = t143.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = VALUE abap_bool( ).
    IF t130 IS BOUND.
      IF t130->has = abap_true.
        t152 = xsdbool( strlen( t130->value ) > 0 ).
      ENDIF.
    ENDIF.
    t151 = t152.
    IF t152 = abap_true.
      DATA t156 TYPE REF TO zif_lnt_object.
      DATA(t157) = me->reg.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t161->has = abap_true.
      t161->value = |DOMA|.
      t158 = t161.
      DATA t165 TYPE string.
      t165 = t130->value.
      DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t167->has = abap_true.
      t167->value = t165.
      t156 = t157->get_object( i_type_9913 = t158 i_name = t167 ).
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t151 = xsdbool( t156 IS INITIAL ).
    ENDIF.
    t150 = t151.
    IF t151 = abap_true.
      DATA t174 TYPE abap_bool.
      DATA t176 TYPE string.
      t176 = t130->value.
      t174 = me->reg->in_error_namespace( i_name = t176 ).
      t150 = xsdbool( t174 = abap_true ).
    ENDIF.
    IF t150 = abap_true.
      DATA t180 TYPE string.
      DATA t181 TYPE string.
      DATA(t182) = |Domain |.
      DATA t183 TYPE string.
      t183 = t130->value.
      DATA(t185) = strlen( t182 ).
      t181 = |{ t182 }{ t183 }|.
      DATA(t187) = strlen( t181 ).
      t180 = |{ t181 }{ | not found| }|.
      DATA t189 TYPE REF TO zcl_lnt_issue.
      DATA t190 TYPE REF TO zcl_lnt_fi_identifier.
      t190 = t8.
      DATA(t193) = VALUE string( ).
      DATA t194 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t204) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
      t204 = t204 && |rted if the referenced domain is not found(taking error name|.
      t204 = t204 && |space into account)|.
      DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t205->has = abap_true.
      t205->value = t204.
      t201 = t205.
      DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t211.
      t211->load( ).
      APPEND |SingleFile| TO t211->items.
      t211->save( ).
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t194 = NEW zcl_lnt_irule_metadata( i_key = |nrob_consistency| i_title = |Number range consistency| i_short_description = |Consistency checks for number ranges| i_bad_example = t217 i_good_example = t219 i_extended_information = t201 i_tags = t211 i_pragma = t221 i_pseudo_comment = t223 ).
      CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
      t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t225 ).
      DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t226 ).
      ENDIF.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t227 ).
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t228 ).
      ENDIF.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t229 ).
      ENDIF.
      CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
      t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t231 ).
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t233 ).
      ENDIF.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t235 ).
      ENDIF.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t237 ).
      ENDIF.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t239 ).
      ENDIF.
      t193 = t194->key.
      DATA t242 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t189 = zcl_lnt_issue=>at_identifier( i_identifier = t190 i_message_26cb = t180 i_key = t193 i_severity = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t242 ).
      t6->load( ).
      APPEND t189 TO t6->items.
      t6->save( ).
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_nrob_consistency_conf.
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
        t2 = NEW zcl_lnt_nrob_consistency_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_nr_cn_ts_nr_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_nrb_cns_ts_nrb_cns( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1629_fd5859dfffea.
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
