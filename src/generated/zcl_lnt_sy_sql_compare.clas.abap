* TS: src/abap/5_syntax/expressions/sql_compare.ts:14:1 SQLCompare
CLASS zcl_lnt_sy_sql_compare DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_input_967e TYPE REF TO zcl_lnt_syntax_input i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f.
    CLASS-METHODS find_type IMPORTING i_field_name TYPE string i_tables_8d5a TYPE REF TO zlnt_runtime_arra_b72089862d0f i_scope TYPE REF TO zcl_lnt_current_scope RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_sql_compare IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_tables_8d5a.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zif_lnt_union_daf022d4.
    DATA t8 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t9 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t10 TYPE REF TO zif_lnt_node.
    t10 = t1->get_first_child( ).
    t9 ?= t10.
    t8 = t9.
    DATA t12 TYPE REF TO zif_lnt_union_daf022d4.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zif_lnt_union_daf022d4.
      DATA t20 TYPE REF TO object.
      t20 = t8->get_db65( ).
      t16 ?= t20.
      t12 = t16.
    ENDIF.
    t7 = t12.
    IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_st_dynamic ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t23 TYPE REF TO zif_lnt_node.
      t23 = t1->get_first_child( ).
      t22 ?= t23.
      t21 ?= t22.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t21 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    t26 = t1->find_direct_expressions( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t26->load( ).
      IF t31 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t26->items INDEX t31 + 1 INTO t30.
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
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t35.
      t35 = t29.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      t34 = zcl_lnt_sy_source=>run_syntax( i_node = t35 i_input_967e = t2 i_target_type = t40 i_write_reference = t41 i_allow_generic_deference = t42 i_read_reference = t43 ).
    ENDDO.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    t44 = t1->find_direct_expressions( i_type_9913 = t46 ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    DATA t48 TYPE REF TO object.
    DATA(t49) = VALUE i( ).
    DO.
      t44->load( ).
      IF t49 >= lines( t44->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t44->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t54 TYPE REF TO zcl_lnt_abstract_node.
      t54 = t47.
      t53 = t54->children.
      t52 ?= t53.
      DATA t58 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      DATA(t60) = VALUE i( ).
      DO.
        t52->load( ).
        IF t60 >= lines( t52->items ).
          EXIT.
        ENDIF.
        CLEAR t59.
        READ TABLE t52->items INDEX t60 + 1 INTO t59.
        t60 = t60 + 1.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        CLEAR t58.
        IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t61 ?= t59.
          DATA t62 TYPE REF TO object.
          t62 = t61->as_ref( ).
          t58 ?= t62.
        ELSE.
          t58 ?= t59.
        ENDIF.
        IF xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_expression_node ) = abap_true.
          DATA t68 TYPE REF TO zcl_lnt_expression_node.
          DATA t70 TYPE REF TO object.
          t70 = t58.
          t68 ?= t70.
          t5 = t68->get_first_token( ).
          EXIT.
        ENDIF.
      ENDDO.
      t4 = zcl_lnt_sy_sql_source=>run_syntax( i_node = t47 i_input_967e = t2 ).
    ENDDO.
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
    t75 = t1->find_direct_expression( i_type_9913 = t78 ).
    IF xsdbool( t75 IS BOUND ) = abap_true.
      zcl_lnt_sy_sql_in=>run_syntax( i_node = t75 i_input_967e = t2 ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    t88 = t1->find_direct_expression( i_type_9913 = t91 ).
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t88 IS INITIAL ) = abap_true.
    ELSE.
      DATA t96 TYPE string.
      t96 = t88->concat_tokens( ).
      DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t99->has = abap_true.
      t99->value = t96.
      t92 = t99.
    ENDIF.
    t86 = t92.
    DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t101) = VALUE abap_bool( ).
    IF t86 IS INITIAL.
      t101 = abap_true.
    ELSEIF t86->has = abap_false.
      t101 = abap_true.
    ENDIF.
    IF t101 = abap_true.
    ELSE.
      DATA t104 TYPE string.
      DATA t105 TYPE string.
      t105 = t86->value.
      DATA(t107) = strlen( t105 ).
      t104 = t105.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t108->has = abap_true.
      t108->value = t104.
      t100 = t108.
    ENDIF.
    t84 = t100.
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = VALUE abap_bool( ).
    DATA(t111) = VALUE abap_bool( ).
    IF t84 IS BOUND.
      IF t84->has = abap_true.
        t111 = xsdbool( strlen( t84->value ) > 0 ).
      ENDIF.
    ENDIF.
    t110 = t111.
    IF t111 = abap_true.
      t110 = xsdbool( t4 IS BOUND ).
    ENDIF.
    t109 = t110.
    IF t110 = abap_true.
      t109 = xsdbool( t5 IS BOUND ).
    ENDIF.
    IF t109 = abap_true.
      DATA t117 TYPE REF TO zcl_lnt_abstract_type.
      DATA t119 TYPE string.
      t119 = t84->value.
      DATA t122 TYPE REF TO zcl_lnt_current_scope.
      t122 = t2->scope.
      t117 = zcl_lnt_sy_sql_compare=>find_type( i_field_name = t119 i_tables_8d5a = t3 i_scope = t122 ).
      DATA t124 TYPE string.
      t124 = ||.
      DATA t126 TYPE abap_bool.
      DATA t127 TYPE abap_bool.
      t127 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_integer_type ).
      t126 = t127.
      IF t127 = abap_true.
        t126 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_character_type ).
      ENDIF.
      IF t126 = abap_true.
        DATA t132 TYPE string.
        DATA(t133) = ||.
        DATA t134 TYPE string.
        t134 = t84->value.
        DATA(t136) = strlen( t133 ).
        t132 = |{ t133 }{ t134 }|.
        DATA(t138) = strlen( t132 ).
        t124 = |{ t132 }{ |: Integer to CHAR conversion| }|.
      ELSE.
        DATA t139 TYPE abap_bool.
        DATA t140 TYPE abap_bool.
        t140 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_integer_type ).
        t139 = t140.
        IF t140 = abap_true.
          t139 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_numeric_type ).
        ENDIF.
        IF t139 = abap_true.
          DATA t145 TYPE string.
          DATA(t146) = ||.
          DATA t147 TYPE string.
          t147 = t84->value.
          DATA(t149) = strlen( t146 ).
          t145 = |{ t146 }{ t147 }|.
          DATA(t151) = strlen( t145 ).
          t124 = |{ t145 }{ |: Integer to NUMC conversion| }|.
        ELSE.
          DATA t152 TYPE abap_bool.
          DATA t153 TYPE abap_bool.
          t153 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_numeric_type ).
          t152 = t153.
          IF t153 = abap_true.
            t152 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_integer_type ).
          ENDIF.
          IF t152 = abap_true.
            DATA t158 TYPE string.
            DATA(t159) = ||.
            DATA t160 TYPE string.
            t160 = t84->value.
            DATA(t162) = strlen( t159 ).
            t158 = |{ t159 }{ t160 }|.
            DATA(t164) = strlen( t158 ).
            t124 = |{ t158 }{ |: NUMC to Integer conversion| }|.
          ELSE.
            DATA t165 TYPE abap_bool.
            DATA t166 TYPE abap_bool.
            t166 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_character_type ).
            t165 = t166.
            IF t166 = abap_true.
              t165 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_integer_type ).
            ENDIF.
            IF t165 = abap_true.
              DATA t171 TYPE string.
              DATA(t172) = ||.
              DATA t173 TYPE string.
              t173 = t84->value.
              DATA(t175) = strlen( t172 ).
              t171 = |{ t172 }{ t173 }|.
              DATA(t177) = strlen( t171 ).
              t124 = |{ t171 }{ |: CHAR to Integer conversion| }|.
            ELSE.
              DATA(t178) = VALUE abap_bool( ).
              DATA t179 TYPE abap_bool.
              DATA t180 TYPE abap_bool.
              t180 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_character_type ).
              t179 = t180.
              IF t180 = abap_true.
                t179 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_character_type ).
              ENDIF.
              t178 = t179.
              IF t179 = abap_true.
                DATA t185 TYPE f.
                DATA t187 TYPE REF TO zcl_lnt_character_type.
                t187 ?= t4.
                t185 = t187->length.
                DATA t193 TYPE REF TO zcl_lnt_character_type.
                t193 ?= t117.
                t178 = xsdbool( t185 > t193->length ).
              ENDIF.
              IF t178 = abap_true.
                DATA t198 TYPE string.
                DATA(t199) = ||.
                DATA t200 TYPE string.
                t200 = t84->value.
                DATA(t202) = strlen( t199 ).
                t198 = |{ t199 }{ t200 }|.
                DATA(t204) = strlen( t198 ).
                t124 = |{ t198 }{ |: Source field longer than database field, CHAR -> CHAR| }|.
              ELSE.
                DATA(t205) = VALUE abap_bool( ).
                DATA t206 TYPE abap_bool.
                DATA t207 TYPE abap_bool.
                t207 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_numeric_type ).
                t206 = t207.
                IF t207 = abap_true.
                  t206 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_numeric_type ).
                ENDIF.
                t205 = t206.
                IF t206 = abap_true.
                  DATA t212 TYPE f.
                  DATA t214 TYPE REF TO zcl_lnt_numeric_type.
                  t214 ?= t4.
                  t212 = t214->length.
                  DATA t220 TYPE REF TO zcl_lnt_numeric_type.
                  t220 ?= t117.
                  t205 = xsdbool( t212 > t220->length ).
                ENDIF.
                IF t205 = abap_true.
                  DATA t225 TYPE string.
                  DATA(t226) = ||.
                  DATA t227 TYPE string.
                  t227 = t84->value.
                  DATA(t229) = strlen( t226 ).
                  t225 = |{ t226 }{ t227 }|.
                  DATA(t231) = strlen( t225 ).
                  t124 = |{ t225 }{ |: Source field longer than database field, NUMC -> NUMC| }|.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF xsdbool( t124 <> || ) = abap_true.
        DATA t236 TYPE REF TO zcl_lnt_current_scope.
        t236 = t2->scope.
        DATA t239 TYPE string.
        t239 = t84->value.
        DATA t246 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t249 TYPE REF TO zcl_lnt_iscope_data.
        DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t251 = t236->current.
        DATA t254 TYPE REF TO zcl_lnt_iscope_data.
        IF xsdbool( t251 IS INITIAL ) = abap_true.
        ELSE.
          DATA t259 TYPE REF TO zcl_lnt_scope_data.
          t259 = t251.
          t254 = t259->data_56cc.
        ENDIF.
        t249 = t254.
        DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        IF xsdbool( t249 IS INITIAL ) = abap_true.
        ELSE.
          t264 = t249->sql_conversion.
        ENDIF.
        t247 = t264.
        DATA t271 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        IF xsdbool( t247 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t275) = VALUE f( ).
          DATA(t276) = VALUE i( ).
          DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t277 = t247.
          DATA t279 TYPE REF TO zcl_lnt_shape_9a575e77.
          t279 = NEW zcl_lnt_shape_9a575e77( i_field_name = t239 i_message_26cb = t124 i_token = t5 ).
          CREATE OBJECT t279->zlnt_view_ownkeys_b0e8086400eb.
          t279->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fieldName` p1 = t289 ).
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t279->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t279->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t291 ).
          ENDIF.
          CREATE OBJECT t279->zlnt_json_ownkeys_70e5fd461788.
          t279->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |fieldName| p1 = t293 ).
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |message| p1 = t295 ).
          ENDIF.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t279->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t279->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t297 ).
          ENDIF.
          t277->load( ).
          APPEND t279 TO t277->items.
          t276 = lines( t277->items ).
          t277->save( ).
          t275 = t276.
          DATA(t298) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t298->has = abap_true.
          t298->value = t275.
          t271 = t298.
        ENDIF.
        t246 = t271.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_field_name.
    DATA(t2) = i_tables_8d5a.
    DATA(t3) = i_scope.
    DATA t5 TYPE REF TO zif_lnt_union_c74a232f.
    DATA(t6) = VALUE i( ).
    DO.
      t2->load( ).
      IF t6 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t2->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t7.
      DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
      t9 = t5.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      IF xsdbool( t9 IS INITIAL ) = abap_true.
        CLEAR t11.
      ELSE.
        DATA t16 TYPE REF TO zif_lnt_union_c74a232f.
        t16 = t9.
        DATA t18 TYPE REF TO zif_lnt_registry.
        t18 = t3->reg.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t11 = t16->parse_type( i_reg_f149 = t18 i_data_element = t23 i_description = t24 ).
      ENDIF.
      t7 = t11.
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_structure_type.
        t29 ?= t7.
        DATA t31 TYPE string.
        t31 = t1.
        DATA t34 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
        t34 = t29->indexed.
        DATA t36 TYPE string.
        DATA(t38) = strlen( t31 ).
        t36 = t31.
        IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t36 TO UPPER CASE.
        ELSE.
          t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
        ENDIF.
        result = t34->get( p0 = t36 ).
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d835_877fa39e77bb.
  ENDMETHOD.
ENDCLASS.
