* TS: src/abap/5_syntax/statements/update_database.ts:14:1 UpdateDatabase
CLASS zcl_lnt_sy_update_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_update_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t3 IS INITIAL ) = abap_false ) = abap_true.
      DATA t16 TYPE REF TO zif_lnt_union_c74a232f.
      t16 = zcl_lnt_sy_database_table=>run_syntax( i_node = t3 i_input_967e = t2 ).
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t22.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d316_43ef1bb28f89.
      t27 = t1->find_all_expressions( i_type_9913 = t29 ).
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t31 TYPE REF TO object.
      DATA(t32) = VALUE i( ).
      DO.
        t27->load( ).
        IF t32 >= lines( t27->items ).
          EXIT.
        ENDIF.
        CLEAR t31.
        READ TABLE t27->items INDEX t32 + 1 INTO t31.
        t32 = t32 + 1.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t30.
        IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t31.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t30 ?= t34.
        ELSE.
          t30 ?= t31.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t35.
        DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t35 = t30->find_direct_expressions( i_type_9913 = t37 ).
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        DATA(t40) = VALUE i( ).
        DO.
          t35->load( ).
          IF t40 >= lines( t35->items ).
            EXIT.
          ENDIF.
          CLEAR t39.
          READ TABLE t35->items INDEX t40 + 1 INTO t39.
          t40 = t40 + 1.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t38.
          IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t41 ?= t39.
            DATA t42 TYPE REF TO object.
            t42 = t41->as_ref( ).
            t38 ?= t42.
          ELSE.
            t38 ?= t39.
          ENDIF.
          t25->load( ).
          APPEND t38 TO t25->items.
          t25->save( ).
        ENDDO.
      ENDDO.
      t24 = t25.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      DATA t47 TYPE REF TO object.
      DATA(t48) = VALUE i( ).
      DO.
        t24->load( ).
        IF t48 >= lines( t24->items ).
          EXIT.
        ENDIF.
        CLEAR t47.
        READ TABLE t24->items INDEX t48 + 1 INTO t47.
        t48 = t48 + 1.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t47.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t47.
        ENDIF.
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        t53 = t46->concat_tokens( ).
        DATA(t55) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        t22->load( ).
        APPEND t52 TO t22->items.
        t22->save( ).
      ENDDO.
      t20 = t22.
      DATA(t57) = VALUE i( ).
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t59 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t59.
      DATA t61 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t62 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t62.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
      t64 = t1->find_all_expressions( i_type_9913 = t66 ).
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA t68 TYPE REF TO object.
      DATA(t69) = VALUE i( ).
      DO.
        t64->load( ).
        IF t69 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t64->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA t76 TYPE REF TO zcl_lnt_expression_node.
        DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
        t76 = t67->find_direct_expression( i_type_9913 = t79 ).
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        IF xsdbool( t76 IS INITIAL ) = abap_true.
          CLEAR t80.
        ELSE.
          DATA(t84) = VALUE string( ).
          t84 = t76->concat_tokens( ).
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t84.
          t80 = t87.
        ENDIF.
        t74 = t80.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        IF t74 IS INITIAL.
          t89 = abap_true.
        ELSEIF t74->has = abap_false.
          t89 = abap_true.
        ENDIF.
        IF t89 = abap_true.
          CLEAR t88.
        ELSE.
          DATA(t92) = VALUE string( ).
          DATA(t93) = VALUE string( ).
          t93 = t74->value.
          DATA(t95) = strlen( t93 ).
          t92 = t93.
          IF t92 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t92 TO UPPER CASE.
          ELSE.
            t92 = zlnt_runtime_uppe_91169605024d=>full( t92 ).
          ENDIF.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = t92.
          t88 = t96.
        ENDIF.
        t73 = t88.
        t62->load( ).
        APPEND t73 TO t62->items.
        t62->save( ).
      ENDDO.
      t61 = t62.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = VALUE i( ).
      DO.
        t61->load( ).
        IF t99 >= lines( t61->items ).
          EXIT.
        ENDIF.
        CLEAR t98.
        READ TABLE t61->items INDEX t99 + 1 INTO t98.
        t99 = t99 + 1.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t101 = t98.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        CLEAR t103.
        DATA(t106) = VALUE abap_bool( ).
        IF t101 IS INITIAL.
          t106 = abap_true.
        ELSEIF t101->has = abap_false.
          t106 = abap_true.
        ENDIF.
        IF xsdbool( t106 = abap_false ) = abap_true.
          t59->load( ).
          APPEND t98 TO t59->items.
          t59->save( ).
        ENDIF.
      ENDDO.
      DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF t59->source IS BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `emit.go: array mutation: graph-backed storage requires live mutation ABI`.
      ENDIF.
      CREATE OBJECT t110.
      LOOP AT t59->items INTO DATA(t112).
        IF t112 IS NOT BOUND OR t112->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t112->value TO t110->items.
      ENDLOOP.
      t58 = t110.
      DATA(t113) = VALUE string( ).
      t58->dense( ).
      DATA(t114) = VALUE i( ).
      DO.
        t58->load( ).
        IF t114 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t113.
        READ TABLE t58->items INDEX t114 + 1 INTO t113.
        IF t58->has( t114 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t114 = t114 + 1.
        t20->load( ).
        APPEND t113 TO t20->items.
        t20->save( ).
      ENDDO.
      t20->load( ).
      t57 = lines( t20->items ).
      DATA t121 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CREATE OBJECT t121.
      t121->load( ).
      APPEND t16 TO t121->items.
      t121->save( ).
      zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t20 i_db_sources = t121 i_input_967e = t2 i_token = t1->get_first_token( ) ).
    ENDIF.
    DATA t129 TYPE REF TO zcl_lnt_expression_node.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    t129 = t1->find_direct_expression( i_type_9913 = t132 ).
    DATA t133 TYPE REF TO zcl_lnt_abstract_token.
    DATA t135 TYPE REF TO zcl_lnt_expression_node.
    t135 = t129.
    DATA t137 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t135 IS INITIAL ) = abap_true.
    ELSE.
      t137 = t135->get_first_token( ).
    ENDIF.
    t133 = t137.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    t145 = xsdbool( t129 IS BOUND ).
    t144 = t145.
    IF t145 = abap_true.
      t144 = xsdbool( t133 IS BOUND ).
    ENDIF.
    IF t144 = abap_true.
      DATA t149 TYPE REF TO zcl_lnt_abstract_type.
      DATA t151 TYPE REF TO zcl_lnt_ddic.
      DATA t156 TYPE REF TO zif_lnt_registry.
      t156 = t2->scope->reg.
      t151 = NEW zcl_lnt_ddic( i_reg_f149 = t156 ).
      DATA(t164) = VALUE string( ).
      t164 = t133->str.
      DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t166->has = abap_true.
      t166->value = t164.
      t149 = t151->lookup_table( i_name = t166 ).
      IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t170 TYPE REF TO zcl_lnt_current_scope.
        t170 = t2->scope.
        DATA t178 TYPE REF TO zcl_lnt_position.
        t178 = t133->start.
        DATA(t181) = VALUE string( ).
        t181 = t2->filename.
        DATA t183 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t184 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t193 TYPE REF TO zcl_lnt_position.
        t184 = NEW zcl_lnt_iscope_identifier( i_stype = |open_sql| i_sname = |UPDATE| i_filename = t181 i_start = t178 i_end = t193 ).
        CREATE OBJECT t184->zlnt_view_ownkeys_b0e8086400eb.
        t184->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t195 ).
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t198 ).
        ENDIF.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t184->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t199 ).
        ENDIF.
        CREATE OBJECT t184->zlnt_json_ownkeys_70e5fd461788.
        t184->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t201 ).
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t203 ).
        ENDIF.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t205 ).
        ENDIF.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t207 ).
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t184->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t184->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t209 ).
        ENDIF.
        t183 = t184.
        DATA t212 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t212 = t170->current.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t212 IS INITIAL ) = abap_true.
          DATA t223 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t170->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t183 i_parent = t223 ).
          DELETE t170->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
        ELSE.
          DATA t225 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t225 = t170->current.
          t170->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t183 i_parent = t225 ).
          DELETE t170->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
          DATA t241 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t241 = t170->current.
          t225->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t241 ).
        ENDIF.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t245 TYPE REF TO zcl_lnt_structure_type.
        t245 ?= t149.
        t243 = t245->components.
        DATA t249 TYPE REF TO zcl_lnt_istructure_component.
        DATA t250 TYPE REF TO object.
        DATA(t251) = VALUE i( ).
        DO.
          t243->load( ).
          IF t251 >= lines( t243->items ).
            EXIT.
          ENDIF.
          CLEAR t250.
          READ TABLE t243->items INDEX t251 + 1 INTO t250.
          t251 = t251 + 1.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          CLEAR t249.
          IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t252 ?= t250.
            CLEAR t249.
            IF t252 IS BOUND.
              IF t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t249 ?= t252->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t249 IS NOT BOUND.
                IF t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t252->tag <>
                zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t253.
                  IF t252->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t253 ?= t252->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t253->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t254) = VALUE string( ).
                DATA t255 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t255.
                DATA t256 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t256.
                DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t257.
                t249 = NEW zcl_lnt_istructure_component( view_source = t252 i_name = t254 i_type_9913 = t255 i_as_include = t256 i_suffix = t257 ).
              ENDIF.
            ENDIF.
          ELSE.
            t249 ?= t250.
          ENDIF.
          DATA t259 TYPE REF TO zcl_lnt_lx_identifier.
          CLEAR t259.
          DATA t260 TYPE REF TO zcl_lnt_position.
          CLEAR t260.
          t260 = t1->get_first_token( )->start.
          t259 = NEW zcl_lnt_lx_identifier( i_start = t260 i_str = t249->zlnt_view_read_sr_dae473e680bd( ) ).
          DATA t269 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t271) = VALUE string( ).
          t271 = t2->filename.
          DATA t273 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t273.
          t273 = t249->zlnt_view_read_sr_455340cd1e80( ).
          DATA t275 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          t269 = NEW zcl_lnt_typed_identifier( i_token = t259 i_filename = t271 i_type_9913 = t273 i_meta = t275 i_value = t276 ).
          DATA t278 TYPE REF TO zcl_lnt_current_scope.
          t278 = t2->scope.
          DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t280.
          t280 = t269.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          CLEAR t288.
          IF xsdbool( t280 IS INITIAL ) = abap_true.
          ELSE.
            DATA t294 TYPE REF TO zcl_lnt_fi_identifier.
            t294 = t280.
            DATA(t298) = VALUE string( ).
            t298 = t294->token->str.
            DATA(t306) = VALUE string( ).
            DATA(t307) = t298.
            DATA(t308) = 0.
            DATA(t309) = 1.
            DATA(t310) = strlen( t307 ).
            IF t308 < 0.
              t308 = t308 + t310.
              IF t308 < 0.
                t308 = 0.
              ENDIF.
            ENDIF.
            IF t308 > t310 OR t309 <= 0.
            ELSE.
              IF t309 > t310 - t308.
                t309 = t310 - t308.
              ENDIF.
              t306 = t307+t308(t309).
            ENDIF.
            IF xsdbool( t306 = |!| ) = abap_true.
              DATA(t313) = VALUE string( ).
              t313 = t298.
              DATA(t315) = VALUE string( ).
              DATA(t317) = 1.
              DATA(t318) = VALUE i( ).
              t318 = strlen( t313 ).
              DATA(t321) = strlen( t313 ).
              IF t317 < 0.
                t317 = t317 + t321.
                IF t317 < 0.
                  t317 = 0.
                ENDIF.
              ENDIF.
              IF t317 > t321 OR t318 <= 0.
              ELSE.
                IF t318 > t321 - t317.
                  t318 = t321 - t317.
                ENDIF.
                t315 = t313+t317(t318).
              ENDIF.
              t298 = t315.
            ENDIF.
            t278->add_named_identifier( i_name = t298 i_identifier = t280 ).
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t327) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t325 = t1->find_all_expressions( i_type_9913 = t327 ).
    DATA t328 TYPE REF TO zcl_lnt_expression_node.
    DATA t329 TYPE REF TO object.
    DATA(t330) = VALUE i( ).
    DO.
      t325->load( ).
      IF t330 >= lines( t325->items ).
        EXIT.
      ENDIF.
      CLEAR t329.
      READ TABLE t325->items INDEX t330 + 1 INTO t329.
      t330 = t330 + 1.
      DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t331.
      CLEAR t328.
      IF t329 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t331 ?= t329.
        DATA t332 TYPE REF TO object.
        t332 = t331->as_ref( ).
        t328 ?= t332.
      ELSE.
        t328 ?= t329.
      ENDIF.
      DATA t333 TYPE REF TO zcl_lnt_abstract_type.
      DATA t334 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t334.
      t334 = t328.
      DATA t339 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t339.
      DATA t340 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t340.
      DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t341.
      DATA t342 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t342.
      t333 = zcl_lnt_sy_source=>run_syntax( i_node = t334 i_input_967e = t2 i_target_type = t339 i_write_reference = t340 i_allow_generic_deference = t341 i_read_reference = t342 ).
    ENDDO.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t343 = t1->find_all_expressions( i_type_9913 = t345 ).
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    DATA t347 TYPE REF TO object.
    DATA(t348) = VALUE i( ).
    DO.
      t343->load( ).
      IF t348 >= lines( t343->items ).
        EXIT.
      ENDIF.
      CLEAR t347.
      READ TABLE t343->items INDEX t348 + 1 INTO t347.
      t348 = t348 + 1.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      CLEAR t346.
      IF t347 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t349 ?= t347.
        DATA t350 TYPE REF TO object.
        t350 = t349->as_ref( ).
        t346 ?= t350.
      ELSE.
        t346 ?= t347.
      ENDIF.
      DATA t351 TYPE REF TO zcl_lnt_abstract_type.
      DATA t352 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t352.
      t352 = t346.
      DATA t357 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t357.
      DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t358.
      DATA t359 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t359.
      DATA t360 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t360.
      t351 = zcl_lnt_sy_source=>run_syntax( i_node = t352 i_input_967e = t2 i_target_type = t357 i_write_reference = t358 i_allow_generic_deference = t359 i_read_reference = t360 ).
    ENDDO.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t363) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t361 = t1->find_all_expressions( i_type_9913 = t363 ).
    DATA t364 TYPE REF TO zcl_lnt_expression_node.
    DATA t365 TYPE REF TO object.
    DATA(t366) = VALUE i( ).
    DO.
      t361->load( ).
      IF t366 >= lines( t361->items ).
        EXIT.
      ENDIF.
      CLEAR t365.
      READ TABLE t361->items INDEX t366 + 1 INTO t365.
      t366 = t366 + 1.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t367.
      CLEAR t364.
      IF t365 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t367 ?= t365.
        DATA t368 TYPE REF TO object.
        t368 = t367->as_ref( ).
        t364 ?= t368.
      ELSE.
        t364 ?= t365.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t364 i_input_967e = t2 ).
    ENDDO.
    IF xsdbool( t2->scope->get_type( ) = |open_sql| ) = abap_true.
      DATA t376 TYPE REF TO zcl_lnt_spaghetti_scope.
      DATA t377 TYPE REF TO zcl_lnt_current_scope.
      t377 = t2->scope.
      DATA t380 TYPE REF TO zcl_lnt_abstract_token.
      t380 = t1->get_last_token( ).
      DATA(t384) = VALUE f( ).
      t384 = t380->start->row.
      DATA t391 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t391 = t380->start->col.
      DATA(t397) = VALUE f( ).
      t397 = strlen( t380->str ).
      DATA(t402) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t402->has = abap_true.
      t402->value = t397.
      t376 = t377->pop( i_end = NEW zcl_lnt_position( i_row = t384 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t391 right = t402 op = `+` ) ) ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d982_9745d7d8d429.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
