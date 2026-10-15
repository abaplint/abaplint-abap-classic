* TS: src/abap/2_statements/expressions/sql_path_join_type.ts:4:1 SQLPathJoinType
CLASS zcl_lnt_sql_path_join_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_join_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |INNER|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |LEFT OUTER|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |RIGHT OUTER|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t3.
    DATA(t16) = t6.
    DATA(t17) = t9.
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |EXACT ONE|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |MANY|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = |ONE|.
    CLEAR t29.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA(t32) = t20.
    DATA(t33) = t23.
    DATA(t34) = t26.
    t31 = zcl_lnt_st_combi_module=>alt_prio( i_first = t32 i_second = t33 i_rest = t34 ).
    t19 = t31.
    t18 = t19.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = t18.
    CLEAR t38.
    IF t39 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t39.
      TRY.
          t38 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t40 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t38 = t40->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t37 = t38.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = |TO|.
    CLEAR t43.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    CREATE OBJECT t46.
    t45 = t46.
    DATA(t47) = t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = t18.
    CLEAR t48.
    IF t49 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      CLEAR t50.
      t51 = t49.
      TRY.
          t48 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = t37.
    DATA(t54) = t42.
    DATA(t55) = t45.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t54 i_rest = t55 ).
    t36 = t52.
    t35 = t36.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = t1.
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t63.
      DATA t64 TYPE REF TO object.
      CLEAR t64.
      CLEAR t63.
      t64 = t62.
      TRY.
          t61 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t63 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t61 = t63->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = t61.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = t35.
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
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      CLEAR t72.
      t73 = t67.
      TRY.
          t66 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t72 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t66 = t72->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t60.
    DATA(t78) = t65.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t59 = t76.
    CLEAR t58.
    IF t59 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t59.
      TRY.
          t58 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t80 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t58 = t80->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    t57 = t58.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = t35.
    CLEAR t83.
    IF t84 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t85.
      DATA t86 TYPE REF TO object.
      CLEAR t86.
      CLEAR t85.
      t86 = t84.
      TRY.
          t83 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t85 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t83 = t85->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t82 = t83.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA(t90) = t57.
    DATA(t91) = t82.
    DATA(t92) = t87.
    t89 = zcl_lnt_st_combi_module=>alt_prio( i_first = t90 i_second = t91 i_rest = t92 ).
    t56 = t89.
    result = t56.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
  ENDMETHOD.
ENDCLASS.
