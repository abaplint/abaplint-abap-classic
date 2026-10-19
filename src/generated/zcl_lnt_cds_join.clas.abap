* TS: src/cds/expressions/cds_join.ts:6:1 CDSJoin
CLASS zcl_lnt_cds_join DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_join IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |EXACT ONE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |ONE|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |MANY|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |LEFT OUTER|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t1.
      TRY.
          t24 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t26 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t24 = t26->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = |TO|.
    t28->load( ).
    APPEND t31 TO t28->items.
    t28->save( ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t1.
      TRY.
          t34 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t36 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t34 = t36->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t34 TO t28->items.
    t28->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t28 ).
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = |LEFT OUTER TO|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |EXACT ONE|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |ONE|.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = |MANY|.
    t56->load( ).
    APPEND t59 TO t56->items.
    t56->save( ).
    t49 = zcl_lnt_st_combi_module=>alt_prio( i_first = t51 i_second = t54 i_rest = t56 ).
    IF t49 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t49.
      TRY.
          t48 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t65 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t48 = t65->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t42 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t48 i_rest = t68 ).
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |INNER|.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t1.
      TRY.
          t79 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t81 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t79 = t81->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = |TO|.
    t83->load( ).
    APPEND t86 TO t83->items.
    t83->save( ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t1.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t83->load( ).
    APPEND t89 TO t83->items.
    t83->save( ).
    t73 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t79 i_rest = t83 ).
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = |INNER TO|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = |EXACT ONE|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = |ONE|.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |MANY|.
    t111->load( ).
    APPEND t114 TO t111->items.
    t111->save( ).
    t104 = zcl_lnt_st_combi_module=>alt_prio( i_first = t106 i_second = t109 i_rest = t111 ).
    IF t104 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t104.
      TRY.
          t103 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t120 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t103 = t120->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    t97 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t103 i_rest = t123 ).
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t18.
      TRY.
          t133 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t135 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t133 = t135->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t141 TYPE REF TO object.
      t141 = t42.
      TRY.
          t138 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = |LEFT OUTER|.
    t142->load( ).
    APPEND t145 TO t142->items.
    t142->save( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t73 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t151 TYPE REF TO object.
      t151 = t73.
      TRY.
          t148 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t142->load( ).
    APPEND t148 TO t142->items.
    t142->save( ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t97.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t142->load( ).
    APPEND t153 TO t142->items.
    t142->save( ).
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = |INNER|.
    t142->load( ).
    APPEND t158 TO t142->items.
    t142->save( ).
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = |CROSS|.
    t142->load( ).
    APPEND t161 TO t142->items.
    t142->save( ).
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = |RIGHT OUTER|.
    t142->load( ).
    APPEND t164 TO t142->items.
    t142->save( ).
    t131 = zcl_lnt_st_combi_module=>alt_prio( i_first = t133 i_second = t138 i_rest = t142 ).
    IF t131 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t171 TYPE REF TO object.
      t171 = t131.
      TRY.
          t130 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t170 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t130 = t170->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = zcl_lnt_st_combi_module=>opt_prio( i_first = t130 ).
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t178.
    t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t178->sval = |ON|.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t183->cval = t184.
    ENDIF.
    t180->load( ).
    APPEND t183 TO t180->items.
    t180->save( ).
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t178 i_rest = t180 ).
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = |(|.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t201 TYPE REF TO object.
      t201 = t172.
      TRY.
          t198 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t200 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t198 = t200->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |)|.
    t202->load( ).
    APPEND t205 TO t202->items.
    t202->save( ).
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t195 i_second = t198 i_rest = t202 ).
    IF t193 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t212 TYPE REF TO object.
      t212 = t193.
      TRY.
          t192 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t211 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t192 = t211->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t172.
      TRY.
          t214 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t216 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t214 = t216->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    t189 = zcl_lnt_st_combi_module=>alt_prio( i_first = t192 i_second = t214 i_rest = t219 ).
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t230 TYPE REF TO object.
      t230 = t128.
      TRY.
          t227 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = |JOIN|.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = |(|.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t249 TYPE REF TO object.
      t249 = t172.
      TRY.
          t246 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t250.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |)|.
    t250->load( ).
    APPEND t253 TO t250->items.
    t250->save( ).
    t241 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t246 i_rest = t250 ).
    IF t241 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t260 TYPE REF TO object.
      t260 = t241.
      TRY.
          t240 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t259 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t240 = t259->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t172 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t265 TYPE REF TO object.
      t265 = t172.
      TRY.
          t262 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t264 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t262 = t264->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t267.
    t238 = zcl_lnt_st_combi_module=>alt_prio( i_first = t240 i_second = t262 i_rest = t267 ).
    IF t238 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t238.
      TRY.
          t237 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t272 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t237 = t272->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    t234->load( ).
    APPEND t237 TO t234->items.
    t234->save( ).
    t224 = zcl_lnt_st_combi_module=>seq( i_first = t227 i_second = t232 i_rest = t234 ).
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = |(|.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t285) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t284->cval = t285.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t286.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t224 IS BOUND.
      DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t294 TYPE REF TO object.
      t294 = t224.
      TRY.
          t291 ?= t294.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t293 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t293 IS BOUND.
          t291 = t293->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    t290 = zcl_lnt_st_combi_module=>star( i_first = t291 ).
    IF t290 IS BOUND.
      DATA t295 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t296 TYPE REF TO object.
      t296 = t290.
      TRY.
          t289 ?= t296.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t295 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t295 IS BOUND.
          t289 = t295->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t286->load( ).
    APPEND t289 TO t286->items.
    t286->save( ).
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t298.
    t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t298->sval = |)|.
    t286->load( ).
    APPEND t298 TO t286->items.
    t286->save( ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = |ON|.
    t286->load( ).
    APPEND t301 TO t286->items.
    t286->save( ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t304->cval = t305.
    ENDIF.
    t286->load( ).
    APPEND t304 TO t286->items.
    t286->save( ).
    t278 = zcl_lnt_st_combi_module=>seq( i_first = t281 i_second = t284 i_rest = t286 ).
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t314 IS BOUND.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t313->cval = t314.
    ENDIF.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t324 TYPE REF TO object.
      t324 = t128.
      TRY.
          t321 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t321 IS NOT BOUND.
        TRY.
            t323 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t321 = t323->source( ).
        ENDIF.
        IF t321 IS NOT BOUND.
          CREATE OBJECT t321.
          t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = |JOIN|.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t328.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t332) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t332 IS BOUND.
      CREATE OBJECT t331.
      t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t331->cval = t332.
    ENDIF.
    t328->load( ).
    APPEND t331 TO t328->items.
    t328->save( ).
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = |ON|.
    t328->load( ).
    APPEND t334 TO t328->items.
    t328->save( ).
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t337->cval = t338.
    ENDIF.
    t328->load( ).
    APPEND t337 TO t328->items.
    t328->save( ).
    t319 = zcl_lnt_st_combi_module=>seq( i_first = t321 i_second = t326 i_rest = t328 ).
    IF t319 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t344 TYPE REF TO object.
      t344 = t319.
      TRY.
          t318 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t318 IS NOT BOUND.
        TRY.
            t343 ?= t319.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t318 = t343->source( ).
        ENDIF.
        IF t318 IS NOT BOUND.
          CREATE OBJECT t318.
          t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t318->oval = t319.
        ENDIF.
      ENDIF.
    ENDIF.
    t317 = zcl_lnt_st_combi_module=>star( i_first = t318 ).
    IF t317 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t346 TYPE REF TO object.
      t346 = t317.
      TRY.
          t316 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t345 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t316 = t345->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t347.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = |ON|.
    t347->load( ).
    APPEND t350 TO t347->items.
    t347->save( ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t354) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t353->cval = t354.
    ENDIF.
    t347->load( ).
    APPEND t353 TO t347->items.
    t347->save( ).
    t310 = zcl_lnt_st_combi_module=>seq( i_first = t313 i_second = t316 i_rest = t347 ).
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t128 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t364 TYPE REF TO object.
      t364 = t128.
      TRY.
          t361 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t363 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t361 = t363->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t366.
    t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t366->sval = |JOIN|.
    DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t368.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t372 TYPE REF TO zif_lnt_statement_runnable.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t278 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t377 TYPE REF TO object.
      t377 = t278.
      TRY.
          t374 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t374 IS NOT BOUND.
        TRY.
            t376 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t374 = t376->source( ).
        ENDIF.
        IF t374 IS NOT BOUND.
          CREATE OBJECT t374.
          t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t374->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t382 TYPE REF TO object.
      t382 = t310.
      TRY.
          t379 ?= t382.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t381 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t379 = t381->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t383.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t189 IS BOUND.
      DATA t388 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t389 TYPE REF TO object.
      t389 = t189.
      TRY.
          t386 ?= t389.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t388 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t388 IS BOUND.
          t386 = t388->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t383->load( ).
    APPEND t386 TO t383->items.
    t383->save( ).
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    t383->load( ).
    APPEND t391 TO t383->items.
    t383->save( ).
    t372 = zcl_lnt_st_combi_module=>alt_prio( i_first = t374 i_second = t379 i_rest = t383 ).
    IF t372 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t398 TYPE REF TO object.
      t398 = t372.
      TRY.
          t371 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t397 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t371 = t397->source( ).
        ENDIF.
        IF t371 IS NOT BOUND.
          CREATE OBJECT t371.
          t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t371->oval = t372.
        ENDIF.
      ENDIF.
    ENDIF.
    t368->load( ).
    APPEND t371 TO t368->items.
    t368->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t361 i_second = t366 i_rest = t368 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
  ENDMETHOD.
ENDCLASS.
