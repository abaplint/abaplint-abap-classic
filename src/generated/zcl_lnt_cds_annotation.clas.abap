* TS: src/cds/expressions/cds_annotation.ts:6:1 CDSAnnotation
CLASS zcl_lnt_cds_annotation DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_annotation IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t6 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t6->source = `^\w+$`.
    t5 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t6 ).
    IF t5 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t5.
      TRY.
          t4 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t10 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t4 = t10->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |/|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t23->source = `^\w+$`.
    t22 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t23 ).
    IF t22 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t22.
      TRY.
          t21 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t27 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t21 = t27->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t16 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t30 ).
    IF t16 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t16.
      TRY.
          t15 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t35 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t15 = t35->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>star( i_first = t15 ).
    IF t14 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t14.
      TRY.
          t13 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t37 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t13 = t37->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t13 i_rest = t40 ).
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t50 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^@[A-Za-z0-9_]+$| flags = ||.
    t50->source = `^@\w+$`.
    t49 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t50 ).
    IF t49 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t49.
      TRY.
          t48 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t54 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t48 = t54->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |@|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t65 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t65->source = `^\w+$`.
    t64 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t65 ).
    IF t64 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t64.
      TRY.
          t63 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t69 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t63 = t69->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t72 ).
    IF t58 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t58.
      TRY.
          t57 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t77 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t57 = t77->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |@|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |<|.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t95 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9_]+$| flags = ||.
    t95->source = `^\w+$`.
    t94 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t95 ).
    IF t94 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t100 TYPE REF TO object.
      t100 = t94.
      TRY.
          t93 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t99 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t93 = t99->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t90->load( ).
    APPEND t93 TO t90->items.
    t90->save( ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t88 i_rest = t90 ).
    IF t83 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t83.
      TRY.
          t82 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t105 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t82 = t105->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t79->load( ).
    APPEND t82 TO t79->items.
    t79->save( ).
    t45 = zcl_lnt_st_combi_module=>alt( i_first = t48 i_second = t57 i_rest = t79 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t45 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t45.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |.|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t1.
      TRY.
          t126 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t131.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t126 i_rest = t131 ).
    IF t121 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t121.
      TRY.
          t120 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t136 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t120 = t136->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t119 = zcl_lnt_st_combi_module=>star( i_first = t120 ).
    IF t119 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t119.
      TRY.
          t118 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t138 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t118 = t138->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = |:|.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1087_967f7f7eef4c.
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t154->cval = t155.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1088_7215c406d22f.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t159.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t163) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1089_69c439d6ef09.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    t159->load( ).
    APPEND t162 TO t159->items.
    t159->save( ).
    t152 = zcl_lnt_st_combi_module=>alt( i_first = t154 i_second = t157 i_rest = t159 ).
    IF t152 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t169 TYPE REF TO object.
      t169 = t152.
      TRY.
          t151 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t168 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t151 = t168->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t151 i_rest = t171 ).
    IF t146 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t177 TYPE REF TO object.
      t177 = t146.
      TRY.
          t145 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t176 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t145 = t176->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t144 = zcl_lnt_st_combi_module=>opt_prio( i_first = t145 ).
    IF t144 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t144.
      TRY.
          t143 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t178 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t143 = t178->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t143 TO t140->items.
    t140->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t118 i_rest = t140 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
  ENDMETHOD.
ENDCLASS.
