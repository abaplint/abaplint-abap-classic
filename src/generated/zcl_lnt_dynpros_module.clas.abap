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
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      result = CONV f( 0 ).
      RETURN.
    ENDIF.
    DATA(t10) = VALUE f( ).
    DATA t11 TYPE string.
    t11 = t1->value.
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
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = t1->get( p0 = |abapGit| ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    IF t10 IS NOT BOUND.
      t15 = abap_true.
    ELSE.
      t15 = xsdbool( t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t15 = abap_true.
    ELSE.
      t14 = t10->get( p0 = |asx:abap| ).
    ENDIF.
    t8 = t14.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8 IS BOUND.
      t23 = t8.
    ENDIF.
    IF t23 IS NOT BOUND.
      t22 = abap_true.
    ELSE.
      t22 = xsdbool( t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t22 = abap_true.
    ELSE.
      t21 = t8->get( p0 = |asx:values| ).
    ENDIF.
    t6 = t21.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS BOUND.
      t32 = t6.
    ENDIF.
    IF t32 IS NOT BOUND.
      t31 = abap_true.
    ELSE.
      t31 = xsdbool( t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t31 = abap_true.
    ELSE.
      t30 = t6->get( p0 = |DYNPROS| ).
    ENDIF.
    t4 = t30.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t40 = t4.
    ENDIF.
    t39 = t40.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t39 IS INITIAL ) = abap_false ) = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t54 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t39->get( p0 = |item| ) ).
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t60 TYPE REF TO object.
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
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        t69 = t59.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        DATA(t72) = VALUE abap_bool( ).
        IF t69 IS NOT BOUND.
          t72 = abap_true.
        ELSE.
          t72 = xsdbool( t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t72 = abap_true.
          CLEAR t71.
        ELSE.
          t71 = t69->get( p0 = |HEADER| ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        CLEAR t78.
        IF xsdbool( t71 IS INITIAL ) = abap_true.
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
        t87 = t59->get( p0 = |FIELDS| ).
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        DATA(t92) = VALUE abap_bool( ).
        IF t87 IS NOT BOUND.
          t92 = abap_true.
        ELSE.
          t92 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t92 = abap_true.
          CLEAR t91.
        ELSE.
          t91 = t87->get( p0 = |RPY_DYFATC| ).
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
          DATA t106 TYPE REF TO zcl_lnt_dynpro_field.
          CLEAR t106.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          t107 = t98->get( p0 = |NAME| ).
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          t111 = t98->get( p0 = |TYPE| ).
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          t115 = t98->get( p0 = |CONT_TYPE| ).
          DATA t119 TYPE REF TO zcl_lnt_dynpro_field.
          CLEAR t119.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t120.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          IF xsdbool( t107 IS INITIAL ) = abap_true.
            CLEAR t121.
          ELSE.
            DATA(t125) = VALUE string( ).
            t125 = t107->as_string( ).
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
          IF xsdbool( t111 IS INITIAL ) = abap_true.
            CLEAR t129.
          ELSE.
            DATA(t133) = VALUE string( ).
            t133 = t111->as_string( ).
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
          IF xsdbool( t115 IS INITIAL ) = abap_true.
            CLEAR t137.
          ELSE.
            DATA(t141) = VALUE string( ).
            t141 = t115->as_string( ).
            DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t143->has = abap_true.
            t143->value = t141.
            t137 = t143.
          ENDIF.
          t136 = t137.
          DATA(t144) = VALUE f( ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          t146 = t98->get( p0 = |LENGTH| ).
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          IF xsdbool( t146 IS INITIAL ) = abap_true.
            CLEAR t151.
          ELSE.
            DATA(t155) = VALUE string( ).
            t155 = t146->as_string( ).
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t155.
            t151 = t157.
          ENDIF.
          t144 = zcl_lnt_dynpros_module=>parse_number( i_value = t151 ).
          DATA(t158) = VALUE f( ).
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          t160 = t98->get( p0 = |VISLENGTH| ).
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          IF xsdbool( t160 IS INITIAL ) = abap_true.
            CLEAR t165.
          ELSE.
            DATA(t169) = VALUE string( ).
            t169 = t160->as_string( ).
            DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t171->has = abap_true.
            t171->value = t169.
            t165 = t171.
          ENDIF.
          t158 = zcl_lnt_dynpros_module=>parse_number( i_value = t165 ).
          DATA(t172) = VALUE f( ).
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          t174 = t98->get( p0 = |LINE| ).
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          IF xsdbool( t174 IS INITIAL ) = abap_true.
            CLEAR t179.
          ELSE.
            DATA(t183) = VALUE string( ).
            t183 = t174->as_string( ).
            DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t185->has = abap_true.
            t185->value = t183.
            t179 = t185.
          ENDIF.
          t172 = zcl_lnt_dynpros_module=>parse_number( i_value = t179 ).
          DATA(t186) = VALUE f( ).
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          t188 = t98->get( p0 = |COLUMN| ).
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          IF xsdbool( t188 IS INITIAL ) = abap_true.
            CLEAR t193.
          ELSE.
            DATA(t197) = VALUE string( ).
            t197 = t188->as_string( ).
            DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t199->has = abap_true.
            t199->value = t197.
            t193 = t199.
          ENDIF.
          t186 = zcl_lnt_dynpros_module=>parse_number( i_value = t193 ).
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          t202 = t98->get( p0 = |HEIGHT| ).
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          IF xsdbool( t202 IS INITIAL ) = abap_true.
            CLEAR t207.
          ELSE.
            DATA(t211) = VALUE string( ).
            t211 = t202->as_string( ).
            DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t213->has = abap_true.
            t213->value = t211.
            t207 = t213.
          ENDIF.
          t119 = NEW zcl_lnt_dynpro_field( i_name = t120 i_type_9913 = t128 i_cont_type = t136 i_length = t144 i_vislength = t158 i_line = t172 i_column = t186 i_height = zcl_lnt_dynpros_module=>parse_number( i_value = t207 ) ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t214 ).
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
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t223 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t225 ).
          ENDIF.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |contType| p1 = t227 ).
          ENDIF.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |length| p1 = t229 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |vislength| p1 = t231 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |line| p1 = t233 ).
          ENDIF.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |column| p1 = t235 ).
          ENDIF.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |height| p1 = t237 ).
          ENDIF.
          t106 = t119.
          t82->load( ).
          APPEND t106 TO t82->items.
          t82->save( ).
        ENDDO.
        DATA t239 TYPE REF TO zcl_lnt_dynpro_header.
        CLEAR t239.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        t242 = t59->get( p0 = |HEADER| ).
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        DATA(t247) = VALUE abap_bool( ).
        IF t242 IS NOT BOUND.
          t247 = abap_true.
        ELSE.
          t247 = xsdbool( t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t247 = abap_true.
          CLEAR t246.
        ELSE.
          t246 = t242->get( p0 = |SCREEN| ).
        ENDIF.
        t240 = t246.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        t255 = t59->get( p0 = |HEADER| ).
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        DATA(t260) = VALUE abap_bool( ).
        IF t255 IS NOT BOUND.
          t260 = abap_true.
        ELSE.
          t260 = xsdbool( t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t260 = abap_true.
          CLEAR t259.
        ELSE.
          t259 = t255->get( p0 = |DESCRIPT| ).
        ENDIF.
        t253 = t259.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        t268 = t59->get( p0 = |HEADER| ).
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        DATA(t273) = VALUE abap_bool( ).
        IF t268 IS NOT BOUND.
          t273 = abap_true.
        ELSE.
          t273 = xsdbool( t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t273 = abap_true.
          CLEAR t272.
        ELSE.
          t272 = t268->get( p0 = |NEXTSCREEN| ).
        ENDIF.
        t266 = t272.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        t281 = t59->get( p0 = |HEADER| ).
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        DATA(t286) = VALUE abap_bool( ).
        IF t281 IS NOT BOUND.
          t286 = abap_true.
        ELSE.
          t286 = xsdbool( t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t286 = abap_true.
          CLEAR t285.
        ELSE.
          t285 = t281->get( p0 = |TYPE| ).
        ENDIF.
        t279 = t285.
        DATA t292 TYPE REF TO zcl_lnt_dynpro_header.
        CLEAR t292.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        IF xsdbool( t240 IS INITIAL ) = abap_true.
          CLEAR t294.
        ELSE.
          DATA(t298) = VALUE string( ).
          t298 = t240->as_string( ).
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
        IF xsdbool( t253 IS INITIAL ) = abap_true.
          CLEAR t303.
        ELSE.
          DATA(t307) = VALUE string( ).
          t307 = t253->as_string( ).
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
        IF xsdbool( t266 IS INITIAL ) = abap_true.
          CLEAR t312.
        ELSE.
          DATA(t316) = VALUE string( ).
          t316 = t266->as_string( ).
          DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t319->has = abap_true.
          t319->value = t316.
          t312 = t319.
        ENDIF.
        t311 = t312.
        DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t321.
        IF xsdbool( t279 IS INITIAL ) = abap_true.
          CLEAR t321.
        ELSE.
          DATA(t325) = VALUE string( ).
          t325 = t279->as_string( ).
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = t325.
          t321 = t328.
        ENDIF.
        t292 = NEW zcl_lnt_dynpro_header( i_number = t293 i_description = t302 i_next_screen = t311 i_type_9913 = t321 i_fields_62af = t82 ).
        CREATE OBJECT t292->zlnt_view_ownkeys_b0e8086400eb.
        t292->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t331.
        t292->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `number` p1 = t331 ).
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
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |number| p1 = t337 ).
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t339 ).
        ENDIF.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |nextScreen| p1 = t341 ).
        ENDIF.
        DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t343.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t343 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t292->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t292->zlnt_json_ownkeys_70e5fd461788->put( p0 = |fields| p1 = t345 ).
        ENDIF.
        t239 = t292.
        t2->load( ).
        APPEND t239 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDIF.
    result = t2.

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
