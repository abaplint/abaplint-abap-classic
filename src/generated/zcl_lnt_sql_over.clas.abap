* TS: src/abap/2_statements/expressions/sql_over.ts:12:1 SQLOver
CLASS zcl_lnt_sql_over DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_over IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |PARTITION|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |BY|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |,|.
    t21 = zcl_lnt_st_combi_module=>opt( i_first = t22 ).
    IF t21 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t20 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t24 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t20 = t24->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t20 i_rest = t27 ).
    IF t15 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t14 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t32 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t14 = t32->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>plus( i_first = t14 ).
    IF t13 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t12 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t34 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t12 = t34->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |UNBOUNDED|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |PRECEDING|.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t49 ).
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = |UNBOUNDED|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |FOLLOWING|.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t54 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t60 i_rest = t63 ).
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |CURRENT|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |ROW|.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t68 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t74 i_rest = t77 ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |PRECEDING|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = |FOLLOWING|.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t89 = zcl_lnt_st_combi_module=>alt_prio( i_first = t91 i_second = t94 i_rest = t97 ).
    IF t89 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t102 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t88 = t102->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t88 i_rest = t105 ).
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t40 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t113 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t118 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t68 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t125 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    t122->load( ).
    APPEND t125 TO t122->items.
    t122->save( ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t82 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t130 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t132 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t130 = t132->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t122->load( ).
    APPEND t130 TO t122->items.
    t122->save( ).
    t110 = zcl_lnt_st_combi_module=>alt_prio( i_first = t113 i_second = t118 i_rest = t122 ).
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t141 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t141 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t141.
      TRY.
          t140 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t145 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t140 = t145->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |ROWS|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = |BETWEEN|.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t110 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t158 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t160 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t158 = t160->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    t155->load( ).
    APPEND t158 TO t155->items.
    t155->save( ).
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = |AND|.
    t155->load( ).
    APPEND t163 TO t155->items.
    t155->save( ).
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t110 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t166 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t168 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t166 = t168->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    t155->load( ).
    APPEND t166 TO t155->items.
    t155->save( ).
    t148 = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t153 i_rest = t155 ).
    IF t148 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t174 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t147 = t174->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t176 TYPE REF TO zcl_lnt_iver_options.
    t138 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t140 i_first = t147 i_opts = t176 ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t179 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t179 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t184 TYPE REF TO object.
      t184 = t179.
      TRY.
          t178 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t183 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t178 = t183->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |OVER|.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t192 = zcl_lnt_sql_over_module=>lparen.
    IF t192 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t191 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t200 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt_prio( i_first = t200 ).
    IF t199 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t198 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t204 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t198 = t204->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t198 TO t195->items.
    t195->save( ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t208 = zcl_lnt_st_combi_module=>opt_prio( i_first = t209 ).
    IF t208 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t207 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t207 IS NOT BOUND.
        TRY.
            t211 ?= t208.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t207 = t211->source( ).
        ENDIF.
        IF t207 IS NOT BOUND.
          CREATE OBJECT t207.
          t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t207->oval = t208.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t207 TO t195->items.
    t195->save( ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t216 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t218 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t216 = t218->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t215 = zcl_lnt_st_combi_module=>opt_prio( i_first = t216 ).
    IF t215 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t214 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t220 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t214 = t220->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t214 TO t195->items.
    t195->save( ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t224 = zcl_lnt_sql_over_module=>rparen.
    IF t224 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t223 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t225 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t223 = t225->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    t195->load( ).
    APPEND t223 TO t195->items.
    t195->save( ).
    t186 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t191 i_rest = t195 ).
    IF t186 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t185 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t231 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t185 = t231->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t233 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t178 i_first = t185 i_opts = t233 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
  ENDMETHOD.
ENDCLASS.
