* TS: src/abap/5_syntax/expressions/component_name.ts:6:1 ComponentName
CLASS zcl_lnt_sy_component_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_context TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_component_name IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_context.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_void_type.
      t6 ?= t1.
      result = t6.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    t9 = i_node->get_first_token( ).
    t8 = t9.
    DATA t11 TYPE string.
    DATA t15 TYPE string.
    t15 = t8->str.
    t11 = t15.
    DATA t17 TYPE abap_bool.
    t17 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA t22 TYPE REF TO zcl_lnt_structure_type.
      t22 ?= t1.
      DATA t24 TYPE string.
      t24 = t11.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      t27 = t22->indexed.
      DATA t29 TYPE string.
      DATA(t31) = strlen( t24 ).
      t29 = t24.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      t26 = t27->get( p0 = t29 ).
      t19 = t26.
      DATA(t32) = VALUE abap_bool( ).
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t32 = xsdbool( t19 IS INITIAL ).
      IF t32 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t39 = t3->issues.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA(t46) = |Component "|.
        DATA(t48) = strlen( t46 ).
        t45 = |{ t46 }{ t11 }|.
        DATA(t49) = |" not found in structure|.
        DATA(t50) = strlen( t45 ).
        t44 = |{ t45 }{ t49 }|.
        DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t41 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t8 i_message_26cb = t44 i_fix = t51 ).
        t39->load( ).
        APPEND t41 TO t39->items.
        t39->save( ).
        DATA t52 TYPE REF TO zcl_lnt_void_type.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t55) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t55.
        t53 = t56.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t52 = zcl_lnt_void_type=>get_db65( i_voided = t53 i_qualified_name = t58 ).
        result = t52.
        RETURN.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t64 TYPE abap_bool.
    DATA t65 TYPE abap_bool.
    t65 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t64 = t65.
    IF t65 = abap_true.
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE abap_bool.
      DATA t70 TYPE REF TO zcl_lnt_ty_table_type.
      t70 ?= t1.
      DATA t72 TYPE abap_bool.
      DATA t73 TYPE REF TO zcl_lnt_itable_options.
      t73 = t70->options.
      t72 = t73->zlnt_view_read_sr_ec4602663c93( ).
      t68 = t72.
      t67 = xsdbool( t68 = abap_true ).
      t64 = t67.
    ENDIF.
    IF t64 = abap_true.
      DATA t76 TYPE REF TO zcl_lnt_abstract_type.
      DATA t79 TYPE REF TO zcl_lnt_ty_table_type.
      t79 ?= t1.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      t81 = t79->row_type.
      t76 = t81.
      DATA t83 TYPE abap_bool.
      t83 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_void_type ).
      IF t83 = abap_true.
        DATA t85 TYPE REF TO zcl_lnt_ty_table_type.
        t85 ?= t1.
        result = t85.
        RETURN.
      ELSE.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE string.
        DATA(t90) = strlen( t11 ).
        t88 = t11.
        IF t88 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t88 TO UPPER CASE.
        ELSE.
          t88 = zlnt_runtime_uppe_91169605024d=>full( t88 ).
        ENDIF.
        DATA(t91) = |TABLE_LINE|.
        t87 = xsdbool( t88 = t91 ).
        IF t87 = abap_true.
          result = t76.
          RETURN.
        ELSE.
          DATA t96 TYPE abap_bool.
          t96 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t96 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_abstract_type.
            DATA t101 TYPE REF TO zcl_lnt_structure_type.
            t101 ?= t76.
            DATA t103 TYPE string.
            t103 = t11.
            DATA t105 TYPE REF TO zcl_lnt_abstract_type.
            DATA t106 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t106 = t101->indexed.
            DATA t108 TYPE string.
            DATA(t110) = strlen( t103 ).
            t108 = t103.
            IF t108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t108 TO UPPER CASE.
            ELSE.
              t108 = zlnt_runtime_uppe_91169605024d=>full( t108 ).
            ENDIF.
            t105 = t106->get( p0 = t108 ).
            t98 = t105.
            DATA(t111) = VALUE abap_bool( ).
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t111 = xsdbool( t98 IS INITIAL ).
            IF t111 = abap_true.
              DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t118 = t3->issues.
              DATA t120 TYPE REF TO zcl_lnt_issue.
              DATA t123 TYPE string.
              DATA t124 TYPE string.
              DATA(t125) = |Component "|.
              DATA(t127) = strlen( t125 ).
              t124 = |{ t125 }{ t11 }|.
              DATA(t128) = |" not found in structure|.
              DATA(t129) = strlen( t124 ).
              t123 = |{ t124 }{ t128 }|.
              DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t120 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t8 i_message_26cb = t123 i_fix = t130 ).
              t118->load( ).
              APPEND t120 TO t118->items.
              t118->save( ).
              DATA t131 TYPE REF TO zcl_lnt_void_type.
              DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t134) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t135->has = abap_true.
              t135->value = t134.
              t132 = t135.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t131 = zcl_lnt_void_type=>get_db65( i_voided = t132 i_qualified_name = t137 ).
              result = t131.
              RETURN.
            ENDIF.
            result = t98.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t143 TYPE abap_bool.
    DATA t144 TYPE abap_bool.
    t144 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    t143 = xsdbool( t144 = abap_false ).
    IF t143 = abap_true.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t146 = t3->issues.
      DATA t148 TYPE REF TO zcl_lnt_issue.
      DATA(t151) = VALUE string( ).
      DATA(t152) = VALUE string( ).
      DATA t153 TYPE string.
      DATA t154 TYPE string.
      DATA(t155) = |Not a structure, ComponentName, "|.
      DATA(t157) = strlen( t155 ).
      t154 = |{ t155 }{ t11 }|.
      DATA(t158) = |", (|.
      DATA(t159) = strlen( t154 ).
      t153 = |{ t154 }{ t158 }|.
      DATA(t160) = VALUE string( ).
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t163 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA t165 TYPE REF TO zcl_lnt_abstract_type.
      t165 = t1.
      DATA t167 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      DATA(t168) = xsdbool( t165 IS INITIAL ).
      IF t168 = abap_true.
      ELSE.
        DATA t171 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t172 TYPE REF TO zcl_lnt_abstract_type.
        t172 = t165.
        t171 = t172->zlnt_builtin_clas_3f891b097658( ).
        t167 = t171.
      ENDIF.
      t163 = t167.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t175) = xsdbool( t163 IS INITIAL ).
      IF t175 = abap_true.
      ELSE.
        DATA t178 TYPE string.
        DATA t179 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        t179 = t163.
        t178 = t179->name.
        DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t181->has = abap_true.
        t181->value = t178.
        t174 = t181.
      ENDIF.
      t161 = t174.
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE abap_bool( ).
      IF t161 IS INITIAL.
        t183 = abap_true.
      ELSEIF t161->has = abap_false.
        t183 = abap_true.
      ENDIF.
      IF t183 = abap_true.
        t182 = |undefined|.
      ELSE.
        DATA t186 TYPE string.
        t186 = t161->value.
        t182 = t186.
      ENDIF.
      t160 = t182.
      DATA(t188) = strlen( t153 ).
      t152 = |{ t153 }{ t160 }|.
      DATA(t189) = |)|.
      DATA(t190) = strlen( t152 ).
      t151 = |{ t152 }{ t189 }|.
      DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t148 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t8 i_message_26cb = t151 i_fix = t191 ).
      t146->load( ).
      APPEND t148 TO t146->items.
      t146->save( ).
    ENDIF.
    DATA t192 TYPE REF TO zcl_lnt_void_type.
    DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t195) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
    DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t196->has = abap_true.
    t196->value = t195.
    t193 = t196.
    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t192 = zcl_lnt_void_type=>get_db65( i_voided = t193 i_qualified_name = t198 ).
    result = t192.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d791_63d07452182d.
  ENDMETHOD.
ENDCLASS.
