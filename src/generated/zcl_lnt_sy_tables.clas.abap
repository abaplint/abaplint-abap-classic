* TS: src/abap/5_syntax/statements/tables.ts:9:1 Tables
CLASS zcl_lnt_sy_tables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_tables IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t6 = i_node->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = xsdbool( t5 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      t14 = t5.
      t13 = t14->get_first_token( ).
      t9 = t13.
    ENDIF.
    t3 = t9.
    DATA(t16) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = xsdbool( t3 IS INITIAL ).
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t23 TYPE string.
    DATA t28 TYPE string.
    t28 = t3->str.
    t23 = t28.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t23.
    DATA(t32) = |*|.
    DATA(t33) = strlen( t31 ).
    DATA t34 TYPE i.
    DATA(t35) = VALUE i( ).
    DATA(t36) = VALUE string( ).
    t34 = strlen( t32 ).
    IF t34 = 0.
      t30 = abap_true.
    ELSEIF t34 <= t33.
      t35 = 0.
      t36 = t31+t35(t34).
      IF t36 = t32.
        t30 = abap_true.
      ENDIF.
    ENDIF.
    IF t30 = abap_true.
      DATA(t37) = VALUE string( ).
      DATA t38 TYPE string.
      t38 = t23.
      DATA(t40) = VALUE string( ).
      DATA(t42) = 1.
      DATA t43 TYPE i.
      t43 = strlen( t38 ).
      DATA(t46) = strlen( t38 ).
      t42 = COND i( WHEN t42 < 0 THEN 0 WHEN t42 > t46 THEN t46 ELSE t42 ).
      t43 = COND i( WHEN t43 < 0 THEN 0 WHEN t43 > t46 THEN t46 ELSE t43 ).
      IF t42 > t43.
        t46 = t42.
        t42 = t43.
        t43 = t46.
      ENDIF.
      t46 = t43 - t42.
      t40 = t38+t42(t46).
      t37 = t40.
      t23 = t37.
    ENDIF.
    DATA t47 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t49 TYPE REF TO zcl_lnt_ddic.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    t52 = t2->scope.
    DATA t54 TYPE REF TO zcl_lnt_ddic.
    DATA t55 TYPE REF TO zif_lnt_registry.
    t55 = t52->reg.
    t54 = NEW zcl_lnt_ddic( i_reg_f149 = t55 ).
    t49 = t54.
    DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t58) = xsdbool( t49 IS INITIAL ).
    IF t58 = abap_true.
    ELSE.
      DATA t62 TYPE REF TO zcl_lnt_ddic.
      t62 = t49.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t23.
      t64 = t68.
      DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t72 = t64.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t76) = VALUE abap_bool( ).
      IF t72 IS INITIAL.
        t76 = abap_true.
      ELSEIF t72->has = abap_false.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        DATA t80 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t81) = |undefined, lookupTableOrView|.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t80 = NEW zcl_lnt_unknown_type( i_error = t81 i_qualified_name = t82 ).
        t79 = t80.
        DATA t83 TYPE REF TO zif_lnt_object.
        t78 = NEW zcl_lnt_ilookup_result( i_type_9913 = t79 i_object_19cd = t83 ).
        CREATE OBJECT t78->zlnt_view_ownkeys_b0e8086400eb.
        t78->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t78->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t85 ).
        CREATE OBJECT t78->zlnt_json_ownkeys_70e5fd461788.
        t78->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t86) = |type|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t78->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        t70 = t78.
      ELSE.
        DATA t89 TYPE REF TO zcl_lnt_table.
        DATA t90 TYPE REF TO zcl_lnt_table.
        DATA t91 TYPE REF TO zif_lnt_object.
        DATA t92 TYPE REF TO zif_lnt_registry.
        t92 = t62->reg.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t96) = |TABL|.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = t96.
        t94 = t97.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE string.
        t101 = t64->value.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t101.
        t99 = t103.
        t91 = t92->get_object( i_type_9913 = t94 i_name = t99 ).
        DATA t105 TYPE REF TO object.
        t105 = t91.
        t90 ?= t105.
        t89 = t90.
        DATA t106 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t107 TYPE abap_bool.
        t107 = xsdbool( t89 IS BOUND ).
        IF t107 = abap_true.
          DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t110 TYPE REF TO zcl_lnt_abstract_type.
          DATA t111 TYPE REF TO zcl_lnt_abstract_type.
          DATA t112 TYPE REF TO zcl_lnt_table.
          t112 = t89.
          DATA t114 TYPE REF TO zif_lnt_registry.
          t114 = t62->reg.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t111 = t112->parse_type( i_reg_f149 = t114 i_data_element = t116 i_description = t117 ).
          t110 = t111.
          DATA t118 TYPE REF TO zif_lnt_object.
          t118 = t89.
          t109 = NEW zcl_lnt_ilookup_result( i_type_9913 = t110 i_object_19cd = t118 ).
          CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
          t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t122 ).
          ENDIF.
          CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
          t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t123) = |type|.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
          DATA(t125) = |object|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          t106 = t109.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t133 TYPE string.
          t133 = t64->value.
          DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t135->has = abap_true.
          t135->value = t133.
          t131 = t135.
          t129 = t62->lookup_ddls( i_name = t131 ).
          t128 = t129.
          DATA t137 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t138 TYPE abap_bool.
          t138 = xsdbool( t128 IS BOUND ).
          IF t138 = abap_true.
            t137 = t128.
          ELSE.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t146 TYPE string.
            t146 = t64->value.
            DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t148->has = abap_true.
            t148->value = t146.
            t143 = t148.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            DATA(t151) = VALUE abap_bool( ).
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t152 = t143.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t156) = VALUE abap_bool( ).
            IF t152 IS INITIAL.
              t156 = abap_true.
            ELSEIF t152->has = abap_false.
              t156 = abap_true.
            ENDIF.
            t151 = t156.
            IF t151 = abap_true.
              DATA t158 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t159 TYPE REF TO zcl_lnt_abstract_type.
              DATA t160 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t161) = |undefined, lookupView|.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t160 = NEW zcl_lnt_unknown_type( i_error = t161 i_qualified_name = t162 ).
              t159 = t160.
              DATA t163 TYPE REF TO zif_lnt_object.
              t158 = NEW zcl_lnt_ilookup_result( i_type_9913 = t159 i_object_19cd = t163 ).
              CREATE OBJECT t158->zlnt_view_ownkeys_b0e8086400eb.
              t158->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t165 ).
              CREATE OBJECT t158->zlnt_json_ownkeys_70e5fd461788.
              t158->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t166) = |type|.
              DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
              t150 = t158.
            ELSE.
              DATA t169 TYPE REF TO zcl_lnt_table.
              DATA t170 TYPE REF TO zcl_lnt_table.
              DATA t171 TYPE REF TO zif_lnt_object.
              DATA t172 TYPE REF TO zif_lnt_registry.
              t172 = t62->reg.
              DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t176) = |VIEW|.
              DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t177->has = abap_true.
              t177->value = t176.
              t174 = t177.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t181 TYPE string.
              t181 = t143->value.
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = t181.
              t179 = t183.
              t171 = t172->get_object( i_type_9913 = t174 i_name = t179 ).
              DATA t185 TYPE REF TO object.
              t185 = t171.
              t170 ?= t185.
              t169 = t170.
              DATA t186 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t187 TYPE abap_bool.
              t187 = xsdbool( t169 IS BOUND ).
              IF t187 = abap_true.
                DATA t189 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t190 TYPE REF TO zcl_lnt_abstract_type.
                DATA t191 TYPE REF TO zcl_lnt_abstract_type.
                DATA t192 TYPE REF TO zcl_lnt_table.
                t192 = t169.
                DATA t194 TYPE REF TO zif_lnt_registry.
                t194 = t62->reg.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t191 = t192->parse_type( i_reg_f149 = t194 i_data_element = t196 i_description = t197 ).
                t190 = t191.
                DATA t198 TYPE REF TO zif_lnt_object.
                t198 = t169.
                t189 = NEW zcl_lnt_ilookup_result( i_type_9913 = t190 i_object_19cd = t198 ).
                CREATE OBJECT t189->zlnt_view_ownkeys_b0e8086400eb.
                t189->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t201 ).
                DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t202 ).
                ENDIF.
                CREATE OBJECT t189->zlnt_json_ownkeys_70e5fd461788.
                t189->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t203) = |type|.
                DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
                DATA(t205) = |object|.
                DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
                ENDIF.
                t186 = t189.
              ELSE.
                DATA t207 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t208 TYPE abap_bool.
                DATA t209 TYPE REF TO zif_lnt_registry.
                t209 = t62->reg.
                DATA t211 TYPE string.
                t211 = t143->value.
                t208 = t209->in_error_namespace( i_name = t211 ).
                IF t208 = abap_true.
                  DATA t213 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t214 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t215 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t216 TYPE string.
                  DATA t217 TYPE string.
                  t217 = t143->value.
                  DATA(t219) = | not found, lookupView|.
                  DATA(t220) = strlen( t217 ).
                  t216 = |{ t217 }{ t219 }|.
                  DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t215 = NEW zcl_lnt_unknown_type( i_error = t216 i_qualified_name = t221 ).
                  t214 = t215.
                  DATA t222 TYPE REF TO zif_lnt_object.
                  t213 = NEW zcl_lnt_ilookup_result( i_type_9913 = t214 i_object_19cd = t222 ).
                  CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
                  t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t224 ).
                  CREATE OBJECT t213->zlnt_json_ownkeys_70e5fd461788.
                  t213->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t225) = |type|.
                  DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
                  t207 = t213.
                ELSE.
                  DATA t227 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t228 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t229 TYPE REF TO zcl_lnt_void_type.
                  DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t232 TYPE string.
                  t232 = t143->value.
                  DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t234->has = abap_true.
                  t234->value = t232.
                  t230 = t234.
                  DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t229 = zcl_lnt_void_type=>get_db65( i_voided = t230 i_qualified_name = t236 ).
                  t228 = t229.
                  DATA t237 TYPE REF TO zif_lnt_object.
                  t227 = NEW zcl_lnt_ilookup_result( i_type_9913 = t228 i_object_19cd = t237 ).
                  CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
                  t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t239 ).
                  CREATE OBJECT t227->zlnt_json_ownkeys_70e5fd461788.
                  t227->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t240) = |type|.
                  DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
                  t207 = t227.
                ENDIF.
                t186 = t207.
              ENDIF.
              t150 = t186.
            ENDIF.
            t137 = t150.
          ENDIF.
          t106 = t137.
        ENDIF.
        t70 = t106.
      ENDIF.
      t57 = t70.
    ENDIF.
    t47 = t57.
    DATA t242 TYPE abap_bool.
    DATA t243 TYPE REF TO zcl_lnt_ilookup_result.
    t243 = t47.
    t242 = xsdbool( t243 IS BOUND ).
    IF t242 = abap_true.
      DATA t245 TYPE REF TO zif_lnt_ddic_references.
      DATA t247 TYPE REF TO zcl_lnt_current_scope.
      t247 = t2->scope.
      DATA t249 TYPE REF TO zif_lnt_ddic_references.
      DATA t250 TYPE REF TO zif_lnt_registry.
      t250 = t247->reg.
      t249 = t250->get_ddic_references( ).
      t245 = t249.
      DATA t252 TYPE REF TO zif_lnt_object.
      DATA t254 TYPE REF TO zcl_lnt_current_scope.
      t254 = t2->scope.
      DATA t256 TYPE REF TO zif_lnt_object.
      t256 = t254->parent_obj.
      t252 = t256.
      DATA t258 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t260 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t261 TYPE REF TO zif_lnt_object.
      DATA t262 TYPE REF TO zif_lnt_object.
      DATA t263 TYPE REF TO zcl_lnt_ilookup_result.
      t263 = t47.
      t262 = t263->zlnt_view_read_sr_2de0200e6505( ).
      t261 = t262.
      DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t268 TYPE string.
      t268 = t2->filename.
      DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t270->has = abap_true.
      t270->value = t268.
      t265 = t270.
      DATA t272 TYPE REF TO zcl_lnt_abstract_token.
      t272 = t3.
      t260 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t261 i_token = t272 i_filename = t265 ).
      CREATE OBJECT t260->zlnt_view_ownkeys_b0e8086400eb.
      t260->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t278 ).
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t279 ).
      ENDIF.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t260->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t280 ).
      ENDIF.
      CREATE OBJECT t260->zlnt_json_ownkeys_70e5fd461788.
      t260->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t281) = |object|.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
      DATA(t283) = |filename|.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
      ENDIF.
      DATA(t285) = |token|.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t260->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t260->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
      ENDIF.
      t258 = t260.
      t245->add_using( i_obj_1ed0 = t252 i_using = t258 ).
      DATA t288 TYPE abap_bool.
      DATA t289 TYPE abap_bool.
      DATA t290 TYPE string.
      DATA t291 TYPE REF TO zcl_lnt_current_scope.
      t291 = t2->scope.
      t290 = t291->get_type( ).
      DATA(t293) = |form|.
      t289 = xsdbool( t290 = t293 ).
      t288 = t289.
      IF t289 = abap_false.
        DATA t294 TYPE abap_bool.
        DATA t295 TYPE string.
        DATA t296 TYPE REF TO zcl_lnt_current_scope.
        t296 = t2->scope.
        t295 = t296->get_type( ).
        DATA(t298) = |function|.
        t294 = xsdbool( t295 = t298 ).
        t288 = t294.
      ENDIF.
      IF t288 = abap_true.
        DATA t299 TYPE REF TO zcl_lnt_current_scope.
        t299 = t2->scope.
        DATA t301 TYPE string.
        DATA t305 TYPE string.
        t305 = t3->str.
        t301 = t305.
        DATA t307 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t308 TYPE REF TO zcl_lnt_abstract_token.
        t308 = t3.
        DATA t310 TYPE string.
        t310 = t2->filename.
        DATA t312 TYPE REF TO zcl_lnt_abstract_type.
        DATA t313 TYPE REF TO zcl_lnt_ilookup_result.
        t313 = t47.
        t312 = t313->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t319.
        t318 = t319.
        DATA(t321) = |tables|.
        t318->load( ).
        APPEND t321 TO t318->items.
        t318->save( ).
        t315 = t318.
        DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t307 = NEW zcl_lnt_typed_identifier( i_token = t308 i_filename = t310 i_type_9913 = t312 i_meta = t315 i_value = t324 ).
        t299->add_named_identifier_to_parent( i_name = t301 i_identifier = t307 ).
      ELSE.
        DATA t326 TYPE REF TO zcl_lnt_current_scope.
        t326 = t2->scope.
        DATA t328 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t331 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t332 TYPE REF TO zcl_lnt_abstract_token.
        t332 = t3.
        DATA t334 TYPE string.
        t334 = t2->filename.
        DATA t336 TYPE REF TO zcl_lnt_abstract_type.
        DATA t337 TYPE REF TO zcl_lnt_ilookup_result.
        t337 = t47.
        t336 = t337->zlnt_view_read_sr_9be58e2d4893( ).
        DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t343.
        t342 = t343.
        DATA(t345) = |tables|.
        t342->load( ).
        APPEND t345 TO t342->items.
        t342->save( ).
        t339 = t342.
        DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t331 = NEW zcl_lnt_typed_identifier( i_token = t332 i_filename = t334 i_type_9913 = t336 i_meta = t339 i_value = t348 ).
        t328 = t331.
        DATA(t350) = VALUE abap_bool( ).
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t350 = xsdbool( t328 IS INITIAL ).
        IF t350 = abap_true.
        ELSE.
          DATA(t358) = VALUE string( ).
          DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
          t359 = t328.
          DATA(t362) = VALUE string( ).
          DATA t363 TYPE string.
          DATA t366 TYPE REF TO zcl_lnt_abstract_token.
          t366 = t359->token.
          DATA t368 TYPE string.
          t368 = t366->str.
          t363 = t368.
          DATA(t370) = VALUE abap_bool( ).
          DATA(t371) = VALUE string( ).
          DATA(t372) = t363.
          DATA(t373) = 0.
          DATA(t374) = 1.
          DATA(t375) = strlen( t372 ).
          IF t373 < 0.
            t373 = t373 + t375.
            IF t373 < 0.
              t373 = 0.
            ENDIF.
          ENDIF.
          IF t373 > t375 OR t374 <= 0.
            CLEAR t371.
          ELSE.
            IF t374 > t375 - t373.
              t374 = t375 - t373.
            ENDIF.
            t371 = t372+t373(t374).
          ENDIF.
          DATA(t376) = |!|.
          t370 = xsdbool( t371 = t376 ).
          IF t370 = abap_true.
            DATA(t377) = VALUE string( ).
            DATA t378 TYPE string.
            t378 = t363.
            DATA(t380) = VALUE string( ).
            DATA(t382) = 1.
            DATA t383 TYPE i.
            t383 = strlen( t378 ).
            DATA(t386) = strlen( t378 ).
            IF t382 < 0.
              t382 = t382 + t386.
              IF t382 < 0.
                t382 = 0.
              ENDIF.
            ENDIF.
            IF t382 > t386 OR t383 <= 0.
              CLEAR t380.
            ELSE.
              IF t383 > t386 - t382.
                t383 = t386 - t382.
              ENDIF.
              t380 = t378+t382(t383).
            ENDIF.
            t377 = t380.
            t363 = t377.
          ENDIF.
          t362 = t363.
          t358 = t362.
          DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
          t388 = t328.
          t326->add_named_identifier( i_name = t358 i_identifier = t388 ).
        ENDIF.
      ENDIF.
      RETURN.
    ENDIF.
    DATA t391 TYPE REF TO zcl_lnt_current_scope.
    t391 = t2->scope.
    DATA t393 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t396 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t397 TYPE REF TO zcl_lnt_abstract_token.
    t397 = t3.
    DATA t399 TYPE string.
    t399 = t2->filename.
    DATA t401 TYPE REF TO zcl_lnt_unknown_type.
    DATA(t402) = |Tables, fallback|.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t401 = NEW zcl_lnt_unknown_type( i_error = t402 i_qualified_name = t403 ).
    DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t396 = NEW zcl_lnt_typed_identifier( i_token = t397 i_filename = t399 i_type_9913 = t401 i_meta = t404 i_value = t405 ).
    t393 = t396.
    DATA(t407) = VALUE abap_bool( ).
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t407 = xsdbool( t393 IS INITIAL ).
    IF t407 = abap_true.
    ELSE.
      DATA(t415) = VALUE string( ).
      DATA t416 TYPE REF TO zcl_lnt_fi_identifier.
      t416 = t393.
      DATA(t419) = VALUE string( ).
      DATA t420 TYPE string.
      DATA t423 TYPE REF TO zcl_lnt_abstract_token.
      t423 = t416->token.
      DATA t425 TYPE string.
      t425 = t423->str.
      t420 = t425.
      DATA(t427) = VALUE abap_bool( ).
      DATA(t428) = VALUE string( ).
      DATA(t429) = t420.
      DATA(t430) = 0.
      DATA(t431) = 1.
      DATA(t432) = strlen( t429 ).
      IF t430 < 0.
        t430 = t430 + t432.
        IF t430 < 0.
          t430 = 0.
        ENDIF.
      ENDIF.
      IF t430 > t432 OR t431 <= 0.
        CLEAR t428.
      ELSE.
        IF t431 > t432 - t430.
          t431 = t432 - t430.
        ENDIF.
        t428 = t429+t430(t431).
      ENDIF.
      DATA(t433) = |!|.
      t427 = xsdbool( t428 = t433 ).
      IF t427 = abap_true.
        DATA(t434) = VALUE string( ).
        DATA t435 TYPE string.
        t435 = t420.
        DATA(t437) = VALUE string( ).
        DATA(t439) = 1.
        DATA t440 TYPE i.
        t440 = strlen( t435 ).
        DATA(t443) = strlen( t435 ).
        IF t439 < 0.
          t439 = t439 + t443.
          IF t439 < 0.
            t439 = 0.
          ENDIF.
        ENDIF.
        IF t439 > t443 OR t440 <= 0.
          CLEAR t437.
        ELSE.
          IF t440 > t443 - t439.
            t440 = t443 - t439.
          ENDIF.
          t437 = t435+t439(t440).
        ENDIF.
        t434 = t437.
        t420 = t434.
      ENDIF.
      t419 = t420.
      t415 = t419.
      DATA t445 TYPE REF TO zcl_lnt_typed_identifier.
      t445 = t393.
      t391->add_named_identifier( i_name = t415 i_identifier = t445 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d975_b3b62c0f7275.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
