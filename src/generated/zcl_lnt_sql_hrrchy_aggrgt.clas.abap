* TS: src/abap/2_statements/expressions/sql_hierarchy_aggregate.ts:7:1 SQLHierarchyAggregate
CLASS zcl_lnt_sql_hrrchy_aggrgt DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_hrrchy_aggrgt IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |START|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |WHERE|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |JOIN|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |ON|.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t26->load( ).
    APPEND t32 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |AS|.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t46->load( ).
    APPEND t49 TO t46->items.
    t46->save( ).
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t44 i_rest = t46 ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |MEASURES|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t61 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t63 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t61 = t63->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = |,|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t76 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t76 i_rest = t81 ).
    IF t71 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t70 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t86 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t70 = t86->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>star( i_first = t70 ).
    IF t69 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t68 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t88 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t68 = t88->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t65->load( ).
    APPEND t68 TO t65->items.
    t65->save( ).
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t61 i_rest = t65 ).
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = |WHERE|.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t94 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t100 i_rest = t103 ).
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t111->sval = |SUBTOTAL|.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |BALANCE|.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = |NOT|.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |MATCHED|.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t120 = zcl_lnt_st_combi_module=>seq( i_first = t122 i_second = t125 i_rest = t128 ).
    IF t120 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t119 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t133 ?= t120.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t119 = t133->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t120.
        ENDIF.
      ENDIF.
    ENDIF.
    t116->load( ).
    APPEND t119 TO t116->items.
    t116->save( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = |TOTAL|.
    t116->load( ).
    APPEND t136 TO t116->items.
    t116->save( ).
    t108 = zcl_lnt_st_combi_module=>alt_prio( i_first = t111 i_second = t114 i_rest = t116 ).
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = |SOURCE|.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t155 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t157 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t155 = t157->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>opt_prio( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t153 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t159 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t153 = t159->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t153 TO t150->items.
    t150->save( ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t164 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t166 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t164 = t166->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t163 = zcl_lnt_st_combi_module=>opt_prio( i_first = t164 ).
    IF t163 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t162 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t168 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t162 = t168->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t162 TO t150->items.
    t150->save( ).
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t171 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t173 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t171 = t173->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t171 TO t150->items.
    t150->save( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t94 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t178 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t180 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t178 = t180->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t177 = zcl_lnt_st_combi_module=>opt_prio( i_first = t178 ).
    IF t177 IS BOUND.
      DATA t182 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t176 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t182 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t182 IS BOUND.
          t176 = t182->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t176 TO t150->items.
    t150->save( ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t190.
    t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t190->sval = |WITH|.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t108 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t193 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = |WITH|.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t108 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t208 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t210 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t208 = t210->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t213.
    t203 = zcl_lnt_st_combi_module=>seq( i_first = t205 i_second = t208 i_rest = t213 ).
    IF t203 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t202 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t218 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t202 = t218->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    t201 = zcl_lnt_st_combi_module=>star( i_first = t202 ).
    IF t201 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t200 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t220 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t200 = t220->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t197->load( ).
    APPEND t200 TO t197->items.
    t197->save( ).
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t193 i_rest = t197 ).
    IF t188 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t187 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t226 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t187 = t226->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    t186 = zcl_lnt_st_combi_module=>opt_prio( i_first = t187 ).
    IF t186 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t185 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t228 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t185 = t228->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t150->load( ).
    APPEND t185 TO t150->items.
    t150->save( ).
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t145 i_second = t148 i_rest = t150 ).
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = |HIERARCHY_DESCENDANTS_AGGREGATE|.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = |HIERARCHY_ANCESTORS_AGGREGATE|.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t243.
    t234 = zcl_lnt_st_combi_module=>alt_prio( i_first = t237 i_second = t240 i_rest = t243 ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t250 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t250 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t255 TYPE REF TO object.
      t255 = t250.
      TRY.
          t249 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t254 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t249 = t254->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t259 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t266) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t265 = zcl_lnt_st_combi_module=>tok( i_t = t266 ).
    IF t265 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t264 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t267 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t264 = t267->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t269.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t142 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t272 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t269->load( ).
    APPEND t272 TO t269->items.
    t269->save( ).
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t278 = zcl_lnt_st_combi_module=>tok( i_t = t279 ).
    IF t278 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t277 ?= t278.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t280 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t277 = t280->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    t269->load( ).
    APPEND t277 TO t269->items.
    t269->save( ).
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t259 i_second = t264 i_rest = t269 ).
    IF t257 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t256 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t286 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t256 = t286->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t249 i_first = t256 i_opts = t288 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d330_a5190e54e774.
  ENDMETHOD.
ENDCLASS.
