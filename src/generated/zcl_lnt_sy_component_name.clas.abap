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
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_void_type ).
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_void_type.
      DATA(t7) = t1.
      t6 ?= t7.
      result = t6.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = t2.
    t9 = t10->get_first_token( ).
    t8 = t9.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t8.
    t13 = t14.
    DATA t15 TYPE string.
    DATA(t16) = t13.
    t15 = t16->str.
    t12 = t15.
    t11 = t12.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t1.
    t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_structure_type ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_structure_type.
      DATA t22 TYPE REF TO zcl_lnt_structure_type.
      DATA(t23) = t1.
      t22 ?= t23.
      t21 = t22.
      DATA t24 TYPE string.
      DATA(t25) = t11.
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t28) = t21.
      t27 = t28->indexed.
      DATA t29 TYPE string.
      DATA(t30) = t24.
      DATA(t31) = strlen( t30 ).
      t29 = t30.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      t26 = t27->get( p0 = t29 ).
      t20 = t26.
      t19 = t20.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t34) = t19.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = t3.
        t39 = t40->issues.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        DATA(t42) = t3.
        DATA(t43) = t8.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA(t46) = |Component "|.
        DATA(t47) = t11.
        DATA(t48) = strlen( t46 ).
        t45 = |{ t46 }{ t47 }|.
        DATA(t49) = |" not found in structure|.
        DATA(t50) = strlen( t45 ).
        t44 = |{ t45 }{ t49 }|.
        DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t51.
        t41 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t42 i_token = t43 i_message_26cb = t44 i_fix = t51 ).
        t39->load( ).
        APPEND t41 TO t39->items.
        t39->save( ).
        DATA t52 TYPE REF TO zcl_lnt_void_type.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA(t55) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t55.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t53 = t57.
        ENDIF.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t52 = zcl_lnt_void_type=>get_db65( i_voided = t53 i_qualified_name = t58 ).
        result = t52.
        RETURN.
      ENDIF.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t62) = t19.
        t61 = t62.
        t59 = t61.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t63.
        t59 = t63.
      ENDIF.
      result = t59.
      RETURN.
    ENDIF.
    DATA t64 TYPE abap_bool.
    DATA t65 TYPE abap_bool.
    DATA(t66) = t1.
    t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t64 = t65.
    IF t65 = abap_true.
      DATA t67 TYPE abap_bool.
      DATA t68 TYPE abap_bool.
      DATA t69 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t70 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t71) = t1.
      t70 ?= t71.
      t69 = t70.
      DATA t72 TYPE abap_bool.
      DATA t73 TYPE REF TO zcl_lnt_itable_options.
      DATA(t74) = t69.
      t73 = t74->options.
      t72 = t73->zlnt_view_read_sr_ec4602663c93( ).
      t68 = t72.
      DATA(t75) = abap_true.
      t67 = xsdbool( t68 = t75 ).
      t64 = t67.
    ENDIF.
    IF t64 = abap_true.
      DATA t76 TYPE REF TO zcl_lnt_abstract_type.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      DATA t78 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t79 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t80) = t1.
      t79 ?= t80.
      t78 = t79.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t82) = t78.
      t81 = t82->row_type.
      t77 = t81.
      t76 = t77.
      DATA t83 TYPE abap_bool.
      DATA(t84) = t76.
      t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_void_type ).
      IF t83 = abap_true.
        DATA t85 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t86) = t1.
        t85 ?= t86.
        result = t85.
        RETURN.
      ELSE.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE string.
        DATA(t89) = t11.
        DATA(t90) = strlen( t89 ).
        t88 = t89.
        IF t88 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t88 TO UPPER CASE.
        ELSE.
          t88 = zlnt_runtime_uppe_91169605024d=>full( t88 ).
        ENDIF.
        DATA(t91) = |TABLE_LINE|.
        t87 = xsdbool( t88 = t91 ).
        IF t87 = abap_true.
          DATA t92 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA(t94) = t76.
            t92 = t94.
          ELSE.
            DATA t95 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t95.
            t92 = t95.
          ENDIF.
          result = t92.
          RETURN.
        ELSE.
          DATA t96 TYPE abap_bool.
          DATA(t97) = t76.
          t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t96 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t98.
            DATA t99 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t99.
            DATA t100 TYPE REF TO zcl_lnt_structure_type.
            DATA t101 TYPE REF TO zcl_lnt_structure_type.
            DATA(t102) = t76.
            t101 ?= t102.
            t100 = t101.
            DATA t103 TYPE string.
            DATA(t104) = t11.
            t103 = t104.
            DATA t105 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t105.
            DATA t106 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t107) = t100.
            t106 = t107->indexed.
            DATA t108 TYPE string.
            DATA(t109) = t103.
            DATA(t110) = strlen( t109 ).
            t108 = t109.
            IF t108 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t108 TO UPPER CASE.
            ELSE.
              t108 = zlnt_runtime_uppe_91169605024d=>full( t108 ).
            ENDIF.
            t105 = t106->get( p0 = t108 ).
            t99 = t105.
            t98 = t99.
            DATA(t111) = VALUE abap_bool( ).
            DATA t112 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t113) = t98.
            t112 = t113.
            DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            t114 = t115.
            DATA(t116) = VALUE abap_bool( ).
            DATA(t117) = t112.
            IF t117 IS INITIAL.
              t116 = abap_true.
            ENDIF.
            t111 = t116.
            IF t111 = abap_true.
              DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t119) = t3.
              t118 = t119->issues.
              DATA t120 TYPE REF TO zcl_lnt_issue.
              DATA(t121) = t3.
              DATA(t122) = t8.
              DATA t123 TYPE string.
              DATA t124 TYPE string.
              DATA(t125) = |Component "|.
              DATA(t126) = t11.
              DATA(t127) = strlen( t125 ).
              t124 = |{ t125 }{ t126 }|.
              DATA(t128) = |" not found in structure|.
              DATA(t129) = strlen( t124 ).
              t123 = |{ t124 }{ t128 }|.
              DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t130.
              t120 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t121 i_token = t122 i_message_26cb = t123 i_fix = t130 ).
              t118->load( ).
              APPEND t120 TO t118->items.
              t118->save( ).
              DATA t131 TYPE REF TO zcl_lnt_void_type.
              CLEAR t131.
              DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t132.
              DATA(t133) = abap_true.
              IF t133 = abap_true.
                DATA(t134) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t135->has = abap_true.
                t135->value = t134.
                t132 = t135.
              ELSE.
                DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t136.
                t132 = t136.
              ENDIF.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t137.
              t131 = zcl_lnt_void_type=>get_db65( i_voided = t132 i_qualified_name = t137 ).
              result = t131.
              RETURN.
            ENDIF.
            DATA t138 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t138.
            DATA(t139) = abap_true.
            IF t139 = abap_true.
              DATA t140 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t141) = t98.
              t140 = t141.
              t138 = t140.
            ELSE.
              DATA t142 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t142.
              t138 = t142.
            ENDIF.
            result = t138.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t143 TYPE abap_bool.
    DATA t144 TYPE abap_bool.
    DATA(t145) = t1.
    t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_unknown_type ).
    t143 = xsdbool( t144 = abap_false ).
    IF t143 = abap_true.
      DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t147) = t3.
      t146 = t147->issues.
      DATA t148 TYPE REF TO zcl_lnt_issue.
      CLEAR t148.
      DATA(t149) = t3.
      DATA(t150) = t8.
      DATA(t151) = VALUE string( ).
      DATA(t152) = VALUE string( ).
      DATA t153 TYPE string.
      DATA t154 TYPE string.
      DATA(t155) = |Not a structure, ComponentName, "|.
      DATA(t156) = t11.
      DATA(t157) = strlen( t155 ).
      t154 = |{ t155 }{ t156 }|.
      DATA(t158) = |", (|.
      DATA(t159) = strlen( t154 ).
      t153 = |{ t154 }{ t158 }|.
      DATA(t160) = VALUE string( ).
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t166) = t1.
      t165 = t166.
      DATA t167 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t167.
      DATA(t168) = VALUE abap_bool( ).
      DATA(t169) = t165.
      IF t169 IS INITIAL.
        t168 = abap_true.
      ENDIF.
      IF t168 = abap_true.
        DATA t170 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t170.
        t167 = t170.
      ELSE.
        DATA t171 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t172 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t173) = t165.
        t172 = t173.
        t171 = t172->zlnt_builtin_clas_3f891b097658( ).
        t167 = t171.
      ENDIF.
      t164 = t167.
      t163 = t164.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = t163.
      IF t176 IS INITIAL.
        t175 = abap_true.
      ENDIF.
      IF t175 = abap_true.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        t174 = t177.
      ELSE.
        DATA t178 TYPE string.
        DATA t179 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t180) = t163.
        t179 = t180.
        t178 = t179->name.
        DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t181->has = abap_true.
        t181->value = t178.
        t174 = t181.
      ENDIF.
      t162 = t174.
      t161 = t162.
      DATA(t182) = VALUE string( ).
      DATA(t183) = VALUE abap_bool( ).
      DATA(t184) = t161.
      IF t184 IS INITIAL.
        t183 = abap_true.
      ELSEIF t184->has = abap_false.
        t183 = abap_true.
      ENDIF.
      IF t183 = abap_true.
        DATA(t185) = |undefined|.
        t182 = t185.
      ELSE.
        DATA t186 TYPE string.
        DATA(t187) = t161.
        t186 = t187->value.
        t182 = t186.
      ENDIF.
      t160 = t182.
      DATA(t188) = strlen( t153 ).
      t152 = |{ t153 }{ t160 }|.
      DATA(t189) = |)|.
      DATA(t190) = strlen( t152 ).
      t151 = |{ t152 }{ t189 }|.
      DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t191.
      t148 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t149 i_token = t150 i_message_26cb = t151 i_fix = t191 ).
      t146->load( ).
      APPEND t148 TO t146->items.
      t146->save( ).
    ENDIF.
    DATA t192 TYPE REF TO zcl_lnt_void_type.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t193.
    DATA(t194) = abap_true.
    IF t194 = abap_true.
      DATA(t195) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t196->has = abap_true.
      t196->value = t195.
      t193 = t196.
    ELSE.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      t193 = t197.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t198.
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
