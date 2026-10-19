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
    DATA t2 TYPE string.
    t2 = |cyclic_oo|.
    DATA t4 TYPE string.
    t4 = |Cyclic OO|.
    DATA t6 TYPE string.
    t6 = |Finds cyclic/circular OO references|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
    t11 = t11 && | syntax errors for this rule to take effect\n\nReferences in t|.
    t11 = t11 && |estclass includes are ignored|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
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
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_cyc_o_ts_cyc_o.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_cyc_o_ts_cyc_o.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_bab69e48acef( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t5 IS INITIAL ).
    IF t3 = abap_true.
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
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t11) = |CLAS|.
    t9 = me->reg->get_objects_by_type( i_type_9913 = t11 ).
    t8 = t9->iterate( ).
    t7 = t8.
    DO.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      t14 = t7->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      t16 = t13->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      t20 = t13->value.
      t18 = t20.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      t24 = abap_false.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          DATA(t27) = VALUE abap_bool( ).
          t27 = me->reg->is_dependency( i_obj_1ed0 = t18 ).
          t23 = t27.
          t24 = abap_true.
        CATCH cx_root INTO t26.
          DATA(t31) = VALUE abap_bool( ).
          t31 = xsdbool( t24 = abap_false ).
          IF t31 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      t34 = xsdbool( t24 = abap_false ).
      IF t34 = abap_true.
        t7->close( ).
      ENDIF.
      t22 = t23.
      IF t22 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t38) = VALUE string( ).
      DATA(t39) = VALUE string( ).
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
          DATA(t49) = VALUE abap_bool( ).
          t49 = xsdbool( t41 = abap_false ).
          IF t49 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      t52 = xsdbool( t41 = abap_false ).
      IF t52 = abap_true.
        t7->close( ).
      ENDIF.
      t39 = t40.
      t38 = t39.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      t58 = abap_false.
      DATA t60 TYPE REF TO cx_root.
      CLEAR t60.
      TRY.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          t62 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_class ).
          t61 = xsdbool( t62 = abap_false ).
          t57 = t61.
          t58 = abap_true.
        CATCH cx_root INTO t60.
          DATA(t65) = VALUE abap_bool( ).
          t65 = xsdbool( t58 = abap_false ).
          IF t65 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t60.
      ENDTRY.
      DATA(t68) = VALUE abap_bool( ).
      t68 = xsdbool( t58 = abap_false ).
      IF t68 = abap_true.
        t7->close( ).
      ENDIF.
      t56 = t57.
      IF t56 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        t74 = abap_false.
        DATA t76 TYPE REF TO cx_root.
        CLEAR t76.
        TRY.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE f( ).
            DATA(t79) = VALUE i( ).
            DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t80.
            t80 = me->conf->zlnt_view_read_sr_bab69e48acef( ).
            t79 = t80->indexof( p0 = t38 ).
            t78 = t79.
            DATA(t83) = CONV f( 0 ).
            t77 = xsdbool( t78 >= t83 ).
            t73 = t77.
            t74 = abap_true.
          CATCH cx_root INTO t76.
            DATA(t85) = VALUE abap_bool( ).
            t85 = xsdbool( t74 = abap_false ).
            IF t85 = abap_true.
              t7->close( ).
            ENDIF.
            RAISE EXCEPTION t76.
        ENDTRY.
        DATA(t88) = VALUE abap_bool( ).
        t88 = xsdbool( t74 = abap_false ).
        IF t88 = abap_true.
          t7->close( ).
        ENDIF.
        t72 = t73.
        IF t72 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t92) = VALUE abap_bool( ).
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
                DATA t114 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t114.
                t114 = t106->get_main_abap_file( ).
                t113 = t114.
                DATA t116 TYPE REF TO zif_lnt_abap_file_information.
                CLEAR t116.
                DATA(t117) = xsdbool( t113 IS INITIAL ).
                IF t117 = abap_true.
                  CLEAR t116.
                ELSE.
                  DATA t124 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t124.
                  t124 = t113->info.
                  t116 = t124.
                ENDIF.
                t111 = t116.
                DATA t126 TYPE REF TO zcl_lnt_info_class_definition.
                CLEAR t126.
                DATA(t127) = xsdbool( t111 IS INITIAL ).
                IF t127 = abap_true.
                  CLEAR t126.
                ELSE.
                  DATA t130 TYPE REF TO zcl_lnt_info_class_definition.
                  CLEAR t130.
                  DATA t131 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t131.
                  t131 = t111.
                  DATA(t133) = VALUE string( ).
                  DATA t134 TYPE REF TO zcl_lnt_abstract_object.
                  CLEAR t134.
                  t134 = t106.
                  DATA(t136) = VALUE string( ).
                  t136 = t134->name.
                  t133 = t136.
                  t130 = t131->get_class_definition_by_name( i_name = t133 ).
                  t126 = t130.
                ENDIF.
                t104 = t126.
                DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t138.
                DATA(t139) = xsdbool( t104 IS INITIAL ).
                IF t139 = abap_true.
                  CLEAR t138.
                ELSE.
                  DATA(t142) = VALUE abap_bool( ).
                  DATA t143 TYPE REF TO zcl_lnt_info_class_definition.
                  CLEAR t143.
                  t143 = t104.
                  t142 = t143->is_shared_memory.
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
              DATA(t154) = VALUE abap_bool( ).
              t154 = xsdbool( t94 = abap_false ).
              IF t154 = abap_true.
                t7->close( ).
              ENDIF.
              RAISE EXCEPTION t96.
          ENDTRY.
          DATA(t157) = VALUE abap_bool( ).
          t157 = xsdbool( t94 = abap_false ).
          IF t157 = abap_true.
            t7->close( ).
          ENDIF.
          t92 = t93.
          IF t92 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
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
          DATA t167 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_syntax_logic.
          CLEAR t168.
          DATA(t169) = me->reg.
          DATA t170 TYPE REF TO zcl_lnt_class.
          CLEAR t170.
          DATA t172 TYPE REF TO object.
          CLEAR t172.
          t172 = t18.
          t170 ?= t172.
          t168 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t169 i_object_19cd = t170 ).
          t167 = t168->run( ).
          t163 = t167.
          t164 = abap_true.
        CATCH cx_root INTO t166.
          DATA(t174) = VALUE abap_bool( ).
          t174 = xsdbool( t164 = abap_false ).
          IF t174 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t166.
      ENDTRY.
      DATA(t177) = VALUE abap_bool( ).
      t177 = xsdbool( t164 = abap_false ).
      IF t177 = abap_true.
        t7->close( ).
      ENDIF.
      t161 = t163.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = VALUE abap_bool( ).
      t183 = abap_false.
      DATA t185 TYPE REF TO cx_root.
      CLEAR t185.
      TRY.
          DATA(t186) = VALUE abap_bool( ).
          DATA(t187) = VALUE f( ).
          DATA(t188) = VALUE i( ).
          DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t189.
          t189 = t161->zlnt_view_read_sr_bd188c319c03( ).
          t189->load( ).
          t188 = lines( t189->items ).
          t187 = t188.
          DATA(t191) = CONV f( 0 ).
          t186 = xsdbool( t187 > t191 ).
          t182 = t186.
          t183 = abap_true.
        CATCH cx_root INTO t185.
          DATA(t193) = VALUE abap_bool( ).
          t193 = xsdbool( t183 = abap_false ).
          IF t193 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t185.
      ENDTRY.
      DATA(t196) = VALUE abap_bool( ).
      t196 = xsdbool( t183 = abap_false ).
      IF t196 = abap_true.
        t7->close( ).
      ENDIF.
      t181 = t182.
      IF t181 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t200) = VALUE abap_bool( ).
      t200 = abap_false.
      DATA t202 TYPE REF TO cx_root.
      CLEAR t202.
      TRY.
          DATA t204 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t204.
          DATA t205 TYPE REF TO zif_lnt_spaghetti_scope.
          CLEAR t205.
          t205 = t161->zlnt_view_read_sr_b6b1d9e0c93e( ).
          t204 = t205->get_top( ).
          me->build_edges( i_from = t38 i_node = t204 ).
          t200 = abap_true.
        CATCH cx_root INTO t202.
          DATA(t208) = VALUE abap_bool( ).
          t208 = xsdbool( t200 = abap_false ).
          IF t208 = abap_true.
            t7->close( ).
          ENDIF.
          RAISE EXCEPTION t202.
      ENDTRY.
      DATA(t211) = VALUE abap_bool( ).
      t211 = xsdbool( t200 = abap_false ).
      IF t211 = abap_true.
        t7->close( ).
      ENDIF.
    ENDDO.
    DATA t214 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t215 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t216 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t218) = |INTF|.
    t216 = me->reg->get_objects_by_type( i_type_9913 = t218 ).
    t215 = t216->iterate( ).
    t214 = t215.
    DO.
      DATA t220 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t221.
      t221 = t214->next( ).
      t220 = t221.
      DATA(t223) = VALUE abap_bool( ).
      t223 = t220->done.
      IF t223 = abap_true.
        EXIT.
      ENDIF.
      DATA t225 TYPE REF TO zif_lnt_object.
      CLEAR t225.
      DATA t227 TYPE REF TO zif_lnt_object.
      CLEAR t227.
      t227 = t220->value.
      t225 = t227.
      DATA(t229) = VALUE abap_bool( ).
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      t231 = abap_false.
      DATA t233 TYPE REF TO cx_root.
      CLEAR t233.
      TRY.
          DATA(t234) = VALUE abap_bool( ).
          t234 = me->reg->is_dependency( i_obj_1ed0 = t225 ).
          t230 = t234.
          t231 = abap_true.
        CATCH cx_root INTO t233.
          DATA(t238) = VALUE abap_bool( ).
          t238 = xsdbool( t231 = abap_false ).
          IF t238 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t233.
      ENDTRY.
      DATA(t241) = VALUE abap_bool( ).
      t241 = xsdbool( t231 = abap_false ).
      IF t241 = abap_true.
        t214->close( ).
      ENDIF.
      t229 = t230.
      IF t229 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t245) = VALUE string( ).
      DATA(t246) = VALUE string( ).
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
          DATA(t256) = VALUE abap_bool( ).
          t256 = xsdbool( t248 = abap_false ).
          IF t256 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t250.
      ENDTRY.
      DATA(t259) = VALUE abap_bool( ).
      t259 = xsdbool( t248 = abap_false ).
      IF t259 = abap_true.
        t214->close( ).
      ENDIF.
      t246 = t247.
      t245 = t246.
      DATA(t263) = VALUE abap_bool( ).
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = VALUE abap_bool( ).
      t265 = abap_false.
      DATA t267 TYPE REF TO cx_root.
      CLEAR t267.
      TRY.
          DATA(t268) = VALUE abap_bool( ).
          DATA(t269) = VALUE abap_bool( ).
          t269 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_abap_object ).
          t268 = xsdbool( t269 = abap_false ).
          t264 = t268.
          t265 = abap_true.
        CATCH cx_root INTO t267.
          DATA(t272) = VALUE abap_bool( ).
          t272 = xsdbool( t265 = abap_false ).
          IF t272 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t267.
      ENDTRY.
      DATA(t275) = VALUE abap_bool( ).
      t275 = xsdbool( t265 = abap_false ).
      IF t275 = abap_true.
        t214->close( ).
      ENDIF.
      t263 = t264.
      IF t263 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t279) = VALUE abap_bool( ).
        DATA(t280) = VALUE abap_bool( ).
        DATA(t281) = VALUE abap_bool( ).
        t281 = abap_false.
        DATA t283 TYPE REF TO cx_root.
        CLEAR t283.
        TRY.
            DATA(t284) = VALUE abap_bool( ).
            DATA(t285) = VALUE f( ).
            DATA(t286) = VALUE i( ).
            DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t287.
            t287 = me->conf->zlnt_view_read_sr_bab69e48acef( ).
            t286 = t287->indexof( p0 = t245 ).
            t285 = t286.
            DATA(t290) = CONV f( 0 ).
            t284 = xsdbool( t285 >= t290 ).
            t280 = t284.
            t281 = abap_true.
          CATCH cx_root INTO t283.
            DATA(t292) = VALUE abap_bool( ).
            t292 = xsdbool( t281 = abap_false ).
            IF t292 = abap_true.
              t214->close( ).
            ENDIF.
            RAISE EXCEPTION t283.
        ENDTRY.
        DATA(t295) = VALUE abap_bool( ).
        t295 = xsdbool( t281 = abap_false ).
        IF t295 = abap_true.
          t214->close( ).
        ENDIF.
        t279 = t280.
        IF t279 = abap_true.
          CONTINUE.
        ENDIF.
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
          DATA t305 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t305.
          DATA t306 TYPE REF TO zcl_lnt_syntax_logic.
          CLEAR t306.
          DATA(t307) = me->reg.
          DATA t308 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t308.
          DATA t310 TYPE REF TO object.
          CLEAR t310.
          t310 = t225.
          t308 ?= t310.
          t306 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t307 i_object_19cd = t308 ).
          t305 = t306->run( ).
          t301 = t305.
          t302 = abap_true.
        CATCH cx_root INTO t304.
          DATA(t312) = VALUE abap_bool( ).
          t312 = xsdbool( t302 = abap_false ).
          IF t312 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t304.
      ENDTRY.
      DATA(t315) = VALUE abap_bool( ).
      t315 = xsdbool( t302 = abap_false ).
      IF t315 = abap_true.
        t214->close( ).
      ENDIF.
      t299 = t301.
      DATA(t319) = VALUE abap_bool( ).
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = VALUE abap_bool( ).
      t321 = abap_false.
      DATA t323 TYPE REF TO cx_root.
      CLEAR t323.
      TRY.
          DATA(t324) = VALUE abap_bool( ).
          DATA(t325) = VALUE f( ).
          DATA(t326) = VALUE i( ).
          DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t327.
          t327 = t299->zlnt_view_read_sr_bd188c319c03( ).
          t327->load( ).
          t326 = lines( t327->items ).
          t325 = t326.
          DATA(t329) = CONV f( 0 ).
          t324 = xsdbool( t325 > t329 ).
          t320 = t324.
          t321 = abap_true.
        CATCH cx_root INTO t323.
          DATA(t331) = VALUE abap_bool( ).
          t331 = xsdbool( t321 = abap_false ).
          IF t331 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t323.
      ENDTRY.
      DATA(t334) = VALUE abap_bool( ).
      t334 = xsdbool( t321 = abap_false ).
      IF t334 = abap_true.
        t214->close( ).
      ENDIF.
      t319 = t320.
      IF t319 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t338) = VALUE abap_bool( ).
      t338 = abap_false.
      DATA t340 TYPE REF TO cx_root.
      CLEAR t340.
      TRY.
          DATA t342 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t342.
          DATA t343 TYPE REF TO zif_lnt_spaghetti_scope.
          CLEAR t343.
          t343 = t299->zlnt_view_read_sr_b6b1d9e0c93e( ).
          t342 = t343->get_top( ).
          me->build_edges( i_from = t245 i_node = t342 ).
          t338 = abap_true.
        CATCH cx_root INTO t340.
          DATA(t346) = VALUE abap_bool( ).
          t346 = xsdbool( t338 = abap_false ).
          IF t346 = abap_true.
            t214->close( ).
          ENDIF.
          RAISE EXCEPTION t340.
      ENDTRY.
      DATA(t349) = VALUE abap_bool( ).
      t349 = xsdbool( t338 = abap_false ).
      IF t349 = abap_true.
        t214->close( ).
      ENDIF.
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE abap_bool.
      t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ).
      t6 = xsdbool( t7 = abap_false ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t12 TYPE REF TO zif_lnt_union_291f04b3.
    t12 ?= t1.
    t11 = t12->get_identifier( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t14 = xsdbool( t10 IS INITIAL ).
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t22 = NEW zlnt_runtime_map__45a2315f90b8( ).
    DATA t27 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zif_lnt_union_291f04b3.
    t30 ?= t1.
    t29 = t30->get_name( ).
    t27 = t22->set( p0 = t29 p1 = abap_true ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zif_lnt_union_291f04b3.
    t36 ?= t1.
    t35 = t36->get_name( ).
    DATA t38 TYPE string.
    DATA t39 TYPE REF TO zif_lnt_union_291f04b3.
    t39 ?= t1.
    t38 = t39->get_name( ).
    t34 = me->find_cycle( i_source_75cf = t35 i_current = t38 i_previous = t22 ).
    t33 = t34.
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
      DATA(t53) = | -> |.
      DATA(t54) = strlen( t47 ).
      t46 = |{ t47 }{ t53 }|.
      DATA t55 TYPE string.
      t55 = t33->value.
      DATA(t57) = strlen( t46 ).
      t45 = |{ t46 }{ t55 }|.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t60.
      t59 = t60.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
      t63 = t10.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t68 TYPE string.
      t68 = |cyclic_oo|.
      DATA t70 TYPE string.
      t70 = |Cyclic OO|.
      DATA t72 TYPE string.
      t72 = |Finds cyclic/circular OO references|.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t77) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
      t77 = t77 && | syntax errors for this rule to take effect\n\nReferences in t|.
      t77 = t77 && |estclass includes are ignored|.
      DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t78->has = abap_true.
      t78->value = t77.
      t74 = t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = NEW zcl_lnt_irule_metadata( i_key = t68 i_title = t70 i_short_description = t72 i_bad_example = t80 i_good_example = t82 i_extended_information = t74 i_tags = t84 i_pragma = t86 i_pseudo_comment = t88 ).
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
      DATA(t94) = |key|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      DATA(t96) = |title|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      DATA(t98) = |shortDescription|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      DATA(t100) = |extendedInformation|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      t66 = t67->key.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t102 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t62 = zcl_lnt_issue=>at_identifier( i_identifier = t63 i_message_26cb = t45 i_key = t66 i_severity = t102 i_fix = t104 ).
      t59->load( ).
      APPEND t62 TO t59->items.
      t59->save( ).
      result = t59.
      RETURN.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    result = t106.

  ENDMETHOD.

  METHOD find_cycle.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_current.
    DATA(t3) = i_previous.
    DATA(t4) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t6 = me->edges->get( p0 = t2 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t6 IS INITIAL ).
    IF t4 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t15 = me->edges->get( p0 = t2 ).
    t14 = t15.
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
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t18 = t1 ).
      IF t20 = abap_true.
        DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t26->has = abap_true.
        t26->value = t18.
        result = t26.
        RETURN.
      ENDIF.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t30 = t3->get( p0 = t18 ).
      t29 = t30.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      DATA(t35) = VALUE abap_bool( ).
      IF t29 IS INITIAL.
        t35 = abap_true.
      ELSEIF t29->has = abap_false.
        t35 = abap_true.
      ENDIF.
      t28 = t35.
      IF t28 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        t37 = t3->set( p0 = t18 p1 = abap_true ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t42 = me->find_cycle( i_source_75cf = t1 i_current = t18 i_previous = t3 ).
        t41 = t42.
        DATA(t46) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          IF t41->has = abap_true.
            t46 = xsdbool( strlen( t41->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t46 = abap_true.
          DATA t50 TYPE string.
          DATA t51 TYPE string.
          DATA(t53) = | -> |.
          DATA(t54) = strlen( t18 ).
          t51 = |{ t18 }{ t53 }|.
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
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    t4 = t2->get_data( ).
    t3 = t4->references.
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
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_iscope_identifier.
        t23 = t2->get_identifier( ).
        t22 = t23->filename.
        DATA t25 TYPE string.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        t28 = t6->resolved.
        DATA t30 TYPE string.
        t30 = t28->filename.
        t25 = t30.
        t21 = xsdbool( t22 = t25 ).
        t12 = t21.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
        t36 = t6->resolved.
        DATA t38 TYPE string.
        t38 = t36->filename.
        t33 = t38.
        DATA(t40) = CONV string( zcl_lnt_built_in=>filename ).
        t32 = xsdbool( t33 = t40 ).
        t11 = t32.
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
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        t51 = t6->position_7b94.
        DATA t53 TYPE string.
        t53 = t51->filename.
        t49 = t53.
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
        DATA(t57) = 0.
        t47 = xsdbool( t48 >= t57 ).
        t46 = t47.
        IF t47 = abap_false.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE i( ).
          DATA t60 TYPE string.
          DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
          t63 = t6->resolved.
          DATA t65 TYPE string.
          t65 = t63->filename.
          t60 = t65.
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
          DATA(t69) = 0.
          t58 = xsdbool( t59 >= t69 ).
          t46 = t58.
        ENDIF.
        t41 = t46.
      ENDIF.
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE string.
      t72 = t6->reference_type.
      DATA(t74) = |Object|.
      t71 = xsdbool( t72 = t74 ).
      t70 = t71.
      IF t71 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        t78 = t6->extra.
        t77 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = xsdbool( t77 IS INITIAL ).
        IF t81 = abap_true.
          CLEAR t80.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t85 TYPE REF TO zcl_lnt_ireference_extras.
          t85 = t77.
          t84 = t85->oo_name.
          t80 = t84.
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
        DATA(t87) = VALUE abap_bool( ).
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t89 = me->edges->get( p0 = t1 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        t87 = xsdbool( t89 IS INITIAL ).
        IF t87 = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA(t97) = me->edges.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t99.
          t96 = t97->set( p0 = t1 p1 = t99 ).
        ENDIF.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t105 TYPE REF TO zcl_lnt_ireference_extras.
        t105 = t6->extra.
        t104 = t105.
        t103 = t104->oo_name.
        t102 = t103->value.
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
          DATA t112 TYPE abap_bool.
          DATA t113 TYPE i.
          DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t115 = me->edges->get( p0 = t1 ).
          t114 = t115.
          t113 = t114->indexof( p0 = t100 ).
          DATA(t119) = 0.
          t112 = xsdbool( t113 < t119 ).
          t108 = t112.
        ENDIF.
        IF t108 = abap_true.
          DATA t120 TYPE REF TO zif_lnt_object.
          CLEAR t120.
          DATA t122 TYPE REF TO zif_lnt_object.
          CLEAR t122.
          DATA t123 TYPE REF TO zif_lnt_object.
          CLEAR t123.
          DATA(t124) = me->reg.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA(t127) = |INTF|.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t127.
          t125 = t128.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t100.
          t130 = t133.
          t123 = t124->get_object( i_type_9913 = t125 i_name = t130 ).
          t122 = t123.
          DATA t135 TYPE REF TO zif_lnt_object.
          CLEAR t135.
          DATA t136 TYPE abap_bool.
          t136 = xsdbool( t122 IS BOUND ).
          IF t136 = abap_true.
            t135 = t122.
          ELSE.
            DATA t139 TYPE REF TO zif_lnt_object.
            CLEAR t139.
            DATA(t140) = me->reg.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            DATA(t143) = |CLAS|.
            DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t144->has = abap_true.
            t144->value = t143.
            t141 = t144.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t149->has = abap_true.
            t149->value = t100.
            t146 = t149.
            t139 = t140->get_object( i_type_9913 = t141 i_name = t146 ).
            t135 = t139.
          ENDIF.
          t120 = t135.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          t152 = xsdbool( t120 IS BOUND ).
          t151 = t152.
          IF t152 = abap_true.
            DATA t154 TYPE abap_bool.
            DATA t156 TYPE REF TO zif_lnt_object.
            t156 = t120.
            t154 = me->reg->is_dependency( i_obj_1ed0 = t156 ).
            t151 = t154.
          ENDIF.
          IF t151 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t159 = me->edges->get( p0 = t1 ).
          t158 = t159.
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
