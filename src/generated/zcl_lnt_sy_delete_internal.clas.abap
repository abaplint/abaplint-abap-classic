* TS: src/abap/5_syntax/statements/delete_internal.ts:13:1 DeleteInternal
CLASS zcl_lnt_sy_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_delete_internal IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t1->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t12 = t6.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t2 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zcl_lnt_abstract_type.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t24 = t1->find_direct_expression( i_type_9913 = t26 ).
    t23 = t24.
    DATA t27 TYPE abap_bool.
    t27 = xsdbool( t23 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      t31 = t23.
      t30 = t31->concat_tokens( ).
      t29 = t30.
      DATA t33 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      DATA t38 TYPE REF TO zcl_lnt_current_scope.
      t38 = t2->scope.
      t37 = t38.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t29.
      t40 = t44.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = t40.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t52) = VALUE abap_bool( ).
      IF t48 IS INITIAL.
        t52 = abap_true.
      ELSEIF t48->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t47 = t52.
      IF t47 = abap_true.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t59 = t37->current.
        t58 = t59.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t62) = xsdbool( t58 IS INITIAL ).
        IF t62 = abap_true.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t66 = t58.
          DATA t68 TYPE string.
          t68 = t40->value.
          t65 = t66->find_variable( i_name = t68 ).
          t61 = t65.
        ENDIF.
        t56 = t61.
        DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t71 TYPE abap_bool.
        t71 = xsdbool( t56 IS BOUND ).
        IF t71 = abap_true.
          t70 = t56.
        ELSE.
          DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t82 TYPE string.
          t82 = t40->value.
          DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t84->has = abap_true.
          t84->value = t82.
          t80 = t84.
          t78 = t37->find_type_pool_constant( i_name = t80 ).
          t70 = t78.
        ENDIF.
        t46 = t70.
      ENDIF.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t88 = xsdbool( t46 IS INITIAL ).
      t87 = t88.
      IF t88 = abap_true.
        DATA t95 TYPE abap_bool.
        DATA t96 TYPE i.
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t99 TYPE REF TO zcl_lnt_abstract_node.
        t99 = t1.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t101 = t99->children.
        t98 = t101.
        t97 ?= t98.
        t97->load( ).
        t96 = lines( t97->items ).
        DATA(t103) = 5.
        t95 = xsdbool( t96 = t103 ).
        t87 = t95.
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t110 TYPE REF TO zcl_lnt_abstract_node.
        t110 = t1.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t112 = t110->children.
        t109 = t112.
        t108 ?= t109.
        DATA t114 TYPE REF TO object.
        t108->load( ).
        READ TABLE t108->items INDEX 3 INTO t114.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t114 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t115 ?= t114.
          DATA t116 TYPE REF TO object.
          t116 = t115->as_ref( ).
          t107 ?= t116.
        ELSE.
          t107 ?= t114.
        ENDIF.
        t106 = t107->concat_tokens( ).
        DATA(t117) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA(t118) = |FROM|.
        t104 = xsdbool( t105 = t118 ).
        t86 = t104.
      ENDIF.
      IF t86 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t121 TYPE REF TO zcl_lnt_ddic.
        DATA t124 TYPE REF TO zcl_lnt_current_scope.
        t124 = t2->scope.
        DATA t126 TYPE REF TO zcl_lnt_ddic.
        DATA t127 TYPE REF TO zif_lnt_registry.
        t127 = t124->reg.
        t126 = NEW zcl_lnt_ddic( i_reg_f149 = t127 ).
        t121 = t126.
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t130) = xsdbool( t121 IS INITIAL ).
        IF t130 = abap_true.
        ELSE.
          DATA t134 TYPE REF TO zcl_lnt_ddic.
          t134 = t121.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = t29.
          t136 = t140.
          DATA t142 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t143) = VALUE abap_bool( ).
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t144 = t136.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t148) = VALUE abap_bool( ).
          IF t144 IS INITIAL.
            t148 = abap_true.
          ELSEIF t144->has = abap_false.
            t148 = abap_true.
          ENDIF.
          t143 = t148.
          IF t143 = abap_true.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t151 TYPE REF TO zcl_lnt_abstract_type.
            DATA t152 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t153) = |undefined, lookupTableOrView|.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t152 = NEW zcl_lnt_unknown_type( i_error = t153 i_qualified_name = t154 ).
            t151 = t152.
            DATA t155 TYPE REF TO zif_lnt_object.
            t150 = NEW zcl_lnt_ilookup_result( i_type_9913 = t151 i_object_19cd = t155 ).
            CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
            t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t157 ).
            CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
            t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t158) = |type|.
            DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
            t142 = t150.
          ELSE.
            DATA t161 TYPE REF TO zcl_lnt_table.
            DATA t162 TYPE REF TO zcl_lnt_table.
            DATA t163 TYPE REF TO zif_lnt_object.
            DATA t164 TYPE REF TO zif_lnt_registry.
            t164 = t134->reg.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t168) = |TABL|.
            DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t169->has = abap_true.
            t169->value = t168.
            t166 = t169.
            DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t173 TYPE string.
            t173 = t136->value.
            DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t175->has = abap_true.
            t175->value = t173.
            t171 = t175.
            t163 = t164->get_object( i_type_9913 = t166 i_name = t171 ).
            DATA t177 TYPE REF TO object.
            t177 = t163.
            t162 ?= t177.
            t161 = t162.
            DATA t178 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t179 TYPE abap_bool.
            t179 = xsdbool( t161 IS BOUND ).
            IF t179 = abap_true.
              DATA t181 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t182 TYPE REF TO zcl_lnt_abstract_type.
              DATA t183 TYPE REF TO zcl_lnt_abstract_type.
              DATA t184 TYPE REF TO zcl_lnt_table.
              t184 = t161.
              DATA t186 TYPE REF TO zif_lnt_registry.
              t186 = t134->reg.
              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t183 = t184->parse_type( i_reg_f149 = t186 i_data_element = t188 i_description = t189 ).
              t182 = t183.
              DATA t190 TYPE REF TO zif_lnt_object.
              t190 = t161.
              t181 = NEW zcl_lnt_ilookup_result( i_type_9913 = t182 i_object_19cd = t190 ).
              CREATE OBJECT t181->zlnt_view_ownkeys_b0e8086400eb.
              t181->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t193 ).
              DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t181->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t181->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t194 ).
              ENDIF.
              CREATE OBJECT t181->zlnt_json_ownkeys_70e5fd461788.
              t181->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t195) = |type|.
              DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
              DATA(t197) = |object|.
              DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
              ENDIF.
              t178 = t181.
            ELSE.
              DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t201 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t205 TYPE string.
              t205 = t136->value.
              DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t207->has = abap_true.
              t207->value = t205.
              t203 = t207.
              t201 = t134->lookup_ddls( i_name = t203 ).
              t200 = t201.
              DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t210 TYPE abap_bool.
              t210 = xsdbool( t200 IS BOUND ).
              IF t210 = abap_true.
                t209 = t200.
              ELSE.
                DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t218 TYPE string.
                t218 = t136->value.
                DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t220->has = abap_true.
                t220->value = t218.
                t215 = t220.
                DATA t222 TYPE REF TO zcl_lnt_ilookup_result.
                DATA(t223) = VALUE abap_bool( ).
                DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t224 = t215.
                DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t228) = VALUE abap_bool( ).
                IF t224 IS INITIAL.
                  t228 = abap_true.
                ELSEIF t224->has = abap_false.
                  t228 = abap_true.
                ENDIF.
                t223 = t228.
                IF t223 = abap_true.
                  DATA t230 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t231 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t232 TYPE REF TO zcl_lnt_unknown_type.
                  DATA(t233) = |undefined, lookupView|.
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t232 = NEW zcl_lnt_unknown_type( i_error = t233 i_qualified_name = t234 ).
                  t231 = t232.
                  DATA t235 TYPE REF TO zif_lnt_object.
                  t230 = NEW zcl_lnt_ilookup_result( i_type_9913 = t231 i_object_19cd = t235 ).
                  CREATE OBJECT t230->zlnt_view_ownkeys_b0e8086400eb.
                  t230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t237 ).
                  CREATE OBJECT t230->zlnt_json_ownkeys_70e5fd461788.
                  t230->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t238) = |type|.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t230->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
                  t222 = t230.
                ELSE.
                  DATA t241 TYPE REF TO zcl_lnt_table.
                  DATA t242 TYPE REF TO zcl_lnt_table.
                  DATA t243 TYPE REF TO zif_lnt_object.
                  DATA t244 TYPE REF TO zif_lnt_registry.
                  t244 = t134->reg.
                  DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t248) = |VIEW|.
                  DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t249->has = abap_true.
                  t249->value = t248.
                  t246 = t249.
                  DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t253 TYPE string.
                  t253 = t215->value.
                  DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t255->has = abap_true.
                  t255->value = t253.
                  t251 = t255.
                  t243 = t244->get_object( i_type_9913 = t246 i_name = t251 ).
                  DATA t257 TYPE REF TO object.
                  t257 = t243.
                  t242 ?= t257.
                  t241 = t242.
                  DATA t258 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t259 TYPE abap_bool.
                  t259 = xsdbool( t241 IS BOUND ).
                  IF t259 = abap_true.
                    DATA t261 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t262 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t263 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t264 TYPE REF TO zcl_lnt_table.
                    t264 = t241.
                    DATA t266 TYPE REF TO zif_lnt_registry.
                    t266 = t134->reg.
                    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t263 = t264->parse_type( i_reg_f149 = t266 i_data_element = t268 i_description = t269 ).
                    t262 = t263.
                    DATA t270 TYPE REF TO zif_lnt_object.
                    t270 = t241.
                    t261 = NEW zcl_lnt_ilookup_result( i_type_9913 = t262 i_object_19cd = t270 ).
                    CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
                    t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t273 ).
                    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t274 ).
                    ENDIF.
                    CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
                    t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t275) = |type|.
                    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t275 p1 = t276 ).
                    DATA(t277) = |object|.
                    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t277 p1 = t278 ).
                    ENDIF.
                    t258 = t261.
                  ELSE.
                    DATA t279 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t280 TYPE abap_bool.
                    DATA t281 TYPE REF TO zif_lnt_registry.
                    t281 = t134->reg.
                    DATA t283 TYPE string.
                    t283 = t215->value.
                    t280 = t281->in_error_namespace( i_name = t283 ).
                    IF t280 = abap_true.
                      DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t286 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t287 TYPE REF TO zcl_lnt_unknown_type.
                      DATA t288 TYPE string.
                      DATA t289 TYPE string.
                      t289 = t215->value.
                      DATA(t291) = | not found, lookupView|.
                      DATA(t292) = strlen( t289 ).
                      t288 = |{ t289 }{ t291 }|.
                      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t287 = NEW zcl_lnt_unknown_type( i_error = t288 i_qualified_name = t293 ).
                      t286 = t287.
                      DATA t294 TYPE REF TO zif_lnt_object.
                      t285 = NEW zcl_lnt_ilookup_result( i_type_9913 = t286 i_object_19cd = t294 ).
                      CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
                      t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t296 ).
                      CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
                      t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t297) = |type|.
                      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
                      t279 = t285.
                    ELSE.
                      DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t300 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t301 TYPE REF TO zcl_lnt_void_type.
                      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t304 TYPE string.
                      t304 = t215->value.
                      DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t306->has = abap_true.
                      t306->value = t304.
                      t302 = t306.
                      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t301 = zcl_lnt_void_type=>get_db65( i_voided = t302 i_qualified_name = t308 ).
                      t300 = t301.
                      DATA t309 TYPE REF TO zif_lnt_object.
                      t299 = NEW zcl_lnt_ilookup_result( i_type_9913 = t300 i_object_19cd = t309 ).
                      CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
                      t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t311 ).
                      CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
                      t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t312) = |type|.
                      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
                      t279 = t299.
                    ENDIF.
                    t258 = t279.
                  ENDIF.
                  t222 = t258.
                ENDIF.
                t209 = t222.
              ENDIF.
              t178 = t209.
            ENDIF.
            t142 = t178.
          ENDIF.
          t129 = t142.
        ENDIF.
        t119 = t129.
        DATA(t314) = VALUE abap_bool( ).
        DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
        t317 = t119.
        DATA t320 TYPE REF TO zif_lnt_object.
        DATA(t321) = xsdbool( t317 IS INITIAL ).
        IF t321 = abap_true.
        ELSE.
          DATA t324 TYPE REF TO zif_lnt_object.
          t324 = t317->zlnt_view_read_sr_2de0200e6505( ).
          t320 = t324.
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = xsdbool( t320 IS INITIAL ).
        t328 = xsdbool( t329 = abap_false ).
        t314 = t328.
        IF t314 = abap_true.
          t33 = t119.
          DATA t336 TYPE REF TO zif_lnt_ddic_references.
          DATA t338 TYPE REF TO zcl_lnt_current_scope.
          t338 = t2->scope.
          DATA t340 TYPE REF TO zif_lnt_ddic_references.
          DATA t341 TYPE REF TO zif_lnt_registry.
          t341 = t338->reg.
          t340 = t341->get_ddic_references( ).
          t336 = t340.
          DATA t343 TYPE REF TO zif_lnt_object.
          DATA t345 TYPE REF TO zcl_lnt_current_scope.
          t345 = t2->scope.
          DATA t347 TYPE REF TO zif_lnt_object.
          t347 = t345->parent_obj.
          t343 = t347.
          DATA t349 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t351 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t352 TYPE REF TO zif_lnt_object.
          DATA t353 TYPE REF TO zif_lnt_object.
          DATA t354 TYPE REF TO zcl_lnt_ilookup_result.
          t354 = t33.
          t353 = t354->zlnt_view_read_sr_2de0200e6505( ).
          t352 = t353.
          DATA t356 TYPE REF TO zcl_lnt_abstract_token.
          DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t351 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t352 i_token = t356 i_filename = t358 ).
          CREATE OBJECT t351->zlnt_view_ownkeys_b0e8086400eb.
          t351->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t360 ).
          CREATE OBJECT t351->zlnt_json_ownkeys_70e5fd461788.
          t351->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t361) = |object|.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t351->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
          t349 = t351.
          t336->add_using( i_obj_1ed0 = t343 i_using = t349 ).
        ENDIF.
      ENDIF.
      DATA(t364) = VALUE abap_bool( ).
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t364 = xsdbool( t33 IS INITIAL ).
      IF t364 = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t375 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA t376 TYPE REF TO zif_lnt_configuration.
        DATA t377 TYPE REF TO zif_lnt_registry.
        DATA t379 TYPE REF TO zcl_lnt_current_scope.
        t379 = t2->scope.
        DATA t381 TYPE REF TO zif_lnt_registry.
        t381 = t379->reg.
        t377 = t381.
        t376 = t377->get_config( ).
        t375 = t376->get_syntax_setttings( ).
        t374 = t375->zlnt_view_read_sr_340722ed73f5( ).
        t373 = t374.
        DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t384 TYPE abap_bool.
        t384 = xsdbool( t373 IS BOUND ).
        IF t384 = abap_true.
          t383 = t373.
        ELSE.
          DATA t388 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t388.
          t383 = t388.
        ENDIF.
        t371 = t383.
        DATA(t389) = VALUE abap_bool( ).
        DATA t390 TYPE abap_bool.
        t390 = abap_false.
        DATA(t393) = VALUE string( ).
        t371->dense( ).
        DATA(t394) = VALUE i( ).
        DO.
          t371->load( ).
          IF t394 >= lines( t371->items ).
            EXIT.
          ENDIF.
          CLEAR t393.
          READ TABLE t371->items INDEX t394 + 1 INTO t393.
          IF t371->has( t394 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t394 = t394 + 1.
          DATA(t395) = VALUE abap_bool( ).
          DATA t396 TYPE string.
          DATA(t398) = strlen( t393 ).
          t396 = t393.
          IF t396 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t396 TO UPPER CASE.
          ELSE.
            t396 = zlnt_runtime_uppe_91169605024d=>full( t396 ).
          ENDIF.
          DATA t399 TYPE string.
          DATA(t401) = strlen( t29 ).
          t399 = t29.
          IF t399 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t399 TO UPPER CASE.
          ELSE.
            t399 = zlnt_runtime_uppe_91169605024d=>full( t399 ).
          ENDIF.
          t395 = xsdbool( t396 = t399 ).
          IF t395 = abap_true.
            t390 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t389 = t390.
        IF t389 = abap_true.
          DATA t404 TYPE REF TO zcl_lnt_void_type.
          DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t408->has = abap_true.
          t408->value = t29.
          t405 = t408.
          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t404 = zcl_lnt_void_type=>get_db65( i_voided = t405 i_qualified_name = t410 ).
          t21 = t404.
        ELSE.
          DATA t411 TYPE REF TO zcl_lnt_abstract_type.
          DATA t412 TYPE REF TO zcl_lnt_expression_node.
          t412 = t23.
          t411 = zcl_lnt_sy_target=>run_syntax( i_node = t412 i_input_967e = t2 ).
          t21 = t411.
        ENDIF.
        DATA(t415) = VALUE abap_bool( ).
        DATA(t416) = VALUE abap_bool( ).
        DATA(t417) = VALUE abap_bool( ).
        DATA(t418) = VALUE abap_bool( ).
        DATA(t419) = VALUE abap_bool( ).
        DATA t421 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t423) = |TABLE|.
        t421 = t1->find_direct_token_by_text( i_text = t423 ).
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t419 = xsdbool( t421 IS INITIAL ).
        t418 = t419.
        IF t419 = abap_true.
          DATA(t428) = VALUE abap_bool( ).
          DATA t430 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t432) = |ADJACENT|.
          t430 = t1->find_direct_token_by_text( i_text = t432 ).
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t428 = xsdbool( t430 IS INITIAL ).
          t418 = t428.
        ENDIF.
        t417 = t418.
        IF t418 = abap_true.
          DATA t437 TYPE abap_bool.
          DATA t438 TYPE abap_bool.
          DATA t439 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t441) = |FROM|.
          t439 = t1->find_direct_token_by_text( i_text = t441 ).
          t438 = xsdbool( t439 IS BOUND ).
          t437 = t438.
          IF t438 = abap_false.
            DATA t442 TYPE abap_bool.
            DATA t443 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t445) = |INDEX|.
            t443 = t1->find_direct_token_by_text( i_text = t445 ).
            t442 = xsdbool( t443 IS BOUND ).
            t437 = t442.
          ENDIF.
          t417 = t437.
        ENDIF.
        t416 = t417.
        IF t417 = abap_true.
          DATA t446 TYPE abap_bool.
          DATA(t447) = t21.
          t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t416 = t446.
        ENDIF.
        t415 = t416.
        IF t416 = abap_true.
          DATA(t448) = VALUE abap_bool( ).
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
          t451 ?= t21.
          DATA t454 TYPE REF TO zcl_lnt_itable_key.
          DATA t455 TYPE REF TO zcl_lnt_itable_key.
          DATA t456 TYPE REF TO zcl_lnt_itable_options.
          t456 = t451->options.
          t455 = t456->zlnt_view_read_sr_48b89cc62ab9( ).
          t454 = t455.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t459) = xsdbool( t454 IS INITIAL ).
          IF t459 = abap_true.
          ELSE.
            DATA t462 TYPE string.
            DATA t463 TYPE REF TO zcl_lnt_itable_key.
            t463 = t454.
            t462 = t463->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t465->has = abap_true.
            t465->value = t462.
            t458 = t465.
          ENDIF.
          t449 = t458.
          DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t468) = |HASHED|.
          DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t469->has = abap_true.
          t469->value = t468.
          t466 = t469.
          DATA(t471) = VALUE abap_bool( ).
          DATA(t472) = VALUE abap_bool( ).
          IF t449 IS BOUND.
            t471 = t449->has.
          ENDIF.
          IF t466 IS BOUND.
            t472 = t466->has.
          ENDIF.
          IF t471 = t472.
            IF t471 = abap_false.
              t448 = abap_true.
            ELSEIF t449->value = t466->value.
              t448 = abap_true.
            ENDIF.
          ENDIF.
          t415 = t448.
        ENDIF.
        IF t415 = abap_true.
          DATA(t474) = |Implicit or explicit index operation on hashed table is not |.
          t474 = t474 && |possible|.
          DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t475 = t2->issues.
          DATA t477 TYPE REF TO zcl_lnt_issue.
          DATA t479 TYPE REF TO zcl_lnt_abstract_token.
          t479 = t1->get_first_token( ).
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t477 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t479 i_message_26cb = t474 i_fix = t482 ).
          t475->load( ).
          APPEND t477 TO t475->items.
          t475->save( ).
          RETURN.
        ENDIF.
        DATA t483 TYPE abap_bool.
        DATA(t484) = t21.
        t483 = xsdbool( t484 IS BOUND AND t484 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t483 = abap_true.
          DATA t489 TYPE REF TO zcl_lnt_ty_table_type.
          t489 ?= t21.
          DATA t491 TYPE REF TO zcl_lnt_abstract_type.
          t491 = t489->row_type.
          t21 = t491.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t496) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
    t494 = t1->find_direct_expressions( i_type_9913 = t496 ).
    DATA t497 TYPE REF TO zcl_lnt_expression_node.
    DATA t498 TYPE REF TO object.
    DATA(t499) = VALUE i( ).
    DO.
      t494->load( ).
      IF t499 >= lines( t494->items ).
        EXIT.
      ENDIF.
      CLEAR t498.
      READ TABLE t494->items INDEX t499 + 1 INTO t498.
      t499 = t499 + 1.
      DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t500.
      CLEAR t497.
      IF t498 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t500 ?= t498.
        DATA t501 TYPE REF TO object.
        t501 = t500->as_ref( ).
        t497 ?= t501.
      ELSE.
        t497 ?= t498.
      ENDIF.
      DATA t505 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t505.
      zcl_lnt_sy_component_compare=>run_syntax( i_node = t497 i_input_967e = t2 i_left_type = t21 i_right_type = t505 ).
    ENDDO.
    DATA t506 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t508) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t506 = t1->find_direct_expressions( i_type_9913 = t508 ).
    DATA t509 TYPE REF TO zcl_lnt_expression_node.
    DATA t510 TYPE REF TO object.
    DATA(t511) = VALUE i( ).
    DO.
      t506->load( ).
      IF t511 >= lines( t506->items ).
        EXIT.
      ENDIF.
      CLEAR t510.
      READ TABLE t506->items INDEX t511 + 1 INTO t510.
      t511 = t511 + 1.
      DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t512.
      CLEAR t509.
      IF t510 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t512 ?= t510.
        DATA t513 TYPE REF TO object.
        t513 = t512->as_ref( ).
        t509 ?= t513.
      ELSE.
        t509 ?= t510.
      ENDIF.
      DATA t517 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t517.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t509 i_input_967e = t2 i_left_type = t21 i_right_type = t517 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d889_fed309f1b538.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
