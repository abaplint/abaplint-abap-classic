* TS: src/objects/_dynpros.ts.module module
CLASS zcl_lnt_dynpros_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS parse_number IMPORTING i_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE f.
    CLASS-METHODS parse_dynpros IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA zlnt_builtin_init_9a567949f3db TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_5f3d60166229.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_ea1dc2bd83b1 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_dynpros_module IMPLEMENTATION.
  METHOD parse_number.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_value.
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
      DATA(t9) = CONV f( 0 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE f( ).
    DATA t11 TYPE string.
    DATA(t12) = t1.
    t11 = t12->value.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    DATA(t15) = VALUE string( ).
    DATA t16 TYPE abap_bool.
    DATA t17 TYPE abap_bool.
    DATA t18 TYPE int8.
    DATA(t19) = VALUE i( ).
    t13 = 0.
    t18 = 0.
    t16 = abap_false.
    t17 = abap_false.
    t14 = strlen( t11 ).
    DATA(t20) = VALUE i( ).
    DATA(t21) = VALUE i( ).
    DATA(t22) = VALUE string( ).
    WHILE t13 < t14.
      t21 = t13.
      t22 = t11+t21(1).
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      DATA(t24) = VALUE xstring( ).
      DATA t25 TYPE x LENGTH 1.
      CLEAR t25.
      DATA t26 TYPE x LENGTH 1.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      t23 = t22.
      t20 = cl_abap_conv_out_ce=>uccpi( t23 ).
      IF t20 >= 255.
        IF zlnt_builtin_code_ea1dc2bd83b1 IS NOT BOUND.
          zlnt_builtin_code_ea1dc2bd83b1 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_ea1dc2bd83b1->convert( EXPORTING data = t22 IMPORTING buffer = t24 ).
        t25 = t24(1).
        t26 = t24+1(1).
        t20 = t25.
        t27 = t26.
        t20 = t20 + t27 * 256.
      ENDIF.
      IF t20 = 9 OR t20 = 10 OR t20 = 11 OR t20 = 12 OR t20 = 13 OR t20 = 32 OR t20 = 160 OR t20 = 5760 OR t20 = 8232 OR t20 = 8233 OR t20 = 8239 OR t20 = 8287 OR t20 = 12288 OR t20 = 65279 OR t20 >= 8192 AND t20 <= 8202.
        t13 = t13 + 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t13 < t14.
      t15 = t11+t13(1).
      IF t15 = '-' OR t15 = '+'.
        t16 = xsdbool( t15 = '-' ).
        t13 = t13 + 1.
      ENDIF.
    ENDIF.
    WHILE t13 < t14.
      t15 = t11+t13(1).
      IF t15 CN '0123456789' OR t15 = ` `.
        EXIT.
      ENDIF.
      t19 = t15.
      IF t18 > range_parse_safe_prefix OR ( t18 = range_parse_safe_prefix AND t19 > 1 ).
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t18 = t18 * 10 + t19.
      t17 = abap_true.
      t13 = t13 + 1.
    ENDWHILE.
    IF t17 = abap_false OR ( t16 = abap_true AND t18 = 0 ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t16 = abap_true.
      t18 = 0 - t18.
    ENDIF.
    t10 = t18.
    result = t10.

  ENDMETHOD.

  METHOD parse_dynpros.
    DATA(t1) = i_parsed.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
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
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = t1.
    DATA(t13) = |abapGit|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t10.
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
      CLEAR t18.
      DATA(t19) = t10.
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
    DATA(t24) = t8.
    CLEAR t23.
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
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA(t28) = t8.
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
    DATA(t33) = t6.
    CLEAR t32.
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
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      DATA(t37) = t6.
      t36 = t37.
      DATA(t38) = |DYNPROS|.
      t35 = t36->get( p0 = t38 ).
      t30 = t35.
    ENDIF.
    t5 = t30.
    t4 = t5.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = t4.
    IF t42 IS INITIAL.
      t41 = abap_true.
    ENDIF.
    IF t41 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA(t45) = t4.
      t44 = t45.
      t40 = t44.
    ENDIF.
    t39 = t40.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = t39.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t47.
    IF t53 IS INITIAL.
      t52 = abap_true.
    ENDIF.
    t51 = xsdbool( t52 = abap_false ).
    t46 = t51.
    IF t46 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      DATA(t57) = t39.
      t56 = t57.
      DATA(t58) = |item|.
      t55 = t56->get( p0 = t58 ).
      t54 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t55 ).
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      DATA(t61) = VALUE i( ).
      DO.
        t54->load( ).
        IF t61 >= lines( t54->items ).
          EXIT.
        ENDIF.
        CLEAR t60.
        READ TABLE t54->items INDEX t61 + 1 INTO t60.
        t61 = t61 + 1.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        CLEAR t59.
        IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t62 ?= t60.
          t59 = t62.
        ELSE.
          IF t60 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t63 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t63.
            t63 ?= t60.
            CLEAR t59.
            IF t63 IS BOUND.
              CREATE OBJECT t59.
              t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t59->cval = t63.
            ENDIF.
          ELSE.
            CLEAR t59.
            IF t60 IS BOUND.
              DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t64.
              DATA t65 TYPE REF TO object.
              CLEAR t65.
              CLEAR t64.
              t65 = t60.
              TRY.
                  t59 ?= t65.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t59 IS NOT BOUND.
                TRY.
                    t64 ?= t60.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t64 IS BOUND.
                  t59 = t64->source( ).
                ENDIF.
                IF t59 IS NOT BOUND.
                  CREATE OBJECT t59.
                  t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t59->oval = t60.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA(t66) = VALUE abap_bool( ).
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        DATA(t70) = t59.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t69.
        IF t73 IS NOT BOUND.
          t72 = abap_true.
        ELSE.
          t72 = xsdbool( t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t72 = abap_true.
          DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t74.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t75.
          DATA(t76) = t69.
          DATA(t77) = |HEADER|.
          t75 = t76->get( p0 = t77 ).
          t71 = t75.
        ENDIF.
        t68 = t71.
        t67 = t68.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        t78 = t79.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = t67.
        IF t81 IS INITIAL.
          t80 = abap_true.
        ENDIF.
        t66 = t80.
        IF t66 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t83.
        CREATE OBJECT t83.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        DATA(t89) = t59.
        DATA(t90) = |FIELDS|.
        t88 = t89->get( p0 = t90 ).
        t87 = t88.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t87.
        IF t93 IS NOT BOUND.
          t92 = abap_true.
        ELSE.
          t92 = xsdbool( t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t92 = abap_true.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          t91 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          DATA(t96) = t87.
          DATA(t97) = |RPY_DYFATC|.
          t95 = t96->get( p0 = t97 ).
          t91 = t95.
        ENDIF.
        t86 = t91.
        CLEAR t85.
        IF t86 IS BOUND.
          t85 = t86.
        ENDIF.
        t84 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t85 ).
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        DATA t99 TYPE REF TO object.
        CLEAR t99.
        DATA(t100) = VALUE i( ).
        DO.
          t84->load( ).
          IF t100 >= lines( t84->items ).
            EXIT.
          ENDIF.
          CLEAR t99.
          READ TABLE t84->items INDEX t100 + 1 INTO t99.
          t100 = t100 + 1.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          CLEAR t98.
          IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t101 ?= t99.
            t98 = t101.
          ELSE.
            IF t99 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
              DATA t102 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              CLEAR t102.
              t102 ?= t99.
              CLEAR t98.
              IF t102 IS BOUND.
                CREATE OBJECT t98.
                t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                t98->cval = t102.
              ENDIF.
            ELSE.
              CLEAR t98.
              IF t99 IS BOUND.
                DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t103.
                DATA t104 TYPE REF TO object.
                CLEAR t104.
                CLEAR t103.
                t104 = t99.
                TRY.
                    t98 ?= t104.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t98 IS NOT BOUND.
                  TRY.
                      t103 ?= t99.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t103 IS BOUND.
                    t98 = t103->source( ).
                  ENDIF.
                  IF t98 IS NOT BOUND.
                    CREATE OBJECT t98.
                    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t98->oval = t99.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t105) = t82.
          DATA t106 TYPE REF TO zcl_lnt_dynpro_field.
          CLEAR t106.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          DATA(t109) = t98.
          DATA(t110) = |NAME|.
          t108 = t109->get( p0 = t110 ).
          t107 = t108.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          DATA(t113) = t98.
          DATA(t114) = |TYPE|.
          t112 = t113->get( p0 = t114 ).
          t111 = t112.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          DATA(t117) = t98.
          DATA(t118) = |CONT_TYPE|.
          t116 = t117->get( p0 = t118 ).
          t115 = t116.
          DATA t119 TYPE REF TO zcl_lnt_dynpro_field.
          CLEAR t119.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t122) = VALUE abap_bool( ).
          DATA(t123) = t107.
          IF t123 IS INITIAL.
            t122 = abap_true.
          ENDIF.
          IF t122 = abap_true.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            t121 = t124.
          ELSE.
            DATA(t125) = VALUE string( ).
            DATA(t126) = t107.
            t125 = t126->as_string( ).
            DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t127->has = abap_true.
            t127->value = t125.
            t121 = t127.
          ENDIF.
          t120 = t121.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA(t130) = VALUE abap_bool( ).
          DATA(t131) = t111.
          IF t131 IS INITIAL.
            t130 = abap_true.
          ENDIF.
          IF t130 = abap_true.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            t129 = t132.
          ELSE.
            DATA(t133) = VALUE string( ).
            DATA(t134) = t111.
            t133 = t134->as_string( ).
            DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t135->has = abap_true.
            t135->value = t133.
            t129 = t135.
          ENDIF.
          t128 = t129.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA(t138) = VALUE abap_bool( ).
          DATA(t139) = t115.
          IF t139 IS INITIAL.
            t138 = abap_true.
          ENDIF.
          IF t138 = abap_true.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            t137 = t140.
          ELSE.
            DATA(t141) = VALUE string( ).
            DATA(t142) = t115.
            t141 = t142->as_string( ).
            DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t143->has = abap_true.
            t143->value = t141.
            t137 = t143.
          ENDIF.
          t136 = t137.
          DATA(t144) = VALUE f( ).
          DATA(t145) = VALUE f( ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          DATA(t148) = t98.
          DATA(t149) = |LENGTH|.
          t147 = t148->get( p0 = t149 ).
          t146 = t147.
          DATA(t150) = VALUE f( ).
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA(t152) = VALUE abap_bool( ).
          DATA(t153) = t146.
          IF t153 IS INITIAL.
            t152 = abap_true.
          ENDIF.
          IF t152 = abap_true.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t154.
            t151 = t154.
          ELSE.
            DATA(t155) = VALUE string( ).
            DATA(t156) = t146.
            t155 = t156->as_string( ).
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t155.
            t151 = t157.
          ENDIF.
          t150 = zcl_lnt_dynpros_module=>parse_number( i_value = t151 ).
          t145 = t150.
          t144 = t145.
          DATA(t158) = VALUE f( ).
          DATA(t159) = VALUE f( ).
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          DATA(t162) = t98.
          DATA(t163) = |VISLENGTH|.
          t161 = t162->get( p0 = t163 ).
          t160 = t161.
          DATA(t164) = VALUE f( ).
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = t160.
          IF t167 IS INITIAL.
            t166 = abap_true.
          ENDIF.
          IF t166 = abap_true.
            DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t168.
            t165 = t168.
          ELSE.
            DATA(t169) = VALUE string( ).
            DATA(t170) = t160.
            t169 = t170->as_string( ).
            DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t171->has = abap_true.
            t171->value = t169.
            t165 = t171.
          ENDIF.
          t164 = zcl_lnt_dynpros_module=>parse_number( i_value = t165 ).
          t159 = t164.
          t158 = t159.
          DATA(t172) = VALUE f( ).
          DATA(t173) = VALUE f( ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          DATA(t176) = t98.
          DATA(t177) = |LINE|.
          t175 = t176->get( p0 = t177 ).
          t174 = t175.
          DATA(t178) = VALUE f( ).
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA(t180) = VALUE abap_bool( ).
          DATA(t181) = t174.
          IF t181 IS INITIAL.
            t180 = abap_true.
          ENDIF.
          IF t180 = abap_true.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            t179 = t182.
          ELSE.
            DATA(t183) = VALUE string( ).
            DATA(t184) = t174.
            t183 = t184->as_string( ).
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t183.
            t179 = t185.
          ENDIF.
          t178 = zcl_lnt_dynpros_module=>parse_number( i_value = t179 ).
          t173 = t178.
          t172 = t173.
          DATA(t186) = VALUE f( ).
          DATA(t187) = VALUE f( ).
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          DATA(t190) = t98.
          DATA(t191) = |COLUMN|.
          t189 = t190->get( p0 = t191 ).
          t188 = t189.
          DATA(t192) = VALUE f( ).
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = t188.
          IF t195 IS INITIAL.
            t194 = abap_true.
          ENDIF.
          IF t194 = abap_true.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t193 = t196.
          ELSE.
            DATA(t197) = VALUE string( ).
            DATA(t198) = t188.
            t197 = t198->as_string( ).
            DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t199->has = abap_true.
            t199->value = t197.
            t193 = t199.
          ENDIF.
          t192 = zcl_lnt_dynpros_module=>parse_number( i_value = t193 ).
          t187 = t192.
          t186 = t187.
          DATA(t200) = VALUE f( ).
          DATA(t201) = VALUE f( ).
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t203.
          DATA(t204) = t98.
          DATA(t205) = |HEIGHT|.
          t203 = t204->get( p0 = t205 ).
          t202 = t203.
          DATA(t206) = VALUE f( ).
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA(t208) = VALUE abap_bool( ).
          DATA(t209) = t202.
          IF t209 IS INITIAL.
            t208 = abap_true.
          ENDIF.
          IF t208 = abap_true.
            DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t210.
            t207 = t210.
          ELSE.
            DATA(t211) = VALUE string( ).
            DATA(t212) = t202.
            t211 = t212->as_string( ).
            DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t213->has = abap_true.
            t213->value = t211.
            t207 = t213.
          ENDIF.
          t206 = zcl_lnt_dynpros_module=>parse_number( i_value = t207 ).
          t201 = t206.
          t200 = t201.
          t119 = NEW zcl_lnt_dynpro_field( i_name = t120 i_type_9913 = t128 i_cont_type = t136 i_length = t144 i_vislength = t158 i_line = t172 i_column = t186 i_height = t200 ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t214 ).
          ENDIF.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t215 ).
          ENDIF.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `contType` p1 = t216 ).
          ENDIF.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t217 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `vislength` p1 = t218 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `line` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `column` p1 = t220 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `height` p1 = t221 ).
          ENDIF.
          CREATE OBJECT t119->zlnt_json_ownkeys_70e5fd461788.
          t119->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t222) = |name|.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          ENDIF.
          DATA(t224) = |type|.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
          ENDIF.
          DATA(t226) = |contType|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          DATA(t228) = |length|.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
          ENDIF.
          DATA(t230) = |vislength|.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
          ENDIF.
          DATA(t232) = |line|.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
          ENDIF.
          DATA(t234) = |column|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          DATA(t236) = |height|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          t106 = t119.
          t105->load( ).
          APPEND t106 TO t105->items.
          t105->save( ).
        ENDDO.
        DATA(t238) = t2.
        DATA t239 TYPE REF TO zcl_lnt_dynpro_header.
        CLEAR t239.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t241.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        DATA(t244) = t59.
        DATA(t245) = |HEADER|.
        t243 = t244->get( p0 = t245 ).
        t242 = t243.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = t242.
        IF t248 IS NOT BOUND.
          t247 = abap_true.
        ELSE.
          t247 = xsdbool( t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t247 = abap_true.
          DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t249.
          t246 = t249.
        ELSE.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          DATA(t251) = t242.
          DATA(t252) = |SCREEN|.
          t250 = t251->get( p0 = t252 ).
          t246 = t250.
        ENDIF.
        t241 = t246.
        t240 = t241.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        DATA(t257) = t59.
        DATA(t258) = |HEADER|.
        t256 = t257->get( p0 = t258 ).
        t255 = t256.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        DATA(t260) = VALUE abap_bool( ).
        DATA(t261) = t255.
        IF t261 IS NOT BOUND.
          t260 = abap_true.
        ELSE.
          t260 = xsdbool( t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t260 = abap_true.
          DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t262.
          t259 = t262.
        ELSE.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t263.
          DATA(t264) = t255.
          DATA(t265) = |DESCRIPT|.
          t263 = t264->get( p0 = t265 ).
          t259 = t263.
        ENDIF.
        t254 = t259.
        t253 = t254.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        DATA(t270) = t59.
        DATA(t271) = |HEADER|.
        t269 = t270->get( p0 = t271 ).
        t268 = t269.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        DATA(t273) = VALUE abap_bool( ).
        DATA(t274) = t268.
        IF t274 IS NOT BOUND.
          t273 = abap_true.
        ELSE.
          t273 = xsdbool( t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t273 = abap_true.
          DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t275.
          t272 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t276.
          DATA(t277) = t268.
          DATA(t278) = |NEXTSCREEN|.
          t276 = t277->get( p0 = t278 ).
          t272 = t276.
        ENDIF.
        t267 = t272.
        t266 = t267.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        DATA(t283) = t59.
        DATA(t284) = |HEADER|.
        t282 = t283->get( p0 = t284 ).
        t281 = t282.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        DATA(t286) = VALUE abap_bool( ).
        DATA(t287) = t281.
        IF t287 IS NOT BOUND.
          t286 = abap_true.
        ELSE.
          t286 = xsdbool( t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t286 = abap_true.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          t285 = t288.
        ELSE.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          DATA(t290) = t281.
          DATA(t291) = |TYPE|.
          t289 = t290->get( p0 = t291 ).
          t285 = t289.
        ENDIF.
        t280 = t285.
        t279 = t280.
        DATA t292 TYPE REF TO zcl_lnt_dynpro_header.
        CLEAR t292.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = t240.
        IF t296 IS INITIAL.
          t295 = abap_true.
        ENDIF.
        IF t295 = abap_true.
          DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t297.
          t294 = t297.
        ELSE.
          DATA(t298) = VALUE string( ).
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          DATA(t300) = t240.
          t299 = t300.
          t298 = t299->as_string( ).
          DATA(t301) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t301->has = abap_true.
          t301->value = t298.
          t294 = t301.
        ENDIF.
        t293 = t294.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t302.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = t253.
        IF t305 IS INITIAL.
          t304 = abap_true.
        ENDIF.
        IF t304 = abap_true.
          DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t306.
          t303 = t306.
        ELSE.
          DATA(t307) = VALUE string( ).
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          DATA(t309) = t253.
          t308 = t309.
          t307 = t308->as_string( ).
          DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t310->has = abap_true.
          t310->value = t307.
          t303 = t310.
        ENDIF.
        t302 = t303.
        DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t311.
        DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t312.
        DATA(t313) = VALUE abap_bool( ).
        DATA(t314) = t266.
        IF t314 IS INITIAL.
          t313 = abap_true.
        ENDIF.
        IF t313 = abap_true.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          t312 = t315.
        ELSE.
          DATA(t316) = VALUE string( ).
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          DATA(t318) = t266.
          t317 = t318.
          t316 = t317->as_string( ).
          DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t319->has = abap_true.
          t319->value = t316.
          t312 = t319.
        ENDIF.
        t311 = t312.
        DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t320.
        DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t321.
        DATA(t322) = VALUE abap_bool( ).
        DATA(t323) = t279.
        IF t323 IS INITIAL.
          t322 = abap_true.
        ENDIF.
        IF t322 = abap_true.
          DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t324.
          t321 = t324.
        ELSE.
          DATA(t325) = VALUE string( ).
          DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t326.
          DATA(t327) = t279.
          t326 = t327.
          t325 = t326->as_string( ).
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = t325.
          t321 = t328.
        ENDIF.
        t320 = t321.
        DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t329.
        DATA(t330) = t82.
        t329 = t330.
        t292 = NEW zcl_lnt_dynpro_header( i_number = t293 i_description = t302 i_next_screen = t311 i_type_9913 = t320 i_fields_62af = t329 ).
        CREATE OBJECT t292->zlnt_view_ownkeys_b0e8086400eb.
        t292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t331.
        IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `number` p1 = t331 ).
        ENDIF.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t332.
        IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t332 ).
        ENDIF.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `nextScreen` p1 = t333 ).
        ENDIF.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t334 ).
        ENDIF.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        IF t292->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t335 ).
        ENDIF.
        CREATE OBJECT t292->zlnt_json_ownkeys_70e5fd461788.
        t292->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t336) = |number|.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
        ENDIF.
        DATA(t338) = |description|.
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
        ENDIF.
        DATA(t340) = |nextScreen|.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
        ENDIF.
        DATA(t342) = |type|.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t342 p1 = t343 ).
        ENDIF.
        DATA(t344) = |fields|.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
        ENDIF.
        t239 = t292.
        t238->load( ).
        APPEND t239 TO t238->items.
        t238->save( ).
      ENDDO.
    ENDIF.
    DATA(t346) = t2.
    result = t346.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1932_703d005402de.
  ENDMETHOD.
ENDCLASS.
