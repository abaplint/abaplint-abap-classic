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
    t4 = t1->row.
    DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t12 = t1->col.
    super->constructor( i_row = t4 i_col = t12 ).
    me->vrow = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vrow`.
    me->vcol = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vcol`.
  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_p.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_false ) = abap_true.
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
      DATA(t14) = CONV f( me->vrow ).
      t10 = xsdbool( t14 = t6->vrow ).
    ENDIF.
    t9 = t10.
    IF t10 = abap_true.
      DATA(t18) = me->vcol.
      DATA t19 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t19 = t6->vcol.
      t9 = zlnt_runtime_numb_290eb04a9758=>compare( left = t18 right = t19 op = `==` ).
    ENDIF.
    result = t9.

  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
      DATA t5 TYPE f.
      DATA t6 TYPE REF TO zcl_lnt_position.
      t6 = me.
      t5 = t6->row.
      DATA t11 TYPE REF TO zcl_lnt_position.
      DATA t12 TYPE REF TO zcl_lnt_virtual_position.
      t12 ?= t1.
      t11 = t12.
      IF xsdbool( t5 > t11->row ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA t20 TYPE REF TO zcl_lnt_position.
      t20 = me.
      t19 = t20->row.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA t26 TYPE REF TO zcl_lnt_virtual_position.
      t26 ?= t1.
      t25 = t26.
      t18 = xsdbool( t19 = t25->row ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t32 TYPE REF TO zcl_lnt_position.
        t32 = me.
        t31 = t32->col.
        DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA t38 TYPE REF TO zcl_lnt_virtual_position.
        t38 ?= t1.
        t37 = t38.
        t36 = t37->col.
        t17 = zlnt_runtime_numb_290eb04a9758=>compare( left = t31 right = t36 op = `>` ).
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
      t46 = t47->row.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA t53 TYPE REF TO zcl_lnt_virtual_position.
      t53 ?= t1.
      t52 = t53.
      t45 = xsdbool( t46 = t52->row ).
      t44 = t45.
      IF t45 = abap_true.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t59 TYPE REF TO zcl_lnt_position.
        t59 = me.
        t58 = t59->col.
        DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t64 TYPE REF TO zcl_lnt_position.
        DATA t65 TYPE REF TO zcl_lnt_virtual_position.
        t65 ?= t1.
        t64 = t65.
        t63 = t64->col.
        t44 = zlnt_runtime_numb_290eb04a9758=>compare( left = t58 right = t63 op = `==` ).
      ENDIF.
      t43 = t44.
      IF t44 = abap_true.
        DATA(t70) = CONV f( me->vrow ).
        DATA t72 TYPE REF TO zcl_lnt_virtual_position.
        t72 ?= t1.
        t43 = xsdbool( t70 > t72->vrow ).
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
      t79 = t80->row.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA t86 TYPE REF TO zcl_lnt_virtual_position.
      t86 ?= t1.
      t85 = t86.
      t78 = xsdbool( t79 = t85->row ).
      t77 = t78.
      IF t78 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t92 TYPE REF TO zcl_lnt_position.
        t92 = me.
        t91 = t92->col.
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t97 TYPE REF TO zcl_lnt_position.
        DATA t98 TYPE REF TO zcl_lnt_virtual_position.
        t98 ?= t1.
        t97 = t98.
        t96 = t97->col.
        t77 = zlnt_runtime_numb_290eb04a9758=>compare( left = t91 right = t96 op = `==` ).
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA(t103) = CONV f( me->vrow ).
        DATA t105 TYPE REF TO zcl_lnt_virtual_position.
        t105 ?= t1.
        t76 = xsdbool( t103 = t105->vrow ).
      ENDIF.
      t75 = t76.
      IF t76 = abap_true.
        DATA(t108) = me->vcol.
        DATA t109 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t110 TYPE REF TO zcl_lnt_virtual_position.
        t110 ?= t1.
        t109 = t110->vcol.
        t75 = zlnt_runtime_numb_290eb04a9758=>compare( left = t108 right = t109 op = `>` ).
      ENDIF.
      IF t75 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      result = abap_false.
      RETURN.
    ENDIF.
    result = super->is_after( i_p = t1 ).


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
