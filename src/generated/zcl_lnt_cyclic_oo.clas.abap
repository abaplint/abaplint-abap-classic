* TS: src/rules/cyclic_oo.ts:24:1 CyclicOO
CLASS zcl_lnt_cyclic_oo DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cyclic_oo_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA edges TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rls_cyc_o_ts_cyc_o RETURNING VALUE(result) TYPE REF TO zcl_lnt_cyclic_oo_conf.
    METHODS st_cn_in_sr_rls_cyc_o_ts_cyc_o IMPORTING i_conf TYPE REF TO zcl_lnt_cyclic_oo_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_cycle IMPORTING i_source_75cf TYPE string i_current TYPE string i_previous TYPE REF TO zlnt_runtime_map__45a2315f90b8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS build_edges IMPORTING i_from TYPE string i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclic_oo IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cyclic_oo_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    me->edges = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t11) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
    t11 = t11 && | syntax errors for this rule to take effect\n\nReferences in t|.
    t11 = t11 && |estclass includes are ignored|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |cyclic_oo| i_title = |Cyclic OO| i_short_description = |Finds cyclic/circular OO references| i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
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

  METHOD gt_cn_in_sr_rls_cyc_o_ts_cyc_o.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_cyc_o_ts_cyc_o.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_bab69e48acef( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_2f08c7c95a10( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    me->edges = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t7 = me->reg->get_objects_by_type( i_type_9913 = |CLAS| )->iterate( ).
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      t13 = t7->next( ).
      IF t13->done = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      t18 = t13->value.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      t24 = abap_false.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          t23 = me->reg->is_dependency( i_obj_1ed0 = t18 ).
          t24 = abap_true.
        CATCH cx_root INTO t26.
          IF xsdbool( t24 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      IF xsdbool( t24 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      IF t23 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t38) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA(t44) = VALUE string( ).
          DATA(t45) = VALUE string( ).
          t45 = t18->get_name( ).
          DATA(t47) = strlen( t45 ).
          t44 = t45.
          IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t44 TO UPPER CASE.
          ELSE.
            t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
          ENDIF.
          t40 = t44.
          t41 = abap_true.
        CATCH cx_root INTO t43.
          IF xsdbool( t41 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      IF xsdbool( t41 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      t38 = t40.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      t58 = abap_false.
      DATA t60 TYPE REF TO cx_root.
      CLEAR t60.
      TRY.
          t57 = xsdbool( xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_class ) = abap_false ).
          t58 = abap_true.
        CATCH cx_root INTO t60.
          IF xsdbool( t58 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t60.
      ENDTRY.
      IF xsdbool( t58 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      IF t57 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      t74 = abap_false.
      DATA t76 TYPE REF TO cx_root.
      CLEAR t76.
      TRY.
          DATA(t78) = VALUE f( ).
          t78 = me->conf->zlnt_view_read_sr_bab69e48acef( )->indexof( p0 = t38 ).
          t73 = xsdbool( t78 >= CONV f( 0 ) ).
          t74 = abap_true.
        CATCH cx_root INTO t76.
          IF xsdbool( t74 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t76.
      ENDTRY.
      IF xsdbool( t74 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      IF t73 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = VALUE abap_bool( ).
      t94 = abap_false.
      DATA t96 TYPE REF TO cx_root.
      CLEAR t96.
      TRY.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = VALUE abap_bool( ).
          DATA(t99) = VALUE abap_bool( ).
          t99 = me->conf->zlnt_view_read_sr_9d28e80cfea7( ).
          t98 = xsdbool( t99 = abap_true ).
          t97 = t98.
          IF t98 = abap_true.
            DATA(t102) = VALUE abap_bool( ).
            DATA t103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t103.
            DATA t104 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t104.
            DATA t106 TYPE REF TO zcl_lnt_class.
            CLEAR t106.
            DATA t107 TYPE REF TO zcl_lnt_class.
            CLEAR t107.
            DATA t109 TYPE REF TO object.
            CLEAR t109.
            t109 = t18.
            t107 ?= t109.
            t106 = t107.
            DATA t111 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t111.
            DATA t113 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t113.
            t113 = t106->get_main_abap_file( ).
            DATA t116 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t116.
            IF xsdbool( t113 IS INITIAL ) = abap_true.
              CLEAR t116.
            ELSE.
              t116 = t113->info.
            ENDIF.
            t111 = t116.
            DATA t126 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t126.
            IF xsdbool( t111 IS INITIAL ) = abap_true.
              CLEAR t126.
            ELSE.
              DATA t131 TYPE REF TO zif_lnt_abap_file_information.
              t131 = t111.
              DATA(t133) = VALUE string( ).
              DATA t134 TYPE REF TO zcl_lnt_abstract_object.
              t134 = t106.
              t133 = t134->name.
              t126 = t131->get_class_definition_by_name( i_name = t133 ).
            ENDIF.
            t104 = t126.
            DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t138.
            IF xsdbool( t104 IS INITIAL ) = abap_true.
              CLEAR t138.
            ELSE.
              DATA(t142) = VALUE abap_bool( ).
              t142 = t104->is_shared_memory.
              DATA(t145) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t145->has = abap_true.
              t145->value = t142.
              t138 = t145.
            ENDIF.
            t103 = t138.
            DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t146.
            DATA(t149) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t149->has = abap_true.
            t149->value = abap_true.
            t146 = t149.
            DATA(t151) = VALUE abap_bool( ).
            DATA(t152) = VALUE abap_bool( ).
            IF t103 IS BOUND.
              t151 = t103->has.
            ENDIF.
            IF t146 IS BOUND.
              t152 = t146->has.
            ENDIF.
            IF t151 = t152.
              IF t151 = abap_false.
                t102 = abap_true.
              ELSEIF t103->value = t146->value.
                t102 = abap_true.
              ENDIF.
            ENDIF.
            t97 = t102.
          ENDIF.
          t93 = t97.
          t94 = abap_true.
        CATCH cx_root INTO t96.
          IF xsdbool( t94 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t96.
      ENDTRY.
      IF xsdbool( t94 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      IF t93 = abap_true.
        CONTINUE.
      ENDIF.


      DATA t161 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t161.
      DATA t163 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t163.
      DATA(t164) = VALUE abap_bool( ).
      t164 = abap_false.
      DATA t166 TYPE REF TO cx_root.
      CLEAR t166.
      TRY.
          DATA(t169) = me->reg.
          DATA t170 TYPE REF TO zcl_lnt_class.
          CLEAR t170.
          DATA t172 TYPE REF TO object.
          CLEAR t172.
          t172 = t18.
          t170 ?= t172.
          t163 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t169 i_object_19cd = t170 )->run( ).
          t164 = abap_true.
        CATCH cx_root INTO t166.
          IF xsdbool( t164 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t166.
      ENDTRY.
      IF xsdbool( t164 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      t161 = t163.
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = VALUE abap_bool( ).
      t183 = abap_false.
      DATA t185 TYPE REF TO cx_root.
      CLEAR t185.
      TRY.
          DATA(t187) = VALUE f( ).
          DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t189.
          t189 = t161->zlnt_view_read_sr_bd188c319c03( ).
          t189->load( ).
          t187 = lines( t189->items ).
          t182 = xsdbool( t187 > CONV f( 0 ) ).
          t183 = abap_true.
        CATCH cx_root INTO t185.
          IF xsdbool( t183 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t185.
      ENDTRY.
      IF xsdbool( t183 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
      IF t182 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t200) = VALUE abap_bool( ).
      t200 = abap_false.
      DATA t202 TYPE REF TO cx_root.
      CLEAR t202.
      TRY.
          me->build_edges( i_from = t38 i_node = t161->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).
          t200 = abap_true.
        CATCH cx_root INTO t202.
          IF xsdbool( t200 = abap_false ) = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t202.
      ENDTRY.
      IF xsdbool( t200 = abap_false ) = abap_true.
        t7->close( ).
      ENDIF.
    ENDDO.
    DATA t214 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t214 = me->reg->get_objects_by_type( i_type_9913 = |INTF| )->iterate( ).
    DO.
      DATA t220 TYPE REF TO zcl_lnt_generator_17955b8b.
      t220 = t214->next( ).
      IF t220->done = abap_true.
        EXIT.
      ENDIF.
      DATA t225 TYPE REF TO zif_lnt_object.
      CLEAR t225.
      t225 = t220->value.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      t231 = abap_false.
      DATA t233 TYPE REF TO cx_root.
      CLEAR t233.
      TRY.
          t230 = me->reg->is_dependency( i_obj_1ed0 = t225 ).
          t231 = abap_true.
        CATCH cx_root INTO t233.
          IF xsdbool( t231 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t233.
      ENDTRY.
      IF xsdbool( t231 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      IF t230 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t245) = VALUE string( ).
      DATA(t247) = VALUE string( ).
      DATA(t248) = VALUE abap_bool( ).
      t248 = abap_false.
      DATA t250 TYPE REF TO cx_root.
      CLEAR t250.
      TRY.
          DATA(t251) = VALUE string( ).
          DATA(t252) = VALUE string( ).
          t252 = t225->get_name( ).
          DATA(t254) = strlen( t252 ).
          t251 = t252.
          IF t251 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t251 TO UPPER CASE.
          ELSE.
            t251 = zlnt_runtime_uppe_91169605024d=>full( t251 ).
          ENDIF.
          t247 = t251.
          t248 = abap_true.
        CATCH cx_root INTO t250.
          IF xsdbool( t248 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t250.
      ENDTRY.
      IF xsdbool( t248 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      t245 = t247.
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = VALUE abap_bool( ).
      t265 = abap_false.
      DATA t267 TYPE REF TO cx_root.
      CLEAR t267.
      TRY.
          t264 = xsdbool( xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
          t265 = abap_true.
        CATCH cx_root INTO t267.
          IF xsdbool( t265 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t267.
      ENDTRY.
      IF xsdbool( t265 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      IF t264 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t280) = VALUE abap_bool( ).
      DATA(t281) = VALUE abap_bool( ).
      t281 = abap_false.
      DATA t283 TYPE REF TO cx_root.
      CLEAR t283.
      TRY.
          DATA(t285) = VALUE f( ).
          t285 = me->conf->zlnt_view_read_sr_bab69e48acef( )->indexof( p0 = t245 ).
          t280 = xsdbool( t285 >= CONV f( 0 ) ).
          t281 = abap_true.
        CATCH cx_root INTO t283.
          IF xsdbool( t281 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t283.
      ENDTRY.
      IF xsdbool( t281 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      IF t280 = abap_true.
        CONTINUE.
      ENDIF.

      DATA t299 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t299.
      DATA t301 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t301.
      DATA(t302) = VALUE abap_bool( ).
      t302 = abap_false.
      DATA t304 TYPE REF TO cx_root.
      CLEAR t304.
      TRY.
          DATA(t307) = me->reg.
          DATA t308 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t308.
          DATA t310 TYPE REF TO object.
          CLEAR t310.
          t310 = t225.
          t308 ?= t310.
          t301 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t307 i_object_19cd = t308 )->run( ).
          t302 = abap_true.
        CATCH cx_root INTO t304.
          IF xsdbool( t302 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t304.
      ENDTRY.
      IF xsdbool( t302 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      t299 = t301.
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = VALUE abap_bool( ).
      t321 = abap_false.
      DATA t323 TYPE REF TO cx_root.
      CLEAR t323.
      TRY.
          DATA(t325) = VALUE f( ).
          DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t327.
          t327 = t299->zlnt_view_read_sr_bd188c319c03( ).
          t327->load( ).
          t325 = lines( t327->items ).
          t320 = xsdbool( t325 > CONV f( 0 ) ).
          t321 = abap_true.
        CATCH cx_root INTO t323.
          IF xsdbool( t321 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t323.
      ENDTRY.
      IF xsdbool( t321 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
      IF t320 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t338) = VALUE abap_bool( ).
      t338 = abap_false.
      DATA t340 TYPE REF TO cx_root.
      CLEAR t340.
      TRY.
          me->build_edges( i_from = t245 i_node = t299->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).
          t338 = abap_true.
        CATCH cx_root INTO t340.
          IF xsdbool( t338 = abap_false ) = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t340.
      ENDTRY.
      IF xsdbool( t338 = abap_false ) = abap_true.
        t214->close( ).
      ENDIF.
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      t2 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_false ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t12 TYPE REF TO zif_lnt_union_291f04b3.
    t12 ?= t1.
    t10 = t12->get_identifier( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t22 = NEW zlnt_runtime_map__45a2315f90b8( ).
    DATA t27 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t30 TYPE REF TO zif_lnt_union_291f04b3.
    t30 ?= t1.
    t27 = t22->set( p0 = t30->get_name( ) p1 = abap_true ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zif_lnt_union_291f04b3.
    t36 ?= t1.
    t35 = t36->get_name( ).
    DATA t39 TYPE REF TO zif_lnt_union_291f04b3.
    t39 ?= t1.
    t33 = me->find_cycle( i_source_75cf = t35 i_current = t39->get_name( ) i_previous = t22 ).
    DATA(t42) = VALUE abap_bool( ).
    IF t33 IS BOUND.
      IF t33->has = abap_true.
        t42 = xsdbool( strlen( t33->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t42 = abap_true.
      DATA t45 TYPE string.
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      DATA(t48) = |Cyclic definition/usage: |.
      DATA t49 TYPE string.
      DATA t50 TYPE REF TO zif_lnt_union_291f04b3.
      t50 ?= t1.
      t49 = t50->get_name( ).
      DATA(t52) = strlen( t48 ).
      t47 = |{ t48 }{ t49 }|.
      DATA(t54) = strlen( t47 ).
      t46 = |{ t47 }{ | -> | }|.
      DATA t55 TYPE string.
      t55 = t33->value.
      DATA(t57) = strlen( t46 ).
      t45 = |{ t46 }{ t55 }|.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t59.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
      t63 = t10.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      DATA(t77) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
      t77 = t77 && | syntax errors for this rule to take effect\n\nReferences in t|.
      t77 = t77 && |estclass includes are ignored|.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t77.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = NEW zcl_lnt_irule_metadata( i_key = |cyclic_oo| i_title = |Cyclic OO| i_short_description = |Finds cyclic/circular OO references| i_bad_example = t80 i_good_example = t82 i_extended_information = t78 i_tags = t84 i_pragma = t86 i_pseudo_comment = t88 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t91 ).
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t92 ).
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t93 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t95 ).
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t97 ).
      ENDIF.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t99 ).
      ENDIF.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t101 ).
      ENDIF.
      t66 = t67->key.
      DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t62 = zcl_lnt_issue=>at_identifier( i_identifier = t63 i_message_26cb = t45 i_key = t66 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t104 ).
      t59->load( ).
      APPEND t62 TO t59->items.
      t59->save( ).
      result = t59.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD find_cycle.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_current.
    DATA(t3) = i_previous.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t6 = me->edges->get( p0 = t2 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t14 = me->edges->get( p0 = t2 ).
    DATA(t18) = VALUE string( ).
    t14->dense( ).
    DATA(t19) = VALUE i( ).
    DO.
      t14->load( ).
      IF t19 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t14->items INDEX t19 + 1 INTO t18.
      IF t14->has( t19 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t19 = t19 + 1.
      IF xsdbool( t18 = t1 ) = abap_true.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t18.
        result = t26.
        RETURN.
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t29 = t3->get( p0 = t18 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA(t35) = VALUE abap_bool( ).
      IF t29 IS INITIAL.
        t35 = abap_true.
      ELSEIF t29->has = abap_false.
        t35 = abap_true.
      ENDIF.
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        t37 = t3->set( p0 = t18 p1 = abap_true ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t41 = me->find_cycle( i_source_75cf = t1 i_current = t18 i_previous = t3 ).
        DATA(t46) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          IF t41->has = abap_true.
            t46 = xsdbool( strlen( t41->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t46 = abap_true.
          DATA t50 TYPE string.
          DATA t51 TYPE string.
          DATA(t54) = strlen( t18 ).
          t51 = |{ t18 }{ | -> | }|.
          DATA t55 TYPE string.
          t55 = t41->value.
          DATA(t57) = strlen( t51 ).
          t50 = |{ t51 }{ t55 }|.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t50.
          result = t58.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD build_edges.
    DATA(t1) = i_from.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t2->get_data( )->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
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
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      t15 = t6->resolved.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t13 = xsdbool( t15 IS INITIAL ).
      t12 = t13.
      IF t13 = abap_false.
        DATA t22 TYPE string.
        t22 = t2->get_identifier( )->filename.
        t12 = xsdbool( t22 = t6->resolved->filename ).
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t33 TYPE string.
        t33 = t6->resolved->filename.
        DATA(t40) = CONV string( zcl_lnt_built_in=>filename ).
        t11 = xsdbool( t33 = t40 ).
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      t43 = me->conf->zlnt_view_read_sr_a5a0cef6220d( ).
      t42 = xsdbool( t43 = abap_true ).
      t41 = t42.
      IF t42 = abap_true.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE i( ).
        DATA t49 TYPE string.
        t49 = t6->position_7b94->filename.
        DATA(t55) = |.testclasses.|.
        DATA(t56) = strlen( t49 ).
        IF t55 IS INITIAL.
          t48 = 0.
        ELSE.
          FIND t55 IN t49 MATCH OFFSET t48.
          IF sy-subrc <> 0.
            t48 = -1.
          ENDIF.
        ENDIF.
        t47 = xsdbool( t48 >= 0 ).
        t46 = t47.
        IF t47 = abap_false.
          DATA(t59) = VALUE i( ).
          DATA t60 TYPE string.
          t60 = t6->resolved->filename.
          DATA(t67) = |.testclasses.|.
          DATA(t68) = strlen( t60 ).
          IF t67 IS INITIAL.
            t59 = 0.
          ELSE.
            FIND t67 IN t60 MATCH OFFSET t59.
            IF sy-subrc <> 0.
              t59 = -1.
            ENDIF.
          ENDIF.
          t46 = xsdbool( t59 >= 0 ).
        ENDIF.
        t41 = t46.
      ENDIF.
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      t71 = xsdbool( t6->reference_type = |Object| ).
      t70 = t71.
      IF t71 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_ireference_extras.
        t77 = t6->extra.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        IF xsdbool( t77 IS INITIAL ) = abap_true.
          CLEAR t80.
        ELSE.
          t80 = t77->oo_name.
        ENDIF.
        t76 = t80.
        IF t76 IS BOUND.
          IF t76->has = abap_true.
            t75 = xsdbool( strlen( t76->value ) > 0 ).
          ENDIF.
        ENDIF.
        t70 = t75.
      ENDIF.
      IF t70 = abap_true.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t89 = me->edges->get( p0 = t1 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF xsdbool( t89 IS INITIAL ) = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA(t97) = me->edges.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t99.
          t96 = t97->set( p0 = t1 p1 = t99 ).
        ENDIF.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        t102 = t6->extra->oo_name->value.
        DATA(t107) = strlen( t102 ).
        t101 = t102.
        IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t101 TO UPPER CASE.
        ELSE.
          t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
        ENDIF.
        t100 = t101.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        t109 = xsdbool( t100 <> t1 ).
        t108 = t109.
        IF t109 = abap_true.
          DATA t113 TYPE i.
          t113 = me->edges->get( p0 = t1 )->indexof( p0 = t100 ).
          t108 = xsdbool( t113 < 0 ).
        ENDIF.
        IF t108 = abap_true.
          DATA t120 TYPE REF TO zif_lnt_object.
          CLEAR t120.
          DATA t122 TYPE REF TO zif_lnt_object.
          DATA(t124) = me->reg.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = |INTF|.
          t125 = t128.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t100.
          t122 = t124->get_object( i_type_9913 = t125 i_name = t133 ).
          DATA t135 TYPE REF TO zif_lnt_object.
          CLEAR t135.
          IF xsdbool( t122 IS BOUND ) = abap_true.
            t135 = t122.
          ELSE.
            DATA(t140) = me->reg.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t144->has = abap_true.
            t144->value = |CLAS|.
            t141 = t144.
            DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t149->has = abap_true.
            t149->value = t100.
            t135 = t140->get_object( i_type_9913 = t141 i_name = t149 ).
          ENDIF.
          t120 = t135.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          t152 = xsdbool( t120 IS BOUND ).
          t151 = t152.
          IF t152 = abap_true.
            t151 = me->reg->is_dependency( i_obj_1ed0 = t120 ).
          ENDIF.
          IF t151 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t158 = me->edges->get( p0 = t1 ).
          t158->load( ).
          APPEND t100 TO t158->items.
          t158->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t163 = t2->get_children( ).
    DATA t165 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t166 TYPE REF TO object.
    DATA(t167) = VALUE i( ).
    DO.
      t163->load( ).
      IF t167 >= lines( t163->items ).
        EXIT.
      ENDIF.
      CLEAR t166.
      READ TABLE t163->items INDEX t167 + 1 INTO t166.
      t167 = t167 + 1.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      CLEAR t165.
      IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t168 ?= t166.
        DATA t169 TYPE REF TO object.
        t169 = t168->as_ref( ).
        t165 ?= t169.
      ELSE.
        t165 ?= t166.
      ENDIF.
      me->build_edges( i_from = t1 i_node = t165 ).
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cyclic_oo_conf( me->gt_cn_in_sr_rls_cyc_o_ts_cyc_o( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cyclic_oo_conf( me->gt_cn_in_sr_rls_cyc_o_ts_cyc_o( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cyclic_oo_conf.
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
        t2 = NEW zcl_lnt_cyclic_oo_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_cyc_o_ts_cyc_o( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1469_f021bc5eb53b.
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
