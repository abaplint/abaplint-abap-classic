* TS: src/abap/2_statements/expressions/concatenated_constant.ts:4:1 ConcatenatedConstant
CLASS zcl_lnt_concatenated_constant DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_concatenated_constant IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t7) = |^`.*`$|.
    DATA(t8) = |^`[^\n\r|.
    DATA t9 TYPE c LENGTH 1.
    t9 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t8 t9 INTO t8 RESPECTING BLANKS.
    DATA t10 TYPE c LENGTH 1.
    t10 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t8 t10 INTO t8 RESPECTING BLANKS.
    t8 = t8 && |]*`$|.
    DATA(t11) = ||.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t11.
    t6->source = t7.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    IF t5 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t13 TYPE REF TO object.
      t13 = t5.
      TRY.
          t4 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t12 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t4 = t12->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |&|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t26) = |^`.*`$|.
    DATA(t27) = |^`[^\n\r|.
    DATA t28 TYPE c LENGTH 1.
    t28 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t27 t28 INTO t27 RESPECTING BLANKS.
    DATA t29 TYPE c LENGTH 1.
    t29 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t27 t29 INTO t27 RESPECTING BLANKS.
    t27 = t27 && |]*`$|.
    DATA(t30) = ||.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t30.
    t25->source = t26.
    t24 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t25 ).
    IF t24 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t24.
      TRY.
          t23 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t31 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t23 = t31->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t23 i_rest = t34 ).
    t18 = t35.
    IF t18 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t18.
      TRY.
          t17 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t39 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t17 = t39->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>plus_prio( i_first = t17 ).
    IF t16 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t16.
      TRY.
          t15 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t41 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t15 = t41->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t15 i_rest = t44 ).
    t1 = t45.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t55) = |^'.*'$|.
    DATA(t56) = |^'[^\n\r|.
    DATA t57 TYPE c LENGTH 1.
    t57 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t56 t57 INTO t56 RESPECTING BLANKS.
    DATA t58 TYPE c LENGTH 1.
    t58 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t56 t58 INTO t56 RESPECTING BLANKS.
    t56 = t56 && |]*'$|.
    DATA(t59) = ||.
    CREATE OBJECT t54 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t56 flags = t59.
    t54->source = t55.
    t53 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t54 ).
    IF t53 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t53.
      TRY.
          t52 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t60 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t52 = t60->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |&|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t74) = |^'.*'$|.
    DATA(t75) = |^'[^\n\r|.
    DATA t76 TYPE c LENGTH 1.
    t76 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t75 t76 INTO t75 RESPECTING BLANKS.
    DATA t77 TYPE c LENGTH 1.
    t77 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t75 t77 INTO t75 RESPECTING BLANKS.
    t75 = t75 && |]*'$|.
    DATA(t78) = ||.
    CREATE OBJECT t73 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t75 flags = t78.
    t73->source = t74.
    t72 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t73 ).
    IF t72 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t72.
      TRY.
          t71 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t79 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t71 = t79->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t71 i_rest = t82 ).
    t66 = t83.
    IF t66 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t88 TYPE REF TO object.
      t88 = t66.
      TRY.
          t65 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t87 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t65 = t87->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>plus_prio( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
      t90 = t64.
      TRY.
          t63 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t89 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t63 = t89->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t52 i_second = t63 i_rest = t92 ).
    t49 = t93.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t101 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t102 TYPE REF TO object.
      t102 = t1.
      TRY.
          t99 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t101 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS BOUND.
          t99 = t101->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t49 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t107 TYPE REF TO object.
      t107 = t49.
      TRY.
          t104 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t106 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t104 = t106->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    t110 = zcl_lnt_st_combi_module=>alt_prio( i_first = t99 i_second = t104 i_rest = t109 ).
    result = t110.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421.
  ENDMETHOD.
ENDCLASS.
