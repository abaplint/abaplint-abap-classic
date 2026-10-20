* TS: src/rules/slow_parameter_passing.ts:18:1 SlowParameterPassing
CLASS zcl_lnt_slow_parameter_passing DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps RETURNING VALUE(result) TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps IMPORTING i_conf TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_id TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_method_nodes IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slow_parameter_passing IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_slw_prmtr_pssng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Detects slow pass by value passing for methods where paramet|.
    t7 = t7 && |er is not changed|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |Method parameters defined in interfaces is not checked|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Performance| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
    t29 = t29 && |RTING VALUE(sdf) TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTA|.
    t29 = t29 && |TION.\n  METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
    t35 = t35 && |RTING sdf TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n |.
    t35 = t35 && | METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |slow_parameter_passing| i_title = |Slow Parameter Passing| i_short_description = t6 i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t13) = me->reg.
    DATA t14 TYPE REF TO zcl_lnt_abap_object.
    DATA t16 TYPE REF TO object.
    t16 = t1.
    t14 ?= t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = me->list_method_nodes( i_node = NEW zcl_lnt_syntax_logic( i_reg_f149 = t13 i_object_19cd = t14 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).
    DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t17->load( ).
      IF t23 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t17->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t26 = t21->get_data( )->vars.
      DATA(t31) = VALUE i( ).
      DATA t32 TYPE string.
      t32 = t21->get_identifier( )->sname.
      DATA(t35) = |~|.
      DATA(t36) = strlen( t32 ).
      IF t35 IS INITIAL.
        t31 = 0.
      ELSE.
        FIND t35 IN t32 MATCH OFFSET t31.
        IF sy-subrc <> 0.
          t31 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t31 >= 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t38 = t26->keys( ).
      DATA(t40) = VALUE string( ).
      t38->dense( ).
      DATA(t41) = VALUE i( ).
      DO.
        t38->load( ).
        IF t41 >= lines( t38->items ).
          EXIT.
        ENDIF.
        CLEAR t40.
        READ TABLE t38->items INDEX t41 + 1 INTO t40.
        IF t38->has( t41 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t41 = t41 + 1.
        DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
        t42 = t26->get( p0 = t40 ).
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t49 = t42->meta.
        t47 = xsdbool( t49->includes( p0 = |importing| ) = abap_false ).
        t46 = t47.
        IF t47 = abap_false.
          DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t59 = t42->meta.
          t46 = xsdbool( t59->includes( p0 = |pass_by_value| ) = abap_false ).
        ENDIF.
        IF t46 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t68 TYPE abap_bool.
        DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
        t71 = t42.
        DATA t74 TYPE string.
        t74 = t71->filename.
        t68 = me->reg->is_file_dependency( i_filename = t74 ).
        IF xsdbool( t68 = abap_true ) = abap_true.
          CONTINUE.
        ENDIF.

        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t77 = me->list_write_positions( i_node = t21 i_id = t42 ).
        t77->load( ).
        IF xsdbool( lines( t77->items ) = 0 ) = abap_true.
          DATA(t86) = VALUE string( ).
          DATA(t88) = VALUE string( ).
          DATA(t89) = |Parameter |.
          DATA(t90) = VALUE string( ).
          DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
          t91 = t42.
          DATA t95 TYPE string.
          t95 = t91->token->str.
          DATA(t103) = VALUE string( ).
          DATA(t104) = t95.
          DATA(t105) = 0.
          DATA(t106) = 1.
          DATA(t107) = strlen( t104 ).
          IF t105 < 0.
            t105 = t105 + t107.
            IF t105 < 0.
              t105 = 0.
            ENDIF.
          ENDIF.
          IF t105 > t107 OR t106 <= 0.
          ELSE.
            IF t106 > t107 - t105.
              t106 = t107 - t105.
            ENDIF.
            t103 = t104+t105(t106).
          ENDIF.
          IF xsdbool( t103 = |!| ) = abap_true.
            DATA t110 TYPE string.
            t110 = t95.
            DATA(t112) = VALUE string( ).
            DATA(t114) = 1.
            DATA t115 TYPE i.
            t115 = strlen( t110 ).
            DATA(t118) = strlen( t110 ).
            IF t114 < 0.
              t114 = t114 + t118.
              IF t114 < 0.
                t114 = 0.
              ENDIF.
            ENDIF.
            IF t114 > t118 OR t115 <= 0.
            ELSE.
              IF t115 > t118 - t114.
                t115 = t118 - t114.
              ENDIF.
              t112 = t110+t114(t115).
            ENDIF.
            t95 = t112.
          ENDIF.
          t90 = t95.
          DATA(t120) = strlen( t89 ).
          t88 = |{ t89 }{ t90 }|.
          DATA(t122) = strlen( t88 ).
          t86 = |{ t88 }{ | passed by VALUE but not changed| }|.
          DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t123.
          DATA t125 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t125.
          DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t130 TYPE REF TO zcl_lnt_abap_object.
          DATA t132 TYPE REF TO object.
          t132 = t1.
          t130 ?= t132.
          t127 = t130->parsed.
          DATA t135 TYPE i.
          t127->load( ).
          t135 = lines( t127->items ).
          DATA t138 TYPE i.
          t138 = 0.
          DATA t140 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t140.
          DO.
            IF xsdbool( t138 < t135 ) = abap_false.
              EXIT.
            ENDIF.
            DATA t145 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t145.
            DATA t147 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t147.
            DATA t150 TYPE REF TO object.
            t150 = t127->get( p0 = t138 ).
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t151.
            CLEAR t147.
            IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t151 ?= t150.
              DATA t152 TYPE REF TO object.
              t152 = t151->as_ref( ).
              t147 ?= t152.
            ELSE.
              t147 ?= t150.
            ENDIF.
            t145 = t147.
            DATA t154 TYPE string.
            DATA t155 TYPE REF TO zcl_lnt_abstract_file.
            t155 = t145.
            t154 = t155->filename.
            DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
            t160 = t42.
            IF xsdbool( t154 = t160->filename ) = abap_true.
              t140 = t145.
              EXIT.
            ENDIF.
            DATA(t171) = 1.
            t138 = t138 + t171.
          ENDDO.
          t125 = t140.
          IF xsdbool( t125 IS BOUND ) = abap_true.
            DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t177 TYPE REF TO zcl_lnt_abap_file.
            t177 = t125.
            DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t179.
            t175 = t177->get_tokens( i_with_pragmas = t179 ).
            DATA t180 TYPE i.
            t180 = 0.
            DO.
              t175->load( ).
              IF xsdbool( t180 < lines( t175->items ) ) = abap_false.
                EXIT.
              ENDIF.
              DATA t187 TYPE REF TO zcl_lnt_position.
              CLEAR t187.
              DATA t189 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t189.
              DATA(t191) = t180.
              t191 = t191 + 1.
              DATA t192 TYPE REF TO object.
              CLEAR t192.
              t175->load( ).
              CLEAR t192.
              READ TABLE t175->items INDEX t191 INTO t192.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t193.
              CLEAR t189.
              IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t193 ?= t192.
                DATA t194 TYPE REF TO object.
                t194 = t193->as_ref( ).
                t189 ?= t194.
              ELSE.
                t189 ?= t192.
              ENDIF.
              t187 = t189->start.
              DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
              t200 = t42.
              DATA t205 TYPE REF TO zcl_lnt_position.
              t205 = t200->token->start.
              IF t187->equals( i_p = t205 ) = abap_true.
                DATA t208 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t208.
                DATA t210 TYPE i.
                DATA(t212) = 1.
                t210 = t180 - t212.
                t210 = t210 + 1.
                DATA t213 TYPE REF TO object.
                CLEAR t213.
                t175->load( ).
                CLEAR t213.
                READ TABLE t175->items INDEX t210 INTO t213.
                DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t214.
                CLEAR t208.
                IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t214 ?= t213.
                  DATA t215 TYPE REF TO object.
                  t215 = t214->as_ref( ).
                  t208 ?= t215.
                ELSE.
                  t208 ?= t213.
                ENDIF.
                DATA t216 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t216.
                DATA t217 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t217.
                DATA t219 TYPE i.
                DATA(t221) = 2.
                t219 = t180 - t221.
                t219 = t219 + 1.
                DATA t222 TYPE REF TO object.
                CLEAR t222.
                t175->load( ).
                CLEAR t222.
                READ TABLE t175->items INDEX t219 INTO t222.
                DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t223.
                CLEAR t217.
                IF t222 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t223 ?= t222.
                  DATA t224 TYPE REF TO object.
                  t224 = t223->as_ref( ).
                  t217 ?= t224.
                ELSE.
                  t217 ?= t222.
                ENDIF.
                t216 = t217.
                DATA t225 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t225.
                DATA t226 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t226.
                DATA t228 TYPE i.
                DATA(t230) = 1.
                t228 = t180 + t230.
                t228 = t228 + 1.
                DATA t231 TYPE REF TO object.
                CLEAR t231.
                t175->load( ).
                CLEAR t231.
                READ TABLE t175->items INDEX t228 INTO t231.
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t232.
                CLEAR t226.
                IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t232 ?= t231.
                  DATA t233 TYPE REF TO object.
                  t233 = t232->as_ref( ).
                  t226 ?= t233.
                ELSE.
                  t226 ?= t231.
                ENDIF.
                t225 = t226.
                DATA(t234) = VALUE abap_bool( ).
                DATA(t235) = VALUE abap_bool( ).
                DATA(t236) = VALUE abap_bool( ).
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                DATA t238 TYPE REF TO zcl_lnt_abstract_token.
                t238 = t208.
                DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t240.
                IF xsdbool( t238 IS INITIAL ) = abap_true.
                  CLEAR t240.
                ELSE.
                  DATA t247 TYPE string.
                  t247 = t238->str.
                  DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t249->has = abap_true.
                  t249->value = t247.
                  t240 = t249.
                ENDIF.
                t237 = t240.
                DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t253->has = abap_true.
                t253->value = |(|.
                t250 = t253.
                DATA(t255) = VALUE abap_bool( ).
                DATA(t256) = VALUE abap_bool( ).
                IF t237 IS BOUND.
                  t255 = t237->has.
                ENDIF.
                IF t250 IS BOUND.
                  t256 = t250->has.
                ENDIF.
                IF t255 = t256.
                  IF t255 = abap_false.
                    t236 = abap_true.
                  ELSEIF t237->value = t250->value.
                    t236 = abap_true.
                  ENDIF.
                ENDIF.
                t235 = t236.
                IF t236 = abap_true.
                  DATA(t257) = VALUE abap_bool( ).
                  DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t258.
                  DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t259.
                  DATA t261 TYPE REF TO zcl_lnt_abstract_token.
                  t261 = t216.
                  DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t263.
                  IF xsdbool( t261 IS INITIAL ) = abap_true.
                    CLEAR t263.
                  ELSE.
                    DATA t270 TYPE string.
                    t270 = t261->str.
                    DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t272->has = abap_true.
                    t272->value = t270.
                    t263 = t272.
                  ENDIF.
                  t259 = t263.
                  DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t273.
                  DATA(t274) = VALUE abap_bool( ).
                  IF t259 IS INITIAL.
                    t274 = abap_true.
                  ELSEIF t259->has = abap_false.
                    t274 = abap_true.
                  ENDIF.
                  IF t274 = abap_true.
                    CLEAR t273.
                  ELSE.
                    DATA t277 TYPE string.
                    DATA t278 TYPE string.
                    t278 = t259->value.
                    DATA(t280) = strlen( t278 ).
                    t277 = t278.
                    IF t277 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t277 TO UPPER CASE.
                    ELSE.
                      t277 = zlnt_runtime_uppe_91169605024d=>full( t277 ).
                    ENDIF.
                    DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t281->has = abap_true.
                    t281->value = t277.
                    t273 = t281.
                  ENDIF.
                  t258 = t273.
                  DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t285->has = abap_true.
                  t285->value = |VALUE|.
                  t282 = t285.
                  DATA(t287) = VALUE abap_bool( ).
                  DATA(t288) = VALUE abap_bool( ).
                  IF t258 IS BOUND.
                    t287 = t258->has.
                  ENDIF.
                  IF t282 IS BOUND.
                    t288 = t282->has.
                  ENDIF.
                  IF t287 = t288.
                    IF t287 = abap_false.
                      t257 = abap_true.
                    ELSEIF t258->value = t282->value.
                      t257 = abap_true.
                    ENDIF.
                  ENDIF.
                  t235 = t257.
                ENDIF.
                t234 = t235.
                IF t235 = abap_true.
                  DATA(t289) = VALUE abap_bool( ).
                  DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t290.
                  DATA t291 TYPE REF TO zcl_lnt_abstract_token.
                  t291 = t225.
                  DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t293.
                  IF xsdbool( t291 IS INITIAL ) = abap_true.
                    CLEAR t293.
                  ELSE.
                    DATA t300 TYPE string.
                    t300 = t291->str.
                    DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t302->has = abap_true.
                    t302->value = t300.
                    t293 = t302.
                  ENDIF.
                  t290 = t293.
                  DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t306->has = abap_true.
                  t306->value = |)|.
                  t303 = t306.
                  DATA(t308) = VALUE abap_bool( ).
                  DATA(t309) = VALUE abap_bool( ).
                  IF t290 IS BOUND.
                    t308 = t290->has.
                  ENDIF.
                  IF t303 IS BOUND.
                    t309 = t303->has.
                  ENDIF.
                  IF t308 = t309.
                    IF t308 = abap_false.
                      t289 = abap_true.
                    ELSEIF t290->value = t303->value.
                      t289 = abap_true.
                    ENDIF.
                  ENDIF.
                  t234 = t289.
                ENDIF.
                IF t234 = abap_true.
                  DATA t313 TYPE REF TO zcl_lnt_abap_file.
                  t313 = t125.
                  DATA t315 TYPE REF TO zcl_lnt_position.
                  t315 = t216->start.
                  DATA t320 TYPE REF TO zcl_lnt_position.
                  DATA t321 TYPE REF TO zcl_lnt_abstract_token.
                  t321 = t225.
                  DATA t324 TYPE f.
                  t324 = t321->start->row.
                  DATA t331 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  t331 = t321->start->col.
                  DATA t337 TYPE f.
                  t337 = strlen( t321->str ).
                  DATA(t342) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t342->has = abap_true.
                  t342->value = t337.
                  t320 = NEW zcl_lnt_position( i_row = t324 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t331 right = t342 op = `+` ) ).
                  DATA t346 TYPE REF TO zcl_lnt_fi_identifier.
                  t346 = t42.
                  DATA t351 TYPE string.
                  t351 = t346->token->str.
                  t123 = zcl_lnt_edit_helper=>replace_range( i_file = t313 i_start = t315 i_end = t320 i_text = t351 ).
                ENDIF.
                EXIT.
              ENDIF.
              DATA(t356) = 1.
              t180 = t180 + t356.
            ENDDO.
          ENDIF.
          DATA t358 TYPE REF TO zcl_lnt_issue.
          CLEAR t358.
          DATA t359 TYPE REF TO zcl_lnt_typed_identifier.
          t359 = t42.
          DATA(t362) = VALUE string( ).
          DATA t363 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t368 TYPE string.
          DATA(t369) = |Detects slow pass by value passing for methods where paramet|.
          t369 = t369 && |er is not changed|.
          t368 = t369.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t374->has = abap_true.
          t374->value = |Method parameters defined in interfaces is not checked|.
          t370 = t374.
          DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t376.
          DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t380.
          t380->load( ).
          APPEND |Performance| TO t380->items.
          t380->save( ).
          t380->load( ).
          APPEND |Quickfix| TO t380->items.
          t380->save( ).
          t376 = t380.
          DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t388.
          DATA(t391) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
          t391 = t391 && |RTING VALUE(sdf) TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTA|.
          t391 = t391 && |TION.\n  METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
          DATA(t392) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t392->has = abap_true.
          t392->value = t391.
          t388 = t392.
          DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t394.
          DATA(t397) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
          t397 = t397 && |RTING sdf TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n |.
          t397 = t397 && | METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
          DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t398->has = abap_true.
          t398->value = t397.
          t394 = t398.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t400.
          DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t402.
          t363 = NEW zcl_lnt_irule_metadata( i_key = |slow_parameter_passing| i_title = |Slow Parameter Passing| i_short_description = t368 i_bad_example = t388 i_good_example = t394 i_extended_information = t370 i_tags = t376 i_pragma = t400 i_pseudo_comment = t402 ).
          CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
          t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t404.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t404 ).
          DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t405.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t405 ).
          ENDIF.
          DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t406.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t406 ).
          ENDIF.
          DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t407.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t407 ).
          ENDIF.
          DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t408.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t408 ).
          ENDIF.
          DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t409.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t409 ).
          ENDIF.
          DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t410.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t410 ).
          ENDIF.
          CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
          t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t412.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t412 ).
          DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t414.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t414 ).
          ENDIF.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t416.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t416 ).
          ENDIF.
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t418.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t418 ).
          ENDIF.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t420.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t420 ).
          ENDIF.
          DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t422.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t422 ).
          ENDIF.
          DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t424.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t424 ).
          ENDIF.
          t362 = t363->key.
          t358 = zcl_lnt_issue=>at_identifier( i_identifier = t359 i_message_26cb = t86 i_key = t362 i_severity = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t123 ).
          t2->load( ).
          APPEND t358 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_node.
    DATA(t2) = i_id.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_data( )->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
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
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t8->reference_type = |Write To| ).
      t14 = t15.
      IF t15 = abap_true.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8->resolved.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        IF xsdbool( t21 IS INITIAL ) = abap_true.
          CLEAR t24.
        ELSE.
          DATA t32 TYPE string.
          t32 = t21->filename.
          DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t34->has = abap_true.
          t34->value = t32.
          t24 = t34.
        ENDIF.
        t20 = t24.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
        t38 = t2.
        DATA t40 TYPE string.
        t40 = t38->filename.
        DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t42->has = abap_true.
        t42->value = t40.
        t35 = t42.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        IF t20 IS BOUND.
          t44 = t20->has.
        ENDIF.
        IF t35 IS BOUND.
          t45 = t35->has.
        ENDIF.
        IF t44 = t45.
          IF t44 = abap_false.
            t19 = abap_true.
          ELSEIF t20->value = t35->value.
            t19 = abap_true.
          ENDIF.
        ENDIF.
        t14 = t19.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_position.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
        t50 = t8->resolved.
        DATA t54 TYPE REF TO zcl_lnt_position.
        CLEAR t54.
        IF xsdbool( t50 IS INITIAL ) = abap_true.
          CLEAR t54.
        ELSE.
          t54 = t50->token->start.
        ENDIF.
        t48 = t54.
        DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t67.
        IF xsdbool( t48 IS INITIAL ) = abap_true.
          CLEAR t67.
        ELSE.
          DATA t71 TYPE abap_bool.
          DATA t72 TYPE REF TO zcl_lnt_position.
          t72 = t48.
          DATA t75 TYPE REF TO zcl_lnt_fi_identifier.
          t75 = t2.
          DATA t81 TYPE REF TO zcl_lnt_position.
          t81 = t75->token->start.
          t71 = t72->equals( i_p = t81 ).
          DATA(t83) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t83->has = abap_true.
          t83->value = t71.
          t67 = t83.
        ENDIF.
        t47 = t67.
        IF t47 IS BOUND.
          IF t47->has = abap_true.
            t46 = xsdbool( t47->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t13 = t46.
      ENDIF.
      IF t13 = abap_true.
        DATA t85 TYPE REF TO zcl_lnt_position.
        t85 = t8->position_7b94->token->start.
        t3->load( ).
        APPEND t85 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD list_method_nodes.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE string.
    t5 = t1->get_identifier( )->stype.
    IF xsdbool( t5 = |method| ) = abap_true.
      t2->load( ).
      APPEND t1 TO t2->items.
      t2->save( ).
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t11 = t1->get_children( ).
      DATA t13 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t14 TYPE REF TO object.
      DATA(t15) = VALUE i( ).
      DO.
        t11->load( ).
        IF t15 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t11->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA(t18) = VALUE i( ).
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t19 = me->list_method_nodes( i_node = t13 ).
        DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        DATA(t23) = VALUE i( ).
        DO.
          t19->load( ).
          IF t23 >= lines( t19->items ).
            EXIT.
          ENDIF.
          CLEAR t22.
          READ TABLE t19->items INDEX t23 + 1 INTO t22.
          t23 = t23 + 1.
          DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t24.
          CLEAR t21.
          IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t24 ?= t22.
            DATA t25 TYPE REF TO object.
            t25 = t24->as_ref( ).
            t21 ?= t25.
          ELSE.
            t21 ?= t22.
          ENDIF.
          t2->load( ).
          APPEND t21 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t18 = lines( t2->items ).
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
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
        t2 = NEW zcl_lnt_slw_prmtr_pssng_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1702_9116f8a9a808.
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
