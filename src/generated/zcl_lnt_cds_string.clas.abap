* TS: src/cds/expressions/cds_string.ts:4:1 CDSString
CLASS zcl_lnt_cds_string DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_string IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^'(?:[^'\\]|''|\\'|\\\\|\\(?!'))*'$`.
    DATA(t5) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t4 flags = t5 checked = abap_true.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t8.
    DATA(t9) = |^(?:int[1-9]\|int8\|sstring\|sstr\|char\|numc\|dats\|datn\|tims\|timn|.
    t9 = t9 && `|utcl|utclong|fltp|decfloat\d+|dec|string|rawstring|rstr|raw`.
    t9 = t9 && |\|xstring\|clnt\|lang\|unit\|cuky\|curr\|quan\|geom_ewkb\|d34n\|d16n\|d|.
    t9 = t9 && |34d\|d16d\|d34s\|d16s\|d34r\|d16r\|d\|t\|p\|n\|c\|x\|f)$|.
    DATA(t10) = |^(?:int[1-9]\|int8\|sstring\|sstr\|char\|numc\|dats\|datn\|tims\|timn|.
    t10 = t10 && |\|utcl\|utclong\|fltp\|decfloat[0-9]+\|dec\|string\|rawstring\|rstr\||.
    t10 = t10 && |raw\|xstring\|clnt\|lang\|unit\|cuky\|curr\|quan\|geom_ewkb\|d34n\|d16|.
    t10 = t10 && |n\|d34d\|d16d\|d34s\|d16s\|d34r\|d16r\|d\|t\|p\|n\|c\|x\|f)$|.
    DATA(t11) = |i|.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    t8->source = t9.
    t7 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t8 ).
    t6 = t7.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |abap|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |.|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    CREATE OBJECT t21.
    t20 = t21.
    DATA(t22) = t20.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = t6.
    CLEAR t23.
    IF t24 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t24.
      TRY.
          t23 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t25 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t23 = t25->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t27) = t20.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = |(|.
    CLEAR t33.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t38.
    DATA(t39) = `^\d+$`.
    DATA(t40) = |^[0-9]+$|.
    DATA(t41) = ||.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t40 flags = t41.
    t38->source = t39.
    t37 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t38 ).
    CLEAR t36.
    IF t37 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      CLEAR t42.
      t43 = t37.
      TRY.
          t36 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t42 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t36 = t42->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t35 = t36.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = |)|.
    CLEAR t47.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = t32.
    DATA(t51) = t35.
    DATA(t52) = t44.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t51 i_rest = t52 ).
    t31 = t49.
    CLEAR t30.
    IF t31 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t53.
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      CLEAR t53.
      t54 = t31.
      TRY.
          t30 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t53 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t30 = t53->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>opt_prio( i_first = t30 ).
    CLEAR t28.
    IF t29 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      CLEAR t55.
      t56 = t29.
      TRY.
          t28 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t55 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t28 = t55->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t28 TO t27->items.
    t27->save( ).
    DATA(t57) = t20.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = t1.
    CLEAR t58.
    IF t59 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      CLEAR t60.
      t61 = t59.
      TRY.
          t58 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t60 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t58 = t60->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    t57->load( ).
    APPEND t58 TO t57->items.
    t57->save( ).
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA(t63) = t14.
    DATA(t64) = t17.
    DATA(t65) = t20.
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t13 = t62.
    t12 = t13.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = t12.
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t69.
      TRY.
          t68 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t70 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t68 = t70->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t67 = t68.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = t1.
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t74.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = t73.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    CREATE OBJECT t78.
    t77 = t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA(t80) = t67.
    DATA(t81) = t72.
    DATA(t82) = t77.
    t79 = zcl_lnt_st_combi_module=>alt_prio( i_first = t80 i_second = t81 i_rest = t82 ).
    t66 = t79.
    result = t66.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
  ENDMETHOD.
ENDCLASS.
