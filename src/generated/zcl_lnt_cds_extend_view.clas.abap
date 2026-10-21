* TS: src/cds/expressions/cds_extend_view.ts:5:1 CDSExtendView
CLASS zcl_lnt_cds_extend_view DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_extend_view IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |.|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t15 i_rest = t18 ).
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t9 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t23 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t9 = t23->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t7 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t25 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t7 = t25->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31 = zcl_lnt_st_combi_module=>opt_prio( i_first = t32 ).
    IF t31 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t30 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t34 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t30 = t34->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t27 ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |\{|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t46 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |,|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t61 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t63 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t61 = t63->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t61 i_rest = t66 ).
    IF t56 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t55 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t71 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t55 = t71->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>star( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t53 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t73 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t53 = t73->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t50->load( ).
    APPEND t53 TO t50->items.
    t50->save( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |\}|.
    t50->load( ).
    APPEND t76 TO t50->items.
    t50->save( ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t50 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |EXACT ONE TO EXACT ONE|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |EXACT ONE TO MANY|.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |EXACT ONE TO ONE|.
    t90->load( ).
    APPEND t93 TO t90->items.
    t90->save( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |MANY TO EXACT ONE|.
    t90->load( ).
    APPEND t96 TO t90->items.
    t90->save( ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = |MANY TO MANY|.
    t90->load( ).
    APPEND t99 TO t90->items.
    t90->save( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |MANY TO ONE|.
    t90->load( ).
    APPEND t102 TO t90->items.
    t90->save( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |ONE TO EXACT ONE|.
    t90->load( ).
    APPEND t105 TO t90->items.
    t90->save( ).
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = |ONE TO MANY|.
    t90->load( ).
    APPEND t108 TO t90->items.
    t90->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = |ONE TO ONE|.
    t90->load( ).
    APPEND t111 TO t90->items.
    t90->save( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |TO EXACT ONE|.
    t90->load( ).
    APPEND t114 TO t90->items.
    t90->save( ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = |TO ONE|.
    t90->load( ).
    APPEND t117 TO t90->items.
    t90->save( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t120.
    t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t120->sval = |TO MANY|.
    t90->load( ).
    APPEND t120 TO t90->items.
    t90->save( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t90->load( ).
    APPEND t123 TO t90->items.
    t90->save( ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = |*|.
    t90->load( ).
    APPEND t126 TO t90->items.
    t90->save( ).
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t85 i_second = t88 i_rest = t90 ).
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = |[|.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t143 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = |:|.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t148 i_rest = t151 ).
    IF t141 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t140 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t156 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t140 = t156->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t139 = zcl_lnt_st_combi_module=>opt_prio( i_first = t140 ).
    IF t139 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t138 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t158 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t138 = t158->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t160->load( ).
    APPEND t163 TO t160->items.
    t160->save( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = |]|.
    t160->load( ).
    APPEND t166 TO t160->items.
    t160->save( ).
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t138 i_rest = t160 ).
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = |REDEFINE|.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = |ASSOCIATION|.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t183->cval = t184.
    ENDIF.
    t180->load( ).
    APPEND t183 TO t180->items.
    t180->save( ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t132 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t188 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t190 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t188 = t190->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t187 = zcl_lnt_st_combi_module=>opt_prio( i_first = t188 ).
    IF t187 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t186 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t192 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t186 = t192->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t186 TO t180->items.
    t180->save( ).
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t198 IS BOUND.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t197->cval = t198.
    ENDIF.
    t196 = zcl_lnt_st_combi_module=>opt( i_first = t197 ).
    IF t196 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t195 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t199 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t195 = t199->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t195 TO t180->items.
    t180->save( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = |REDIRECTED|.
    t180->load( ).
    APPEND t202 TO t180->items.
    t180->save( ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |TO|.
    t180->load( ).
    APPEND t205 TO t180->items.
    t180->save( ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t216.
    t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t216->sval = |COMPOSITION|.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t219.
    t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t219->sval = |CHILD|.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t222.
    t214 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t219 i_rest = t222 ).
    IF t214 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t213 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t213 IS NOT BOUND.
        TRY.
            t227 ?= t214.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t213 = t227->source( ).
        ENDIF.
        IF t213 IS NOT BOUND.
          CREATE OBJECT t213.
          t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t213->oval = t214.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = |PARENT|.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t233.
    t211 = zcl_lnt_st_combi_module=>alt_prio( i_first = t213 i_second = t230 i_rest = t233 ).
    IF t211 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t210 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t238 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t210 = t238->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t209 = zcl_lnt_st_combi_module=>opt_prio( i_first = t210 ).
    IF t209 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t208 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t240 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t208 = t240->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t208 TO t180->items.
    t180->save( ).
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t243->cval = t244.
    ENDIF.
    t180->load( ).
    APPEND t243 TO t180->items.
    t180->save( ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t178 i_rest = t180 ).
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t252->cval = t253.
    ENDIF.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t260.
    t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t260->sval = |,|.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t264) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t263->cval = t264.
    ENDIF.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t266.
    t258 = zcl_lnt_st_combi_module=>seq( i_first = t260 i_second = t263 i_rest = t266 ).
    IF t258 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t257 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t271 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t257 = t271->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = zcl_lnt_st_combi_module=>star( i_first = t257 ).
    IF t256 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t255 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t273 ?= t256.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t255 = t273->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t256.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t275.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t280.
    t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t280->sval = |,|.
    t279 = zcl_lnt_st_combi_module=>opt( i_first = t280 ).
    IF t279 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t278 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t282 ?= t279.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t278 = t282->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t279.
        ENDIF.
      ENDIF.
    ENDIF.
    t275->load( ).
    APPEND t278 TO t275->items.
    t275->save( ).
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t252 i_second = t255 i_rest = t275 ).
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t291.
    t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t291->sval = |\{|.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = |*|.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t249 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t300 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t305.
    t295 = zcl_lnt_st_combi_module=>alt_prio( i_first = t297 i_second = t300 i_rest = t305 ).
    IF t295 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t294 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t310 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t294 = t310->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = |\}|.
    t312->load( ).
    APPEND t315 TO t312->items.
    t312->save( ).
    t288 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t294 i_rest = t312 ).
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t325) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t325 IS BOUND.
      CREATE OBJECT t324.
      t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t324->cval = t325.
    ENDIF.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t332.
    t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t332->sval = |,|.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t336) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t335->cval = t336.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t338.
    t330 = zcl_lnt_st_combi_module=>seq( i_first = t332 i_second = t335 i_rest = t338 ).
    IF t330 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t329 ?= t330.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t343 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t329 = t343->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    t328 = zcl_lnt_st_combi_module=>star( i_first = t329 ).
    IF t328 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t327 ?= t328.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t327 IS NOT BOUND.
        TRY.
            t345 ?= t328.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t327 = t345->source( ).
        ENDIF.
        IF t327 IS NOT BOUND.
          CREATE OBJECT t327.
          t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t327->oval = t328.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t347.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t351 TYPE REF TO zif_lnt_statement_runnable.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t352.
    t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t352->sval = |,|.
    t351 = zcl_lnt_st_combi_module=>opt( i_first = t352 ).
    IF t351 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t350 ?= t351.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t354 ?= t351.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t350 = t354->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t351.
        ENDIF.
      ENDIF.
    ENDIF.
    t347->load( ).
    APPEND t350 TO t347->items.
    t347->save( ).
    t321 = zcl_lnt_st_combi_module=>seq( i_first = t324 i_second = t327 i_rest = t347 ).
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t369) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t369 IS BOUND.
      CREATE OBJECT t368.
      t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t368->cval = t369.
    ENDIF.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t372) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t372 IS BOUND.
      CREATE OBJECT t371.
      t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t371->cval = t372.
    ENDIF.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    t366 = zcl_lnt_st_combi_module=>alt_prio( i_first = t368 i_second = t371 i_rest = t374 ).
    IF t366 IS BOUND.
      DATA t379 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t365 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t365 IS NOT BOUND.
        TRY.
            t379 ?= t366.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t379 IS BOUND.
          t365 = t379->source( ).
        ENDIF.
        IF t365 IS NOT BOUND.
          CREATE OBJECT t365.
          t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t365->oval = t366.
        ENDIF.
      ENDIF.
    ENDIF.
    t364 = zcl_lnt_st_combi_module=>star( i_first = t365 ).
    IF t364 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t363 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t363 IS NOT BOUND.
        TRY.
            t381 ?= t364.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t363 = t381->source( ).
        ENDIF.
        IF t363 IS NOT BOUND.
          CREATE OBJECT t363.
          t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t363->oval = t364.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t384.
    t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t384->sval = |\{|.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t386.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = |*|.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t321 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t395 ?= t321.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t397 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t395 = t397->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t400.
    t390 = zcl_lnt_st_combi_module=>alt_prio( i_first = t392 i_second = t395 i_rest = t400 ).
    IF t390 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t389 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t389 IS NOT BOUND.
        TRY.
            t405 ?= t390.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t389 = t405->source( ).
        ENDIF.
        IF t389 IS NOT BOUND.
          CREATE OBJECT t389.
          t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t389->oval = t390.
        ENDIF.
      ENDIF.
    ENDIF.
    t386->load( ).
    APPEND t389 TO t386->items.
    t386->save( ).
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t408.
    t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t408->sval = |\}|.
    t386->load( ).
    APPEND t408 TO t386->items.
    t386->save( ).
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1115_36a563593830.
    IF t414 IS BOUND.
      CREATE OBJECT t413.
      t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t413->cval = t414.
    ENDIF.
    t412 = zcl_lnt_st_combi_module=>opt_prio( i_first = t413 ).
    IF t412 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t411 ?= t412.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t411 IS NOT BOUND.
        TRY.
            t415 ?= t412.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t411 = t415->source( ).
        ENDIF.
        IF t411 IS NOT BOUND.
          CREATE OBJECT t411.
          t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t411->oval = t412.
        ENDIF.
      ENDIF.
    ENDIF.
    t386->load( ).
    APPEND t411 TO t386->items.
    t386->save( ).
    t360 = zcl_lnt_st_combi_module=>seq( i_first = t363 i_second = t384 i_rest = t386 ).
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = |(|.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t428 TYPE REF TO zif_lnt_statement_runnable.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t433) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t433 IS BOUND.
      CREATE OBJECT t432.
      t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t432->cval = t433.
    ENDIF.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t436) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t435->cval = t436.
    ENDIF.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t438.
    t430 = zcl_lnt_st_combi_module=>alt_prio( i_first = t432 i_second = t435 i_rest = t438 ).
    IF t430 IS BOUND.
      DATA t443 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t429 ?= t430.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t429 IS NOT BOUND.
        TRY.
            t443 ?= t430.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t443 IS BOUND.
          t429 = t443->source( ).
        ENDIF.
        IF t429 IS NOT BOUND.
          CREATE OBJECT t429.
          t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t429->oval = t430.
        ENDIF.
      ENDIF.
    ENDIF.
    t428 = zcl_lnt_st_combi_module=>star( i_first = t429 ).
    IF t428 IS BOUND.
      DATA t445 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t427 ?= t428.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t427 IS NOT BOUND.
        TRY.
            t445 ?= t428.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t445 IS BOUND.
          t427 = t445->source( ).
        ENDIF.
        IF t427 IS NOT BOUND.
          CREATE OBJECT t427.
          t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t427->oval = t428.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t447.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t450.
    t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t450->sval = |\{|.
    t447->load( ).
    APPEND t450 TO t447->items.
    t447->save( ).
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t457) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t457 IS BOUND.
      CREATE OBJECT t456.
      t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t456->cval = t457.
    ENDIF.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t462 TYPE REF TO zif_lnt_statement_runnable.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t464.
    t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t464->sval = |,|.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t468) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t468 IS BOUND.
      CREATE OBJECT t467.
      t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t467->cval = t468.
    ENDIF.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t470.
    t462 = zcl_lnt_st_combi_module=>seq( i_first = t464 i_second = t467 i_rest = t470 ).
    IF t462 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t461 ?= t462.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t461 IS NOT BOUND.
        TRY.
            t475 ?= t462.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t461 = t475->source( ).
        ENDIF.
        IF t461 IS NOT BOUND.
          CREATE OBJECT t461.
          t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t461->oval = t462.
        ENDIF.
      ENDIF.
    ENDIF.
    t460 = zcl_lnt_st_combi_module=>star( i_first = t461 ).
    IF t460 IS BOUND.
      DATA t477 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t459 ?= t460.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t459 IS NOT BOUND.
        TRY.
            t477 ?= t460.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t477 IS BOUND.
          t459 = t477->source( ).
        ENDIF.
        IF t459 IS NOT BOUND.
          CREATE OBJECT t459.
          t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t459->oval = t460.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t479.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t483 TYPE REF TO zif_lnt_statement_runnable.
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t484.
    t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t484->sval = |,|.
    t483 = zcl_lnt_st_combi_module=>opt( i_first = t484 ).
    IF t483 IS BOUND.
      DATA t486 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t482 ?= t483.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t482 IS NOT BOUND.
        TRY.
            t486 ?= t483.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t486 IS BOUND.
          t482 = t486->source( ).
        ENDIF.
        IF t482 IS NOT BOUND.
          CREATE OBJECT t482.
          t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t482->oval = t483.
        ENDIF.
      ENDIF.
    ENDIF.
    t479->load( ).
    APPEND t482 TO t479->items.
    t479->save( ).
    t454 = zcl_lnt_st_combi_module=>seq( i_first = t456 i_second = t459 i_rest = t479 ).
    IF t454 IS BOUND.
      DATA t492 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t453 ?= t454.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t492 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t492 IS BOUND.
          t453 = t492->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    t447->load( ).
    APPEND t453 TO t447->items.
    t447->save( ).
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t495.
    t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t495->sval = |\}|.
    t447->load( ).
    APPEND t495 TO t447->items.
    t447->save( ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t503.
    t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t503->sval = |UNION|.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t508.
    t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t508->sval = |ALL|.
    t507 = zcl_lnt_st_combi_module=>opt( i_first = t508 ).
    IF t507 IS BOUND.
      DATA t510 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t506 ?= t507.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t506 IS NOT BOUND.
        TRY.
            t510 ?= t507.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t510 IS BOUND.
          t506 = t510->source( ).
        ENDIF.
        IF t506 IS NOT BOUND.
          CREATE OBJECT t506.
          t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t506->oval = t507.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t512.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t516 TYPE REF TO zif_lnt_statement_runnable.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t521 IS BOUND.
      CREATE OBJECT t520.
      t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t520->cval = t521.
    ENDIF.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t524) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t524 IS BOUND.
      CREATE OBJECT t523.
      t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t523->cval = t524.
    ENDIF.
    DATA t526 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t526.
    t518 = zcl_lnt_st_combi_module=>alt_prio( i_first = t520 i_second = t523 i_rest = t526 ).
    IF t518 IS BOUND.
      DATA t531 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t517 ?= t518.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t517 IS NOT BOUND.
        TRY.
            t531 ?= t518.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t531 IS BOUND.
          t517 = t531->source( ).
        ENDIF.
        IF t517 IS NOT BOUND.
          CREATE OBJECT t517.
          t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t517->oval = t518.
        ENDIF.
      ENDIF.
    ENDIF.
    t516 = zcl_lnt_st_combi_module=>star( i_first = t517 ).
    IF t516 IS BOUND.
      DATA t533 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t515 ?= t516.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t515 IS NOT BOUND.
        TRY.
            t533 ?= t516.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t533 IS BOUND.
          t515 = t533->source( ).
        ENDIF.
        IF t515 IS NOT BOUND.
          CREATE OBJECT t515.
          t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t515->oval = t516.
        ENDIF.
      ENDIF.
    ENDIF.
    t512->load( ).
    APPEND t515 TO t512->items.
    t512->save( ).
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t536.
    t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t536->sval = |\{|.
    t512->load( ).
    APPEND t536 TO t512->items.
    t512->save( ).
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t540 TYPE REF TO zif_lnt_statement_runnable.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t543) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t543 IS BOUND.
      CREATE OBJECT t542.
      t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t542->cval = t543.
    ENDIF.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t550.
    t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t550->sval = |,|.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t554) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t554 IS BOUND.
      CREATE OBJECT t553.
      t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t553->cval = t554.
    ENDIF.
    DATA t556 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t556.
    t548 = zcl_lnt_st_combi_module=>seq( i_first = t550 i_second = t553 i_rest = t556 ).
    IF t548 IS BOUND.
      DATA t561 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t547 ?= t548.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t561 ?= t548.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t561 IS BOUND.
          t547 = t561->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t548.
        ENDIF.
      ENDIF.
    ENDIF.
    t546 = zcl_lnt_st_combi_module=>star( i_first = t547 ).
    IF t546 IS BOUND.
      DATA t563 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t545 ?= t546.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t545 IS NOT BOUND.
        TRY.
            t563 ?= t546.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t563 IS BOUND.
          t545 = t563->source( ).
        ENDIF.
        IF t545 IS NOT BOUND.
          CREATE OBJECT t545.
          t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t545->oval = t546.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t565 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t565.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t570.
    t570->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t570->sval = |,|.
    t569 = zcl_lnt_st_combi_module=>opt( i_first = t570 ).
    IF t569 IS BOUND.
      DATA t572 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t568 ?= t569.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t568 IS NOT BOUND.
        TRY.
            t572 ?= t569.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t572 IS BOUND.
          t568 = t572->source( ).
        ENDIF.
        IF t568 IS NOT BOUND.
          CREATE OBJECT t568.
          t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t568->oval = t569.
        ENDIF.
      ENDIF.
    ENDIF.
    t565->load( ).
    APPEND t568 TO t565->items.
    t565->save( ).
    t540 = zcl_lnt_st_combi_module=>seq( i_first = t542 i_second = t545 i_rest = t565 ).
    IF t540 IS BOUND.
      DATA t578 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t539 ?= t540.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t539 IS NOT BOUND.
        TRY.
            t578 ?= t540.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t578 IS BOUND.
          t539 = t578->source( ).
        ENDIF.
        IF t539 IS NOT BOUND.
          CREATE OBJECT t539.
          t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t539->oval = t540.
        ENDIF.
      ENDIF.
    ENDIF.
    t512->load( ).
    APPEND t539 TO t512->items.
    t512->save( ).
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t581.
    t581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t581->sval = |\}|.
    t512->load( ).
    APPEND t581 TO t512->items.
    t512->save( ).
    t501 = zcl_lnt_st_combi_module=>seq( i_first = t503 i_second = t506 i_rest = t512 ).
    IF t501 IS BOUND.
      DATA t587 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t500 ?= t501.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t587 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t587 IS BOUND.
          t500 = t587->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    t499 = zcl_lnt_st_combi_module=>star( i_first = t500 ).
    IF t499 IS BOUND.
      DATA t589 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t498 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t498 IS NOT BOUND.
        TRY.
            t589 ?= t499.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t589 IS BOUND.
          t498 = t589->source( ).
        ENDIF.
        IF t498 IS NOT BOUND.
          CREATE OBJECT t498.
          t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t498->oval = t499.
        ENDIF.
      ENDIF.
    ENDIF.
    t447->load( ).
    APPEND t498 TO t447->items.
    t447->save( ).
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t592.
    t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t592->sval = |)|.
    t447->load( ).
    APPEND t592 TO t447->items.
    t447->save( ).
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t424 i_second = t427 i_rest = t447 ).
    DATA t598 TYPE REF TO zif_lnt_statement_runnable.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t602 TYPE REF TO zif_lnt_statement_runnable.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t604) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1115_36a563593830.
    IF t604 IS BOUND.
      CREATE OBJECT t603.
      t603->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t603->cval = t604.
    ENDIF.
    t602 = zcl_lnt_st_combi_module=>opt_prio( i_first = t603 ).
    IF t602 IS BOUND.
      DATA t605 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t601 ?= t602.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t601 IS NOT BOUND.
        TRY.
            t605 ?= t602.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t605 IS BOUND.
          t601 = t605->source( ).
        ENDIF.
        IF t601 IS NOT BOUND.
          CREATE OBJECT t601.
          t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t601->oval = t602.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t609 TYPE REF TO zif_lnt_statement_runnable.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t611 TYPE REF TO zif_lnt_statement_runnable.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t613.
    t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t613->sval = |UNION|.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t617 TYPE REF TO zif_lnt_statement_runnable.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t618.
    t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t618->sval = |ALL|.
    t617 = zcl_lnt_st_combi_module=>opt( i_first = t618 ).
    IF t617 IS BOUND.
      DATA t620 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t616 ?= t617.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t616 IS NOT BOUND.
        TRY.
            t620 ?= t617.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t620 IS BOUND.
          t616 = t620->source( ).
        ENDIF.
        IF t616 IS NOT BOUND.
          CREATE OBJECT t616.
          t616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t616->oval = t617.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t622 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t622.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t626 TYPE REF TO zif_lnt_statement_runnable.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t421 IS BOUND.
      DATA t630 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t628 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t628 IS NOT BOUND.
        TRY.
            t630 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t630 IS BOUND.
          t628 = t630->source( ).
        ENDIF.
        IF t628 IS NOT BOUND.
          CREATE OBJECT t628.
          t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t628->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t360 IS BOUND.
      DATA t635 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t633 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t633 IS NOT BOUND.
        TRY.
            t635 ?= t360.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t635 IS BOUND.
          t633 = t635->source( ).
        ENDIF.
        IF t633 IS NOT BOUND.
          CREATE OBJECT t633.
          t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t633->oval = t360.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t638.
    t626 = zcl_lnt_st_combi_module=>alt_prio( i_first = t628 i_second = t633 i_rest = t638 ).
    IF t626 IS BOUND.
      DATA t643 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t625 ?= t626.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t625 IS NOT BOUND.
        TRY.
            t643 ?= t626.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t643 IS BOUND.
          t625 = t643->source( ).
        ENDIF.
        IF t625 IS NOT BOUND.
          CREATE OBJECT t625.
          t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t625->oval = t626.
        ENDIF.
      ENDIF.
    ENDIF.
    t622->load( ).
    APPEND t625 TO t622->items.
    t622->save( ).
    t611 = zcl_lnt_st_combi_module=>seq( i_first = t613 i_second = t616 i_rest = t622 ).
    IF t611 IS BOUND.
      DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t610 ?= t611.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t610 IS NOT BOUND.
        TRY.
            t649 ?= t611.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t649 IS BOUND.
          t610 = t649->source( ).
        ENDIF.
        IF t610 IS NOT BOUND.
          CREATE OBJECT t610.
          t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t610->oval = t611.
        ENDIF.
      ENDIF.
    ENDIF.
    t609 = zcl_lnt_st_combi_module=>star( i_first = t610 ).
    IF t609 IS BOUND.
      DATA t651 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t608 ?= t609.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t608 IS NOT BOUND.
        TRY.
            t651 ?= t609.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t651 IS BOUND.
          t608 = t651->source( ).
        ENDIF.
        IF t608 IS NOT BOUND.
          CREATE OBJECT t608.
          t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t608->oval = t609.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t654.
    t598 = zcl_lnt_st_combi_module=>seq( i_first = t601 i_second = t608 i_rest = t654 ).
    DATA t659 TYPE REF TO zif_lnt_statement_runnable.
    DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t663) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t663 IS BOUND.
      CREATE OBJECT t662.
      t662->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t662->cval = t663.
    ENDIF.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t666) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t666 IS BOUND.
      CREATE OBJECT t665.
      t665->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t665->cval = t666.
    ENDIF.
    DATA t668 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t668.
    t659 = zcl_lnt_st_combi_module=>seq( i_first = t662 i_second = t665 i_rest = t668 ).
    DATA t673 TYPE REF TO zif_lnt_statement_runnable.
    DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t659 IS BOUND.
      DATA t678 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t676 ?= t659.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t676 IS NOT BOUND.
        TRY.
            t678 ?= t659.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t678 IS BOUND.
          t676 = t678->source( ).
        ENDIF.
        IF t676 IS NOT BOUND.
          CREATE OBJECT t676.
          t676->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t676->oval = t659.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t682) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t682 IS BOUND.
      CREATE OBJECT t681.
      t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t681->cval = t682.
    ENDIF.
    DATA t683 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t683.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t687) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t687 IS BOUND.
      CREATE OBJECT t686.
      t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t686->cval = t687.
    ENDIF.
    t683->load( ).
    APPEND t686 TO t683->items.
    t683->save( ).
    t673 = zcl_lnt_st_combi_module=>alt_prio( i_first = t676 i_second = t681 i_rest = t683 ).
    DATA t692 TYPE REF TO zif_lnt_statement_runnable.
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t696) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t696 IS BOUND.
      CREATE OBJECT t695.
      t695->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t695->cval = t696.
    ENDIF.
    DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t698.
    t698->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t698->sval = |=|.
    DATA t700 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t700.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t703.
    t703->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t703->sval = |>|.
    t700->load( ).
    APPEND t703 TO t700->items.
    t700->save( ).
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t673 IS BOUND.
      DATA t708 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t706 ?= t673.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t706 IS NOT BOUND.
        TRY.
            t708 ?= t673.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t708 IS BOUND.
          t706 = t708->source( ).
        ENDIF.
        IF t706 IS NOT BOUND.
          CREATE OBJECT t706.
          t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t706->oval = t673.
        ENDIF.
      ENDIF.
    ENDIF.
    t700->load( ).
    APPEND t706 TO t700->items.
    t700->save( ).
    t692 = zcl_lnt_st_combi_module=>seq( i_first = t695 i_second = t698 i_rest = t700 ).
    DATA t714 TYPE REF TO zif_lnt_statement_runnable.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t717.
    t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t717->sval = |BIND|.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t720.
    t720->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t720->sval = |ASPECT|.
    DATA t722 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t722.
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t726) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t726 IS BOUND.
      CREATE OBJECT t725.
      t725->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t725->cval = t726.
    ENDIF.
    t722->load( ).
    APPEND t725 TO t722->items.
    t722->save( ).
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t728.
    t728->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t728->sval = |(|.
    t722->load( ).
    APPEND t728 TO t722->items.
    t722->save( ).
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t692 IS BOUND.
      DATA t733 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t731 ?= t692.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t731 IS NOT BOUND.
        TRY.
            t733 ?= t692.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t733 IS BOUND.
          t731 = t733->source( ).
        ENDIF.
        IF t731 IS NOT BOUND.
          CREATE OBJECT t731.
          t731->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t731->oval = t692.
        ENDIF.
      ENDIF.
    ENDIF.
    t722->load( ).
    APPEND t731 TO t722->items.
    t722->save( ).
    DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t737 TYPE REF TO zif_lnt_statement_runnable.
    DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t739 TYPE REF TO zif_lnt_statement_runnable.
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t741.
    t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t741->sval = |,|.
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t692 IS BOUND.
      DATA t746 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t744 ?= t692.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t744 IS NOT BOUND.
        TRY.
            t746 ?= t692.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t746 IS BOUND.
          t744 = t746->source( ).
        ENDIF.
        IF t744 IS NOT BOUND.
          CREATE OBJECT t744.
          t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t744->oval = t692.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t749 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t749.
    t739 = zcl_lnt_st_combi_module=>seq( i_first = t741 i_second = t744 i_rest = t749 ).
    IF t739 IS BOUND.
      DATA t754 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t738 ?= t739.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t738 IS NOT BOUND.
        TRY.
            t754 ?= t739.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t754 IS BOUND.
          t738 = t754->source( ).
        ENDIF.
        IF t738 IS NOT BOUND.
          CREATE OBJECT t738.
          t738->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t738->oval = t739.
        ENDIF.
      ENDIF.
    ENDIF.
    t737 = zcl_lnt_st_combi_module=>star_prio( i_first = t738 ).
    IF t737 IS BOUND.
      DATA t756 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t736 ?= t737.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t736 IS NOT BOUND.
        TRY.
            t756 ?= t737.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t756 IS BOUND.
          t736 = t756->source( ).
        ENDIF.
        IF t736 IS NOT BOUND.
          CREATE OBJECT t736.
          t736->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t736->oval = t737.
        ENDIF.
      ENDIF.
    ENDIF.
    t722->load( ).
    APPEND t736 TO t722->items.
    t722->save( ).
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t759.
    t759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t759->sval = |)|.
    t722->load( ).
    APPEND t759 TO t722->items.
    t722->save( ).
    DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t763 TYPE REF TO zif_lnt_statement_runnable.
    DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t765 TYPE REF TO zif_lnt_statement_runnable.
    DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t767.
    t767->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t767->sval = |AS|.
    DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t771) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t771 IS BOUND.
      CREATE OBJECT t770.
      t770->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t770->cval = t771.
    ENDIF.
    DATA t773 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t773.
    t765 = zcl_lnt_st_combi_module=>seq( i_first = t767 i_second = t770 i_rest = t773 ).
    IF t765 IS BOUND.
      DATA t778 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t764 ?= t765.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t764 IS NOT BOUND.
        TRY.
            t778 ?= t765.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t778 IS BOUND.
          t764 = t778->source( ).
        ENDIF.
        IF t764 IS NOT BOUND.
          CREATE OBJECT t764.
          t764->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t764->oval = t765.
        ENDIF.
      ENDIF.
    ENDIF.
    t763 = zcl_lnt_st_combi_module=>opt_prio( i_first = t764 ).
    IF t763 IS BOUND.
      DATA t780 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t762 ?= t763.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t762 IS NOT BOUND.
        TRY.
            t780 ?= t763.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t780 IS BOUND.
          t762 = t780->source( ).
        ENDIF.
        IF t762 IS NOT BOUND.
          CREATE OBJECT t762.
          t762->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t762->oval = t763.
        ENDIF.
      ENDIF.
    ENDIF.
    t722->load( ).
    APPEND t762 TO t722->items.
    t722->save( ).
    t714 = zcl_lnt_st_combi_module=>seq( i_first = t717 i_second = t720 i_rest = t722 ).
    DATA t786 TYPE REF TO zif_lnt_statement_runnable.
    DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t790 TYPE REF TO zif_lnt_statement_runnable.
    DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t792) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t792 IS BOUND.
      CREATE OBJECT t791.
      t791->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t791->cval = t792.
    ENDIF.
    t790 = zcl_lnt_st_combi_module=>star( i_first = t791 ).
    IF t790 IS BOUND.
      DATA t793 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t789 ?= t790.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t789 IS NOT BOUND.
        TRY.
            t793 ?= t790.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t793 IS BOUND.
          t789 = t793->source( ).
        ENDIF.
        IF t789 IS NOT BOUND.
          CREATE OBJECT t789.
          t789->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t789->oval = t790.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t797 TYPE REF TO zif_lnt_statement_runnable.
    t797 = zcl_lnt_st_combi_module=>str( i_s = |EXTEND VIEW| ).
    IF t797 IS BOUND.
      DATA t799 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t796 ?= t797.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t796 IS NOT BOUND.
        TRY.
            t799 ?= t797.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t799 IS BOUND.
          t796 = t799->source( ).
        ENDIF.
        IF t796 IS NOT BOUND.
          CREATE OBJECT t796.
          t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t796->oval = t797.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t801 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t801.
    DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t805 TYPE REF TO zif_lnt_statement_runnable.
    DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t807 TYPE REF TO zif_lnt_statement_runnable.
    t807 = zcl_lnt_st_combi_module=>str( i_s = |ENTITY| ).
    IF t807 IS BOUND.
      DATA t809 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t806 ?= t807.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t806 IS NOT BOUND.
        TRY.
            t809 ?= t807.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t809 IS BOUND.
          t806 = t809->source( ).
        ENDIF.
        IF t806 IS NOT BOUND.
          CREATE OBJECT t806.
          t806->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t806->oval = t807.
        ENDIF.
      ENDIF.
    ENDIF.
    t805 = zcl_lnt_st_combi_module=>opt( i_first = t806 ).
    IF t805 IS BOUND.
      DATA t811 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t804 ?= t805.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t804 IS NOT BOUND.
        TRY.
            t811 ?= t805.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t811 IS BOUND.
          t804 = t811->source( ).
        ENDIF.
        IF t804 IS NOT BOUND.
          CREATE OBJECT t804.
          t804->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t804->oval = t805.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t804 TO t801->items.
    t801->save( ).
    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t815) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t815 IS BOUND.
      CREATE OBJECT t814.
      t814->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t814->cval = t815.
    ENDIF.
    t801->load( ).
    APPEND t814 TO t801->items.
    t801->save( ).
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t818 TYPE REF TO zif_lnt_statement_runnable.
    t818 = zcl_lnt_st_combi_module=>str( i_s = |WITH| ).
    IF t818 IS BOUND.
      DATA t820 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t817 ?= t818.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t817 IS NOT BOUND.
        TRY.
            t820 ?= t818.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t820 IS BOUND.
          t817 = t820->source( ).
        ENDIF.
        IF t817 IS NOT BOUND.
          CREATE OBJECT t817.
          t817->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t817->oval = t818.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t817 TO t801->items.
    t801->save( ).
    DATA t823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t824 TYPE REF TO zif_lnt_statement_runnable.
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t826) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t826 IS BOUND.
      CREATE OBJECT t825.
      t825->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t825->cval = t826.
    ENDIF.
    t824 = zcl_lnt_st_combi_module=>opt( i_first = t825 ).
    IF t824 IS BOUND.
      DATA t827 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t823 ?= t824.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t823 IS NOT BOUND.
        TRY.
            t827 ?= t824.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t827 IS BOUND.
          t823 = t827->source( ).
        ENDIF.
        IF t823 IS NOT BOUND.
          CREATE OBJECT t823.
          t823->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t823->oval = t824.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t823 TO t801->items.
    t801->save( ).
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t831 TYPE REF TO zif_lnt_statement_runnable.
    DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      DATA t834 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t832 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t832 IS NOT BOUND.
        TRY.
            t834 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t834 IS BOUND.
          t832 = t834->source( ).
        ENDIF.
        IF t832 IS NOT BOUND.
          CREATE OBJECT t832.
          t832->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t832->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t831 = zcl_lnt_st_combi_module=>star( i_first = t832 ).
    IF t831 IS BOUND.
      DATA t836 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t830 ?= t831.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t830 IS NOT BOUND.
        TRY.
            t836 ?= t831.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t836 IS BOUND.
          t830 = t836->source( ).
        ENDIF.
        IF t830 IS NOT BOUND.
          CREATE OBJECT t830.
          t830->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t830->oval = t831.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t830 TO t801->items.
    t801->save( ).
    DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t840 TYPE REF TO zif_lnt_statement_runnable.
    DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t842 TYPE REF TO zif_lnt_statement_runnable.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t845) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t845 IS BOUND.
      CREATE OBJECT t844.
      t844->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t844->cval = t845.
    ENDIF.
    DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t848) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t848 IS BOUND.
      CREATE OBJECT t847.
      t847->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t847->cval = t848.
    ENDIF.
    DATA t850 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t850.
    t842 = zcl_lnt_st_combi_module=>alt_prio( i_first = t844 i_second = t847 i_rest = t850 ).
    IF t842 IS BOUND.
      DATA t855 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t841 ?= t842.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t841 IS NOT BOUND.
        TRY.
            t855 ?= t842.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t855 IS BOUND.
          t841 = t855->source( ).
        ENDIF.
        IF t841 IS NOT BOUND.
          CREATE OBJECT t841.
          t841->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t841->oval = t842.
        ENDIF.
      ENDIF.
    ENDIF.
    t840 = zcl_lnt_st_combi_module=>star( i_first = t841 ).
    IF t840 IS BOUND.
      DATA t857 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t839 ?= t840.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t839 IS NOT BOUND.
        TRY.
            t857 ?= t840.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t857 IS BOUND.
          t839 = t857->source( ).
        ENDIF.
        IF t839 IS NOT BOUND.
          CREATE OBJECT t839.
          t839->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t839->oval = t840.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t839 TO t801->items.
    t801->save( ).
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t861 TYPE REF TO zif_lnt_statement_runnable.
    DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t714 IS BOUND.
      DATA t864 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t862 ?= t714.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t862 IS NOT BOUND.
        TRY.
            t864 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t864 IS BOUND.
          t862 = t864->source( ).
        ENDIF.
        IF t862 IS NOT BOUND.
          CREATE OBJECT t862.
          t862->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t862->oval = t714.
        ENDIF.
      ENDIF.
    ENDIF.
    t861 = zcl_lnt_st_combi_module=>star_prio( i_first = t862 ).
    IF t861 IS BOUND.
      DATA t866 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t860 ?= t861.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t860 IS NOT BOUND.
        TRY.
            t866 ?= t861.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t866 IS BOUND.
          t860 = t866->source( ).
        ENDIF.
        IF t860 IS NOT BOUND.
          CREATE OBJECT t860.
          t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t860->oval = t861.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t860 TO t801->items.
    t801->save( ).
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t870 TYPE REF TO zif_lnt_statement_runnable.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t421 IS BOUND.
      DATA t874 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t872 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t872 IS NOT BOUND.
        TRY.
            t874 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t874 IS BOUND.
          t872 = t874->source( ).
        ENDIF.
        IF t872 IS NOT BOUND.
          CREATE OBJECT t872.
          t872->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t872->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t288 IS BOUND.
      DATA t879 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t877 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t877 IS NOT BOUND.
        TRY.
            t879 ?= t288.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t879 IS BOUND.
          t877 = t879->source( ).
        ENDIF.
        IF t877 IS NOT BOUND.
          CREATE OBJECT t877.
          t877->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t877->oval = t288.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t881 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t881.
    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t40 IS BOUND.
      DATA t886 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t884 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t884 IS NOT BOUND.
        TRY.
            t886 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t886 IS BOUND.
          t884 = t886->source( ).
        ENDIF.
        IF t884 IS NOT BOUND.
          CREATE OBJECT t884.
          t884->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t884->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t881->load( ).
    APPEND t884 TO t881->items.
    t881->save( ).
    t870 = zcl_lnt_st_combi_module=>alt_prio( i_first = t872 i_second = t877 i_rest = t881 ).
    IF t870 IS BOUND.
      DATA t892 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t869 ?= t870.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t869 IS NOT BOUND.
        TRY.
            t892 ?= t870.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t892 IS BOUND.
          t869 = t892->source( ).
        ENDIF.
        IF t869 IS NOT BOUND.
          CREATE OBJECT t869.
          t869->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t869->oval = t870.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t869 TO t801->items.
    t801->save( ).
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t598 IS BOUND.
      DATA t897 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t895 ?= t598.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t895 IS NOT BOUND.
        TRY.
            t897 ?= t598.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t897 IS BOUND.
          t895 = t897->source( ).
        ENDIF.
        IF t895 IS NOT BOUND.
          CREATE OBJECT t895.
          t895->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t895->oval = t598.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t895 TO t801->items.
    t801->save( ).
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t901 TYPE REF TO zif_lnt_statement_runnable.
    DATA t902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t902.
    t902->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t902->sval = |;|.
    t901 = zcl_lnt_st_combi_module=>opt( i_first = t902 ).
    IF t901 IS BOUND.
      DATA t904 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t900 ?= t901.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t900 IS NOT BOUND.
        TRY.
            t904 ?= t901.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t904 IS BOUND.
          t900 = t904->source( ).
        ENDIF.
        IF t900 IS NOT BOUND.
          CREATE OBJECT t900.
          t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t900->oval = t901.
        ENDIF.
      ENDIF.
    ENDIF.
    t801->load( ).
    APPEND t900 TO t801->items.
    t801->save( ).
    t786 = zcl_lnt_st_combi_module=>seq( i_first = t789 i_second = t796 i_rest = t801 ).
    DATA t910 TYPE REF TO zif_lnt_statement_runnable.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t914 TYPE REF TO zif_lnt_statement_runnable.
    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t916) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t916 IS BOUND.
      CREATE OBJECT t915.
      t915->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t915->cval = t916.
    ENDIF.
    t914 = zcl_lnt_st_combi_module=>star( i_first = t915 ).
    IF t914 IS BOUND.
      DATA t917 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t913 ?= t914.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t913 IS NOT BOUND.
        TRY.
            t917 ?= t914.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t917 IS BOUND.
          t913 = t917->source( ).
        ENDIF.
        IF t913 IS NOT BOUND.
          CREATE OBJECT t913.
          t913->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t913->oval = t914.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t921 TYPE REF TO zif_lnt_statement_runnable.
    DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t923 TYPE REF TO zif_lnt_statement_runnable.
    t923 = zcl_lnt_st_combi_module=>str( i_s = |KEY| ).
    IF t923 IS BOUND.
      DATA t925 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t922 ?= t923.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t922 IS NOT BOUND.
        TRY.
            t925 ?= t923.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t925 IS BOUND.
          t922 = t925->source( ).
        ENDIF.
        IF t922 IS NOT BOUND.
          CREATE OBJECT t922.
          t922->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t922->oval = t923.
        ENDIF.
      ENDIF.
    ENDIF.
    t921 = zcl_lnt_st_combi_module=>opt_prio( i_first = t922 ).
    IF t921 IS BOUND.
      DATA t927 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t920 ?= t921.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t920 IS NOT BOUND.
        TRY.
            t927 ?= t921.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t927 IS BOUND.
          t920 = t927->source( ).
        ENDIF.
        IF t920 IS NOT BOUND.
          CREATE OBJECT t920.
          t920->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t920->oval = t921.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t929 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t929.
    DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t933) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t933 IS BOUND.
      CREATE OBJECT t932.
      t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t932->cval = t933.
    ENDIF.
    t929->load( ).
    APPEND t932 TO t929->items.
    t929->save( ).
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t935.
    t935->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t935->sval = |:|.
    t929->load( ).
    APPEND t935 TO t929->items.
    t929->save( ).
    DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t939) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t939 IS BOUND.
      CREATE OBJECT t938.
      t938->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t938->cval = t939.
    ENDIF.
    t929->load( ).
    APPEND t938 TO t929->items.
    t929->save( ).
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t941.
    t941->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t941->sval = |;|.
    t929->load( ).
    APPEND t941 TO t929->items.
    t929->save( ).
    t910 = zcl_lnt_st_combi_module=>seq( i_first = t913 i_second = t920 i_rest = t929 ).
    DATA t947 TYPE REF TO zif_lnt_statement_runnable.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t951 TYPE REF TO zif_lnt_statement_runnable.
    DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t953) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t953 IS BOUND.
      CREATE OBJECT t952.
      t952->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t952->cval = t953.
    ENDIF.
    t951 = zcl_lnt_st_combi_module=>star( i_first = t952 ).
    IF t951 IS BOUND.
      DATA t954 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t950 ?= t951.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t950 IS NOT BOUND.
        TRY.
            t954 ?= t951.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t954 IS BOUND.
          t950 = t954->source( ).
        ENDIF.
        IF t950 IS NOT BOUND.
          CREATE OBJECT t950.
          t950->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t950->oval = t951.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t958) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t958 IS BOUND.
      CREATE OBJECT t957.
      t957->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t957->cval = t958.
    ENDIF.
    DATA t959 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t959.
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t962.
    t962->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t962->sval = |:|.
    t959->load( ).
    APPEND t962 TO t959->items.
    t959->save( ).
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t966 TYPE REF TO zif_lnt_statement_runnable.
    DATA t968 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t969) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t969 IS BOUND.
      CREATE OBJECT t968.
      t968->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t968->cval = t969.
    ENDIF.
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t972) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t972 IS BOUND.
      CREATE OBJECT t971.
      t971->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t971->cval = t972.
    ENDIF.
    DATA t974 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t974.
    t966 = zcl_lnt_st_combi_module=>alt( i_first = t968 i_second = t971 i_rest = t974 ).
    IF t966 IS BOUND.
      DATA t979 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t965 ?= t966.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t965 IS NOT BOUND.
        TRY.
            t979 ?= t966.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t979 IS BOUND.
          t965 = t979->source( ).
        ENDIF.
        IF t965 IS NOT BOUND.
          CREATE OBJECT t965.
          t965->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t965->oval = t966.
        ENDIF.
      ENDIF.
    ENDIF.
    t959->load( ).
    APPEND t965 TO t959->items.
    t959->save( ).
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t982.
    t982->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t982->sval = |;|.
    t959->load( ).
    APPEND t982 TO t959->items.
    t959->save( ).
    t947 = zcl_lnt_st_combi_module=>seq( i_first = t950 i_second = t957 i_rest = t959 ).
    DATA t988 TYPE REF TO zif_lnt_statement_runnable.
    DATA t991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t991.
    t991->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t991->sval = |\{|.
    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t995 TYPE REF TO zif_lnt_statement_runnable.
    DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t997 TYPE REF TO zif_lnt_statement_runnable.
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t910 IS BOUND.
      DATA t1001 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t999 ?= t910.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t999 IS NOT BOUND.
        TRY.
            t1001 ?= t910.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1001 IS BOUND.
          t999 = t1001->source( ).
        ENDIF.
        IF t999 IS NOT BOUND.
          CREATE OBJECT t999.
          t999->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t999->oval = t910.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t947 IS BOUND.
      DATA t1006 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1004 ?= t947.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1004 IS NOT BOUND.
        TRY.
            t1006 ?= t947.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1006 IS BOUND.
          t1004 = t1006->source( ).
        ENDIF.
        IF t1004 IS NOT BOUND.
          CREATE OBJECT t1004.
          t1004->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1004->oval = t947.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1009 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1009.
    t997 = zcl_lnt_st_combi_module=>alt( i_first = t999 i_second = t1004 i_rest = t1009 ).
    IF t997 IS BOUND.
      DATA t1014 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t996 ?= t997.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t996 IS NOT BOUND.
        TRY.
            t1014 ?= t997.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1014 IS BOUND.
          t996 = t1014->source( ).
        ENDIF.
        IF t996 IS NOT BOUND.
          CREATE OBJECT t996.
          t996->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t996->oval = t997.
        ENDIF.
      ENDIF.
    ENDIF.
    t995 = zcl_lnt_st_combi_module=>plus( i_first = t996 ).
    IF t995 IS BOUND.
      DATA t1016 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t994 ?= t995.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t994 IS NOT BOUND.
        TRY.
            t1016 ?= t995.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1016 IS BOUND.
          t994 = t1016->source( ).
        ENDIF.
        IF t994 IS NOT BOUND.
          CREATE OBJECT t994.
          t994->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t994->oval = t995.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1018 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1018.
    DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1021.
    t1021->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1021->sval = |\}|.
    t1018->load( ).
    APPEND t1021 TO t1018->items.
    t1018->save( ).
    t988 = zcl_lnt_st_combi_module=>seq( i_first = t991 i_second = t994 i_rest = t1018 ).
    DATA t1027 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1031 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1033) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t1033 IS BOUND.
      CREATE OBJECT t1032.
      t1032->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1032->cval = t1033.
    ENDIF.
    t1031 = zcl_lnt_st_combi_module=>star( i_first = t1032 ).
    IF t1031 IS BOUND.
      DATA t1034 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1030 ?= t1031.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1030 IS NOT BOUND.
        TRY.
            t1034 ?= t1031.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1034 IS BOUND.
          t1030 = t1034->source( ).
        ENDIF.
        IF t1030 IS NOT BOUND.
          CREATE OBJECT t1030.
          t1030->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1030->oval = t1031.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1037.
    t1037->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1037->sval = |EXTEND|.
    DATA t1039 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1039.
    DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1043 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1045.
    t1045->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1045->sval = |ABSTRACT|.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1048.
    t1048->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1048->sval = |CUSTOM|.
    DATA t1051 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1051.
    t1043 = zcl_lnt_st_combi_module=>alt( i_first = t1045 i_second = t1048 i_rest = t1051 ).
    IF t1043 IS BOUND.
      DATA t1056 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1042 ?= t1043.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1042 IS NOT BOUND.
        TRY.
            t1056 ?= t1043.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1056 IS BOUND.
          t1042 = t1056->source( ).
        ENDIF.
        IF t1042 IS NOT BOUND.
          CREATE OBJECT t1042.
          t1042->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1042->oval = t1043.
        ENDIF.
      ENDIF.
    ENDIF.
    t1039->load( ).
    APPEND t1042 TO t1039->items.
    t1039->save( ).
    DATA t1059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1059.
    t1059->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1059->sval = |ENTITY|.
    t1039->load( ).
    APPEND t1059 TO t1039->items.
    t1039->save( ).
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1063) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t1063 IS BOUND.
      CREATE OBJECT t1062.
      t1062->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1062->cval = t1063.
    ENDIF.
    t1039->load( ).
    APPEND t1062 TO t1039->items.
    t1039->save( ).
    DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1066 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1068) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t1068 IS BOUND.
      CREATE OBJECT t1067.
      t1067->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1067->cval = t1068.
    ENDIF.
    t1066 = zcl_lnt_st_combi_module=>opt( i_first = t1067 ).
    IF t1066 IS BOUND.
      DATA t1069 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1065 ?= t1066.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1065 IS NOT BOUND.
        TRY.
            t1069 ?= t1066.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1069 IS BOUND.
          t1065 = t1069->source( ).
        ENDIF.
        IF t1065 IS NOT BOUND.
          CREATE OBJECT t1065.
          t1065->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1065->oval = t1066.
        ENDIF.
      ENDIF.
    ENDIF.
    t1039->load( ).
    APPEND t1065 TO t1039->items.
    t1039->save( ).
    DATA t1072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1072.
    t1072->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1072->sval = |WITH|.
    t1039->load( ).
    APPEND t1072 TO t1039->items.
    t1039->save( ).
    DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t988 IS BOUND.
      DATA t1077 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1075 ?= t988.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1075 IS NOT BOUND.
        TRY.
            t1077 ?= t988.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1077 IS BOUND.
          t1075 = t1077->source( ).
        ENDIF.
        IF t1075 IS NOT BOUND.
          CREATE OBJECT t1075.
          t1075->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1075->oval = t988.
        ENDIF.
      ENDIF.
    ENDIF.
    t1039->load( ).
    APPEND t1075 TO t1039->items.
    t1039->save( ).
    DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1081 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t1082.
    t1082->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1082->sval = |;|.
    t1081 = zcl_lnt_st_combi_module=>opt( i_first = t1082 ).
    IF t1081 IS BOUND.
      DATA t1084 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1080 ?= t1081.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1080 IS NOT BOUND.
        TRY.
            t1084 ?= t1081.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1084 IS BOUND.
          t1080 = t1084->source( ).
        ENDIF.
        IF t1080 IS NOT BOUND.
          CREATE OBJECT t1080.
          t1080->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1080->oval = t1081.
        ENDIF.
      ENDIF.
    ENDIF.
    t1039->load( ).
    APPEND t1080 TO t1039->items.
    t1039->save( ).
    t1027 = zcl_lnt_st_combi_module=>seq( i_first = t1030 i_second = t1037 i_rest = t1039 ).
    DATA t1092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1027 IS BOUND.
      DATA t1094 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1092 ?= t1027.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1092 IS NOT BOUND.
        TRY.
            t1094 ?= t1027.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1094 IS BOUND.
          t1092 = t1094->source( ).
        ENDIF.
        IF t1092 IS NOT BOUND.
          CREATE OBJECT t1092.
          t1092->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1092->oval = t1027.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t786 IS BOUND.
      DATA t1099 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t1097 ?= t786.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1097 IS NOT BOUND.
        TRY.
            t1099 ?= t786.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1099 IS BOUND.
          t1097 = t1099->source( ).
        ENDIF.
        IF t1097 IS NOT BOUND.
          CREATE OBJECT t1097.
          t1097->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1097->oval = t786.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1102.
    result = zcl_lnt_st_combi_module=>alt( i_first = t1092 i_second = t1097 i_rest = t1102 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1116_9b6717634818.
  ENDMETHOD.
ENDCLASS.
