* TS: src/ddic.ts:21:1 DDIC
CLASS zcl_lnt_ddic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS is_exception IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition i_obj_ac26 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS lookup_builtin_type IMPORTING i_name TYPE string i_length TYPE REF TO zlnt_runtime_opti_4a236cd5714d i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4a236cd5714d i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS in_error_namespace IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS lookup_object IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_no_void IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_ddls IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_domain IMPORTING i_name TYPE string i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_data_element IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_or_view IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_or_view2 IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_union_c74a232f.
    METHODS lookup_table IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS lookup_view IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_type IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS text_to_type IMPORTING i_input_967e TYPE REF TO zcl_lnt_shape_4a88086c RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
  ENDMETHOD.

  METHOD is_exception.
    DATA(t1) = i_def.
    DATA(t2) = i_obj_ac26.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/ddic.ts:30|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD lookup_builtin_type.
    DATA(t1) = i_name.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_qualified_name.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    DATA(t7) = |STRING|.
    t5 = xsdbool( t6 = t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_string_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA t11 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        DATA(t13) = abap_true.
        IF t13 = abap_true.
          DATA(t14) = VALUE string( ).
          DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t16) = t4.
          t15 = t16.
          DATA(t17) = VALUE string( ).
          DATA(t18) = VALUE abap_bool( ).
          DATA(t19) = t15.
          IF t19 IS BOUND.
            IF t19->has = abap_true.
              t18 = xsdbool( strlen( t19->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t18 = abap_true.
            DATA t20 TYPE string.
            DATA(t21) = t15.
            t20 = t21->value.
            t17 = t20.
          ELSE.
            DATA(t22) = t1.
            t17 = t22.
          ENDIF.
          t14 = t17.
          DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t23->has = abap_true.
          t23->value = t14.
          t12 = t23.
        ELSE.
          DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t24.
          t12 = t24.
        ENDIF.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t26.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t11 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t12 i_conversion_exit = t25 i_derived_from_constant = t26 i_ddic_name = t27 i_rtti_name = t28 i_description = t29 ).
        t9 = t11.
      ELSE.
        DATA t30 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t30.
        t9 = t30.
      ENDIF.
      t8 = zcl_lnt_string_type=>get_db65( i_input_967e = t9 ).
      result = t8.
      RETURN.
    ELSE.
      DATA t31 TYPE abap_bool.
      DATA(t32) = t1.
      DATA(t33) = |XSTRING|.
      t31 = xsdbool( t32 = t33 ).
      IF t31 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_x_string_type.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t35.
        DATA(t36) = abap_true.
        IF t36 = abap_true.
          DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t37.
          DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t38.
          DATA(t39) = abap_true.
          IF t39 = abap_true.
            DATA(t40) = VALUE string( ).
            DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t42) = t4.
            t41 = t42.
            DATA(t43) = VALUE string( ).
            DATA(t44) = VALUE abap_bool( ).
            DATA(t45) = t41.
            IF t45 IS BOUND.
              IF t45->has = abap_true.
                t44 = xsdbool( strlen( t45->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t44 = abap_true.
              DATA t46 TYPE string.
              DATA(t47) = t41.
              t46 = t47->value.
              t43 = t46.
            ELSE.
              DATA(t48) = t1.
              t43 = t48.
            ENDIF.
            t40 = t43.
            DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t49->has = abap_true.
            t49->value = t40.
            t38 = t49.
          ELSE.
            DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t50.
            t38 = t50.
          ENDIF.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t52.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t37 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t38 i_conversion_exit = t51 i_derived_from_constant = t52 i_ddic_name = t53 i_rtti_name = t54 i_description = t55 ).
          t35 = t37.
        ELSE.
          DATA t56 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t56.
          t35 = t56.
        ENDIF.
        t34 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t35 ).
        result = t34.
        RETURN.
      ELSE.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t1.
        DATA(t59) = |D|.
        t57 = xsdbool( t58 = t59 ).
        IF t57 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_date_type.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t61.
          DATA(t62) = abap_true.
          IF t62 = abap_true.
            DATA t63 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t63.
            DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t64.
            DATA(t65) = abap_true.
            IF t65 = abap_true.
              DATA(t66) = VALUE string( ).
              DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t68) = t4.
              t67 = t68.
              DATA(t69) = VALUE string( ).
              DATA(t70) = VALUE abap_bool( ).
              DATA(t71) = t67.
              IF t71 IS BOUND.
                IF t71->has = abap_true.
                  t70 = xsdbool( strlen( t71->value ) > 0 ).
                ENDIF.
              ENDIF.
              IF t70 = abap_true.
                DATA t72 TYPE string.
                DATA(t73) = t67.
                t72 = t73->value.
                t69 = t72.
              ELSE.
                DATA(t74) = t1.
                t69 = t74.
              ENDIF.
              t66 = t69.
              DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t75->has = abap_true.
              t75->value = t66.
              t64 = t75.
            ELSE.
              DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t76.
              t64 = t76.
            ENDIF.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t77.
            DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t78.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t81.
            t63 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t64 i_conversion_exit = t77 i_derived_from_constant = t78 i_ddic_name = t79 i_rtti_name = t80 i_description = t81 ).
            t61 = t63.
          ELSE.
            DATA t82 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t82.
            t61 = t82.
          ENDIF.
          t60 = NEW zcl_lnt_date_type( i_input_967e = t61 ).
          result = t60.
          RETURN.
        ELSE.
          DATA t83 TYPE abap_bool.
          DATA(t84) = t1.
          DATA(t85) = |T|.
          t83 = xsdbool( t84 = t85 ).
          IF t83 = abap_true.
            DATA t86 TYPE REF TO zcl_lnt_time_type.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t87.
            DATA(t88) = abap_true.
            IF t88 = abap_true.
              DATA t89 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t89.
              DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t90.
              DATA(t91) = abap_true.
              IF t91 = abap_true.
                DATA(t92) = VALUE string( ).
                DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t94) = t4.
                t93 = t94.
                DATA(t95) = VALUE string( ).
                DATA(t96) = VALUE abap_bool( ).
                DATA(t97) = t93.
                IF t97 IS BOUND.
                  IF t97->has = abap_true.
                    t96 = xsdbool( strlen( t97->value ) > 0 ).
                  ENDIF.
                ENDIF.
                IF t96 = abap_true.
                  DATA t98 TYPE string.
                  DATA(t99) = t93.
                  t98 = t99->value.
                  t95 = t98.
                ELSE.
                  DATA(t100) = t1.
                  t95 = t100.
                ENDIF.
                t92 = t95.
                DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t101->has = abap_true.
                t101->value = t92.
                t90 = t101.
              ELSE.
                DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t102.
                t90 = t102.
              ENDIF.
              DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t103.
              DATA t104 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t104.
              DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t105.
              DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t106.
              DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t107.
              t89 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t90 i_conversion_exit = t103 i_derived_from_constant = t104 i_ddic_name = t105 i_rtti_name = t106 i_description = t107 ).
              t87 = t89.
            ELSE.
              DATA t108 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t108.
              t87 = t108.
            ENDIF.
            t86 = NEW zcl_lnt_time_type( i_input_967e = t87 ).
            result = t86.
            RETURN.
          ELSE.
            DATA t109 TYPE abap_bool.
            DATA(t110) = t1.
            DATA(t111) = |XSEQUENCE|.
            t109 = xsdbool( t110 = t111 ).
            IF t109 = abap_true.
              DATA t112 TYPE REF TO zcl_lnt_x_sequence_type.
              CLEAR t112.
              DATA t113 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t113.
              DATA(t114) = abap_true.
              IF t114 = abap_true.
                DATA t115 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA(t116) = t4.
                DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t117.
                DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t118.
                DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t119.
                DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t120.
                DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t121.
                t115 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t116 i_conversion_exit = t117 i_derived_from_constant = t118 i_ddic_name = t119 i_rtti_name = t120 i_description = t121 ).
                t113 = t115.
              ELSE.
                DATA t122 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t122.
                t113 = t122.
              ENDIF.
              t112 = NEW zcl_lnt_x_sequence_type( i_input_967e = t113 ).
              result = t112.
              RETURN.
            ELSE.
              DATA t123 TYPE abap_bool.
              DATA(t124) = t1.
              DATA(t125) = |CLIKE|.
              t123 = xsdbool( t124 = t125 ).
              IF t123 = abap_true.
                DATA(t126) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
                result = t126.
                RETURN.
              ELSE.
                DATA t127 TYPE abap_bool.
                DATA(t128) = t1.
                DATA(t129) = |DECFLOAT|.
                t127 = xsdbool( t128 = t129 ).
                IF t127 = abap_true.
                  DATA t130 TYPE REF TO zcl_lnt_dec_float_type.
                  CLEAR t130.
                  DATA t131 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t131.
                  DATA(t132) = abap_true.
                  IF t132 = abap_true.
                    DATA t133 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA(t134) = t4.
                    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t135.
                    DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t136.
                    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t137.
                    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t138.
                    DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t139.
                    t133 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t134 i_conversion_exit = t135 i_derived_from_constant = t136 i_ddic_name = t137 i_rtti_name = t138 i_description = t139 ).
                    t131 = t133.
                  ELSE.
                    DATA t140 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t140.
                    t131 = t140.
                  ENDIF.
                  t130 = NEW zcl_lnt_dec_float_type( i_input_967e = t131 ).
                  result = t130.
                  RETURN.
                ELSE.
                  DATA t141 TYPE abap_bool.
                  DATA(t142) = t1.
                  DATA(t143) = |ANY|.
                  t141 = xsdbool( t142 = t143 ).
                  IF t141 = abap_true.
                    DATA t144 TYPE REF TO zcl_lnt_any_type.
                    CLEAR t144.
                    DATA t145 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t145.
                    DATA(t146) = abap_true.
                    IF t146 = abap_true.
                      DATA t147 TYPE REF TO zcl_lnt_abstract_type_data.
                      DATA(t148) = t4.
                      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t149.
                      DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t150.
                      DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t151.
                      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t152.
                      DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t153.
                      t147 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t148 i_conversion_exit = t149 i_derived_from_constant = t150 i_ddic_name = t151 i_rtti_name = t152 i_description = t153 ).
                      t145 = t147.
                    ELSE.
                      DATA t154 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t154.
                      t145 = t154.
                    ENDIF.
                    t144 = zcl_lnt_any_type=>get_db65( i_input_967e = t145 ).
                    result = t144.
                    RETURN.
                  ELSE.
                    DATA t155 TYPE abap_bool.
                    DATA(t156) = t1.
                    DATA(t157) = |SIMPLE|.
                    t155 = xsdbool( t156 = t157 ).
                    IF t155 = abap_true.
                      DATA(t158) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
                      result = t158.
                      RETURN.
                    ELSE.
                      DATA t159 TYPE abap_bool.
                      DATA(t160) = t1.
                      DATA(t161) = |%_C_POINTER|.
                      t159 = xsdbool( t160 = t161 ).
                      IF t159 = abap_true.
                        DATA t162 TYPE REF TO zcl_lnt_hex_type.
                        DATA(t163) = CONV int8( 8 ).
                        DATA(t164) = t4.
                        t162 = NEW zcl_lnt_hex_type( i_length = t163 i_qualified_name = t164 ).
                        result = t162.
                        RETURN.
                      ELSE.
                        DATA t165 TYPE abap_bool.
                        DATA(t166) = t1.
                        DATA(t167) = |TABLE|.
                        t165 = xsdbool( t166 = t167 ).
                        IF t165 = abap_true.
                          DATA t168 TYPE REF TO zcl_lnt_ty_table_type.
                          DATA t169 TYPE REF TO zcl_lnt_any_type.
                          DATA t170 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t170.
                          t169 = zcl_lnt_any_type=>get_db65( i_input_967e = t170 ).
                          DATA t171 TYPE REF TO zcl_lnt_itable_options.
                          DATA(t172) = abap_false.
                          DATA(t173) = |DEFAULT|.
                          DATA t174 TYPE REF TO zcl_lnt_itable_key.
                          CLEAR t174.
                          DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t175.
                          t171 = NEW zcl_lnt_itable_options( i_with_header = t172 i_key_type = t173 i_primary_key = t174 i_secondary = t175 ).
                          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t176.
                          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t177.
                          t168 = NEW zcl_lnt_ty_table_type( i_row_type = t169 i_options = t171 i_qualified_name = t176 i_description = t177 ).
                          result = t168.
                          RETURN.
                        ELSE.
                          DATA t178 TYPE abap_bool.
                          DATA(t179) = t1.
                          DATA(t180) = |DATA|.
                          t178 = xsdbool( t179 = t180 ).
                          IF t178 = abap_true.
                            DATA t181 TYPE REF TO zcl_lnt_data_type.
                            CLEAR t181.
                            DATA t182 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t182.
                            DATA(t183) = abap_true.
                            IF t183 = abap_true.
                              DATA t184 TYPE REF TO zcl_lnt_abstract_type_data.
                              DATA(t185) = t4.
                              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t186.
                              DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t187.
                              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t188.
                              DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t189.
                              DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t190.
                              t184 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t185 i_conversion_exit = t186 i_derived_from_constant = t187 i_ddic_name = t188 i_rtti_name = t189 i_description = t190 ).
                              t182 = t184.
                            ELSE.
                              DATA t191 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t191.
                              t182 = t191.
                            ENDIF.
                            t181 = NEW zcl_lnt_data_type( i_input_967e = t182 ).
                            result = t181.
                            RETURN.
                          ELSE.
                            DATA t192 TYPE abap_bool.
                            DATA(t193) = t1.
                            DATA(t194) = |NUMERIC|.
                            t192 = xsdbool( t193 = t194 ).
                            IF t192 = abap_true.
                              DATA t195 TYPE REF TO zcl_lnt_numeric_generic_type.
                              CLEAR t195.
                              DATA t196 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t196.
                              DATA(t197) = abap_true.
                              IF t197 = abap_true.
                                DATA t198 TYPE REF TO zcl_lnt_abstract_type_data.
                                DATA(t199) = t4.
                                DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t200.
                                DATA t201 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                CLEAR t201.
                                DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t202.
                                DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t203.
                                DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t204.
                                t198 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t199 i_conversion_exit = t200 i_derived_from_constant = t201 i_ddic_name = t202 i_rtti_name = t203 i_description = t204 ).
                                t196 = t198.
                              ELSE.
                                DATA t205 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t205.
                                t196 = t205.
                              ENDIF.
                              t195 = NEW zcl_lnt_numeric_generic_type( i_input_967e = t196 ).
                              result = t195.
                              RETURN.
                            ELSE.
                              DATA t206 TYPE abap_bool.
                              DATA(t207) = t1.
                              DATA(t208) = |UTCLONG|.
                              t206 = xsdbool( t207 = t208 ).
                              IF t206 = abap_true.
                                DATA t209 TYPE REF TO zcl_lnt_utc_long_type.
                                CLEAR t209.
                                DATA t210 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t210.
                                DATA(t211) = abap_true.
                                IF t211 = abap_true.
                                  DATA t212 TYPE REF TO zcl_lnt_abstract_type_data.
                                  DATA(t213) = t4.
                                  DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t214.
                                  DATA t215 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t215.
                                  DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t216.
                                  DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t217.
                                  DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t218.
                                  t212 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t213 i_conversion_exit = t214 i_derived_from_constant = t215 i_ddic_name = t216 i_rtti_name = t217 i_description = t218 ).
                                  t210 = t212.
                                ELSE.
                                  DATA t219 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t219.
                                  t210 = t219.
                                ENDIF.
                                t209 = NEW zcl_lnt_utc_long_type( i_input_967e = t210 ).
                                result = t209.
                                RETURN.
                              ELSE.
                                DATA t220 TYPE abap_bool.
                                DATA(t221) = t1.
                                DATA(t222) = |DECFLOAT16|.
                                t220 = xsdbool( t221 = t222 ).
                                IF t220 = abap_true.
                                  DATA t223 TYPE REF TO zcl_lnt_dec_float16_type.
                                  CLEAR t223.
                                  DATA t224 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t224.
                                  DATA(t225) = abap_true.
                                  IF t225 = abap_true.
                                    DATA t226 TYPE REF TO zcl_lnt_abstract_type_data.
                                    DATA(t227) = t4.
                                    DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t228.
                                    DATA t229 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                    CLEAR t229.
                                    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t230.
                                    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t231.
                                    DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t232.
                                    t226 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t227 i_conversion_exit = t228 i_derived_from_constant = t229 i_ddic_name = t230 i_rtti_name = t231 i_description = t232 ).
                                    t224 = t226.
                                  ELSE.
                                    DATA t233 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t233.
                                    t224 = t233.
                                  ENDIF.
                                  t223 = NEW zcl_lnt_dec_float16_type( i_input_967e = t224 ).
                                  result = t223.
                                  RETURN.
                                ELSE.
                                  DATA t234 TYPE abap_bool.
                                  DATA(t235) = t1.
                                  DATA(t236) = |DECFLOAT34|.
                                  t234 = xsdbool( t235 = t236 ).
                                  IF t234 = abap_true.
                                    DATA t237 TYPE REF TO zcl_lnt_dec_float34_type.
                                    CLEAR t237.
                                    DATA t238 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t238.
                                    DATA(t239) = abap_true.
                                    IF t239 = abap_true.
                                      DATA t240 TYPE REF TO zcl_lnt_abstract_type_data.
                                      DATA(t241) = t4.
                                      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t242.
                                      DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                      CLEAR t243.
                                      DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t244.
                                      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t245.
                                      DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t246.
                                      t240 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t241 i_conversion_exit = t242 i_derived_from_constant = t243 i_ddic_name = t244 i_rtti_name = t245 i_description = t246 ).
                                      t238 = t240.
                                    ELSE.
                                      DATA t247 TYPE REF TO zcl_lnt_abstract_type_data.
                                      CLEAR t247.
                                      t238 = t247.
                                    ENDIF.
                                    t237 = NEW zcl_lnt_dec_float34_type( i_input_967e = t238 ).
                                    result = t237.
                                    RETURN.
                                  ELSE.
                                    DATA t248 TYPE abap_bool.
                                    DATA(t249) = t1.
                                    DATA(t250) = |CSEQUENCE|.
                                    t248 = xsdbool( t249 = t250 ).
                                    IF t248 = abap_true.
                                      DATA t251 TYPE REF TO zcl_lnt_c_sequence_type.
                                      CLEAR t251.
                                      DATA t252 TYPE REF TO zcl_lnt_abstract_type_data.
                                      CLEAR t252.
                                      DATA(t253) = abap_true.
                                      IF t253 = abap_true.
                                        DATA t254 TYPE REF TO zcl_lnt_abstract_type_data.
                                        DATA(t255) = t4.
                                        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t256.
                                        DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                        CLEAR t257.
                                        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t258.
                                        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t259.
                                        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t260.
                                        t254 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t255 i_conversion_exit = t256 i_derived_from_constant = t257 i_ddic_name = t258 i_rtti_name = t259 i_description = t260 ).
                                        t252 = t254.
                                      ELSE.
                                        DATA t261 TYPE REF TO zcl_lnt_abstract_type_data.
                                        CLEAR t261.
                                        t252 = t261.
                                      ENDIF.
                                      t251 = NEW zcl_lnt_c_sequence_type( i_input_967e = t252 ).
                                      result = t251.
                                      RETURN.
                                    ELSE.
                                      DATA t262 TYPE abap_bool.
                                      DATA(t263) = t1.
                                      DATA(t264) = |I|.
                                      t262 = xsdbool( t263 = t264 ).
                                      IF t262 = abap_true.
                                        DATA t265 TYPE REF TO zcl_lnt_integer_type.
                                        CLEAR t265.
                                        DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
                                        CLEAR t266.
                                        DATA(t267) = abap_true.
                                        IF t267 = abap_true.
                                          DATA t268 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t268.
                                          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t269.
                                          DATA(t270) = abap_true.
                                          IF t270 = abap_true.
                                            DATA(t271) = VALUE string( ).
                                            DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t273) = t4.
                                            t272 = t273.
                                            DATA(t274) = VALUE string( ).
                                            DATA(t275) = VALUE abap_bool( ).
                                            DATA(t276) = t272.
                                            IF t276 IS BOUND.
                                              IF t276->has = abap_true.
                                                t275 = xsdbool( strlen( t276->value ) > 0 ).
                                              ENDIF.
                                            ENDIF.
                                            IF t275 = abap_true.
                                              DATA t277 TYPE string.
                                              DATA(t278) = t272.
                                              t277 = t278->value.
                                              t274 = t277.
                                            ELSE.
                                              DATA(t279) = t1.
                                              t274 = t279.
                                            ENDIF.
                                            t271 = t274.
                                            DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t280->has = abap_true.
                                            t280->value = t271.
                                            t269 = t280.
                                          ELSE.
                                            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t281.
                                            t269 = t281.
                                          ENDIF.
                                          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t282.
                                          DATA t283 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                          CLEAR t283.
                                          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t284.
                                          DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t285.
                                          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t286.
                                          t268 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t269 i_conversion_exit = t282 i_derived_from_constant = t283 i_ddic_name = t284 i_rtti_name = t285 i_description = t286 ).
                                          t266 = t268.
                                        ELSE.
                                          DATA t287 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t287.
                                          t266 = t287.
                                        ENDIF.
                                        t265 = zcl_lnt_integer_type=>get_db65( i_input_967e = t266 ).
                                        result = t265.
                                        RETURN.
                                      ELSE.
                                        DATA t288 TYPE abap_bool.
                                        DATA(t289) = t1.
                                        DATA(t290) = |INT8|.
                                        t288 = xsdbool( t289 = t290 ).
                                        IF t288 = abap_true.
                                          DATA t291 TYPE REF TO zcl_lnt_integer8_type.
                                          CLEAR t291.
                                          DATA t292 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t292.
                                          DATA(t293) = abap_true.
                                          IF t293 = abap_true.
                                            DATA t294 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t294.
                                            DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t295.
                                            DATA(t296) = abap_true.
                                            IF t296 = abap_true.
                                              DATA(t297) = VALUE string( ).
                                              DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t299) = t4.
                                              t298 = t299.
                                              DATA(t300) = VALUE string( ).
                                              DATA(t301) = VALUE abap_bool( ).
                                              DATA(t302) = t298.
                                              IF t302 IS BOUND.
                                                IF t302->has = abap_true.
                                                  t301 = xsdbool( strlen( t302->value ) > 0 ).
                                                ENDIF.
                                              ENDIF.
                                              IF t301 = abap_true.
                                                DATA t303 TYPE string.
                                                DATA(t304) = t298.
                                                t303 = t304->value.
                                                t300 = t303.
                                              ELSE.
                                                DATA(t305) = t1.
                                                t300 = t305.
                                              ENDIF.
                                              t297 = t300.
                                              DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t306->has = abap_true.
                                              t306->value = t297.
                                              t295 = t306.
                                            ELSE.
                                              DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t307.
                                              t295 = t307.
                                            ENDIF.
                                            DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t308.
                                            DATA t309 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                            CLEAR t309.
                                            DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t310.
                                            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t311.
                                            DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t312.
                                            t294 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t295 i_conversion_exit = t308 i_derived_from_constant = t309 i_ddic_name = t310 i_rtti_name = t311 i_description = t312 ).
                                            t292 = t294.
                                          ELSE.
                                            DATA t313 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t313.
                                            t292 = t313.
                                          ENDIF.
                                          t291 = NEW zcl_lnt_integer8_type( i_input_967e = t292 ).
                                          result = t291.
                                          RETURN.
                                        ELSE.
                                          DATA t314 TYPE abap_bool.
                                          DATA(t315) = t1.
                                          DATA(t316) = |F|.
                                          t314 = xsdbool( t315 = t316 ).
                                          IF t314 = abap_true.
                                            DATA t317 TYPE REF TO zcl_lnt_float_type.
                                            CLEAR t317.
                                            DATA t318 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t318.
                                            DATA(t319) = abap_true.
                                            IF t319 = abap_true.
                                              DATA t320 TYPE REF TO zcl_lnt_abstract_type_data.
                                              CLEAR t320.
                                              DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t321.
                                              DATA(t322) = abap_true.
                                              IF t322 = abap_true.
                                                DATA(t323) = VALUE string( ).
                                                DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA(t325) = t4.
                                                t324 = t325.
                                                DATA(t326) = VALUE string( ).
                                                DATA(t327) = VALUE abap_bool( ).
                                                DATA(t328) = t324.
                                                IF t328 IS BOUND.
                                                  IF t328->has = abap_true.
                                                    t327 = xsdbool( strlen( t328->value ) > 0 ).
                                                  ENDIF.
                                                ENDIF.
                                                IF t327 = abap_true.
                                                  DATA t329 TYPE string.
                                                  DATA(t330) = t324.
                                                  t329 = t330->value.
                                                  t326 = t329.
                                                ELSE.
                                                  DATA(t331) = t1.
                                                  t326 = t331.
                                                ENDIF.
                                                t323 = t326.
                                                DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t332->has = abap_true.
                                                t332->value = t323.
                                                t321 = t332.
                                              ELSE.
                                                DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t333.
                                                t321 = t333.
                                              ENDIF.
                                              DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t334.
                                              DATA t335 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                              CLEAR t335.
                                              DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t336.
                                              DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t337.
                                              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t338.
                                              t320 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t321 i_conversion_exit = t334 i_derived_from_constant = t335 i_ddic_name = t336 i_rtti_name = t337 i_description = t338 ).
                                              t318 = t320.
                                            ELSE.
                                              DATA t339 TYPE REF TO zcl_lnt_abstract_type_data.
                                              CLEAR t339.
                                              t318 = t339.
                                            ENDIF.
                                            t317 = NEW zcl_lnt_float_type( i_input_967e = t318 ).
                                            result = t317.
                                            RETURN.
                                          ELSE.
                                            DATA t340 TYPE abap_bool.
                                            DATA(t341) = t1.
                                            DATA(t342) = |P|.
                                            t340 = xsdbool( t341 = t342 ).
                                            IF t340 = abap_true.
                                              DATA(t343) = VALUE abap_bool( ).
                                              DATA(t344) = VALUE abap_bool( ).
                                              DATA(t345) = t2.
                                              IF t345 IS BOUND.
                                                IF t345->has = abap_true.
                                                  t344 = xsdbool( t345->value IS NOT INITIAL ).
                                                ENDIF.
                                              ENDIF.
                                              t343 = t344.
                                              IF t344 = abap_true.
                                                DATA(t346) = VALUE abap_bool( ).
                                                DATA(t347) = t3.
                                                IF t347 IS BOUND.
                                                  IF t347->has = abap_true.
                                                    t346 = xsdbool( t347->value IS NOT INITIAL ).
                                                  ENDIF.
                                                ENDIF.
                                                t343 = t346.
                                              ENDIF.
                                              IF t343 = abap_true.
                                                DATA t348 TYPE REF TO zcl_lnt_packed_type.
                                                CLEAR t348.
                                                DATA t349 TYPE int8.
                                                DATA(t350) = t2.
                                                t349 = t350->value.
                                                DATA t351 TYPE int8.
                                                DATA(t352) = t3.
                                                t351 = t352->value.
                                                DATA t353 TYPE REF TO zcl_lnt_abstract_type_data.
                                                CLEAR t353.
                                                DATA(t354) = abap_true.
                                                IF t354 = abap_true.
                                                  DATA t355 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA(t356) = t4.
                                                  DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t357.
                                                  DATA t358 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  CLEAR t358.
                                                  DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t359.
                                                  DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t360.
                                                  DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t361.
                                                  t355 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t356 i_conversion_exit = t357 i_derived_from_constant = t358 i_ddic_name = t359 i_rtti_name = t360 i_description = t361 ).
                                                  t353 = t355.
                                                ELSE.
                                                  DATA t362 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t362.
                                                  t353 = t362.
                                                ENDIF.
                                                t348 = NEW zcl_lnt_packed_type( i_length = t349 i_decimals_2eed = t351 i_extra = t353 ).
                                                result = t348.
                                                RETURN.
                                              ELSE.
                                                DATA(t363) = VALUE abap_bool( ).
                                                DATA(t364) = t2.
                                                IF t364 IS BOUND.
                                                  IF t364->has = abap_true.
                                                    t363 = xsdbool( t364->value IS NOT INITIAL ).
                                                  ENDIF.
                                                ENDIF.
                                                IF t363 = abap_true.
                                                  DATA t365 TYPE REF TO zcl_lnt_packed_type.
                                                  CLEAR t365.
                                                  DATA t366 TYPE int8.
                                                  DATA(t367) = t2.
                                                  t366 = t367->value.
                                                  DATA(t368) = CONV int8( 0 ).
                                                  DATA t369 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t369.
                                                  DATA(t370) = abap_true.
                                                  IF t370 = abap_true.
                                                    DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA(t372) = t4.
                                                    DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t373.
                                                    DATA t374 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t374.
                                                    DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t375.
                                                    DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t376.
                                                    DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t377.
                                                    t371 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t372 i_conversion_exit = t373 i_derived_from_constant = t374 i_ddic_name = t375 i_rtti_name = t376 i_description = t377 ).
                                                    t369 = t371.
                                                  ELSE.
                                                    DATA t378 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t378.
                                                    t369 = t378.
                                                  ENDIF.
                                                  t365 = NEW zcl_lnt_packed_type( i_length = t366 i_decimals_2eed = t368 i_extra = t369 ).
                                                  result = t365.
                                                  RETURN.
                                                ELSE.
                                                  DATA t379 TYPE REF TO zcl_lnt_packed_type.
                                                  CLEAR t379.
                                                  DATA(t380) = CONV int8( 8 ).
                                                  DATA(t381) = CONV int8( 0 ).
                                                  DATA t382 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t382.
                                                  DATA(t383) = abap_true.
                                                  IF t383 = abap_true.
                                                    DATA t384 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA(t385) = t4.
                                                    DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t386.
                                                    DATA t387 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t387.
                                                    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t388.
                                                    DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t389.
                                                    DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t390.
                                                    t384 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t385 i_conversion_exit = t386 i_derived_from_constant = t387 i_ddic_name = t388 i_rtti_name = t389 i_description = t390 ).
                                                    t382 = t384.
                                                  ELSE.
                                                    DATA t391 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t391.
                                                    t382 = t391.
                                                  ENDIF.
                                                  t379 = NEW zcl_lnt_packed_type( i_length = t380 i_decimals_2eed = t381 i_extra = t382 ).
                                                  result = t379.
                                                  RETURN.
                                                ENDIF.
                                              ENDIF.
                                            ELSE.
                                              DATA t392 TYPE abap_bool.
                                              DATA(t393) = t1.
                                              DATA(t394) = |C|.
                                              t392 = xsdbool( t393 = t394 ).
                                              IF t392 = abap_true.
                                                DATA(t395) = VALUE abap_bool( ).
                                                DATA(t396) = t2.
                                                IF t396 IS BOUND.
                                                  IF t396->has = abap_true.
                                                    t395 = xsdbool( t396->value IS NOT INITIAL ).
                                                  ENDIF.
                                                ENDIF.
                                                IF t395 = abap_true.
                                                  DATA t397 TYPE REF TO zcl_lnt_character_type.
                                                  CLEAR t397.
                                                  DATA t398 TYPE int8.
                                                  DATA(t399) = t2.
                                                  t398 = t399->value.
                                                  DATA t400 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t400.
                                                  DATA(t401) = abap_true.
                                                  IF t401 = abap_true.
                                                    DATA t402 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA(t403) = t4.
                                                    DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t404.
                                                    DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t405.
                                                    DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t406.
                                                    DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t407.
                                                    DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t408.
                                                    t402 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t403 i_conversion_exit = t404 i_derived_from_constant = t405 i_ddic_name = t406 i_rtti_name = t407 i_description = t408 ).
                                                    t400 = t402.
                                                  ELSE.
                                                    DATA t409 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t409.
                                                    t400 = t409.
                                                  ENDIF.
                                                  t397 = NEW zcl_lnt_character_type( i_length = t398 i_extra = t400 ).
                                                  result = t397.
                                                  RETURN.
                                                ELSE.
                                                  DATA t410 TYPE REF TO zcl_lnt_character_type.
                                                  CLEAR t410.
                                                  DATA(t411) = CONV int8( 1 ).
                                                  DATA t412 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t412.
                                                  DATA(t413) = abap_true.
                                                  IF t413 = abap_true.
                                                    DATA t414 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA(t415) = t4.
                                                    DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t416.
                                                    DATA t417 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t417.
                                                    DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t418.
                                                    DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t419.
                                                    DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t420.
                                                    t414 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t415 i_conversion_exit = t416 i_derived_from_constant = t417 i_ddic_name = t418 i_rtti_name = t419 i_description = t420 ).
                                                    t412 = t414.
                                                  ELSE.
                                                    DATA t421 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t421.
                                                    t412 = t421.
                                                  ENDIF.
                                                  t410 = NEW zcl_lnt_character_type( i_length = t411 i_extra = t412 ).
                                                  result = t410.
                                                  RETURN.
                                                ENDIF.
                                              ELSE.
                                                DATA t422 TYPE abap_bool.
                                                DATA(t423) = t1.
                                                DATA(t424) = |X|.
                                                t422 = xsdbool( t423 = t424 ).
                                                IF t422 = abap_true.
                                                  DATA(t425) = VALUE abap_bool( ).
                                                  DATA(t426) = t2.
                                                  IF t426 IS BOUND.
                                                    IF t426->has = abap_true.
                                                      t425 = xsdbool( t426->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                  IF t425 = abap_true.
                                                    DATA t427 TYPE REF TO zcl_lnt_hex_type.
                                                    DATA t428 TYPE int8.
                                                    DATA(t429) = t2.
                                                    t428 = t429->value.
                                                    DATA(t430) = t4.
                                                    t427 = NEW zcl_lnt_hex_type( i_length = t428 i_qualified_name = t430 ).
                                                    result = t427.
                                                    RETURN.
                                                  ELSE.
                                                    DATA t431 TYPE REF TO zcl_lnt_hex_type.
                                                    DATA(t432) = CONV int8( 1 ).
                                                    DATA(t433) = t4.
                                                    t431 = NEW zcl_lnt_hex_type( i_length = t432 i_qualified_name = t433 ).
                                                    result = t431.
                                                    RETURN.
                                                  ENDIF.
                                                ELSE.
                                                  DATA t434 TYPE abap_bool.
                                                  DATA(t435) = t1.
                                                  DATA(t436) = |N|.
                                                  t434 = xsdbool( t435 = t436 ).
                                                  IF t434 = abap_true.
                                                    DATA(t437) = VALUE abap_bool( ).
                                                    DATA(t438) = t2.
                                                    IF t438 IS BOUND.
                                                      IF t438->has = abap_true.
                                                        t437 = xsdbool( t438->value IS NOT INITIAL ).
                                                      ENDIF.
                                                    ENDIF.
                                                    IF t437 = abap_true.
                                                      DATA t439 TYPE REF TO zcl_lnt_numeric_type.
                                                      DATA t440 TYPE int8.
                                                      DATA(t441) = t2.
                                                      t440 = t441->value.
                                                      DATA(t442) = t4.
                                                      t439 = NEW zcl_lnt_numeric_type( i_length = t440 i_qualified_name = t442 ).
                                                      result = t439.
                                                      RETURN.
                                                    ELSE.
                                                      DATA t443 TYPE REF TO zcl_lnt_numeric_type.
                                                      DATA(t444) = CONV int8( 1 ).
                                                      DATA(t445) = t4.
                                                      t443 = NEW zcl_lnt_numeric_type( i_length = t444 i_qualified_name = t445 ).
                                                      result = t443.
                                                      RETURN.
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                            ENDIF.
                                          ENDIF.
                                        ENDIF.
                                      ENDIF.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t446 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t446.
    result = t446.

  ENDMETHOD.

  METHOD in_error_namespace.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_true.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA(t11) = me->reg.
    DATA t12 TYPE string.
    DATA(t13) = t1.
    t12 = t13->value.
    t10 = t11->in_error_namespace( i_name = t12 ).
    result = t10.

  ENDMETHOD.

  METHOD lookup_object.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/ddic.ts:168|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD lookup_no_void.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_table.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_table.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_object.
    CLEAR t4.
    DATA(t5) = me->reg.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = |TABL|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t8.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t6 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = t1.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    t4 = t5->get_object( i_type_9913 = t6 i_name = t11 ).
    DATA t16 TYPE REF TO object.
    t16 = t4.
    t3 ?= t16.
    t2 = t3.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t2.
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_table.
        DATA(t24) = t2.
        t23 = t24.
        DATA(t25) = me->reg.
        t22 = t23->parse_type( i_reg_f149 = t25 ).
        DATA t26 TYPE REF TO zcl_lnt_table.
        DATA(t27) = t2.
        t26 = t27.
        t21 = NEW zcl_lnt_ilookup_result( i_type_9913 = t22 i_object_19cd = t26 ).
        t19 = t21.
      ELSE.
        DATA t28 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t28.
        t19 = t28.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_table.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_table.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_object.
    CLEAR t31.
    DATA(t32) = me->reg.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |VIEW|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA(t39) = abap_true.
    IF t39 = abap_true.
      DATA(t40) = t1.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t40.
      t38 = t41.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t38 = t42.
    ENDIF.
    t31 = t32->get_object( i_type_9913 = t33 i_name = t38 ).
    DATA t43 TYPE REF TO object.
    t43 = t31.
    t30 ?= t43.
    t29 = t30.
    DATA t44 TYPE abap_bool.
    DATA(t45) = t29.
    t44 = xsdbool( t45 IS BOUND ).
    IF t44 = abap_true.
      DATA t46 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t49 TYPE REF TO zcl_lnt_abstract_type.
        DATA t50 TYPE REF TO zcl_lnt_table.
        DATA(t51) = t29.
        t50 = t51.
        DATA(t52) = me->reg.
        t49 = t50->parse_type( i_reg_f149 = t52 ).
        DATA t53 TYPE REF TO zcl_lnt_table.
        DATA(t54) = t29.
        t53 = t54.
        t48 = NEW zcl_lnt_ilookup_result( i_type_9913 = t49 i_object_19cd = t53 ).
        t46 = t48.
      ELSE.
        DATA t55 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t55.
        t46 = t55.
      ENDIF.
      result = t46.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_object.
    CLEAR t58.
    DATA(t59) = me->reg.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    DATA(t61) = abap_true.
    IF t61 = abap_true.
      DATA(t62) = |TTYP|.
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t62.
      t60 = t63.
    ELSE.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t60 = t64.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t65.
    DATA(t66) = abap_true.
    IF t66 = abap_true.
      DATA(t67) = t1.
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t67.
      t65 = t68.
    ELSE.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      t65 = t69.
    ENDIF.
    t58 = t59->get_object( i_type_9913 = t60 i_name = t65 ).
    DATA t70 TYPE REF TO object.
    t70 = t58.
    t57 ?= t70.
    t56 = t57.
    DATA t71 TYPE abap_bool.
    DATA(t72) = t56.
    t71 = xsdbool( t72 IS BOUND ).
    IF t71 = abap_true.
      DATA t73 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t76 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE REF TO zcl_lnt_ob_table_type.
        DATA(t78) = t56.
        t77 = t78.
        DATA(t79) = me->reg.
        t76 = t77->parse_type( i_reg_f149 = t79 ).
        DATA t80 TYPE REF TO zcl_lnt_ob_table_type.
        DATA(t81) = t56.
        t80 = t81.
        t75 = NEW zcl_lnt_ilookup_result( i_type_9913 = t76 i_object_19cd = t80 ).
        t73 = t75.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t82.
        t73 = t82.
      ENDIF.
      result = t73.
      RETURN.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_data_element.
    CLEAR t83.
    DATA t84 TYPE REF TO zcl_lnt_data_element.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_object.
    CLEAR t85.
    DATA(t86) = me->reg.
    DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t87.
    DATA(t88) = abap_true.
    IF t88 = abap_true.
      DATA(t89) = |DTEL|.
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = t89.
      t87 = t90.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      t87 = t91.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA(t93) = abap_true.
    IF t93 = abap_true.
      DATA(t94) = t1.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t94.
      t92 = t95.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      t92 = t96.
    ENDIF.
    t85 = t86->get_object( i_type_9913 = t87 i_name = t92 ).
    DATA t97 TYPE REF TO object.
    t97 = t85.
    t84 ?= t97.
    t83 = t84.
    DATA t98 TYPE abap_bool.
    DATA(t99) = t83.
    t98 = xsdbool( t99 IS BOUND ).
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA t102 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        DATA t104 TYPE REF TO zcl_lnt_data_element.
        DATA(t105) = t83.
        t104 = t105.
        DATA(t106) = me->reg.
        t103 = t104->parse_type( i_reg_f149 = t106 ).
        DATA t107 TYPE REF TO zcl_lnt_data_element.
        DATA(t108) = t83.
        t107 = t108.
        t102 = NEW zcl_lnt_ilookup_result( i_type_9913 = t103 i_object_19cd = t107 ).
        t100 = t102.
      ELSE.
        DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t109.
        t100 = t109.
      ENDIF.
      result = t100.
      RETURN.
    ENDIF.
    DATA t110 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t110.
    DATA t111 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t112.
    DATA(t113) = abap_true.
    IF t113 = abap_true.
      DATA(t114) = t1.
      DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t115->has = abap_true.
      t115->value = t114.
      t112 = t115.
    ELSE.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t116.
      t112 = t116.
    ENDIF.
    t111 = me->lookup_ddls( i_name = t112 ).
    t110 = t111.
    DATA t117 TYPE abap_bool.
    DATA(t118) = t110.
    t117 = xsdbool( t118 IS BOUND ).
    IF t117 = abap_true.
      DATA t119 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t119.
      DATA(t120) = abap_true.
      IF t120 = abap_true.
        DATA t121 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t122) = t110.
        t121 = t122.
        t119 = t121.
      ELSE.
        DATA t123 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t123.
        t119 = t123.
      ENDIF.
      result = t119.
      RETURN.
    ENDIF.
    DATA t124 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t124.
    result = t124.

  ENDMETHOD.

  METHOD lookup_ddls.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA(t13) = t1.
    t12 = t13->value.
    DATA(t14) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = me->reg.
    DATA(t17) = |DDLS|.
    t15 = t16->get_objects_by_type( i_type_9913 = t17 ).
    DATA t18 TYPE REF TO zif_lnt_object.
    CLEAR t18.
    DATA t19 TYPE REF TO object.
    CLEAR t19.
    LOOP AT t15->items INTO t19.
      t18 ?= t19.
      DATA t20 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t21 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA(t22) = t18.
      t21 ?= t22.
      t20 = t21.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t26) = t20.
      t25 = t26->get_sql_view_name( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = t10.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      IF t25 IS BOUND.
        t32 = t25->has.
      ENDIF.
      IF t27 IS BOUND.
        t33 = t27->has.
      ENDIF.
      IF t32 = t33.
        IF t32 = abap_false.
          t24 = abap_true.
        ELSEIF t25->value = t27->value.
          t24 = abap_true.
        ENDIF.
      ENDIF.
      t23 = t24.
      IF t24 = abap_false.
        DATA(t34) = VALUE abap_bool( ).
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t38) = t20.
        t37 = t38->get_definition_name( ).
        t36 = t37.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = t36.
        IF t41 IS INITIAL.
          t40 = abap_true.
        ELSEIF t41->has = abap_false.
          t40 = abap_true.
        ENDIF.
        IF t40 = abap_true.
          DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t42.
          t39 = t42.
        ELSE.
          DATA t43 TYPE string.
          DATA t44 TYPE string.
          DATA(t45) = t36.
          t44 = t45->value.
          DATA(t46) = strlen( t44 ).
          t43 = t44.
          IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t43 TO UPPER CASE.
          ELSE.
            t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
          ENDIF.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t43.
          t39 = t47.
        ENDIF.
        t35 = t39.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = t10.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        IF t35 IS BOUND.
          t53 = t35->has.
        ENDIF.
        IF t48 IS BOUND.
          t54 = t48->has.
        ENDIF.
        IF t53 = t54.
          IF t53 = abap_false.
            t34 = abap_true.
          ELSEIF t35->value = t48->value.
            t34 = abap_true.
          ENDIF.
        ENDIF.
        t23 = t34.
      ENDIF.
      IF t23 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t58 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t59) = t20.
          DATA(t60) = me->reg.
          t58 = t59->parse_type( i_reg_f149 = t60 ).
          DATA(t61) = t20.
          t57 = NEW zcl_lnt_ilookup_result( i_type_9913 = t58 i_object_19cd = t61 ).
          t55 = t57.
        ELSE.
          DATA t62 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t62.
          t55 = t62.
        ENDIF.
        result = t55.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t63 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t63.
    result = t63.

  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t3 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t4) = t1.
    t3 = me->lookup_no_void( i_name = t4 ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t2.
    t5 = xsdbool( t6 IS BOUND ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t8) = t2.
      t7 = t8.
      result = t7.
      RETURN.
    ENDIF.
    DATA t9 TYPE abap_bool.
    DATA(t10) = me->reg.
    DATA(t11) = t1.
    t9 = t10->in_error_namespace( i_name = t11 ).
    IF t9 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t13 TYPE REF TO zcl_lnt_unknown_type.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      DATA(t16) = | not found, lookup|.
      DATA(t17) = strlen( t15 ).
      t14 = |{ t15 }{ t16 }|.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t13 = NEW zcl_lnt_unknown_type( i_error = t14 i_qualified_name = t18 ).
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      t12 = NEW zcl_lnt_ilookup_result( i_type_9913 = t13 i_object_19cd = t19 ).
      result = t12.
      RETURN.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_void_type.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = t1.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t24.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t21 = zcl_lnt_void_type=>get_db65( i_voided = t22 i_qualified_name = t27 ).
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      t20 = NEW zcl_lnt_ilookup_result( i_type_9913 = t21 i_object_19cd = t28 ).
      result = t20.

    ENDIF.
  ENDMETHOD.

  METHOD lookup_domain.
    DATA(t1) = i_name.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/ddic.ts:251|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD lookup_data_element.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/ddic.ts:262|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD lookup_table_or_view.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t11) = |undefined, lookupTableOrView|.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t10 = NEW zcl_lnt_unknown_type( i_error = t11 i_qualified_name = t12 ).
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t13 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_table.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_table.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = |TABL|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t20.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t18 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE string.
      DATA(t26) = t1.
      t25 = t26->value.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t25.
      t23 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t23 = t28.
    ENDIF.
    t16 = t17->get_object( i_type_9913 = t18 i_name = t23 ).
    DATA t29 TYPE REF TO object.
    t29 = t16.
    t15 ?= t29.
    t14 = t15.
    DATA t30 TYPE abap_bool.
    DATA(t31) = t14.
    t30 = xsdbool( t31 IS BOUND ).
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA t34 TYPE REF TO zcl_lnt_table.
      DATA(t35) = t14.
      t34 = t35.
      DATA(t36) = me->reg.
      t33 = t34->parse_type( i_reg_f149 = t36 ).
      DATA t37 TYPE REF TO zcl_lnt_table.
      DATA(t38) = t14.
      t37 = t38.
      t32 = NEW zcl_lnt_ilookup_result( i_type_9913 = t33 i_object_19cd = t37 ).
      result = t32.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA t43 TYPE string.
      DATA(t44) = t1.
      t43 = t44->value.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t43.
      t41 = t45.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t41 = t46.
    ENDIF.
    t40 = me->lookup_ddls( i_name = t41 ).
    t39 = t40.
    DATA t47 TYPE abap_bool.
    DATA(t48) = t39.
    t47 = xsdbool( t48 IS BOUND ).
    IF t47 = abap_true.
      DATA t49 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t50) = t39.
      t49 = t50.
      result = t49.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    DATA(t54) = abap_true.
    IF t54 = abap_true.
      DATA t55 TYPE string.
      DATA(t56) = t1.
      t55 = t56->value.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t55.
      t53 = t57.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t53 = t58.
    ENDIF.
    t52 = t53.
    DATA t59 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t59.
    DATA(t60) = VALUE abap_bool( ).
    DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t62) = t52.
    t61 = t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    t63 = t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = t61.
    IF t66 IS INITIAL.
      t65 = abap_true.
    ELSEIF t66->has = abap_false.
      t65 = abap_true.
    ENDIF.
    t60 = t65.
    IF t60 = abap_true.
      DATA t67 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t68 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t69) = |undefined, lookupView|.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      t68 = NEW zcl_lnt_unknown_type( i_error = t69 i_qualified_name = t70 ).
      DATA t71 TYPE REF TO zif_lnt_object.
      CLEAR t71.
      t67 = NEW zcl_lnt_ilookup_result( i_type_9913 = t68 i_object_19cd = t71 ).
      t59 = t67.
    ELSE.
      DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_table.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_table.
      CLEAR t74.
      DATA t75 TYPE REF TO zif_lnt_object.
      CLEAR t75.
      DATA(t76) = me->reg.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t78) = abap_true.
      IF t78 = abap_true.
        DATA(t79) = |VIEW|.
        DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t80->has = abap_true.
        t80->value = t79.
        t77 = t80.
      ELSE.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t77 = t81.
      ENDIF.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA(t83) = abap_true.
      IF t83 = abap_true.
        DATA t84 TYPE string.
        DATA(t85) = t52.
        t84 = t85->value.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t84.
        t82 = t86.
      ELSE.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t82 = t87.
      ENDIF.
      t75 = t76->get_object( i_type_9913 = t77 i_name = t82 ).
      DATA t88 TYPE REF TO object.
      t88 = t75.
      t74 ?= t88.
      t73 = t74.
      DATA t89 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t89.
      DATA t90 TYPE abap_bool.
      DATA(t91) = t73.
      t90 = xsdbool( t91 IS BOUND ).
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        DATA t94 TYPE REF TO zcl_lnt_table.
        DATA(t95) = t73.
        t94 = t95.
        DATA(t96) = me->reg.
        t93 = t94->parse_type( i_reg_f149 = t96 ).
        DATA t97 TYPE REF TO zcl_lnt_table.
        DATA(t98) = t73.
        t97 = t98.
        t92 = NEW zcl_lnt_ilookup_result( i_type_9913 = t93 i_object_19cd = t97 ).
        t89 = t92.
      ELSE.
        DATA t99 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t99.
        DATA t100 TYPE abap_bool.
        DATA(t101) = me->reg.
        DATA t102 TYPE string.
        DATA(t103) = t52.
        t102 = t103->value.
        t100 = t101->in_error_namespace( i_name = t102 ).
        IF t100 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t105 TYPE REF TO zcl_lnt_unknown_type.
          DATA t106 TYPE string.
          DATA t107 TYPE string.
          DATA(t108) = t52.
          t107 = t108->value.
          DATA(t109) = | not found, lookupView|.
          DATA(t110) = strlen( t107 ).
          t106 = |{ t107 }{ t109 }|.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t105 = NEW zcl_lnt_unknown_type( i_error = t106 i_qualified_name = t111 ).
          DATA t112 TYPE REF TO zif_lnt_object.
          CLEAR t112.
          t104 = NEW zcl_lnt_ilookup_result( i_type_9913 = t105 i_object_19cd = t112 ).
          t99 = t104.
        ELSE.
          DATA t113 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t113.
          DATA t114 TYPE REF TO zcl_lnt_void_type.
          CLEAR t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t116) = abap_true.
          IF t116 = abap_true.
            DATA t117 TYPE string.
            DATA(t118) = t52.
            t117 = t118->value.
            DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t119->has = abap_true.
            t119->value = t117.
            t115 = t119.
          ELSE.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            t115 = t120.
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t114 = zcl_lnt_void_type=>get_db65( i_voided = t115 i_qualified_name = t121 ).
          DATA t122 TYPE REF TO zif_lnt_object.
          CLEAR t122.
          t113 = NEW zcl_lnt_ilookup_result( i_type_9913 = t114 i_object_19cd = t122 ).
          t99 = t113.
        ENDIF.
        t89 = t99.
      ENDIF.
      t72 = t89.
      t59 = t72.
    ENDIF.
    t51 = t59.
    result = t51.

  ENDMETHOD.

  METHOD lookup_table_or_view2.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_table.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_table.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_object.
    CLEAR t12.
    DATA(t13) = me->reg.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |TABL|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t16.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t14 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE string.
      DATA(t22) = t1.
      t21 = t22->value.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t21.
      t19 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t19 = t24.
    ENDIF.
    t12 = t13->get_object( i_type_9913 = t14 i_name = t19 ).
    DATA t25 TYPE REF TO object.
    t25 = t12.
    t11 ?= t25.
    t10 = t11.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t10.
    t26 = xsdbool( t27 IS BOUND ).
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_table.
      DATA(t29) = t10.
      t28 = t29.
      result = t28.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_view.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_view.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_object.
    CLEAR t32.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |VIEW|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t41.
      t39 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t44.
    ENDIF.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t30.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_view.
      DATA(t49) = t30.
      t48 = t49.
      result = t48.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA t54 TYPE string.
      DATA(t55) = t1.
      t54 = t55->value.
      DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t56->has = abap_true.
      t56->value = t54.
      t52 = t56.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      t52 = t57.
    ENDIF.
    t51 = me->lookup_ddls( i_name = t52 ).
    t50 = t51.
    DATA t58 TYPE abap_bool.
    DATA(t59) = t50.
    t58 = xsdbool( t59 IS BOUND ).
    IF t58 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t61 TYPE REF TO zif_lnt_object.
      DATA t62 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t63) = t50.
      t62 = t63.
      t61 = t62->object_a393.
      DATA t64 TYPE REF TO object.
      t64 = t61.
      t60 ?= t64.
      result = t60.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t65.
    result = t65.

  ENDMETHOD.

  METHOD lookup_table.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t10) = |undefined, lookupTable|.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t9 = NEW zcl_lnt_unknown_type( i_error = t10 i_qualified_name = t11 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_table.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_table.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_object.
    CLEAR t14.
    DATA(t15) = me->reg.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |TABL|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE string.
      DATA(t24) = t1.
      t23 = t24->value.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      t21 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t21 = t26.
    ENDIF.
    t14 = t15->get_object( i_type_9913 = t16 i_name = t21 ).
    DATA t27 TYPE REF TO object.
    t27 = t14.
    t13 ?= t27.
    t12 = t13.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t12.
    t28 = xsdbool( t29 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA t31 TYPE REF TO zcl_lnt_table.
      DATA(t32) = t12.
      t31 = t32.
      DATA(t33) = me->reg.
      t30 = t31->parse_type( i_reg_f149 = t33 ).
      result = t30.
      RETURN.
    ELSE.
      DATA t34 TYPE abap_bool.
      DATA(t35) = me->reg.
      DATA t36 TYPE string.
      DATA(t37) = t1.
      t36 = t37->value.
      t34 = t35->in_error_namespace( i_name = t36 ).
      IF t34 = abap_true.
        DATA t38 TYPE REF TO zcl_lnt_unknown_type.
        DATA t39 TYPE string.
        DATA t40 TYPE string.
        DATA(t41) = t1.
        t40 = t41->value.
        DATA(t42) = | not found, lookupTable|.
        DATA(t43) = strlen( t40 ).
        t39 = |{ t40 }{ t42 }|.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        t38 = NEW zcl_lnt_unknown_type( i_error = t39 i_qualified_name = t44 ).
        result = t38.
        RETURN.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_void_type.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t47) = abap_true.
        IF t47 = abap_true.
          DATA t48 TYPE string.
          DATA(t49) = t1.
          t48 = t49->value.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t48.
          t46 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t46 = t51.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t45 = zcl_lnt_void_type=>get_db65( i_voided = t46 i_qualified_name = t52 ).
        result = t45.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_view.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t11) = |undefined, lookupView|.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t10 = NEW zcl_lnt_unknown_type( i_error = t11 i_qualified_name = t12 ).
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t13 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_table.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_table.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA(t17) = me->reg.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = |VIEW|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t20.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t18 = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE string.
      DATA(t26) = t1.
      t25 = t26->value.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t25.
      t23 = t27.
    ELSE.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t23 = t28.
    ENDIF.
    t16 = t17->get_object( i_type_9913 = t18 i_name = t23 ).
    DATA t29 TYPE REF TO object.
    t29 = t16.
    t15 ?= t29.
    t14 = t15.
    DATA t30 TYPE abap_bool.
    DATA(t31) = t14.
    t30 = xsdbool( t31 IS BOUND ).
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA t34 TYPE REF TO zcl_lnt_table.
      DATA(t35) = t14.
      t34 = t35.
      DATA(t36) = me->reg.
      t33 = t34->parse_type( i_reg_f149 = t36 ).
      DATA t37 TYPE REF TO zcl_lnt_table.
      DATA(t38) = t14.
      t37 = t38.
      t32 = NEW zcl_lnt_ilookup_result( i_type_9913 = t33 i_object_19cd = t37 ).
      result = t32.
      RETURN.
    ELSE.
      DATA t39 TYPE abap_bool.
      DATA(t40) = me->reg.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      t39 = t40->in_error_namespace( i_name = t41 ).
      IF t39 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t44 TYPE REF TO zcl_lnt_unknown_type.
        DATA t45 TYPE string.
        DATA t46 TYPE string.
        DATA(t47) = t1.
        t46 = t47->value.
        DATA(t48) = | not found, lookupView|.
        DATA(t49) = strlen( t46 ).
        t45 = |{ t46 }{ t48 }|.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t44 = NEW zcl_lnt_unknown_type( i_error = t45 i_qualified_name = t50 ).
        DATA t51 TYPE REF TO zif_lnt_object.
        CLEAR t51.
        t43 = NEW zcl_lnt_ilookup_result( i_type_9913 = t44 i_object_19cd = t51 ).
        result = t43.
        RETURN.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_void_type.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA t56 TYPE string.
          DATA(t57) = t1.
          t56 = t57->value.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t56.
          t54 = t58.
        ELSE.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t54 = t59.
        ENDIF.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t53 = zcl_lnt_void_type=>get_db65( i_voided = t54 i_qualified_name = t60 ).
        DATA t61 TYPE REF TO zif_lnt_object.
        CLEAR t61.
        t52 = NEW zcl_lnt_ilookup_result( i_type_9913 = t53 i_object_19cd = t61 ).
        result = t52.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_table_type.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/ddic.ts:339|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD text_to_type.
    DATA(t1) = i_input_967e.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/ddic.ts:353|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1052_c7af40439c34.
  ENDMETHOD.
ENDCLASS.
