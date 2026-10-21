* TS: src/cds/expressions/cds_case.ts:5:1 CDSCase
CLASS zcl_lnt_cds_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |(|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |)|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t29 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t31 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t29 = t31->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    t26->load( ).
    APPEND t34 TO t26->items.
    t26->save( ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t26->load( ).
    APPEND t37 TO t26->items.
    t26->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t26->load( ).
    APPEND t40 TO t26->items.
    t26->save( ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    t26->load( ).
    APPEND t43 TO t26->items.
    t26->save( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    t26->load( ).
    APPEND t46 TO t26->items.
    t26->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t26->load( ).
    APPEND t49 TO t26->items.
    t26->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t26->load( ).
    APPEND t52 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t69->load( ).
    APPEND t72 TO t69->items.
    t69->save( ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    t69->load( ).
    APPEND t75 TO t69->items.
    t69->save( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t69->load( ).
    APPEND t78 TO t69->items.
    t69->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t69->load( ).
    APPEND t81 TO t69->items.
    t69->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t69->load( ).
    APPEND t84 TO t69->items.
    t69->save( ).
    t62 = zcl_lnt_st_combi_module=>alt_prio( i_first = t64 i_second = t67 i_rest = t69 ).
    IF t62 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t61 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t90 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t61 = t90->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |WHEN|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t101 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = |THEN|.
    t105->load( ).
    APPEND t108 TO t105->items.
    t105->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t111 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t105->load( ).
    APPEND t111 TO t105->items.
    t105->save( ).
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t105 ).
    IF t96 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t95 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t119 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t95 = t119->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>plus_prio( i_first = t95 ).
    IF t94 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t93 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t121 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t93 = t121->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t93 i_rest = t124 ).
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = |WHEN|.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = |THEN|.
    t139->load( ).
    APPEND t142 TO t139->items.
    t139->save( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t145 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t147 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t145 = t147->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t139->load( ).
    APPEND t145 TO t139->items.
    t139->save( ).
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t137 i_rest = t139 ).
    IF t132 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t131 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t153 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t131 = t153->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>plus_prio( i_first = t131 ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |CASE|.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t163 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t165 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t163 = t165->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t58 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t168 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t170 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t168 = t170->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t161 = zcl_lnt_st_combi_module=>alt_prio( i_first = t163 i_second = t168 i_rest = t173 ).
    IF t161 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t160 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t178 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t160 = t178->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |ELSE|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t191 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t196.
    t186 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t191 i_rest = t196 ).
    IF t186 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t185 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t201 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t185 = t201->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>opt_prio( i_first = t185 ).
    IF t184 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t183 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t203 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t183 = t203->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t183 TO t180->items.
    t180->save( ).
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t206.
    t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t206->sval = |END|.
    t180->load( ).
    APPEND t206 TO t180->items.
    t180->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t160 i_rest = t180 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
  ENDMETHOD.
ENDCLASS.
