* TS: src/objects/_dynpros.ts.module module
CLASS zcl_lnt_dynpros_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS parse_number IMPORTING i_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE int8.
    CLASS-METHODS parse_dynpros IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_9a567949f3db TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_5f3d60166229.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynpros_module IMPLEMENTATION.
  METHOD parse_number.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_value ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_dynpros.ts:22|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD parse_dynpros.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_parsed ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    DATA(t13) = |abapGit|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    IF t16 IS NOT BOUND.
      t15 = abap_true.
    ELSE.
      t15 = xsdbool( t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
      DATA(t20) = |asx:abap|.
      t18 = t19->get( p0 = t20 ).
      t14 = t18.
    ENDIF.
    t9 = t14.
    t8 = t9.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    IF t24 IS BOUND.
      t23 = t24.
    ENDIF.
    IF t23 IS NOT BOUND.
      t22 = abap_true.
    ELSE.
      t22 = xsdbool( t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t22 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t21 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
      t27 = t28.
      DATA(t29) = |asx:values|.
      t26 = t27->get( p0 = t29 ).
      t21 = t26.
    ENDIF.
    t7 = t21.
    t6 = t7.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    IF t33 IS BOUND.
      t32 = t33.
    ENDIF.
    IF t32 IS NOT BOUND.
      t31 = abap_true.
    ELSE.
      t31 = xsdbool( t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t31 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t30 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
      t36 = t37.
      DATA(t38) = |DYNPROS|.
      t35 = t36->get( p0 = t38 ).
      t30 = t35.
    ENDIF.
    t5 = t30.
    t4 = t5.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    t42 = t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    t44 = xsdbool( t45 = abap_false ).
    t39 = t44.
    IF t39 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
      t49 = t50.
      DATA(t51) = |item|.
      t48 = t49->get( p0 = t51 ).
      t47 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t48 ).
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      LOOP AT t47->items INTO t53.
        t52 ?= t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
        IF t61 IS NOT BOUND.
          t60 = abap_true.
        ELSE.
          t60 = xsdbool( t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t60 = abap_true.
          DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t62.
          t59 = t62.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t57 ).
          DATA(t65) = |HEADER|.
          t63 = t64->get( p0 = t65 ).
          t59 = t63.
        ENDIF.
        t56 = t59.
        t55 = t56.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        t66 = t67.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
        IF t69 IS INITIAL.
          t68 = abap_true.
        ENDIF.
        t54 = t68.
        IF t54 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t71.
        t70 = t71.
        DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        DATA(t78) = |FIELDS|.
        t76 = t77->get( p0 = t78 ).
        t75 = t76.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
        IF t81 IS NOT BOUND.
          t80 = abap_true.
        ELSE.
          t80 = xsdbool( t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t80 = abap_true.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          t79 = t82.
        ELSE.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
          DATA(t85) = |RPY_DYFATC|.
          t83 = t84->get( p0 = t85 ).
          t79 = t83.
        ENDIF.
        t74 = t79.
        IF t74 IS BOUND.
          t73 = t74.
        ENDIF.
        t72 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t73 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA t87 TYPE REF TO object.
        CLEAR t87.
        LOOP AT t72->items INTO t87.
          t86 ?= t87.
          DATA(t88) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
          DATA t89 TYPE REF TO zcl_lnt_dynpro_field.
          CLEAR t89.
          DATA t90 TYPE string.
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t93) = |NAME|.
          t91 = t92->get( p0 = t93 ).
          t90 = t91->as_string( ).
          DATA t94 TYPE string.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t97) = |TYPE|.
          t95 = t96->get( p0 = t97 ).
          t94 = t95->as_string( ).
          DATA t98 TYPE string.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t101) = |CONT_TYPE|.
          t99 = t100->get( p0 = t101 ).
          t98 = t99->as_string( ).
          DATA(t102) = VALUE int8( ).
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t106) = |LENGTH|.
          t104 = t105->get( p0 = t106 ).
          t103 = t104.
          DATA(t107) = VALUE int8( ).
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA(t109) = VALUE abap_bool( ).
          DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
          IF t110 IS INITIAL.
            t109 = abap_true.
          ENDIF.
          IF t109 = abap_true.
            DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t111.
            t108 = t111.
          ELSE.
            DATA t112 TYPE string.
            DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
            t112 = t113->as_string( ).
            DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t114->has = abap_true.
            t114->value = t112.
            t108 = t114.
          ENDIF.
          t107 = zcl_lnt_dynpros_module=>parse_number( i_value = t108 ).
          t102 = t107.
          DATA(t115) = VALUE int8( ).
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t119) = |VISLENGTH|.
          t117 = t118->get( p0 = t119 ).
          t116 = t117.
          DATA(t120) = VALUE int8( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
          IF t123 IS INITIAL.
            t122 = abap_true.
          ENDIF.
          IF t122 = abap_true.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            t121 = t124.
          ELSE.
            DATA t125 TYPE string.
            DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
            t125 = t126->as_string( ).
            DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t127->has = abap_true.
            t127->value = t125.
            t121 = t127.
          ENDIF.
          t120 = zcl_lnt_dynpros_module=>parse_number( i_value = t121 ).
          t115 = t120.
          DATA(t128) = VALUE int8( ).
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t132) = |LINE|.
          t130 = t131->get( p0 = t132 ).
          t129 = t130.
          DATA(t133) = VALUE int8( ).
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA(t135) = VALUE abap_bool( ).
          DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
          IF t136 IS INITIAL.
            t135 = abap_true.
          ENDIF.
          IF t135 = abap_true.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t134 = t137.
          ELSE.
            DATA t138 TYPE string.
            DATA(t139) = CAST zlnt_runtime_dyna_a429568d5be8( t129 ).
            t138 = t139->as_string( ).
            DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t140->has = abap_true.
            t140->value = t138.
            t134 = t140.
          ENDIF.
          t133 = zcl_lnt_dynpros_module=>parse_number( i_value = t134 ).
          t128 = t133.
          DATA(t141) = VALUE int8( ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t145) = |COLUMN|.
          t143 = t144->get( p0 = t145 ).
          t142 = t143.
          DATA(t146) = VALUE int8( ).
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
          IF t149 IS INITIAL.
            t148 = abap_true.
          ENDIF.
          IF t148 = abap_true.
            DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t150.
            t147 = t150.
          ELSE.
            DATA t151 TYPE string.
            DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
            t151 = t152->as_string( ).
            DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t153->has = abap_true.
            t153->value = t151.
            t147 = t153.
          ENDIF.
          t146 = zcl_lnt_dynpros_module=>parse_number( i_value = t147 ).
          t141 = t146.
          DATA(t154) = VALUE int8( ).
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
          DATA(t158) = |HEIGHT|.
          t156 = t157->get( p0 = t158 ).
          t155 = t156.
          DATA(t159) = VALUE int8( ).
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA(t161) = VALUE abap_bool( ).
          DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t155 ).
          IF t162 IS INITIAL.
            t161 = abap_true.
          ENDIF.
          IF t161 = abap_true.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t160 = t163.
          ELSE.
            DATA t164 TYPE string.
            DATA(t165) = CAST zlnt_runtime_dyna_a429568d5be8( t155 ).
            t164 = t165->as_string( ).
            DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t166->has = abap_true.
            t166->value = t164.
            t160 = t166.
          ENDIF.
          t159 = zcl_lnt_dynpros_module=>parse_number( i_value = t160 ).
          t154 = t159.
          t89 = NEW zcl_lnt_dynpro_field( i_name = t90 i_type_9913 = t94 i_cont_type = t98 i_length = t102 i_vislength = t115 i_line = t128 i_column = t141 i_height = t154 ).
          APPEND t89 TO t88->items.
        ENDLOOP.
        DATA(t167) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t168 TYPE REF TO zcl_lnt_dynpro_header.
        CLEAR t168.
        DATA(t169) = VALUE string( ).
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        DATA(t175) = |HEADER|.
        t173 = t174->get( p0 = t175 ).
        t172 = t173.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        DATA(t177) = VALUE abap_bool( ).
        DATA(t178) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
        IF t178 IS NOT BOUND.
          t177 = abap_true.
        ELSE.
          t177 = xsdbool( t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t177 = abap_true.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          t176 = t179.
        ELSE.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t181) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
          DATA(t182) = |SCREEN|.
          t180 = t181->get( p0 = t182 ).
          t176 = t180.
        ENDIF.
        t171 = t176.
        t170 = t171.
        t169 = t170->as_string( ).
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        DATA(t189) = |HEADER|.
        t187 = t188->get( p0 = t189 ).
        t186 = t187.
        DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t190.
        DATA(t191) = VALUE abap_bool( ).
        DATA(t192) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
        IF t192 IS NOT BOUND.
          t191 = abap_true.
        ELSE.
          t191 = xsdbool( t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t191 = abap_true.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          t190 = t193.
        ELSE.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t195) = CAST zlnt_runtime_dyna_a429568d5be8( t186 ).
          DATA(t196) = |DESCRIPT|.
          t194 = t195->get( p0 = t196 ).
          t190 = t194.
        ENDIF.
        t185 = t190.
        t184 = t185.
        t183 = t184->as_string( ).
        DATA(t197) = VALUE string( ).
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        DATA(t203) = |HEADER|.
        t201 = t202->get( p0 = t203 ).
        t200 = t201.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
        IF t206 IS NOT BOUND.
          t205 = abap_true.
        ELSE.
          t205 = xsdbool( t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t205 = abap_true.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          t204 = t207.
        ELSE.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t200 ).
          DATA(t210) = |NEXTSCREEN|.
          t208 = t209->get( p0 = t210 ).
          t204 = t208.
        ENDIF.
        t199 = t204.
        t198 = t199.
        t197 = t198->as_string( ).
        DATA(t211) = VALUE string( ).
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t213.
        DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t216) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
        DATA(t217) = |HEADER|.
        t215 = t216->get( p0 = t217 ).
        t214 = t215.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        DATA(t219) = VALUE abap_bool( ).
        DATA(t220) = CAST zlnt_runtime_dyna_a429568d5be8( t214 ).
        IF t220 IS NOT BOUND.
          t219 = abap_true.
        ELSE.
          t219 = xsdbool( t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t219 = abap_true.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          t218 = t221.
        ELSE.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t223) = CAST zlnt_runtime_dyna_a429568d5be8( t214 ).
          DATA(t224) = |TYPE|.
          t222 = t223->get( p0 = t224 ).
          t218 = t222.
        ENDIF.
        t213 = t218.
        t212 = t213.
        t211 = t212->as_string( ).
        DATA(t225) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
        t168 = NEW zcl_lnt_dynpro_header( i_number = t169 i_description = t183 i_next_screen = t197 i_type_9913 = t211 i_fields_62af = t225 ).
        APPEND t168 TO t167->items.
      ENDLOOP.
    ENDIF.
    DATA(t226) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t226.

  ENDMETHOD.
  METHOD zlnt_builtin_init_5f3d60166229.
    IF zlnt_builtin_init_9a567949f3db = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_9a567949f3db = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1838_44f269c101ba.
  ENDMETHOD.
ENDCLASS.
