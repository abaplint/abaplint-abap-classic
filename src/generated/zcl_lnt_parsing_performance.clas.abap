* TS: src/registry.ts:20:1 ParsingPerformance
CLASS zcl_lnt_parsing_performance DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA results TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA lexing TYPE int8.
    CLASS-DATA statements TYPE int8.
    CLASS-DATA structure TYPE int8.
    CLASS-METHODS clear_feba.
    CLASS-METHODS push IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_result TYPE REF TO zcl_lnt_iparse_result.
    CLASS-METHODS output.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsing_performance IMPLEMENTATION.
  METHOD clear_feba.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    zcl_lnt_parsing_performance=>results = t1.
    DATA(t2) = CONV int8( 0 ).
    zcl_lnt_parsing_performance=>lexing = t2.
    DATA(t3) = CONV int8( 0 ).
    zcl_lnt_parsing_performance=>statements = t3.
    DATA(t4) = CONV int8( 0 ).
    zcl_lnt_parsing_performance=>structure = t4.
  ENDMETHOD.

  METHOD push.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_result.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA(t5) = t2.
    t4 = t5->runtime_extra.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE int8.
      DATA(t7) = CONV int8( zcl_lnt_parsing_performance=>lexing ).
      DATA t8 TYPE int8.
      DATA t9 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t10 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t11) = t2.
      t10 = t11->runtime_extra.
      t9 = t10.
      t8 = t9->lexing.
      t6 = t7 + t8.
      IF t6 < range_int8_bound_min OR t6 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      zcl_lnt_parsing_performance=>lexing = t6.
      DATA t12 TYPE int8.
      DATA(t13) = CONV int8( zcl_lnt_parsing_performance=>statements ).
      DATA t14 TYPE int8.
      DATA t15 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t16 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t17) = t2.
      t16 = t17->runtime_extra.
      t15 = t16.
      t14 = t15->statements.
      t12 = t13 + t14.
      IF t12 < range_int8_bound_min OR t12 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      zcl_lnt_parsing_performance=>statements = t12.
      DATA t18 TYPE int8.
      DATA(t19) = CONV int8( zcl_lnt_parsing_performance=>structure ).
      DATA t20 TYPE int8.
      DATA t21 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t22 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t23) = t2.
      t22 = t23->runtime_extra.
      t21 = t22.
      t20 = t21->structure.
      t18 = t19 + t20.
      IF t18 < range_int8_bound_min OR t18 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      zcl_lnt_parsing_performance=>structure = t18.
    ENDIF.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE int8.
    DATA(t26) = t2.
    t25 = t26->runtime.
    DATA(t27) = CONV int8( 100 ).
    t24 = xsdbool( t25 < t27 ).
    IF t24 = abap_true.
      RETURN.
    ENDIF.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = zcl_lnt_parsing_performance=>results.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      zcl_lnt_parsing_performance=>results = t35.
    ENDIF.
    DATA t36 TYPE string.
    DATA(t37) = ||.
    t36 = t37.
    DATA t38 TYPE abap_bool.
    DATA t39 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA(t40) = t2.
    t39 = t40->runtime_extra.
    t38 = xsdbool( t39 IS BOUND ).
    IF t38 = abap_true.
      DATA t41 TYPE string.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA t46 TYPE string.
      DATA(t47) = ||.
      DATA t48 TYPE c LENGTH 1.
      CLEAR t48.
      t48 = cl_abap_conv_in_ce=>uccpi( 9 ).
      CONCATENATE t47 t48 INTO t47 RESPECTING BLANKS.
      t47 = t47 && |(lexing: |.
      DATA t49 TYPE string.
      DATA t50 TYPE int8.
      DATA t51 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t52 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t53) = t2.
      t52 = t53->runtime_extra.
      t51 = t52.
      t50 = t51->lexing.
      t49 = |{ t50 }|.
      DATA(t54) = strlen( t47 ).
      t46 = |{ t47 }{ t49 }|.
      DATA(t55) = |ms, statements: |.
      DATA(t56) = strlen( t46 ).
      t45 = |{ t46 }{ t55 }|.
      DATA t57 TYPE string.
      DATA t58 TYPE int8.
      DATA t59 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t60 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t61) = t2.
      t60 = t61->runtime_extra.
      t59 = t60.
      t58 = t59->statements.
      t57 = |{ t58 }|.
      DATA(t62) = strlen( t45 ).
      t44 = |{ t45 }{ t57 }|.
      DATA(t63) = |ms, structure: |.
      DATA(t64) = strlen( t44 ).
      t43 = |{ t44 }{ t63 }|.
      DATA t65 TYPE string.
      DATA t66 TYPE int8.
      DATA t67 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t68 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t69) = t2.
      t68 = t69->runtime_extra.
      t67 = t68.
      t66 = t67->structure.
      t65 = |{ t66 }|.
      DATA(t70) = strlen( t43 ).
      t42 = |{ t43 }{ t65 }|.
      DATA(t71) = |ms)|.
      DATA(t72) = strlen( t42 ).
      t41 = |{ t42 }{ t71 }|.
      t36 = t41.
    ENDIF.
    DATA(t73) = zcl_lnt_parsing_performance=>results.
    DATA t74 TYPE REF TO zcl_lnt_shape_c89a2931.
    DATA t75 TYPE int8.
    DATA(t76) = t2.
    t75 = t76->runtime.
    DATA t77 TYPE string.
    DATA t78 TYPE string.
    DATA t79 TYPE string.
    DATA(t80) = t1.
    t79 = t80->get_type( ).
    DATA(t81) = | |.
    DATA(t82) = strlen( t79 ).
    t78 = |{ t79 }{ t81 }|.
    DATA t83 TYPE string.
    DATA(t84) = t1.
    t83 = t84->get_name( ).
    DATA(t85) = strlen( t78 ).
    t77 = |{ t78 }{ t83 }|.
    DATA(t86) = t36.
    t74 = NEW zcl_lnt_shape_c89a2931( i_runtime = t75 i_name = t77 i_extra = t86 ).
    APPEND t74 TO t73->items.
  ENDMETHOD.

  METHOD output.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE i.
    DATA(t2) = 10.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zcl_lnt_parsing_performance=>results.
    t4 = t5.
    DATA t6 TYPE i.
    DATA(t7) = 1.
    t6 = t7.
    DO.
      DATA t8 TYPE abap_bool.
      DATA(t9) = t6.
      DATA t10 TYPE i.
      DATA(t11) = t4.
      t10 = lines( t11->items ).
      t8 = xsdbool( t9 < t10 ).
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE i.
      DATA(t13) = t6.
      t12 = t13.
      DO.
        DATA t14 TYPE abap_bool.
        DATA(t15) = t12.
        DATA(t16) = 0.
        t14 = xsdbool( t15 > t16 ).
        IF t14 = abap_false.
          EXIT.
        ENDIF.
        DATA t17 TYPE REF TO zcl_lnt_shape_c89a2931.
        DATA t18 TYPE REF TO zcl_lnt_shape_c89a2931.
        DATA(t19) = t4.
        DATA t20 TYPE i.
        DATA(t21) = t12.
        DATA(t22) = 1.
        t20 = t21 - t22.
        t20 = t20 + 1.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        READ TABLE t19->items INDEX t20 INTO t23.
        t18 ?= t23.
        t17 = t18.
        DATA t24 TYPE REF TO zcl_lnt_shape_c89a2931.
        DATA t25 TYPE REF TO zcl_lnt_shape_c89a2931.
        DATA(t26) = t4.
        DATA(t27) = t12.
        t27 = t27 + 1.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        READ TABLE t26->items INDEX t27 INTO t28.
        t25 ?= t28.
        t24 = t25.
        DATA(t29) = VALUE abap_bool( ).
        DATA t30 TYPE int8.
        DATA t31 TYPE int8.
        DATA(t32) = t24.
        t31 = t32->runtime.
        DATA t33 TYPE int8.
        DATA(t34) = t17.
        t33 = t34->runtime.
        t30 = t31 - t33.
        IF t30 < range_int8_bound_min OR t30 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        DATA(t35) = CONV int8( 0 ).
        t29 = xsdbool( t30 > t35 ).
        IF t29 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_shape_c89a2931.
          DATA t37 TYPE REF TO zcl_lnt_shape_c89a2931.
          DATA(t38) = t4.
          DATA t39 TYPE i.
          DATA(t40) = t12.
          DATA(t41) = 1.
          t39 = t40 - t41.
          t39 = t39 + 1.
          DATA t42 TYPE REF TO object.
          CLEAR t42.
          READ TABLE t38->items INDEX t39 INTO t42.
          t37 ?= t42.
          t36 = t37.
          DATA(t43) = t4.
          DATA t44 TYPE i.
          DATA(t45) = t12.
          DATA(t46) = 1.
          t44 = t45 - t46.
          DATA t47 TYPE REF TO zcl_lnt_shape_c89a2931.
          DATA(t48) = t4.
          DATA(t49) = t12.
          t49 = t49 + 1.
          DATA t50 TYPE REF TO object.
          CLEAR t50.
          READ TABLE t48->items INDEX t49 INTO t50.
          t47 ?= t50.
          t44 = t44 + 1.
          DATA t51 TYPE REF TO object.
          CLEAR t51.
          CLEAR t51.
          WHILE lines( t43->items ) < t44.
            APPEND t51 TO t43->items.
          ENDWHILE.
          MODIFY t43->items FROM t47 INDEX t44.
          DATA(t52) = t4.
          DATA(t53) = t12.
          DATA(t54) = t36.
          t53 = t53 + 1.
          DATA t55 TYPE REF TO object.
          CLEAR t55.
          CLEAR t55.
          WHILE lines( t52->items ) < t53.
            APPEND t55 TO t52->items.
          ENDWHILE.
          MODIFY t52->items FROM t54 INDEX t53.
          DATA t56 TYPE i.
          DATA(t57) = t12.
          DATA(t58) = 1.
          t56 = t57 - t58.
          t12 = t56.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t59 TYPE i.
      DATA(t60) = t6.
      DATA(t61) = 1.
      t59 = t60 + t61.
      t6 = t59.
    ENDDO.
    DATA(t62) = t4.
    t3 = t62.
    DATA t63 TYPE i.
    DATA(t64) = 0.
    t63 = t64.
    DO.
      DATA t65 TYPE abap_bool.
      DATA(t66) = t63.
      DATA(t67) = t1.
      t65 = xsdbool( t66 < t67 ).
      IF t65 = abap_false.
        EXIT.
      ENDIF.
      DATA t68 TYPE REF TO zcl_lnt_shape_c89a2931.
      DATA t69 TYPE REF TO zcl_lnt_shape_c89a2931.
      DATA(t70) = zcl_lnt_parsing_performance=>results.
      DATA(t71) = t63.
      t71 = t71 + 1.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      READ TABLE t70->items INDEX t71 INTO t72.
      t69 ?= t72.
      t68 = t69.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zcl_lnt_shape_c89a2931.
      DATA(t75) = t68.
      t74 = t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t77.
      t76 = t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = t74.
      IF t79 IS INITIAL.
        t78 = abap_true.
      ENDIF.
      t73 = t78.
      IF t73 = abap_true.
        EXIT.
      ENDIF.
      DATA(t80) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t81) = |src/registry.ts:70:7|.
      t80->source_location = t81.
      RAISE EXCEPTION t80.
      DATA t82 TYPE i.
      DATA(t83) = t63.
      DATA(t84) = 1.
      t82 = t83 + t84.
      t63 = t82.
    ENDDO.
    DATA(t85) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t86) = |src/registry.ts:72:5|.
    t85->source_location = t86.
    RAISE EXCEPTION t85.
    DATA(t87) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t88) = |src/registry.ts:73:5|.
    t87->source_location = t88.
    RAISE EXCEPTION t87.
    DATA(t89) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t90) = |src/registry.ts:74:5|.
    t89->source_location = t90.
    RAISE EXCEPTION t89.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1278_c726b07de0d1.
  ENDMETHOD.
ENDCLASS.
