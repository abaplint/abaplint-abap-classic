* TS: src/rules_runner.ts:10:1 SyntaxPerformance
CLASS zcl_lnt_syntax_performance DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA results TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS push IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object i_runtime TYPE f.
    METHODS output.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_performance IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->results = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `results`.
  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = i_runtime.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    DATA(t5) = CONV f( 100 ).
    t3 = xsdbool( t4 < t5 ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t6) = me->results.
    DATA t7 TYPE REF TO zcl_lnt_shape_a69dd887.
    DATA t8 TYPE f.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA(t14) = t1.
    t13 = t14->get_type( ).
    DATA(t15) = | |.
    DATA(t16) = strlen( t13 ).
    t12 = |{ t13 }{ t15 }|.
    DATA t17 TYPE string.
    DATA(t18) = t1.
    t17 = t18->get_name( ).
    DATA(t19) = strlen( t12 ).
    t11 = |{ t12 }{ t17 }|.
    t10 = t11.
    t7 = NEW zcl_lnt_shape_a69dd887( i_runtime = t8 i_name = t10 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t21 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t22) = |runtime|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = |name|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
  ENDMETHOD.

  METHOD output.
    DATA t1 TYPE i.
    DATA(t2) = 10.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = me->results.
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
        DATA t17 TYPE REF TO zcl_lnt_shape_a69dd887.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_shape_a69dd887.
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
        DATA t26 TYPE REF TO zcl_lnt_shape_a69dd887.
        CLEAR t26.
        DATA t27 TYPE REF TO zcl_lnt_shape_a69dd887.
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
          DATA t40 TYPE REF TO zcl_lnt_shape_a69dd887.
          CLEAR t40.
          DATA t41 TYPE REF TO zcl_lnt_shape_a69dd887.
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
          DATA t53 TYPE REF TO zcl_lnt_shape_a69dd887.
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
      DATA t74 TYPE REF TO zcl_lnt_shape_a69dd887.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_shape_a69dd887.
      CLEAR t75.
      DATA(t76) = me->results.
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
      DATA t82 TYPE REF TO zcl_lnt_shape_a69dd887.
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
      DATA(t89) = |src/rules_runner.ts:34:7|.
      t88->source_location = t89.
      RAISE EXCEPTION t88.
      DATA t90 TYPE i.
      DATA(t91) = t69.
      DATA(t92) = 1.
      t90 = t91 + t92.
      t69 = t90.
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1782_0ce5ba7cdd91.
  ENDMETHOD.
ENDCLASS.
