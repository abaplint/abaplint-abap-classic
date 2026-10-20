* TS: src/rules/smim_consistency.ts:12:1 SMIMConsistency
CLASS zcl_lnt_smim_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_smim_consistency_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_sm_cn_ts_sm_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_smim_consistency_conf.
    METHODS st_cn_in_sr_rl_sm_cn_ts_sm_cns IMPORTING i_conf TYPE REF TO zcl_lnt_smim_consistency_conf.
    METHODS in_in_sr_rl_smm_cns_ts_smm_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_smim_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS base IMPORTING i_full TYPE string RETURNING VALUE(result) TYPE string.
    METHODS find_folder IMPORTING i_base TYPE string RETURNING VALUE(result) TYPE abap_bool.
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
CLASS zcl_lnt_smim_consistency IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_smim_consistency_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t11) = |Checks that the parent folder of each MIME object exists in |.
    t11 = t11 && |the registry. The SAP system folder /SAP/PUBLIC is always al|.
    t11 = t11 && |lowed as a parent even if not present in the repository.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |smim_consistency| i_title = |SMIM consistency check| i_short_description = |SMIM consistency check| i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t31 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t33 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sm_cn_ts_sm_cns.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sm_cn_ts_sm_cns.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_smm_cns_ts_smm_cns.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_mime_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t8) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zcl_lnt_mime_object.
    DATA t15 TYPE REF TO zcl_lnt_mime_object.
    DATA t17 TYPE REF TO object.
    t17 = t1.
    t15 ?= t17.
    t14 = t15.
    DATA t19 TYPE REF TO zcl_lnt_iparse_result.
    t19 = t14->pr_in_src_obj_mm_obj_ts_mm_obj( ).
    DATA t22 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    t22 = t14->parsed_xml.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t22 IS INITIAL ) = abap_true.
    ELSE.
      t25 = t22->url_a050.
    ENDIF.
    t12 = t25.
    DATA(t32) = VALUE string( ).
    DATA(t33) = VALUE abap_bool( ).
    IF t12 IS BOUND.
      IF t12->has = abap_true.
        t33 = xsdbool( strlen( t12->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t33 = abap_true.
      t32 = t12->value.
    ELSE.
      t32 = ||.
    ENDIF.
    t10 = t32.
    DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t42) = |/|.
    DATA(t43) = strlen( t10 ).
    DATA t44 TYPE i.
    DATA(t45) = VALUE i( ).
    DATA(t46) = VALUE i( ).
    DATA t47 TYPE i.
    DATA(t48) = VALUE string( ).
    CREATE OBJECT t40.
    t47 = strlen( t42 ).
    t44 = 0.
    IF t47 = 0.
      WHILE t44 < t43.
        t48 = t10+t44(1).
        APPEND t48 TO t40->items.
        t44 = t44 + 1.
      ENDWHILE.
    ELSE.
      WHILE t44 <= t43.
        FIND FIRST OCCURRENCE OF t42 IN SECTION OFFSET t44 OF t10 MATCH OFFSET t45.
        IF sy-subrc = 0.
          t46 = t45 - t44.
        ELSE.
          t45 = -1.
          t46 = t43 - t44.
        ENDIF.
        CLEAR t48.
        IF t46 > 0.
          t48 = t10+t44(t46).
        ENDIF.
        APPEND t48 TO t40->items.
        IF t45 < 0.
          EXIT.
        ENDIF.
        t44 = t45 + t47.
      ENDWHILE.
    ENDIF.
    t39 = t40.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t49 = t39->pop( ).
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = |/|.
    t8 = t39->join( p0 = t54 ).
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE abap_bool.
    t57 = xsdbool( t8 <> || ).
    t56 = t57.
    IF t57 = abap_true.
      t56 = xsdbool( t8 <> |/SAP/PUBLIC| ).
    ENDIF.
    t55 = t56.
    IF t56 = abap_true.
      DATA t64 TYPE abap_bool.
      t64 = me->find_folder( i_base = t8 ).
      t55 = xsdbool( t64 = abap_false ).
    ENDIF.
    IF t55 = abap_true.
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA(t70) = |Parent folder "|.
      DATA(t72) = strlen( t70 ).
      t69 = |{ t70 }{ t8 }|.
      DATA(t74) = strlen( t69 ).
      t68 = |{ t69 }{ |" not found| }|.
      DATA t76 TYPE REF TO zcl_lnt_position.
      DATA(t79) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t79->has = abap_true.
      t79->value = CONV f( 1 ).
      t76 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t79 ).
      DATA t81 TYPE REF TO zcl_lnt_issue.
      DATA t82 TYPE REF TO zif_lnt_file.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t84 TYPE REF TO zcl_lnt_abstract_object.
      DATA t85 TYPE REF TO zcl_lnt_mime_object.
      DATA t87 TYPE REF TO object.
      t87 = t1.
      t85 ?= t87.
      t84 = t85.
      t83 = t84->files.
      DATA t90 TYPE REF TO object.
      t83->load( ).
      READ TABLE t83->items INDEX 1 INTO t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t82 ?= t92.
      ELSE.
        t82 ?= t90.
      ENDIF.
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t106) = |Checks that the parent folder of each MIME object exists in |.
      t106 = t106 && |the registry. The SAP system folder /SAP/PUBLIC is always al|.
      t106 = t106 && |lowed as a parent even if not present in the repository.|.
      DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t107->has = abap_true.
      t107->value = t106.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t96 = NEW zcl_lnt_irule_metadata( i_key = |smim_consistency| i_title = |SMIM consistency check| i_short_description = |SMIM consistency check| i_bad_example = t109 i_good_example = t111 i_extended_information = t107 i_tags = t113 i_pragma = t115 i_pseudo_comment = t117 ).
      CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
      t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t122 ).
      ENDIF.
      CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
      t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t124 ).
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t126 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t128 ).
      ENDIF.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t130 ).
      ENDIF.
      t95 = t96->key.
      DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t81 = zcl_lnt_issue=>at_position( i_file = t82 i_start = t76 i_message_26cb = t68 i_key = t95 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t133 ).
      t2->load( ).
      APPEND t81 TO t2->items.
      t2->save( ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD base.
    DATA(t1) = i_full.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = |/|.
    DATA(t6) = strlen( t1 ).
    DATA t7 TYPE i.
    DATA(t8) = VALUE i( ).
    DATA(t9) = VALUE i( ).
    DATA t10 TYPE i.
    DATA(t11) = VALUE string( ).
    CREATE OBJECT t3.
    t10 = strlen( t5 ).
    t7 = 0.
    IF t10 = 0.
      WHILE t7 < t6.
        t11 = t1+t7(1).
        APPEND t11 TO t3->items.
        t7 = t7 + 1.
      ENDWHILE.
    ELSE.
      WHILE t7 <= t6.
        FIND FIRST OCCURRENCE OF t5 IN SECTION OFFSET t7 OF t1 MATCH OFFSET t8.
        IF sy-subrc = 0.
          t9 = t8 - t7.
        ELSE.
          t8 = -1.
          t9 = t6 - t7.
        ENDIF.
        CLEAR t11.
        IF t9 > 0.
          t11 = t1+t7(t9).
        ENDIF.
        APPEND t11 TO t3->items.
        IF t8 < 0.
          EXIT.
        ENDIF.
        t7 = t8 + t10.
      ENDWHILE.
    ENDIF.
    t2 = t3.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = t2->pop( ).
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = |/|.
    result = t2->join( p0 = t17 ).

  ENDMETHOD.

  METHOD find_folder.
    DATA(t1) = i_base.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t2 = me->reg->get_objects_by_type( i_type_9913 = |SMIM| )->iterate( ).
    DO.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      t8 = t2->next( ).
      IF t8->done = abap_true.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_object.
      t15 = t8->value.
      DATA t17 TYPE REF TO zcl_lnt_mime_object.
      CLEAR t17.
      DATA t19 TYPE REF TO zcl_lnt_mime_object.
      CLEAR t19.
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA t23 TYPE REF TO zcl_lnt_mime_object.
          CLEAR t23.
          t23 ?= t15.
          t19 = t23.
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      t17 = t19.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      t35 = abap_false.
      DATA t37 TYPE REF TO cx_root.
      CLEAR t37.
      TRY.
          DATA(t38) = VALUE abap_bool( ).
          DATA(t39) = VALUE abap_bool( ).
          DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t40.
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t1.
          t40 = t43.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          DATA t46 TYPE REF TO zcl_lnt_mime_object.
          t46 = t17.
          DATA t49 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t49.
          t49 = t46->pr_in_src_obj_mm_obj_ts_mm_obj( ).
          DATA t52 TYPE REF TO zcl_lnt_shape_c0acc5f0.
          CLEAR t52.
          t52 = t46->parsed_xml.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          IF xsdbool( t52 IS INITIAL ) = abap_true.
            CLEAR t55.
          ELSE.
            t55 = t52->url_a050.
          ENDIF.
          t45 = t55.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          IF t40 IS BOUND.
            t62 = t40->has.
          ENDIF.
          IF t45 IS BOUND.
            t63 = t45->has.
          ENDIF.
          IF t62 = t63.
            IF t62 = abap_false.
              t39 = abap_true.
            ELSEIF t40->value = t45->value.
              t39 = abap_true.
            ENDIF.
          ENDIF.
          t38 = t39.
          IF t39 = abap_true.
            DATA(t68) = VALUE abap_bool( ).
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            DATA t70 TYPE REF TO zcl_lnt_shape_c0acc5f0.
            CLEAR t70.
            t70 = t17->parsed_xml.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            IF xsdbool( t70 IS INITIAL ) = abap_true.
              CLEAR t73.
            ELSE.
              t73 = t70->folder_6de9.
            ENDIF.
            t69 = t73.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t83->has = abap_true.
            t83->value = |X|.
            t80 = t83.
            DATA(t85) = VALUE abap_bool( ).
            DATA(t86) = VALUE abap_bool( ).
            IF t69 IS BOUND.
              t85 = t69->has.
            ENDIF.
            IF t80 IS BOUND.
              t86 = t80->has.
            ENDIF.
            IF t85 = t86.
              IF t85 = abap_false.
                t68 = abap_true.
              ELSEIF t69->value = t80->value.
                t68 = abap_true.
              ENDIF.
            ENDIF.
            t38 = xsdbool( t68 = abap_true ).
          ENDIF.
          t34 = t38.
          t35 = abap_true.
        CATCH cx_root INTO t37.
          IF xsdbool( t35 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t37.
      ENDTRY.
      IF xsdbool( t35 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t34 = abap_true.
        t2->close( ).
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_smim_consistency_conf( me->gt_cn_in_sr_rl_sm_cn_ts_sm_cns( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_smim_consistency_conf( me->gt_cn_in_sr_rl_sm_cn_ts_sm_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_smim_consistency_conf.
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
        t2 = NEW zcl_lnt_smim_consistency_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sm_cn_ts_sm_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_smm_cns_ts_smm_cns( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1704_87980d34371a.
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
