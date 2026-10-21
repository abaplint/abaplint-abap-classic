* TS: src/rules/identical_descriptions.ts:11:1 IdenticalDescriptions
CLASS zcl_lnt_identical_descriptions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    DATA descriptions TYPE REF TO zlnt_runtime_map__64c5859ed39f.
    DATA types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_id_ds_ts_id_dsc RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    METHODS st_cn_in_sr_rl_id_ds_ts_id_dsc IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    METHODS in_in_sr_rl_idn_dsc_ts_idn_dsc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_identical_descriptions.
    METHODS rn_in_sr_rl_idn_dsc_ts_idn_dsc IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_function_modules IMPORTING i_fugr TYPE REF TO zcl_lnt_function_group RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_descriptions IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_idntcl_dscrptns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Case insensitive\n\nOnly checks the master language descriptio|.
    t11 = t11 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
    t11 = t11 && |TEL, FUNC in same FUGR|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t14.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |identical_descriptions| i_title = |Identical descriptions| i_short_description = |Searches for objects with the same type and same description| i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_ds_ts_id_dsc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_ds_ts_id_dsc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_idn_dsc_ts_idn_dsc.
    DATA(t1) = i_reg_f149.
    me->descriptions = NEW zlnt_runtime_map__64c5859ed39f( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `descriptions`.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    t7->load( ).
    APPEND |INTF| TO t7->items.
    t7->save( ).
    t7->load( ).
    APPEND |CLAS| TO t7->items.
    t7->save( ).
    t7->load( ).
    APPEND |DOMA| TO t7->items.
    t7->save( ).
    t7->load( ).
    APPEND |DTEL| TO t7->items.
    t7->save( ).
    me->types = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t18 = t1->get_objects( )->iterate( ).
    DO.
      DATA t23 TYPE REF TO zcl_lnt_generator_17955b8b.
      t23 = t18->next( ).
      IF t23->done = abap_true.
        EXIT.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      t28 = t23->value.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      t34 = abap_false.
      DATA t36 TYPE REF TO cx_root.
      CLEAR t36.
      TRY.
          t33 = t1->is_dependency( i_obj_1ed0 = t28 ).
          t34 = abap_true.
        CATCH cx_root INTO t36.
          IF xsdbool( t34 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          RAISE EXCEPTION t36.
      ENDTRY.
      IF xsdbool( t34 = abap_false ) = abap_true.
        t18->close( ).
      ENDIF.
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE string( ).
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE abap_bool( ).
      t51 = abap_false.
      DATA t53 TYPE REF TO cx_root.
      CLEAR t53.
      TRY.
          t50 = t28->get_type( ).
          t51 = abap_true.
        CATCH cx_root INTO t53.
          IF xsdbool( t51 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          RAISE EXCEPTION t53.
      ENDTRY.
      IF xsdbool( t51 = abap_false ) = abap_true.
        t18->close( ).
      ENDIF.
      t48 = t50.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      t66 = abap_false.
      DATA t68 TYPE REF TO cx_root.
      CLEAR t68.
      TRY.
          t65 = me->types->includes( p0 = t48 ).
          t66 = abap_true.
        CATCH cx_root INTO t68.
          IF xsdbool( t66 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          RAISE EXCEPTION t68.
      ENDTRY.
      IF xsdbool( t66 = abap_false ) = abap_true.
        t18->close( ).
      ENDIF.
      IF t65 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t83) = VALUE abap_bool( ).
        t83 = abap_false.
        DATA t85 TYPE REF TO cx_root.
        CLEAR t85.
        TRY.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            t87 = t28->get_description( ).
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA(t91) = VALUE abap_bool( ).
            IF t87 IS INITIAL.
              t91 = abap_true.
            ELSEIF t87->has = abap_false.
              t91 = abap_true.
            ENDIF.
            IF t91 = abap_true.
              CLEAR t90.
            ELSE.
              DATA(t94) = VALUE string( ).
              DATA(t95) = VALUE string( ).
              t95 = t87->value.
              DATA(t97) = strlen( t95 ).
              t94 = t95.
              IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t94 TO UPPER CASE.
              ELSE.
                t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
              ENDIF.
              DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t98->has = abap_true.
              t98->value = t94.
              t90 = t98.
            ENDIF.
            t82 = t90.
            t83 = abap_true.
          CATCH cx_root INTO t85.
            IF xsdbool( t83 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t85.
        ENDTRY.
        IF xsdbool( t83 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        t80 = t82.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = VALUE abap_bool( ).
        t109 = abap_false.
        DATA t111 TYPE REF TO cx_root.
        CLEAR t111.
        TRY.
            DATA(t112) = VALUE abap_bool( ).
            DATA(t113) = VALUE abap_bool( ).
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t114 = t80.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            CLEAR t116.
            DATA(t118) = VALUE abap_bool( ).
            IF t114 IS INITIAL.
              t118 = abap_true.
            ELSEIF t114->has = abap_false.
              t118 = abap_true.
            ENDIF.
            t113 = t118.
            t112 = t113.
            IF t113 = abap_false.
              t112 = xsdbool( t80->value = || ).
            ENDIF.
            t108 = t112.
            t109 = abap_true.
          CATCH cx_root INTO t111.
            IF xsdbool( t109 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t111.
        ENDTRY.
        IF xsdbool( t109 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        IF t108 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = VALUE abap_bool( ).
        t134 = abap_false.
        DATA t136 TYPE REF TO cx_root.
        CLEAR t136.
        TRY.
            DATA t139 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t139.
            t139 = me->descriptions->get( p0 = t48 ).
            DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t142.
            CLEAR t142.
            t133 = xsdbool( t139 IS INITIAL ).
            t134 = abap_true.
          CATCH cx_root INTO t136.
            IF xsdbool( t134 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t136.
        ENDTRY.
        IF xsdbool( t134 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        IF t133 = abap_true.
          DATA t154 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
          CLEAR t154.
          DATA t155 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
          CLEAR t155.
          DATA(t156) = VALUE abap_bool( ).
          t156 = abap_false.
          DATA t158 TYPE REF TO cx_root.
          CLEAR t158.
          TRY.
              t155 = me->descriptions->set( p0 = t48 p1 = NEW zlnt_runtime_map__9f51cbbe9de8( ) ).
              t156 = abap_true.
            CATCH cx_root INTO t158.
              IF xsdbool( t156 = abap_false ) = abap_true.
                t18->close( ).
              ENDIF.
              RAISE EXCEPTION t158.
          ENDTRY.
          IF xsdbool( t156 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          t154 = t155.
        ENDIF.
        DATA(t175) = VALUE abap_bool( ).
        DATA(t176) = VALUE abap_bool( ).
        t176 = abap_false.
        DATA t178 TYPE REF TO cx_root.
        CLEAR t178.
        TRY.
            DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t181.
            DATA t182 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t182.
            t182 = me->descriptions->get( p0 = t48 ).
            DATA(t186) = VALUE string( ).
            t186 = t80->value.
            t181 = t182->get( p0 = t186 ).
            DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t188.
            CLEAR t188.
            t175 = xsdbool( t181 IS INITIAL ).
            t176 = abap_true.
          CATCH cx_root INTO t178.
            IF xsdbool( t176 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t178.
        ENDTRY.
        IF xsdbool( t176 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        IF t175 = abap_true.
          DATA t200 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          CLEAR t200.
          DATA t201 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          CLEAR t201.
          DATA(t202) = VALUE abap_bool( ).
          t202 = abap_false.
          DATA t204 TYPE REF TO cx_root.
          CLEAR t204.
          TRY.
              DATA t206 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t206.
              t206 = me->descriptions->get( p0 = t48 ).
              DATA(t210) = VALUE string( ).
              t210 = t80->value.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t212.
              CREATE OBJECT t212.
              t201 = t206->set( p0 = t210 p1 = t212 ).
              t202 = abap_true.
            CATCH cx_root INTO t204.
              IF xsdbool( t202 = abap_false ) = abap_true.
                t18->close( ).
              ENDIF.
              RAISE EXCEPTION t204.
          ENDTRY.
          IF xsdbool( t202 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          t200 = t201.
        ENDIF.
        DATA(t221) = VALUE f( ).
        DATA(t222) = VALUE f( ).
        DATA(t223) = VALUE abap_bool( ).
        t223 = abap_false.
        DATA t225 TYPE REF TO cx_root.
        CLEAR t225.
        TRY.
            DATA(t226) = VALUE f( ).
            DATA(t227) = VALUE i( ).
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            DATA t230 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t230.
            t230 = me->descriptions->get( p0 = t48 ).
            DATA(t234) = VALUE string( ).
            t234 = t80->value.
            t228 = t230->get( p0 = t234 ).
            DATA(t236) = VALUE string( ).
            t236 = t28->get_name( ).
            t228->load( ).
            APPEND t236 TO t228->items.
            t227 = lines( t228->items ).
            t228->save( ).
            t226 = t227.
            t222 = t226.
            t223 = abap_true.
          CATCH cx_root INTO t225.
            IF xsdbool( t223 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t225.
        ENDTRY.
        IF xsdbool( t223 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        t221 = t222.
      ENDIF.
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD rn_in_sr_rl_idn_dsc_ts_idn_dsc.
    DATA(t1) = i_o.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE string.
    t4 = t1->get_type( ).
    IF me->types->includes( p0 = t4 ) = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t1->get_description( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      IF t16 = abap_true.
      ELSE.
        DATA t19 TYPE string.
        DATA t20 TYPE string.
        t20 = t12->value.
        DATA(t22) = strlen( t20 ).
        t19 = t20.
        IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t19 TO UPPER CASE.
        ELSE.
          t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
        ENDIF.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t19.
        t15 = t23.
      ENDIF.
      t10 = t15.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = t10.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t30) = VALUE abap_bool( ).
      IF t26 IS INITIAL.
        t30 = abap_true.
      ELSEIF t26->has = abap_false.
        t30 = abap_true.
      ENDIF.
      t25 = t30.
      t24 = t25.
      IF t25 = abap_false.
        t24 = xsdbool( t10->value = || ).
      ENDIF.
      IF t24 = abap_true.
        result = t2.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t39.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t43 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      t43 = me->descriptions->get( p0 = t4 ).
      DATA t47 TYPE string.
      t47 = t10->value.
      t41 = t43->get( p0 = t47 ).
      DATA(t49) = VALUE string( ).
      t41->dense( ).
      DATA(t50) = VALUE i( ).
      DO.
        t41->load( ).
        IF t50 >= lines( t41->items ).
          EXIT.
        ENDIF.
        CLEAR t49.
        READ TABLE t41->items INDEX t50 + 1 INTO t49.
        IF t41->has( t50 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t50 = t50 + 1.
        IF xsdbool( t49 <> t1->get_name( ) ) = abap_true.
          t39->load( ).
          APPEND t49 TO t39->items.
          t39->save( ).
        ENDIF.
      ENDDO.
      t37 = t39.
      t37->load( ).
      IF xsdbool( lines( t37->items ) > 0 ) = abap_true.
        DATA(t62) = VALUE string( ).
        DATA(t64) = |Identical description: |.
        DATA(t65) = VALUE string( ).
        IF t37->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t37->load( ).
        READ TABLE t37->items INDEX 1 INTO t65.
        DATA(t67) = strlen( t64 ).
        t62 = |{ t64 }{ t65 }|.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        DATA t70 TYPE REF TO zif_lnt_file.
        t70 = t1->get_xml_file( ).
        DATA(t75) = VALUE string( ).
        DATA t76 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t86) = |Case insensitive\n\nOnly checks the master language descriptio|.
        t86 = t86 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
        t86 = t86 && |TEL, FUNC in same FUGR|.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t86.
        t83 = t87.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t89.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t76 = NEW zcl_lnt_irule_metadata( i_key = |identical_descriptions| i_title = |Identical descriptions| i_short_description = |Searches for objects with the same type and same description| i_bad_example = t94 i_good_example = t96 i_extended_information = t83 i_tags = t89 i_pragma = t98 i_pseudo_comment = t100 ).
        CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
        t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t102 ).
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t104 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t106 ).
        ENDIF.
        CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
        t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t108 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t110 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t112 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t114 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t116 ).
        ENDIF.
        t75 = t76->key.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t117 = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) )->zlnt_view_read_sr_15c06369f827( ).
        t69 = zcl_lnt_issue=>at_row( i_file = t70 i_row = CONV f( 1 ) i_message_26cb = t62 i_key = t75 i_severity = t117 ).
        t2->load( ).
        APPEND t69 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_function_group ) = abap_true.
      DATA(t121) = VALUE i( ).
      DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t123 TYPE REF TO zcl_lnt_function_group.
      t123 ?= t1.
      t122 = me->check_function_modules( i_fugr = t123 ).
      DATA t126 TYPE REF TO zcl_lnt_issue.
      DATA t127 TYPE REF TO object.
      DATA(t128) = VALUE i( ).
      DO.
        t122->load( ).
        IF t128 >= lines( t122->items ).
          EXIT.
        ENDIF.
        CLEAR t127.
        READ TABLE t122->items INDEX t128 + 1 INTO t127.
        t128 = t128 + 1.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        CLEAR t126.
        IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t129 ?= t127.
          DATA t130 TYPE REF TO object.
          t130 = t129->as_ref( ).
          t126 ?= t130.
        ELSE.
          t126 ?= t127.
        ENDIF.
        t2->load( ).
        APPEND t126 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t121 = lines( t2->items ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD check_function_modules.
    DATA(t1) = i_fugr.
    DATA t2 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t2 = NEW zlnt_runtime_map__45a2315f90b8( ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->get_modules( ).
    DATA t9 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t7->load( ).
      IF t11 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t7->items INDEX t11 + 1 INTO t10.
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
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t16 = t9->description.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      IF t16 IS INITIAL.
        t23 = abap_true.
      ELSEIF t16->has = abap_false.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        CLEAR t22.
      ELSE.
        DATA t26 TYPE string.
        DATA t27 TYPE string.
        t27 = t16->value.
        DATA(t29) = strlen( t27 ).
        t26 = t27.
        IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t26 TO UPPER CASE.
        ELSE.
          t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
        ENDIF.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t26.
        t22 = t30.
      ENDIF.
      t14 = t22.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t33 = t14.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      DATA(t37) = VALUE abap_bool( ).
      IF t33 IS INITIAL.
        t37 = abap_true.
      ELSEIF t33->has = abap_false.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      t31 = t32.
      IF t32 = abap_false.
        t31 = xsdbool( t14->value = || ).
      ENDIF.
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t47 TYPE string.
      t47 = t14->value.
      t44 = t2->get( p0 = t47 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA(t52) = VALUE abap_bool( ).
      IF t44 IS INITIAL.
        t52 = abap_true.
      ELSEIF t44->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF xsdbool( t52 = abap_false ) = abap_true.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = |FUGR |.
        DATA t58 TYPE string.
        DATA t59 TYPE REF TO zcl_lnt_abstract_object.
        t59 = t1.
        t58 = t59->name.
        DATA(t63) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t65) = strlen( t56 ).
        t55 = |{ t56 }{ | contains function modules with identical descriptions| }|.
        DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t67.
        DATA t70 TYPE REF TO zcl_lnt_issue.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_file.
        t71 = t1->get_xml_file( ).
        DATA(t76) = VALUE string( ).
        DATA t77 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA(t87) = |Case insensitive\n\nOnly checks the master language descriptio|.
        t87 = t87 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
        t87 = t87 && |TEL, FUNC in same FUGR|.
        DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t88->has = abap_true.
        t88->value = t87.
        t84 = t88.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        CREATE OBJECT t90.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t77 = NEW zcl_lnt_irule_metadata( i_key = |identical_descriptions| i_title = |Identical descriptions| i_short_description = |Searches for objects with the same type and same description| i_bad_example = t95 i_good_example = t97 i_extended_information = t84 i_tags = t90 i_pragma = t99 i_pseudo_comment = t101 ).
        CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
        t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
        ENDIF.
        CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
        t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t109 ).
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t111 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t113 ).
        ENDIF.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t115 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t117 ).
        ENDIF.
        t76 = t77->key.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t118 = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) )->zlnt_view_read_sr_15c06369f827( ).
        t70 = zcl_lnt_issue=>at_row( i_file = t71 i_row = CONV f( 1 ) i_message_26cb = t55 i_key = t76 i_severity = t118 ).
        t67->load( ).
        APPEND t70 TO t67->items.
        t67->save( ).
        result = t67.
        RETURN.
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t123 TYPE string.
      t123 = t14->value.
      t121 = t2->set( p0 = t123 p1 = abap_true ).
    ENDDO.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
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
        t2 = NEW zcl_lnt_idntcl_dscrptns_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_ds_ts_id_dsc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_idn_dsc_ts_idn_dsc( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD run.
    DATA(t3) = i_obj_1ed0.
    result = me->rn_in_sr_rl_idn_dsc_ts_idn_dsc( i_o = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1529_0f0005c5004e.
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
