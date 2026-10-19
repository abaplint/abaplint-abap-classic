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
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t23 = t1->find_direct_expression( i_type_9913 = t26 ).
    IF xsdbool( t23 IS BOUND ) = abap_true.
      DATA t29 TYPE string.
      t29 = t23->concat_tokens( ).
      DATA t33 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      t37 = t2->scope.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t44->has = abap_true.
      t44->value = t29.
      t40 = t44.
      DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = t40.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t52) = VALUE abap_bool( ).
      IF t48 IS INITIAL.
        t52 = abap_true.
      ELSEIF t48->has = abap_false.
        t52 = abap_true.
      ENDIF.
      IF t52 = abap_true.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t58 = t37->current.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t58 IS INITIAL ) = abap_true.
        ELSE.
          DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t66 = t58.
          DATA t68 TYPE string.
          t68 = t40->value.
          t61 = t66->find_variable( i_name = t68 ).
        ENDIF.
        t56 = t61.
        DATA t70 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t56 IS BOUND ) = abap_true.
          t70 = t56.
        ELSE.
          DATA t82 TYPE string.
          t82 = t40->value.
          DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t84->has = abap_true.
          t84->value = t82.
          t70 = t37->find_type_pool_constant( i_name = t84 ).
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
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t99 TYPE REF TO zcl_lnt_abstract_node.
        t99 = t1.
        t98 = t99->children.
        t97 ?= t98.
        t97->load( ).
        t87 = xsdbool( lines( t97->items ) = 5 ).
      ENDIF.
      t86 = t87.
      IF t87 = abap_true.
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t110 TYPE REF TO zcl_lnt_abstract_node.
        t110 = t1.
        t109 = t110->children.
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
        t86 = xsdbool( t105 = |FROM| ).
      ENDIF.
      IF t86 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t121 TYPE REF TO zcl_lnt_ddic.
        DATA t127 TYPE REF TO zif_lnt_registry.
        t127 = t2->scope->reg.
        t121 = NEW zcl_lnt_ddic( i_reg_f149 = t127 ).
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        IF xsdbool( t121 IS INITIAL ) = abap_true.
        ELSE.
          DATA t134 TYPE REF TO zcl_lnt_ddic.
          t134 = t121.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = t29.
          t136 = t140.
          DATA t142 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t144 = t136.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t148) = VALUE abap_bool( ).
          IF t144 IS INITIAL.
            t148 = abap_true.
          ELSEIF t144->has = abap_false.
            t148 = abap_true.
          ENDIF.
          IF t148 = abap_true.
            DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t151 TYPE REF TO zcl_lnt_abstract_type.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t151 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t154 ).
            DATA t155 TYPE REF TO zif_lnt_object.
            t150 = NEW zcl_lnt_ilookup_result( i_type_9913 = t151 i_object_19cd = t155 ).
            CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
            t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t157 ).
            CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
            t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t159 ).
            t142 = t150.
          ELSE.
            DATA t161 TYPE REF TO zcl_lnt_table.
            DATA t162 TYPE REF TO zcl_lnt_table.
            DATA t164 TYPE REF TO zif_lnt_registry.
            t164 = t134->reg.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t169->has = abap_true.
            t169->value = |TABL|.
            t166 = t169.
            DATA t173 TYPE string.
            t173 = t136->value.
            DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t175->has = abap_true.
            t175->value = t173.
            DATA t177 TYPE REF TO object.
            t177 = t164->get_object( i_type_9913 = t166 i_name = t175 ).
            t162 ?= t177.
            t161 = t162.
            DATA t178 TYPE REF TO zcl_lnt_ilookup_result.
            IF xsdbool( t161 IS BOUND ) = abap_true.
              DATA t181 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t182 TYPE REF TO zcl_lnt_abstract_type.
              DATA t184 TYPE REF TO zcl_lnt_table.
              t184 = t161.
              DATA t186 TYPE REF TO zif_lnt_registry.
              t186 = t134->reg.
              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t182 = t184->parse_type( i_reg_f149 = t186 i_data_element = t188 i_description = t189 ).
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
              DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t196 ).
              DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t181->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t181->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t198 ).
              ENDIF.
              t178 = t181.
            ELSE.
              DATA t200 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t205 TYPE string.
              t205 = t136->value.
              DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t207->has = abap_true.
              t207->value = t205.
              t200 = t134->lookup_ddls( i_name = t207 ).
              DATA t209 TYPE REF TO zcl_lnt_ilookup_result.
              IF xsdbool( t200 IS BOUND ) = abap_true.
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
                DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t224 = t215.
                DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t228) = VALUE abap_bool( ).
                IF t224 IS INITIAL.
                  t228 = abap_true.
                ELSEIF t224->has = abap_false.
                  t228 = abap_true.
                ENDIF.
                IF t228 = abap_true.
                  DATA t230 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t231 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t231 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t234 ).
                  DATA t235 TYPE REF TO zif_lnt_object.
                  t230 = NEW zcl_lnt_ilookup_result( i_type_9913 = t231 i_object_19cd = t235 ).
                  CREATE OBJECT t230->zlnt_view_ownkeys_b0e8086400eb.
                  t230->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t230->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t237 ).
                  CREATE OBJECT t230->zlnt_json_ownkeys_70e5fd461788.
                  t230->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t230->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t239 ).
                  t222 = t230.
                ELSE.
                  DATA t241 TYPE REF TO zcl_lnt_table.
                  DATA t242 TYPE REF TO zcl_lnt_table.
                  DATA t244 TYPE REF TO zif_lnt_registry.
                  t244 = t134->reg.
                  DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t249->has = abap_true.
                  t249->value = |VIEW|.
                  t246 = t249.
                  DATA t253 TYPE string.
                  t253 = t215->value.
                  DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t255->has = abap_true.
                  t255->value = t253.
                  DATA t257 TYPE REF TO object.
                  t257 = t244->get_object( i_type_9913 = t246 i_name = t255 ).
                  t242 ?= t257.
                  t241 = t242.
                  DATA t258 TYPE REF TO zcl_lnt_ilookup_result.
                  IF xsdbool( t241 IS BOUND ) = abap_true.
                    DATA t261 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t262 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t264 TYPE REF TO zcl_lnt_table.
                    t264 = t241.
                    DATA t266 TYPE REF TO zif_lnt_registry.
                    t266 = t134->reg.
                    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t262 = t264->parse_type( i_reg_f149 = t266 i_data_element = t268 i_description = t269 ).
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
                    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t276 ).
                    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t278 ).
                    ENDIF.
                    t258 = t261.
                  ELSE.
                    DATA t279 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t281 TYPE REF TO zif_lnt_registry.
                    t281 = t134->reg.
                    DATA t283 TYPE string.
                    t283 = t215->value.
                    IF t281->in_error_namespace( i_name = t283 ) = abap_true.
                      DATA t285 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t286 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t289 TYPE string.
                      t289 = t215->value.
                      DATA(t292) = strlen( t289 ).
                      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t286 = NEW zcl_lnt_unknown_type( i_error = |{ t289 }{ | not found, lookupView| }| i_qualified_name = t293 ).
                      DATA t294 TYPE REF TO zif_lnt_object.
                      t285 = NEW zcl_lnt_ilookup_result( i_type_9913 = t286 i_object_19cd = t294 ).
                      CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
                      t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t296 ).
                      CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
                      t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t298 ).
                      t279 = t285.
                    ELSE.
                      DATA t299 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t300 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t304 TYPE string.
                      t304 = t215->value.
                      DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t306->has = abap_true.
                      t306->value = t304.
                      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t300 = zcl_lnt_void_type=>get_db65( i_voided = t306 i_qualified_name = t308 ).
                      DATA t309 TYPE REF TO zif_lnt_object.
                      t299 = NEW zcl_lnt_ilookup_result( i_type_9913 = t300 i_object_19cd = t309 ).
                      CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
                      t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t311 ).
                      CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
                      t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t313 ).
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
        DATA t317 TYPE REF TO zcl_lnt_ilookup_result.
        t317 = t119.
        DATA t320 TYPE REF TO zif_lnt_object.
        IF xsdbool( t317 IS INITIAL ) = abap_true.
        ELSE.
          t320 = t317->zlnt_view_read_sr_2de0200e6505( ).
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( xsdbool( t320 IS INITIAL ) = abap_false ) = abap_true.
          t33 = t119.
          DATA t336 TYPE REF TO zif_lnt_ddic_references.
          t336 = t2->scope->reg->get_ddic_references( ).
          DATA t343 TYPE REF TO zif_lnt_object.
          t343 = t2->scope->parent_obj.
          DATA t351 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t356 TYPE REF TO zcl_lnt_abstract_token.
          DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t351 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t33->zlnt_view_read_sr_2de0200e6505( ) i_token = t356 i_filename = t358 ).
          CREATE OBJECT t351->zlnt_view_ownkeys_b0e8086400eb.
          t351->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t351->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t360 ).
          CREATE OBJECT t351->zlnt_json_ownkeys_70e5fd461788.
          t351->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t351->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t362 ).
          t336->add_using( i_obj_1ed0 = t343 i_using = t351 ).
        ENDIF.
      ENDIF.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t373 = t2->scope->reg->get_config( )->get_syntax_setttings( )->zlnt_view_read_sr_340722ed73f5( ).
        DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        IF xsdbool( t373 IS BOUND ) = abap_true.
          t383 = t373.
        ELSE.
          CREATE OBJECT t383.
        ENDIF.
        t371 = t383.
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
          IF xsdbool( t396 = t399 ) = abap_true.
            t390 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        IF t390 = abap_true.
          DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t408->has = abap_true.
          t408->value = t29.
          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t21 = zcl_lnt_void_type=>get_db65( i_voided = t408 i_qualified_name = t410 ).
        ELSE.
          t21 = zcl_lnt_sy_target=>run_syntax( i_node = t23 i_input_967e = t2 ).
        ENDIF.
        DATA(t415) = VALUE abap_bool( ).
        DATA(t416) = VALUE abap_bool( ).
        DATA(t417) = VALUE abap_bool( ).
        DATA(t418) = VALUE abap_bool( ).
        DATA(t419) = VALUE abap_bool( ).
        DATA t421 TYPE REF TO zcl_lnt_abstract_token.
        t421 = t1->find_direct_token_by_text( i_text = |TABLE| ).
        DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t419 = xsdbool( t421 IS INITIAL ).
        t418 = t419.
        IF t419 = abap_true.
          DATA t430 TYPE REF TO zcl_lnt_abstract_token.
          t430 = t1->find_direct_token_by_text( i_text = |ADJACENT| ).
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t418 = xsdbool( t430 IS INITIAL ).
        ENDIF.
        t417 = t418.
        IF t418 = abap_true.
          DATA t437 TYPE abap_bool.
          DATA t438 TYPE abap_bool.
          DATA t439 TYPE REF TO zcl_lnt_abstract_token.
          t439 = t1->find_direct_token_by_text( i_text = |FROM| ).
          t438 = xsdbool( t439 IS BOUND ).
          t437 = t438.
          IF t438 = abap_false.
            DATA t443 TYPE REF TO zcl_lnt_abstract_token.
            t443 = t1->find_direct_token_by_text( i_text = |INDEX| ).
            t437 = xsdbool( t443 IS BOUND ).
          ENDIF.
          t417 = t437.
        ENDIF.
        t416 = t417.
        IF t417 = abap_true.
          DATA(t447) = t21.
          t416 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_ty_table_type ).
        ENDIF.
        t415 = t416.
        IF t416 = abap_true.
          DATA(t448) = VALUE abap_bool( ).
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t451 TYPE REF TO zcl_lnt_ty_table_type.
          t451 ?= t21.
          DATA t454 TYPE REF TO zcl_lnt_itable_key.
          t454 = t451->options->zlnt_view_read_sr_48b89cc62ab9( ).
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          IF xsdbool( t454 IS INITIAL ) = abap_true.
          ELSE.
            DATA t462 TYPE string.
            t462 = t454->zlnt_view_read_sr_f361ef311f50( ).
            DATA(t465) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t465->has = abap_true.
            t465->value = t462.
            t458 = t465.
          ENDIF.
          t449 = t458.
          DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t469->has = abap_true.
          t469->value = |HASHED|.
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
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t477 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = t474 i_fix = t482 ).
          t475->load( ).
          APPEND t477 TO t475->items.
          t475->save( ).
          RETURN.
        ENDIF.
        DATA(t484) = t21.
        IF xsdbool( t484 IS BOUND AND t484 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA t489 TYPE REF TO zcl_lnt_ty_table_type.
          t489 ?= t21.
          t21 = t489->row_type.
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
