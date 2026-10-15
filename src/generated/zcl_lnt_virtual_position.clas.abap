* TS: src/virtual_position.ts:5:1 VirtualPosition
CLASS zcl_lnt_virtual_position DEFINITION PUBLIC INHERITING FROM zcl_lnt_position CREATE PUBLIC.
  PUBLIC SECTION.
    DATA vrow TYPE f.
    DATA vcol TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS constructor IMPORTING i_virtual TYPE REF TO zcl_lnt_position i_row TYPE f i_col TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a OPTIONAL.
    METHODS equals REDEFINITION.
    METHODS is_after REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_virtual_position IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_virtual.
    DATA(t2) = i_row.
    DATA(t3) = i_col.
    DATA t4 TYPE f.
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE f.
    DATA(t8) = t5.
    t7 = t8->row.
    t4 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t13) = t10.
    t12 = t13->col.
    t9 = t12.
    super->constructor( i_row = t4 i_col = t9 ).
    DATA(t14) = t2.
    me->vrow = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vrow`.
    DATA(t15) = t3.
    me->vcol = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vcol`.
  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_virtual_position ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA(t5) = abap_false.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_virtual_position.
    DATA t7 TYPE REF TO zcl_lnt_virtual_position.
    DATA(t8) = t1.
    t7 ?= t8.
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    DATA(t12) = me.
    t11 = super->equals( i_p = t12 ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CONV f( me->vrow ).
      DATA t15 TYPE f.
      DATA(t16) = t6.
      t15 = t16->vrow.
      t13 = xsdbool( t14 = t15 ).
      t10 = t13.
    ENDIF.
    t9 = t10.
    IF t10 = abap_true.
      DATA t17 TYPE abap_bool.
      DATA(t18) = me->vcol.
      DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t20) = t6.
      t19 = t20->vcol.
      t17 = zlnt_runtime_numb_290eb04a9758=>compare( left = t18 right = t19 op = `==` ).
      t9 = t17.
    ENDIF.
    result = t9.

  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_virtual_position ).
    IF t2 = abap_true.
      DATA t4 TYPE abap_bool.
      DATA t5 TYPE f.
      DATA t6 TYPE REF TO zcl_lnt_position.
      DATA(t7) = me.
      t6 = t7.
      DATA t8 TYPE f.
      DATA(t9) = t6.
      t8 = t9->row.
      t5 = t8.
      DATA t10 TYPE f.
      DATA t11 TYPE REF TO zcl_lnt_position.
      DATA t12 TYPE REF TO zcl_lnt_virtual_position.
      DATA(t13) = t1.
      t12 ?= t13.
      t11 = t12.
      DATA t14 TYPE f.
      DATA(t15) = t11.
      t14 = t15->row.
      t10 = t14.
      t4 = xsdbool( t5 > t10 ).
      IF t4 = abap_true.
        DATA(t16) = abap_true.
        result = t16.
        RETURN.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA(t21) = me.
      t20 = t21.
      DATA t22 TYPE f.
      DATA(t23) = t20.
      t22 = t23->row.
      t19 = t22.
      DATA t24 TYPE f.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_virtual_position.
      DATA(t27) = t1.
      t26 ?= t27.
      t25 = t26.
      DATA t28 TYPE f.
      DATA(t29) = t25.
      t28 = t29->row.
      t24 = t28.
      t18 = xsdbool( t19 = t24 ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t32 TYPE REF TO zcl_lnt_position.
        DATA(t33) = me.
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t35) = t32.
        t34 = t35->col.
        t31 = t34.
        DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA t38 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t39) = t1.
        t38 ?= t39.
        t37 = t38.
        DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t41) = t37.
        t40 = t41->col.
        t36 = t40.
        t30 = zlnt_runtime_numb_290eb04a9758=>compare( left = t31 right = t36 op = `>` ).
        t17 = t30.
      ENDIF.
      IF t17 = abap_true.
        DATA(t42) = abap_true.
        result = t42.
        RETURN.
      ENDIF.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE f.
      DATA t47 TYPE REF TO zcl_lnt_position.
      DATA(t48) = me.
      t47 = t48.
      DATA t49 TYPE f.
      DATA(t50) = t47.
      t49 = t50->row.
      t46 = t49.
      DATA t51 TYPE f.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA t53 TYPE REF TO zcl_lnt_virtual_position.
      DATA(t54) = t1.
      t53 ?= t54.
      t52 = t53.
      DATA t55 TYPE f.
      DATA(t56) = t52.
      t55 = t56->row.
      t51 = t55.
      t45 = xsdbool( t46 = t51 ).
      t44 = t45.
      IF t45 = abap_true.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t59 TYPE REF TO zcl_lnt_position.
        DATA(t60) = me.
        t59 = t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t62) = t59.
        t61 = t62->col.
        t58 = t61.
        DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t64 TYPE REF TO zcl_lnt_position.
        DATA t65 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t66) = t1.
        t65 ?= t66.
        t64 = t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t68) = t64.
        t67 = t68->col.
        t63 = t67.
        t57 = zlnt_runtime_numb_290eb04a9758=>compare( left = t58 right = t63 op = `==` ).
        t44 = t57.
      ENDIF.
      t43 = t44.
      IF t44 = abap_true.
        DATA t69 TYPE abap_bool.
        DATA(t70) = CONV f( me->vrow ).
        DATA t71 TYPE f.
        DATA t72 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t73) = t1.
        t72 ?= t73.
        t71 = t72->vrow.
        t69 = xsdbool( t70 > t71 ).
        t43 = t69.
      ENDIF.
      IF t43 = abap_true.
        DATA(t74) = abap_true.
        result = t74.
        RETURN.
      ENDIF.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      DATA t79 TYPE f.
      DATA t80 TYPE REF TO zcl_lnt_position.
      DATA(t81) = me.
      t80 = t81.
      DATA t82 TYPE f.
      DATA(t83) = t80.
      t82 = t83->row.
      t79 = t82.
      DATA t84 TYPE f.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_virtual_position.
      DATA(t87) = t1.
      t86 ?= t87.
      t85 = t86.
      DATA t88 TYPE f.
      DATA(t89) = t85.
      t88 = t89->row.
      t84 = t88.
      t78 = xsdbool( t79 = t84 ).
      t77 = t78.
      IF t78 = abap_true.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t92 TYPE REF TO zcl_lnt_position.
        DATA(t93) = me.
        t92 = t93.
        DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t95) = t92.
        t94 = t95->col.
        t91 = t94.
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA t98 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t99) = t1.
        t98 ?= t99.
        t97 = t98.
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t101) = t97.
        t100 = t101->col.
        t96 = t100.
        t90 = zlnt_runtime_numb_290eb04a9758=>compare( left = t91 right = t96 op = `==` ).
        t77 = t90.
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA t102 TYPE abap_bool.
        DATA(t103) = CONV f( me->vrow ).
        DATA t104 TYPE f.
        DATA t105 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t106) = t1.
        t105 ?= t106.
        t104 = t105->vrow.
        t102 = xsdbool( t103 = t104 ).
        t76 = t102.
      ENDIF.
      t75 = t76.
      IF t76 = abap_true.
        DATA t107 TYPE abap_bool.
        DATA(t108) = me->vcol.
        DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t110 TYPE REF TO zcl_lnt_virtual_position.
        DATA(t111) = t1.
        t110 ?= t111.
        t109 = t110->vcol.
        t107 = zlnt_runtime_numb_290eb04a9758=>compare( left = t108 right = t109 op = `>` ).
        t75 = t107.
      ENDIF.
      IF t75 = abap_true.
        DATA(t112) = abap_true.
        result = t112.
        RETURN.
      ENDIF.
      DATA(t113) = abap_false.
      result = t113.
      RETURN.
    ELSE.
      DATA t114 TYPE abap_bool.
      DATA(t115) = t1.
      t114 = super->is_after( i_p = t115 ).
      result = t114.

    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1797_9dbe8effd32f.
  ENDMETHOD.
ENDCLASS.
