* TS: src/registry.ts:20:1 ParsingPerformance
CLASS zcl_lnt_parsing_performance DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA results TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA lexing TYPE f.
    CLASS-DATA statements TYPE f.
    CLASS-DATA structure TYPE f.
    CLASS-METHODS clear_feba.
    CLASS-METHODS push IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_result TYPE REF TO zcl_lnt_iparse_result.
    CLASS-METHODS output.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsing_performance IMPLEMENTATION.
  METHOD clear_feba.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    zcl_lnt_parsing_performance=>results = t1.
    DATA(t2) = CONV f( 0 ).
    zcl_lnt_parsing_performance=>lexing = t2.
    DATA(t3) = CONV f( 0 ).
    zcl_lnt_parsing_performance=>statements = t3.
    DATA(t4) = CONV f( 0 ).
    zcl_lnt_parsing_performance=>structure = t4.
  ENDMETHOD.

  METHOD push.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_result.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA(t5) = t2.
    t4 = t5->runtime_extra.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t6 TYPE f.
      DATA(t7) = CONV f( zcl_lnt_parsing_performance=>lexing ).
      DATA t8 TYPE f.
      DATA t9 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t10 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t11) = t2.
      t10 = t11->runtime_extra.
      t9 = t10.
      t8 = t9->lexing.
      t6 = t7 + t8.
      zcl_lnt_parsing_performance=>lexing = t6.
      DATA t12 TYPE f.
      DATA(t13) = CONV f( zcl_lnt_parsing_performance=>statements ).
      DATA t14 TYPE f.
      DATA t15 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t16 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t17) = t2.
      t16 = t17->runtime_extra.
      t15 = t16.
      t14 = t15->statements.
      t12 = t13 + t14.
      zcl_lnt_parsing_performance=>statements = t12.
      DATA t18 TYPE f.
      DATA(t19) = CONV f( zcl_lnt_parsing_performance=>structure ).
      DATA t20 TYPE f.
      DATA t21 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t22 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t23) = t2.
      t22 = t23->runtime_extra.
      t21 = t22.
      t20 = t21->structure.
      t18 = t19 + t20.
      zcl_lnt_parsing_performance=>structure = t18.
    ENDIF.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE f.
    DATA(t26) = t2.
    t25 = t26->runtime.
    DATA(t27) = CONV f( 100 ).
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
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = VALUE string( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = |\t(lexing: |.
      DATA(t48) = VALUE string( ).
      DATA t49 TYPE f.
      DATA t50 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t51 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t52) = t2.
      t51 = t52->runtime_extra.
      t50 = t51.
      t49 = t50->lexing.
      IF t49 <> trunc( t49 ) OR t49 > range_safe_integer OR t49 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t53) = CONV int8( t49 ).
      t48 = |{ t53 }|.
      DATA(t54) = strlen( t47 ).
      t46 = |{ t47 }{ t48 }|.
      DATA(t55) = |ms, statements: |.
      DATA(t56) = strlen( t46 ).
      t45 = |{ t46 }{ t55 }|.
      DATA(t57) = VALUE string( ).
      DATA t58 TYPE f.
      DATA t59 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t60 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t61) = t2.
      t60 = t61->runtime_extra.
      t59 = t60.
      t58 = t59->statements.
      IF t58 <> trunc( t58 ) OR t58 > range_safe_integer OR t58 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t62) = CONV int8( t58 ).
      t57 = |{ t62 }|.
      DATA(t63) = strlen( t45 ).
      t44 = |{ t45 }{ t57 }|.
      DATA(t64) = |ms, structure: |.
      DATA(t65) = strlen( t44 ).
      t43 = |{ t44 }{ t64 }|.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE f.
      DATA t68 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t69 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t70) = t2.
      t69 = t70->runtime_extra.
      t68 = t69.
      t67 = t68->structure.
      IF t67 <> trunc( t67 ) OR t67 > range_safe_integer OR t67 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t71) = CONV int8( t67 ).
      t66 = |{ t71 }|.
      DATA(t72) = strlen( t43 ).
      t42 = |{ t43 }{ t66 }|.
      DATA(t73) = |ms)|.
      DATA(t74) = strlen( t42 ).
      t41 = |{ t42 }{ t73 }|.
      t36 = t41.
    ENDIF.
    DATA(t75) = zcl_lnt_parsing_performance=>results.
    DATA t76 TYPE REF TO zcl_lnt_shape_c89a2931.
    DATA t77 TYPE f.
    DATA t78 TYPE f.
    DATA(t79) = t2.
    t78 = t79->runtime.
    t77 = t78.
    DATA t80 TYPE string.
    DATA(t81) = t36.
    t80 = t81.
    DATA t82 TYPE string.
    DATA t83 TYPE string.
    DATA t84 TYPE string.
    DATA t85 TYPE string.
    DATA(t86) = t1.
    t85 = t86->get_type( ).
    DATA(t87) = | |.
    DATA(t88) = strlen( t85 ).
    t84 = |{ t85 }{ t87 }|.
    DATA t89 TYPE string.
    DATA(t90) = t1.
    t89 = t90->get_name( ).
    DATA(t91) = strlen( t84 ).
    t83 = |{ t84 }{ t89 }|.
    t82 = t83.
    t76 = NEW zcl_lnt_shape_c89a2931( i_runtime = t77 i_name = t82 i_extra = t80 ).
    CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
    t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t92 ).
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extra` p1 = t93 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t94 ).
    ENDIF.
    CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
    t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t95) = |runtime|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
    ENDIF.
    DATA(t97) = |extra|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
    ENDIF.
    DATA(t99) = |name|.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
    ENDIF.
    t75->load( ).
    APPEND t76 TO t75->items.
    t75->save( ).
  ENDMETHOD.

  METHOD output.
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
      t11->load( ).
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
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_shape_c89a2931.
        CLEAR t18.
        DATA(t19) = t4.
        DATA t20 TYPE i.
        DATA(t21) = t12.
        DATA(t22) = 1.
        t20 = t21 - t22.
        t20 = t20 + 1.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t19->load( ).
        CLEAR t23.
        READ TABLE t19->items INDEX t20 INTO t23.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        CLEAR t18.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t24 ?= t23.
          DATA t25 TYPE REF TO object.
          t25 = t24->as_ref( ).
          t18 ?= t25.
        ELSE.
          t18 ?= t23.
        ENDIF.
        t17 = t18.
        DATA t26 TYPE REF TO zcl_lnt_shape_c89a2931.
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_shape_c89a2931.
        CLEAR t27.
        DATA(t28) = t4.
        DATA(t29) = t12.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t28->load( ).
        CLEAR t30.
        READ TABLE t28->items INDEX t29 INTO t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t27.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t30.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t27 ?= t32.
        ELSE.
          t27 ?= t30.
        ENDIF.
        t26 = t27.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE f.
        DATA t35 TYPE f.
        DATA(t36) = t26.
        t35 = t36->runtime.
        DATA t37 TYPE f.
        DATA(t38) = t17.
        t37 = t38->runtime.
        t34 = t35 - t37.
        DATA(t39) = CONV f( 0 ).
        t33 = xsdbool( t34 > t39 ).
        IF t33 = abap_true.
          DATA t40 TYPE REF TO zcl_lnt_shape_c89a2931.
          CLEAR t40.
          DATA t41 TYPE REF TO zcl_lnt_shape_c89a2931.
          CLEAR t41.
          DATA(t42) = t4.
          DATA t43 TYPE i.
          DATA(t44) = t12.
          DATA(t45) = 1.
          t43 = t44 - t45.
          t43 = t43 + 1.
          DATA t46 TYPE REF TO object.
          CLEAR t46.
          t42->load( ).
          CLEAR t46.
          READ TABLE t42->items INDEX t43 INTO t46.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t47.
          CLEAR t41.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t47 ?= t46.
            DATA t48 TYPE REF TO object.
            t48 = t47->as_ref( ).
            t41 ?= t48.
          ELSE.
            t41 ?= t46.
          ENDIF.
          t40 = t41.
          DATA(t49) = t4.
          DATA t50 TYPE i.
          DATA(t51) = t12.
          DATA(t52) = 1.
          t50 = t51 - t52.
          DATA t53 TYPE REF TO zcl_lnt_shape_c89a2931.
          CLEAR t53.
          DATA(t54) = t4.
          DATA(t55) = t12.
          t55 = t55 + 1.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          t54->load( ).
          CLEAR t56.
          READ TABLE t54->items INDEX t55 INTO t56.
          DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t57.
          CLEAR t53.
          IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t57 ?= t56.
            DATA t58 TYPE REF TO object.
            t58 = t57->as_ref( ).
            t53 ?= t58.
          ELSE.
            t53 ?= t56.
          ENDIF.
          t49->put( p0 = t50 p1 = t53 ).
          DATA(t59) = t4.
          DATA(t60) = t12.
          DATA(t61) = t40.
          t59->put( p0 = t60 p1 = t61 ).
          DATA t62 TYPE i.
          DATA(t63) = t12.
          DATA(t64) = 1.
          t62 = t63 - t64.
          t12 = t62.
        ELSE.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t65 TYPE i.
      DATA(t66) = t6.
      DATA(t67) = 1.
      t65 = t66 + t67.
      t6 = t65.
    ENDDO.
    DATA(t68) = t4.
    t3 = t68.
    DATA t69 TYPE i.
    DATA(t70) = 0.
    t69 = t70.
    DO.
      DATA t71 TYPE abap_bool.
      DATA(t72) = t69.
      DATA(t73) = t1.
      t71 = xsdbool( t72 < t73 ).
      IF t71 = abap_false.
        EXIT.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_shape_c89a2931.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_shape_c89a2931.
      CLEAR t75.
      DATA(t76) = zcl_lnt_parsing_performance=>results.
      DATA(t77) = t69.
      t77 = t77 + 1.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      t76->load( ).
      CLEAR t78.
      READ TABLE t76->items INDEX t77 INTO t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t75.
      IF t78 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t78.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t75 ?= t80.
      ELSE.
        t75 ?= t78.
      ENDIF.
      t74 = t75.
      DATA(t81) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zcl_lnt_shape_c89a2931.
      DATA(t83) = t74.
      t82 = t83.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      t84 = t85.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = t82.
      IF t87 IS INITIAL.
        t86 = abap_true.
      ENDIF.
      t81 = t86.
      IF t81 = abap_true.
        EXIT.
      ENDIF.
      DATA(t88) = NEW zlnt_exception_un_5f2d02892fe8( ).
      DATA(t89) = |src/registry.ts:70:7|.
      t88->source_location = t89.
      RAISE EXCEPTION t88.
      DATA t90 TYPE i.
      DATA(t91) = t69.
      DATA(t92) = 1.
      t90 = t91 + t92.
      t69 = t90.
    ENDDO.
    DATA(t93) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t94) = |src/registry.ts:72:5|.
    t93->source_location = t94.
    RAISE EXCEPTION t93.
    DATA(t95) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t96) = |src/registry.ts:73:5|.
    t95->source_location = t96.
    RAISE EXCEPTION t95.
    DATA(t97) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t98) = |src/registry.ts:74:5|.
    t97->source_location = t98.
    RAISE EXCEPTION t97.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1377_bb9e07f7930b.
  ENDMETHOD.
ENDCLASS.
