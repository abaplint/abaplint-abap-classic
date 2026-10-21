* TS: src/cds/expressions/cds_annotation_simple.ts:6:1 CDSAnnotationSimple
CLASS zcl_lnt_cds_annotation_simple DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_annotation_simple IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[A-Za-z0-9__]+$| flags = ||.
    t3->source = `^[\w_]+$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t12 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t10 = t12->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |(|.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t31 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t33 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t31 = t33->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    t21 = zcl_lnt_st_combi_module=>alt_prio( i_first = t23 i_second = t26 i_rest = t28 ).
    IF t21 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t20 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t39 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t20 = t39->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |)|.
    t17->load( ).
    APPEND t42 TO t17->items.
    t17->save( ).
    t7 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t15 i_rest = t17 ).
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t58->load( ).
    APPEND t61 TO t58->items.
    t58->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t64 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t58->load( ).
    APPEND t64 TO t58->items.
    t58->save( ).
    t48 = zcl_lnt_st_combi_module=>alt_prio( i_first = t51 i_second = t54 i_rest = t58 ).
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t75 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t77 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t75 = t77->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |+|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t90 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t88 = t90->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t88 i_rest = t93 ).
    IF t83 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t82 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t98 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t82 = t98->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = zcl_lnt_st_combi_module=>star_prio( i_first = t82 ).
    IF t81 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t80 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t100 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t80 = t100->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t75 i_second = t80 i_rest = t103 ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |true|.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = |false|.
    t116->load( ).
    APPEND t119 TO t116->items.
    t116->save( ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = |null|.
    t116->load( ).
    APPEND t122 TO t116->items.
    t116->save( ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = |-|.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t133 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t133->source = `^\d+$`.
    t132 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t133 ).
    IF t132 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t131 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t137 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t131 = t137->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = |.|.
    t139->load( ).
    APPEND t142 TO t139->items.
    t139->save( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA t147 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t147 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+[eE]$| flags = ||.
    t147->source = `^\d+[eE]$`.
    t146 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t147 ).
    IF t146 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t145 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t151 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t145 = t151->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t145 TO t139->items.
    t139->save( ).
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |+|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = |-|.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t155 = zcl_lnt_st_combi_module=>alt_prio( i_first = t157 i_second = t160 i_rest = t163 ).
    IF t155 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t154 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t168 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t154 = t168->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t154 TO t139->items.
    t139->save( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t173 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t173 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t173->source = `^\d+$`.
    t172 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t173 ).
    IF t172 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t171 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t177 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t171 = t177->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t171 TO t139->items.
    t139->save( ).
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t128 i_second = t131 i_rest = t139 ).
    IF t126 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t125 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t183 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t125 = t183->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t125 TO t116->items.
    t116->save( ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t191 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t191->source = `^\d+$`.
    t190 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t191 ).
    IF t190 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t189 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t195 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t189 = t195->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = |.|.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t200.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t205 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+[eE]$| flags = ||.
    t205->source = `^\d+[eE]$`.
    t204 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t205 ).
    IF t204 IS BOUND.
      DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t203 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t203 IS NOT BOUND.
        TRY.
            t209 ?= t204.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS BOUND.
          t203 = t209->source( ).
        ENDIF.
        IF t203 IS NOT BOUND.
          CREATE OBJECT t203.
          t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t203->oval = t204.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t203 TO t200->items.
    t200->save( ).
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t215.
    t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t215->sval = |+|.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t218.
    t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t218->sval = |-|.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    t213 = zcl_lnt_st_combi_module=>alt_prio( i_first = t215 i_second = t218 i_rest = t221 ).
    IF t213 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t212 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t226 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t212 = t226->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t212 TO t200->items.
    t200->save( ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t231 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t231->source = `^\d+$`.
    t230 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t231 ).
    IF t230 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t229 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t235 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t229 = t235->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t200->load( ).
    APPEND t229 TO t200->items.
    t200->save( ).
    t187 = zcl_lnt_st_combi_module=>seq( i_first = t189 i_second = t198 i_rest = t200 ).
    IF t187 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t186 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t241 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t186 = t241->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t186 TO t116->items.
    t116->save( ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = |-|.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t252 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t252->source = `^\d+$`.
    t251 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t252 ).
    IF t251 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t250 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t250 IS NOT BOUND.
        TRY.
            t256 ?= t251.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t250 = t256->source( ).
        ENDIF.
        IF t250 IS NOT BOUND.
          CREATE OBJECT t250.
          t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t250->oval = t251.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t261.
    t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t261->sval = |.|.
    t258->load( ).
    APPEND t261 TO t258->items.
    t258->save( ).
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    DATA t266 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t266 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t266->source = `^\d+$`.
    t265 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t266 ).
    IF t265 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t264 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t270 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t264 = t270->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    t258->load( ).
    APPEND t264 TO t258->items.
    t258->save( ).
    t245 = zcl_lnt_st_combi_module=>seq( i_first = t247 i_second = t250 i_rest = t258 ).
    IF t245 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t244 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t276 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t244 = t276->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t244 TO t116->items.
    t116->save( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = |-|.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    DATA t287 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t287 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t287->source = `^\d+$`.
    t286 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t287 ).
    IF t286 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t285 ?= t286.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t291 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t285 = t291->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t294.
    t280 = zcl_lnt_st_combi_module=>seq( i_first = t282 i_second = t285 i_rest = t294 ).
    IF t280 IS BOUND.
      DATA t299 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t279 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t299 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t299 IS BOUND.
          t279 = t299->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t279 TO t116->items.
    t116->save( ).
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    DATA t307 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t307 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t307->source = `^\d+$`.
    t306 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t307 ).
    IF t306 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t305 ?= t306.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t311 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t305 = t311->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t314.
    t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t314->sval = |.|.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t316.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    DATA t321 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t321 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t321->source = `^\d+$`.
    t320 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t321 ).
    IF t320 IS BOUND.
      DATA t325 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t319 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t325 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t325 IS BOUND.
          t319 = t325->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    t316->load( ).
    APPEND t319 TO t316->items.
    t316->save( ).
    t303 = zcl_lnt_st_combi_module=>seq( i_first = t305 i_second = t314 i_rest = t316 ).
    IF t303 IS BOUND.
      DATA t331 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t302 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t302 IS NOT BOUND.
        TRY.
            t331 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t331 IS BOUND.
          t302 = t331->source( ).
        ENDIF.
        IF t302 IS NOT BOUND.
          CREATE OBJECT t302.
          t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t302->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t302 TO t116->items.
    t116->save( ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t335 TYPE REF TO zif_lnt_statement_runnable.
    DATA t336 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t336 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t336->source = `^\d+$`.
    t335 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t336 ).
    IF t335 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t334 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t340 ?= t335.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t334 = t340->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t335.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t334 TO t116->items.
    t116->save( ).
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = |#|.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t349.
    t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t349->sval = |(|.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t351.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t354 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t354 IS NOT BOUND.
        TRY.
            t356 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t354 = t356->source( ).
        ENDIF.
        IF t354 IS NOT BOUND.
          CREATE OBJECT t354.
          t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t354->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t351->load( ).
    APPEND t354 TO t351->items.
    t351->save( ).
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t359.
    t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t359->sval = |)|.
    t351->load( ).
    APPEND t359 TO t351->items.
    t351->save( ).
    t344 = zcl_lnt_st_combi_module=>seq( i_first = t346 i_second = t349 i_rest = t351 ).
    IF t344 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t343 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t365 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t343 = t365->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t343 TO t116->items.
    t116->save( ).
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t369 TYPE REF TO zif_lnt_statement_runnable.
    DATA t370 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t370 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^#[A-Za-z0-9__]+$| flags = ||.
    t370->source = `^#[\w_]+$`.
    t369 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t370 ).
    IF t369 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t368 ?= t369.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t368 IS NOT BOUND.
        TRY.
            t374 ?= t369.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t368 = t374->source( ).
        ENDIF.
        IF t368 IS NOT BOUND.
          CREATE OBJECT t368.
          t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t368->oval = t369.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t368 TO t116->items.
    t116->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t111 i_second = t114 i_rest = t116 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1089_69c439d6ef09.
  ENDMETHOD.
ENDCLASS.
