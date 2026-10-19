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
    DATA t7 TYPE f.
    t7 = t1->row.
    t4 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t12 = t1->col.
    t9 = t12.
    super->constructor( i_row = t4 i_col = t9 ).
    me->vrow = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vrow`.
    me->vcol = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vcol`.
  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_virtual_position ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_virtual_position.
    DATA t7 TYPE REF TO zcl_lnt_virtual_position.
    t7 ?= t1.
    t6 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    t11 = super->equals( i_p = me ).
    t10 = t11.
    IF t11 = abap_true.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CONV f( me->vrow ).
      DATA t15 TYPE f.
      t15 = t6->vrow.
      t13 = xsdbool( t14 = t15 ).
      t10 = t13.
    ENDIF.
    t9 = t10.
    IF t10 = abap_true.
      DATA t17 TYPE abap_bool.
      DATA(t18) = me->vcol.
      DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t19 = t6->vcol.
      t17 = zlnt_runtime_numb_290eb04a9758=>compare( left = t18 right = t19 op = `==` ).
      t9 = t17.
    ENDIF.
    result = t9.

  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_virtual_position ).
    IF t2 = abap_true.
      DATA t4 TYPE abap_bool.
      DATA t5 TYPE f.
      DATA t6 TYPE REF TO zcl_lnt_position.
      t6 = me.
      DATA t8 TYPE f.
      t8 = t6->row.
      t5 = t8.
      DATA t10 TYPE f.
      DATA t11 TYPE REF TO zcl_lnt_position.
      DATA t12 TYPE REF TO zcl_lnt_virtual_position.
      t12 ?= t1.
      t11 = t12.
      DATA t14 TYPE f.
      t14 = t11->row.
      t10 = t14.
      t4 = xsdbool( t5 > t10 ).
      IF t4 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA t20 TYPE REF TO zcl_lnt_position.
      t20 = me.
      DATA t22 TYPE f.
      t22 = t20->row.
      t19 = t22.
      DATA t24 TYPE f.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_virtual_position.
      t26 ?= t1.
      t25 = t26.
      DATA t28 TYPE f.
      t28 = t25->row.
      t24 = t28.
      t18 = xsdbool( t19 = t24 ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t32 TYPE REF TO zcl_lnt_position.
        t32 = me.
        DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t34 = t32->col.
        t31 = t34.
        DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA t38 TYPE REF TO zcl_lnt_virtual_position.
        t38 ?= t1.
        t37 = t38.
        DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t40 = t37->col.
        t36 = t40.
        t30 = zlnt_runtime_numb_290eb04a9758=>compare( left = t31 right = t36 op = `>` ).
        t17 = t30.
      ENDIF.
      IF t17 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE f.
      DATA t47 TYPE REF TO zcl_lnt_position.
      t47 = me.
      DATA t49 TYPE f.
      t49 = t47->row.
      t46 = t49.
      DATA t51 TYPE f.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA t53 TYPE REF TO zcl_lnt_virtual_position.
      t53 ?= t1.
      t52 = t53.
      DATA t55 TYPE f.
      t55 = t52->row.
      t51 = t55.
      t45 = xsdbool( t46 = t51 ).
      t44 = t45.
      IF t45 = abap_true.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t59 TYPE REF TO zcl_lnt_position.
        t59 = me.
        DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t61 = t59->col.
        t58 = t61.
        DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t64 TYPE REF TO zcl_lnt_position.
        DATA t65 TYPE REF TO zcl_lnt_virtual_position.
        t65 ?= t1.
        t64 = t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t67 = t64->col.
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
        t72 ?= t1.
        t71 = t72->vrow.
        t69 = xsdbool( t70 > t71 ).
        t43 = t69.
      ENDIF.
      IF t43 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      DATA t79 TYPE f.
      DATA t80 TYPE REF TO zcl_lnt_position.
      t80 = me.
      DATA t82 TYPE f.
      t82 = t80->row.
      t79 = t82.
      DATA t84 TYPE f.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_virtual_position.
      t86 ?= t1.
      t85 = t86.
      DATA t88 TYPE f.
      t88 = t85->row.
      t84 = t88.
      t78 = xsdbool( t79 = t84 ).
      t77 = t78.
      IF t78 = abap_true.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t92 TYPE REF TO zcl_lnt_position.
        t92 = me.
        DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t94 = t92->col.
        t91 = t94.
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA t98 TYPE REF TO zcl_lnt_virtual_position.
        t98 ?= t1.
        t97 = t98.
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t100 = t97->col.
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
        t105 ?= t1.
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
        t110 ?= t1.
        t109 = t110->vcol.
        t107 = zlnt_runtime_numb_290eb04a9758=>compare( left = t108 right = t109 op = `>` ).
        t75 = t107.
      ENDIF.
      IF t75 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      result = abap_false.
      RETURN.
    ELSE.
      DATA t114 TYPE abap_bool.
      t114 = super->is_after( i_p = t1 ).
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
