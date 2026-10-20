* TS: src/abap/5_syntax/structures/types.ts:13:1 Types
CLASS zcl_lnt_sy_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_types IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_qualified_name_prefix.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t4 = t1->find_first_expression( i_type_9913 = t9 )->get_first_token( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t12 TYPE REF TO zif_lnt_union_adffe656.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t3.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = ||.
      t3 = t24.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abstract_node.
    t28 = t1.
    t27 = t28->children.
    t26 ?= t27.
    DATA t32 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t33 TYPE REF TO object.
    DATA(t34) = VALUE i( ).
    DO.
      t26->load( ).
      IF t34 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t26->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      CLEAR t32.
      IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t35 ?= t33.
        DATA t36 TYPE REF TO object.
        t36 = t35->as_ref( ).
        t32 ?= t36.
      ELSE.
        t32 ?= t33.
      ENDIF.
      DATA t37 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t38 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t38.
      DATA t41 TYPE REF TO object.
      t41 = t32->get_db65( ).
      t38 ?= t41.
      t37 = t38.
      IF xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_statem_type ) = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t48) = NEW zcl_lnt_sy_type( ).
          DATA t49 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t49.
          DATA t51 TYPE REF TO object.
          t51 = t32.
          t49 ?= t51.
          DATA(t55) = VALUE string( ).
          DATA(t56) = VALUE string( ).
          DATA(t57) = VALUE string( ).
          t57 = t3->value.
          DATA(t59) = VALUE string( ).
          t59 = t4->str.
          DATA(t64) = strlen( t57 ).
          t56 = |{ t57 }{ t59 }|.
          DATA(t66) = strlen( t56 ).
          t55 = |{ t56 }{ |-| }|.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t55.
          t46 = t48->run_syntax( i_node = t49 i_input_967e = t2 i_qualified_name_prefix = t67 ).
          IF xsdbool( t46 IS BOUND ) = abap_true.
            DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
            t74 = t46.
            DATA(t78) = VALUE string( ).
            t78 = t74->token->str.
            DATA(t86) = VALUE string( ).
            DATA(t87) = t78.
            DATA(t88) = 0.
            DATA(t89) = 1.
            DATA(t90) = strlen( t87 ).
            IF t88 < 0.
              t88 = t88 + t90.
              IF t88 < 0.
                t88 = 0.
              ENDIF.
            ENDIF.
            IF t88 > t90 OR t89 <= 0.
            ELSE.
              IF t89 > t90 - t88.
                t89 = t90 - t88.
              ENDIF.
              t86 = t87+t88(t89).
            ENDIF.
            IF xsdbool( t86 = |!| ) = abap_true.
              DATA(t93) = VALUE string( ).
              t93 = t78.
              DATA(t95) = VALUE string( ).
              DATA(t97) = 1.
              DATA(t98) = VALUE i( ).
              t98 = strlen( t93 ).
              DATA(t101) = strlen( t93 ).
              IF t97 < 0.
                t97 = t97 + t101.
                IF t97 < 0.
                  t97 = 0.
                ENDIF.
              ENDIF.
              IF t97 > t101 OR t98 <= 0.
              ELSE.
                IF t98 > t101 - t97.
                  t98 = t101 - t97.
                ENDIF.
                t95 = t93+t97(t98).
              ENDIF.
              t78 = t95.
            ENDIF.
            IF xsdbool( strlen( t78 ) > 30 ) = abap_true.
              DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t105 = t2->issues.
              DATA t107 TYPE REF TO zcl_lnt_issue.
              DATA t109 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t109.
              DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
              t110 = t46.
              t109 = t110->token.
              DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t116.
              t107 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t109 i_message_26cb = |Structure field name longer than 30 characters| i_fix = t116 ).
              t105->load( ).
              APPEND t107 TO t105->items.
              t105->save( ).
            ENDIF.
            DATA t118 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t118.
            DATA(t119) = VALUE string( ).
            DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
            t121 = t46.
            DATA(t125) = VALUE string( ).
            t125 = t121->token->str.
            DATA(t133) = VALUE string( ).
            DATA(t134) = t125.
            DATA(t135) = 0.
            DATA(t136) = 1.
            DATA(t137) = strlen( t134 ).
            IF t135 < 0.
              t135 = t135 + t137.
              IF t135 < 0.
                t135 = 0.
              ENDIF.
            ENDIF.
            IF t135 > t137 OR t136 <= 0.
            ELSE.
              IF t136 > t137 - t135.
                t136 = t137 - t135.
              ENDIF.
              t133 = t134+t135(t136).
            ENDIF.
            IF xsdbool( t133 = |!| ) = abap_true.
              DATA(t140) = VALUE string( ).
              t140 = t125.
              DATA(t142) = VALUE string( ).
              DATA(t144) = 1.
              DATA(t145) = VALUE i( ).
              t145 = strlen( t140 ).
              DATA(t148) = strlen( t140 ).
              IF t144 < 0.
                t144 = t144 + t148.
                IF t144 < 0.
                  t144 = 0.
                ENDIF.
              ENDIF.
              IF t144 > t148 OR t145 <= 0.
              ELSE.
                IF t145 > t148 - t144.
                  t145 = t148 - t144.
                ENDIF.
                t142 = t140+t144(t145).
              ENDIF.
              t125 = t142.
            ENDIF.
            t119 = t125.
            DATA t150 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t150.
            t150 = t46->type_cba0.
            DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t157.
            CLEAR t157.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            CLEAR t159.
            t118 = NEW zcl_lnt_istructure_component( i_name = t119 i_type_9913 = t150 i_as_include = t157 i_suffix = t159 ).
            CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
            t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t161 ).
            DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t162.
            IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t162 ).
            ENDIF.
            CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
            t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t164.
            t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t164 ).
            DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t166.
            IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t166 ).
            ENDIF.
            t10->load( ).
            APPEND t118 TO t10->items.
            t10->save( ).
          ENDIF.
        ELSE.
          IF xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_include_type ) = abap_true.
            DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t171) = NEW zcl_lnt_sy_include_type( ).
            DATA t172 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t172.
            DATA t174 TYPE REF TO object.
            t174 = t32.
            t172 ?= t174.
            t169 = t171->run_syntax( i_node = t172 i_input_967e = t2 ).
            DATA(t176) = VALUE abap_bool( ).
            DATA(t177) = VALUE abap_bool( ).
            IF t169 IS BOUND AND t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t177 = xsdbool( t169->oval IS INSTANCE OF zcl_lnt_void_type ).
            ENDIF.
            t176 = t177.
            IF t177 = abap_false.
              DATA(t179) = VALUE abap_bool( ).
              IF t169 IS BOUND AND t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t179 = xsdbool( t169->oval IS INSTANCE OF zcl_lnt_unknown_type ).
              ENDIF.
              t176 = t179.
            ENDIF.
            IF t176 = abap_true.
              DATA t183 TYPE REF TO zif_lnt_union_adffe656.
              CLEAR t183.
              DATA t185 TYPE REF TO object.
              t185 = t169->as_ref( ).
              t183 ?= t185.
              t12 = t183.
            ELSE.
              DATA(t187) = VALUE i( ).
              DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t188.
              CLEAR t188.
              IF t169 IS BOUND.
                IF t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t188 ?= t169->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
                  ENDTRY.
                ELSEIF t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
                  CREATE OBJECT t188.
                  t188->source = t169.
                ELSE.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
                ENDIF.
                t188->load( ).
                DATA t190 TYPE REF TO object.
                CLEAR t190.
                DATA t191 TYPE REF TO zcl_lnt_istructure_component.
                CLEAR t191.
                LOOP AT t188->items INTO t190.
                  DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t192.
                  CLEAR t191.
                  IF t190 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                    t192 ?= t190.
                    CLEAR t191.
                    IF t192 IS BOUND.
                      IF t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t191 ?= t192->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t191 IS NOT BOUND.
                        IF t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t192->tag <>
                        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                          DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
                          CLEAR t193.
                          IF t192->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                          ENDIF.
                          TRY.
                              t193 ?= t192->oval.
                            CATCH cx_sy_move_cast_error.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                          ENDTRY.
                          IF t193->structural( ) <> abap_true.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                          ENDIF.
                        ENDIF.
                        DATA(t194) = VALUE string( ).
                        DATA t195 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t195.
                        DATA t196 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t196.
                        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t197.
                        t191 = NEW zcl_lnt_istructure_component( view_source = t192 i_name = t194 i_type_9913 = t195 i_as_include = t196 i_suffix = t197 ).
                      ENDIF.
                    ENDIF.
                  ELSE.
                    t191 ?= t190.
                  ENDIF.
                ENDLOOP.
              ENDIF.
              DATA t198 TYPE REF TO zcl_lnt_istructure_component.
              CLEAR t198.
              DATA t199 TYPE REF TO object.
              CLEAR t199.
              DATA(t200) = VALUE i( ).
              DO.
                t188->load( ).
                IF t200 >= lines( t188->items ).
                  EXIT.
                ENDIF.
                CLEAR t199.
                READ TABLE t188->items INDEX t200 + 1 INTO t199.
                t200 = t200 + 1.
                DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t201.
                CLEAR t198.
                IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t201 ?= t199.
                  CLEAR t198.
                  IF t201 IS BOUND.
                    IF t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      TRY.
                          t198 ?= t201->oval.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                    ENDIF.
                    IF t198 IS NOT BOUND.
                      IF t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t201->tag <>
                      zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                        DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
                        CLEAR t202.
                        IF t201->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                        ENDIF.
                        TRY.
                            t202 ?= t201->oval.
                          CATCH cx_sy_move_cast_error.
                            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                        ENDTRY.
                        IF t202->structural( ) <> abap_true.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                        ENDIF.
                      ENDIF.
                      DATA(t203) = VALUE string( ).
                      DATA t204 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t204.
                      DATA t205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t205.
                      DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t206.
                      t198 = NEW zcl_lnt_istructure_component( view_source = t201 i_name = t203 i_type_9913 = t204 i_as_include = t205 i_suffix = t206 ).
                    ENDIF.
                  ENDIF.
                ELSE.
                  t198 ?= t199.
                ENDIF.
                t10->load( ).
                APPEND t198 TO t10->items.
                t10->save( ).
              ENDDO.
              t10->load( ).
              t187 = lines( t10->items ).
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t211) = VALUE abap_bool( ).
        DATA(t212) = VALUE abap_bool( ).
        t212 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_structure_node ).
        t211 = t212.
        IF t212 = abap_true.
          t211 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_sr_types ).
        ENDIF.
        IF t211 = abap_true.
          DATA t216 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t218) = NEW zcl_lnt_sy_types( ).
          DATA t219 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t219.
          DATA t221 TYPE REF TO object.
          t221 = t32.
          t219 ?= t221.
          DATA(t225) = VALUE string( ).
          DATA(t226) = VALUE string( ).
          DATA(t227) = VALUE string( ).
          t227 = t3->value.
          DATA(t229) = VALUE string( ).
          t229 = t4->str.
          DATA(t234) = strlen( t227 ).
          t226 = |{ t227 }{ t229 }|.
          DATA(t236) = strlen( t226 ).
          t225 = |{ t226 }{ |-| }|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t225.
          t216 = t218->run_syntax( i_node = t219 i_input_967e = t2 i_qualified_name_prefix = t237 ).
          IF xsdbool( t216 IS BOUND ) = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_fi_identifier.
            t244 = t216.
            DATA(t248) = VALUE string( ).
            t248 = t244->token->str.
            DATA(t256) = VALUE string( ).
            DATA(t257) = t248.
            DATA(t258) = 0.
            DATA(t259) = 1.
            DATA(t260) = strlen( t257 ).
            IF t258 < 0.
              t258 = t258 + t260.
              IF t258 < 0.
                t258 = 0.
              ENDIF.
            ENDIF.
            IF t258 > t260 OR t259 <= 0.
            ELSE.
              IF t259 > t260 - t258.
                t259 = t260 - t258.
              ENDIF.
              t256 = t257+t258(t259).
            ENDIF.
            IF xsdbool( t256 = |!| ) = abap_true.
              DATA(t263) = VALUE string( ).
              t263 = t248.
              DATA(t265) = VALUE string( ).
              DATA(t267) = 1.
              DATA(t268) = VALUE i( ).
              t268 = strlen( t263 ).
              DATA(t271) = strlen( t263 ).
              IF t267 < 0.
                t267 = t267 + t271.
                IF t267 < 0.
                  t267 = 0.
                ENDIF.
              ENDIF.
              IF t267 > t271 OR t268 <= 0.
              ELSE.
                IF t268 > t271 - t267.
                  t268 = t271 - t267.
                ENDIF.
                t265 = t263+t267(t268).
              ENDIF.
              t248 = t265.
            ENDIF.
            IF xsdbool( strlen( t248 ) > 30 ) = abap_true.
              DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t275 = t2->issues.
              DATA t277 TYPE REF TO zcl_lnt_issue.
              DATA t279 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t279.
              DATA t280 TYPE REF TO zcl_lnt_fi_identifier.
              t280 = t216.
              t279 = t280->token.
              DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t286.
              t277 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t279 i_message_26cb = |Structure field name longer than 30 characters| i_fix = t286 ).
              t275->load( ).
              APPEND t277 TO t275->items.
              t275->save( ).
            ENDIF.
            DATA t288 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t288.
            DATA(t289) = VALUE string( ).
            DATA t291 TYPE REF TO zcl_lnt_fi_identifier.
            t291 = t216.
            DATA(t295) = VALUE string( ).
            t295 = t291->token->str.
            DATA(t303) = VALUE string( ).
            DATA(t304) = t295.
            DATA(t305) = 0.
            DATA(t306) = 1.
            DATA(t307) = strlen( t304 ).
            IF t305 < 0.
              t305 = t305 + t307.
              IF t305 < 0.
                t305 = 0.
              ENDIF.
            ENDIF.
            IF t305 > t307 OR t306 <= 0.
            ELSE.
              IF t306 > t307 - t305.
                t306 = t307 - t305.
              ENDIF.
              t303 = t304+t305(t306).
            ENDIF.
            IF xsdbool( t303 = |!| ) = abap_true.
              DATA(t310) = VALUE string( ).
              t310 = t295.
              DATA(t312) = VALUE string( ).
              DATA(t314) = 1.
              DATA(t315) = VALUE i( ).
              t315 = strlen( t310 ).
              DATA(t318) = strlen( t310 ).
              IF t314 < 0.
                t314 = t314 + t318.
                IF t314 < 0.
                  t314 = 0.
                ENDIF.
              ENDIF.
              IF t314 > t318 OR t315 <= 0.
              ELSE.
                IF t315 > t318 - t314.
                  t315 = t318 - t314.
                ENDIF.
                t312 = t310+t314(t315).
              ENDIF.
              t295 = t312.
            ENDIF.
            t289 = t295.
            DATA t320 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t320.
            t320 = t216->type_cba0.
            DATA t327 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t327.
            CLEAR t327.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            CLEAR t329.
            t288 = NEW zcl_lnt_istructure_component( i_name = t289 i_type_9913 = t320 i_as_include = t327 i_suffix = t329 ).
            CREATE OBJECT t288->zlnt_view_ownkeys_b0e8086400eb.
            t288->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t331.
            t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t331 ).
            DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t332.
            IF t288->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t288->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t332 ).
            ENDIF.
            CREATE OBJECT t288->zlnt_json_ownkeys_70e5fd461788.
            t288->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t334.
            t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t334 ).
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t336.
            IF t288->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t288->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t336 ).
            ENDIF.
            t10->load( ).
            APPEND t288 TO t10->items.
            t10->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    IF xsdbool( t12 IS BOUND ) = abap_true.
      DATA(t343) = VALUE string( ).
      t343 = t2->filename.
      DATA t345 TYPE REF TO zif_lnt_union_ea265422.
      DATA t346 TYPE REF TO zif_lnt_union_adffe656.
      t346 = t12.
      t345 ?= t346.
      DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t4 i_filename = t343 i_type_9913 = t345 i_meta = t348 i_value = t349 ).
      RETURN.
    ENDIF.
    t10->load( ).
    IF xsdbool( lines( t10->items ) = 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.

    DATA(t356) = VALUE string( ).
    DATA(t358) = VALUE string( ).
    t358 = t3->value.
    DATA(t360) = VALUE string( ).
    t360 = t4->str.
    DATA(t365) = strlen( t358 ).
    t356 = |{ t358 }{ t360 }|.
    DATA(t366) = VALUE abap_bool( ).
    DATA(t367) = VALUE abap_bool( ).
    t367 = xsdbool( t2->scope->get_type( ) = |class_definition| ).
    t366 = t367.
    IF t367 = abap_false.
      t366 = xsdbool( t2->scope->get_type( ) = |interface| ).
    ENDIF.
    IF t366 = abap_true.
      DATA(t378) = VALUE string( ).
      DATA(t379) = VALUE string( ).
      t379 = t2->scope->get_name( ).
      DATA(t383) = strlen( t379 ).
      t378 = |{ t379 }{ |=>| }|.
      DATA(t385) = strlen( t378 ).
      t356 = |{ t378 }{ t356 }|.
    ENDIF.
    DATA(t390) = VALUE string( ).
    t390 = t2->filename.
    DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t397->has = abap_true.
    t397->value = t356.
    DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t401 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    result = NEW zcl_lnt_typed_identifier( i_token = t4 i_filename = t390 i_type_9913 = NEW zcl_lnt_structure_type( i_components = t10 i_qualified_name = t397 i_ddic_name = t399 i_description = t400 ) i_meta = t401 i_value = t402 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d996_4db7887f8eb3.
  ENDMETHOD.
ENDCLASS.
