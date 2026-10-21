* TS: src/abap/5_syntax/structures/class_data.ts:11:1 ClassData
CLASS zcl_lnt_sy_struct_class_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_struct_class_data IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t4 = t1->find_first_expression( i_type_9913 = t8 )->get_first_token( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    TRY.
        t12 = zlnt_runtime_json_7c6b3012af76=>parse( |\{\}| ).
      CATCH zlnt_exception_js_ebcc2df7d5e4.
        DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t14->has = abap_true.
        t14->value = `Invalid JSON`.
        DATA(t15) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t14 ).
        DATA(t16) = NEW zlnt_exception_cl_30eec8e8805d( ).
        t16->payload = t15.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t19 TYPE REF TO object.
        t19 = t15.
        TRY.
            t17 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS NOT BOUND.
          TRY.
              t18 ?= t15.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t18 IS BOUND.
            t17 = t18->source( ).
          ENDIF.
          IF t17 IS NOT BOUND.
            CREATE OBJECT t17.
            t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->oval = t15.
          ENDIF.
        ENDIF.
        t16->source_value = t17.
        RAISE EXCEPTION t16.
    ENDTRY.
    t9 = t12.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abstract_node.
    t25 = t1.
    t23 ?= t25->children.
    DATA t29 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t23->load( ).
      IF t31 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t23->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA t34 TYPE REF TO zif_lnt_union_dc0fb493.
      DATA t35 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t35.
      DATA t38 TYPE REF TO object.
      t38 = t29->get_db65( ).
      t35 ?= t38.
      t34 = t35.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      t40 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_statement_node ).
      t39 = t40.
      IF t40 = abap_true.
        t39 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_class_data ).
      ENDIF.
      IF t39 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t46) = NEW zcl_lnt_sy_statem_class_data( ).
        DATA t47 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t47.
        t47 ?= t29.
        t44 = t46->run_syntax( i_node = t47 i_input_967e = t2 ).
        IF xsdbool( t44 IS BOUND ) = abap_true.
          DATA t54 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t54.
          DATA(t55) = VALUE string( ).
          DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
          t57 = t44.
          DATA(t61) = VALUE string( ).
          t61 = t57->token->str.
          DATA(t69) = VALUE string( ).
          DATA(t70) = t61.
          DATA(t71) = 0.
          DATA(t72) = 1.
          DATA(t73) = strlen( t70 ).
          IF t71 < 0.
            t71 = t71 + t73.
            IF t71 < 0.
              t71 = 0.
            ENDIF.
          ENDIF.
          IF t71 > t73 OR t72 <= 0.
          ELSE.
            IF t72 > t73 - t71.
              t72 = t73 - t71.
            ENDIF.
            t69 = t70+t71(t72).
          ENDIF.
          IF xsdbool( t69 = |!| ) = abap_true.
            DATA(t76) = VALUE string( ).
            t76 = t61.
            DATA(t78) = VALUE string( ).
            DATA(t80) = 1.
            DATA(t81) = VALUE i( ).
            t81 = strlen( t76 ).
            DATA(t84) = strlen( t76 ).
            IF t80 < 0.
              t80 = t80 + t84.
              IF t80 < 0.
                t80 = 0.
              ENDIF.
            ENDIF.
            IF t80 > t84 OR t81 <= 0.
            ELSE.
              IF t81 > t84 - t80.
                t81 = t84 - t80.
              ENDIF.
              t78 = t76+t80(t81).
            ENDIF.
            t61 = t78.
          ENDIF.
          t55 = t61.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          t86 = t44->type_cba0.
          DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t93.
          CLEAR t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          CLEAR t95.
          t54 = NEW zcl_lnt_istructure_component( i_name = t55 i_type_9913 = t86 i_as_include = t93 i_suffix = t95 ).
          CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
          t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t97 ).
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t98 ).
          ENDIF.
          CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
          t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t100 ).
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t102 ).
          ENDIF.
          t21->load( ).
          APPEND t54 TO t21->items.
          t21->save( ).
          DATA(t104) = VALUE string( ).
          DATA t105 TYPE REF TO zcl_lnt_fi_identifier.
          t105 = t44.
          DATA(t109) = VALUE string( ).
          t109 = t105->token->str.
          DATA(t117) = VALUE string( ).
          DATA(t118) = t109.
          DATA(t119) = 0.
          DATA(t120) = 1.
          DATA(t121) = strlen( t118 ).
          IF t119 < 0.
            t119 = t119 + t121.
            IF t119 < 0.
              t119 = 0.
            ENDIF.
          ENDIF.
          IF t119 > t121 OR t120 <= 0.
          ELSE.
            IF t120 > t121 - t119.
              t120 = t121 - t119.
            ENDIF.
            t117 = t118+t119(t120).
          ENDIF.
          IF xsdbool( t117 = |!| ) = abap_true.
            DATA(t124) = VALUE string( ).
            t124 = t109.
            DATA(t126) = VALUE string( ).
            DATA(t128) = 1.
            DATA(t129) = VALUE i( ).
            t129 = strlen( t124 ).
            DATA(t132) = strlen( t124 ).
            IF t128 < 0.
              t128 = t128 + t132.
              IF t128 < 0.
                t128 = 0.
              ENDIF.
            ENDIF.
            IF t128 > t132 OR t129 <= 0.
            ELSE.
              IF t129 > t132 - t128.
                t129 = t132 - t128.
              ENDIF.
              t126 = t124+t128(t129).
            ENDIF.
            t109 = t126.
          ENDIF.
          t104 = t109.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          t138 = t44->value.
          t9->put( p0 = t104 p1 = t138 ).
        ENDIF.
      ELSE.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        t141 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_node ).
        t140 = t141.
        IF t141 = abap_true.
          t140 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_sr_class_data ).
        ENDIF.
        IF t140 = abap_true.
          DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t147) = NEW zcl_lnt_sy_struct_class_data( ).
          DATA t148 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t148.
          t148 ?= t29.
          t145 = t147->run_syntax( i_node = t148 i_input_967e = t2 ).
          IF xsdbool( t145 IS BOUND ) = abap_true.
            DATA t155 TYPE REF TO zcl_lnt_istructure_component.
            CLEAR t155.
            DATA(t156) = VALUE string( ).
            DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
            t158 = t145.
            DATA(t162) = VALUE string( ).
            t162 = t158->token->str.
            DATA(t170) = VALUE string( ).
            DATA(t171) = t162.
            DATA(t172) = 0.
            DATA(t173) = 1.
            DATA(t174) = strlen( t171 ).
            IF t172 < 0.
              t172 = t172 + t174.
              IF t172 < 0.
                t172 = 0.
              ENDIF.
            ENDIF.
            IF t172 > t174 OR t173 <= 0.
            ELSE.
              IF t173 > t174 - t172.
                t173 = t174 - t172.
              ENDIF.
              t170 = t171+t172(t173).
            ENDIF.
            IF xsdbool( t170 = |!| ) = abap_true.
              DATA(t177) = VALUE string( ).
              t177 = t162.
              DATA(t179) = VALUE string( ).
              DATA(t181) = 1.
              DATA(t182) = VALUE i( ).
              t182 = strlen( t177 ).
              DATA(t185) = strlen( t177 ).
              IF t181 < 0.
                t181 = t181 + t185.
                IF t181 < 0.
                  t181 = 0.
                ENDIF.
              ENDIF.
              IF t181 > t185 OR t182 <= 0.
              ELSE.
                IF t182 > t185 - t181.
                  t182 = t185 - t181.
                ENDIF.
                t179 = t177+t181(t182).
              ENDIF.
              t162 = t179.
            ENDIF.
            t156 = t162.
            DATA t187 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t187.
            t187 = t145->type_cba0.
            DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t194.
            CLEAR t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            CLEAR t196.
            t155 = NEW zcl_lnt_istructure_component( i_name = t156 i_type_9913 = t187 i_as_include = t194 i_suffix = t196 ).
            CREATE OBJECT t155->zlnt_view_ownkeys_b0e8086400eb.
            t155->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t198 ).
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t155->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t155->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t199 ).
            ENDIF.
            CREATE OBJECT t155->zlnt_json_ownkeys_70e5fd461788.
            t155->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t201 ).
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t155->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t155->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t203 ).
            ENDIF.
            t21->load( ).
            APPEND t155 TO t21->items.
            t21->save( ).
            DATA(t205) = VALUE string( ).
            DATA t206 TYPE REF TO zcl_lnt_fi_identifier.
            t206 = t145.
            DATA(t210) = VALUE string( ).
            t210 = t206->token->str.
            DATA(t218) = VALUE string( ).
            DATA(t219) = t210.
            DATA(t220) = 0.
            DATA(t221) = 1.
            DATA(t222) = strlen( t219 ).
            IF t220 < 0.
              t220 = t220 + t222.
              IF t220 < 0.
                t220 = 0.
              ENDIF.
            ENDIF.
            IF t220 > t222 OR t221 <= 0.
            ELSE.
              IF t221 > t222 - t220.
                t221 = t222 - t220.
              ENDIF.
              t218 = t219+t220(t221).
            ENDIF.
            IF xsdbool( t218 = |!| ) = abap_true.
              DATA(t225) = VALUE string( ).
              t225 = t210.
              DATA(t227) = VALUE string( ).
              DATA(t229) = 1.
              DATA(t230) = VALUE i( ).
              t230 = strlen( t225 ).
              DATA(t233) = strlen( t225 ).
              IF t229 < 0.
                t229 = t229 + t233.
                IF t229 < 0.
                  t229 = 0.
                ENDIF.
              ENDIF.
              IF t229 > t233 OR t230 <= 0.
              ELSE.
                IF t230 > t233 - t229.
                  t230 = t233 - t229.
                ENDIF.
                t227 = t225+t229(t230).
              ENDIF.
              t210 = t227.
            ENDIF.
            t205 = t210.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            t239 = t145->value.
            t9->put( p0 = t205 p1 = t239 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t245) = VALUE string( ).
    t245 = t2->filename.
    DATA t247 TYPE REF TO zcl_lnt_structure_type.
    DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t247 = NEW zcl_lnt_structure_type( i_components = t21 i_qualified_name = t249 i_ddic_name = t250 i_description = t251 ).
    DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t255.
    t255->load( ).
    APPEND |static| TO t255->items.
    t255->save( ).
    result = NEW zcl_lnt_typed_identifier( i_token = t4 i_filename = t245 i_type_9913 = t247 i_meta = t255 i_value = t9 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d990_b83cbe1720a1.
  ENDMETHOD.
ENDCLASS.
