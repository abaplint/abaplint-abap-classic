* TS: src/abap/2_statements/expressions/sql_case.ts:10:1 SQLCase
CLASS zcl_lnt_sql_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t13 ).
    t1 = t14.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t26->load( ).
    APPEND t32 TO t26->items.
    t26->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t26->load( ).
    APPEND t35 TO t26->items.
    t26->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t26->load( ).
    APPEND t38 TO t26->items.
    t26->save( ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t24 i_rest = t26 ).
    t18 = t40.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |+|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = |-|.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |*|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t55->load( ).
    APPEND t58 TO t55->items.
    t55->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = |/|.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    t55->load( ).
    APPEND t61 TO t55->items.
    t55->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |&&|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t55->load( ).
    APPEND t64 TO t55->items.
    t55->save( ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t50 i_second = t53 i_rest = t55 ).
    t48 = t66.
    IF t48 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
      t71 = t48.
      TRY.
          t47 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t70 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t47 = t70->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t76 = zcl_lnt_st_combi_module=>tok( i_t = t77 ).
    IF t76 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t76.
      TRY.
          t75 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t78 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t75 = t78->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>opt_prio( i_first = t75 ).
    IF t74 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t74.
      TRY.
          t73 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t80 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t73 = t80->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t88 TYPE REF TO object.
      t88 = t18.
      TRY.
          t85 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t87 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t85 = t87->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t85 TO t82->items.
    t82->save( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t93 = zcl_lnt_st_combi_module=>tok( i_t = t94 ).
    IF t93 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t96 TYPE REF TO object.
      t96 = t93.
      TRY.
          t92 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t95 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t92 = t95->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>opt_prio( i_first = t92 ).
    IF t91 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t91.
      TRY.
          t90 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t97 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t90 = t97->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t90 TO t82->items.
    t82->save( ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t73 i_rest = t82 ).
    t44 = t99.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t111->load( ).
    APPEND t114 TO t111->items.
    t111->save( ).
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t111->load( ).
    APPEND t117 TO t111->items.
    t111->save( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    t111->load( ).
    APPEND t120 TO t111->items.
    t111->save( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t111->load( ).
    APPEND t123 TO t111->items.
    t111->save( ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    t125 = zcl_lnt_st_combi_module=>alt_prio( i_first = t106 i_second = t109 i_rest = t111 ).
    t103 = t125.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t133 = zcl_lnt_st_combi_module=>tok( i_t = t134 ).
    IF t133 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t133.
      TRY.
          t132 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t135 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t132 = t135->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t141 TYPE REF TO object.
      t141 = t103.
      TRY.
          t138 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t146 = zcl_lnt_st_combi_module=>tok( i_t = t147 ).
    IF t146 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t146.
      TRY.
          t145 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t148 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t145 = t148->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t142->load( ).
    APPEND t145 TO t142->items.
    t142->save( ).
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t138 i_rest = t142 ).
    t129 = t150.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t1.
      TRY.
          t165 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t165 TO t162->items.
    t162->save( ).
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    t169 = zcl_lnt_st_combi_module=>alt_prio( i_first = t157 i_second = t160 i_rest = t162 ).
    t154 = t169.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t177) = |WHEN|.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t182 TYPE REF TO object.
      t182 = t154.
      TRY.
          t179 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t184.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = |THEN|.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t183->load( ).
    APPEND t186 TO t183->items.
    t183->save( ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t195 TYPE REF TO object.
      t195 = t129.
      TRY.
          t192 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t194 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t192 = t194->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = |-|.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t201 = zcl_lnt_st_combi_module=>opt_prio( i_first = t202 ).
    IF t201 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t201.
      TRY.
          t200 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t204 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t200 = t204->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t210 TYPE REF TO object.
      t210 = t103.
      TRY.
          t207 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t207 IS NOT BOUND.
        TRY.
            t209 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS BOUND.
          t207 = t209->source( ).
        ENDIF.
        IF t207 IS NOT BOUND.
          CREATE OBJECT t207.
          t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t207->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t207 i_rest = t212 ).
    t198 = t213.
    IF t198 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t218 TYPE REF TO object.
      t218 = t198.
      TRY.
          t197 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t217 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t197 = t217->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    t221 = zcl_lnt_st_combi_module=>alt_prio( i_first = t192 i_second = t197 i_rest = t220 ).
    t190 = t221.
    IF t190 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t226 TYPE REF TO object.
      t226 = t190.
      TRY.
          t189 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t225 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t189 = t225->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t189 TO t183->items.
    t183->save( ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t233 TYPE REF TO object.
      t233 = t44.
      TRY.
          t230 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t232 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t230 = t232->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>star_prio( i_first = t230 ).
    IF t229 IS BOUND.
      DATA t234 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t235 TYPE REF TO object.
      t235 = t229.
      TRY.
          t228 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t234 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t234 IS BOUND.
          t228 = t234->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t228 TO t183->items.
    t183->save( ).
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    t236 = zcl_lnt_st_combi_module=>seq( i_first = t176 i_second = t179 i_rest = t183 ).
    t173 = t236.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = |ELSE|.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = t244.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t252 TYPE REF TO object.
      t252 = t129.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t260) = |-|.
    CREATE OBJECT t259.
    t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t259->sval = t260.
    t258 = zcl_lnt_st_combi_module=>opt_prio( i_first = t259 ).
    IF t258 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t258.
      TRY.
          t257 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t261 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t257 = t261->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t103.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t257 i_second = t264 i_rest = t269 ).
    t255 = t270.
    IF t255 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t275 TYPE REF TO object.
      t275 = t255.
      TRY.
          t254 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t274 ?= t255.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t254 = t274->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t255.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t277.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    t278 = zcl_lnt_st_combi_module=>alt_prio( i_first = t249 i_second = t254 i_rest = t277 ).
    t247 = t278.
    IF t247 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t283 TYPE REF TO object.
      t283 = t247.
      TRY.
          t246 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t282 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t246 = t282->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t246 i_rest = t285 ).
    t240 = t286.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t292 TYPE REF TO zcl_lnt_abap_release.
    DATA t293 TYPE REF TO zcl_lnt_abap_release.
    DATA t294 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t294 = zcl_lnt_version_module=>release_b8cd.
    DATA(t295) = |v740sp05|.
    t293 = t294->get( p0 = t295 ).
    t292 = t293.
    IF t292 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t297 TYPE REF TO object.
      t297 = t292.
      TRY.
          t291 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t296 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t291 = t296->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t302) = |CASE|.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t310) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t309->cval = t310.
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t315 TYPE REF TO object.
      t315 = t1.
      TRY.
          t312 ?= t315.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t314 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t312 = t314->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    t318 = zcl_lnt_st_combi_module=>alt_prio( i_first = t309 i_second = t312 i_rest = t317 ).
    t307 = t318.
    IF t307 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t323 TYPE REF TO object.
      t323 = t307.
      TRY.
          t306 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t322 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t306 = t322->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t305 = zcl_lnt_st_combi_module=>opt( i_first = t306 ).
    IF t305 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t325 TYPE REF TO object.
      t325 = t305.
      TRY.
          t304 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t324 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t304 = t324->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t326 = t327.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t173 IS BOUND.
      DATA t333 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t334 TYPE REF TO object.
      t334 = t173.
      TRY.
          t331 ?= t334.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t333 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t333 IS BOUND.
          t331 = t333->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    t330 = zcl_lnt_st_combi_module=>plus_prio( i_first = t331 ).
    IF t330 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t336 TYPE REF TO object.
      t336 = t330.
      TRY.
          t329 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t335 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t329 = t335->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    t326->load( ).
    APPEND t329 TO t326->items.
    t326->save( ).
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t240 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t343 TYPE REF TO object.
      t343 = t240.
      TRY.
          t340 ?= t343.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t339 = zcl_lnt_st_combi_module=>opt_prio( i_first = t340 ).
    IF t339 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t345 TYPE REF TO object.
      t345 = t339.
      TRY.
          t338 ?= t345.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t344 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t338 = t344->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t326->load( ).
    APPEND t338 TO t326->items.
    t326->save( ).
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t348) = |END|.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = t348.
    t326->load( ).
    APPEND t347 TO t326->items.
    t326->save( ).
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    t349 = zcl_lnt_st_combi_module=>seq( i_first = t301 i_second = t304 i_rest = t326 ).
    t299 = t349.
    IF t299 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t299.
      TRY.
          t298 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t353 ?= t299.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t298 = t353->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t299.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t355 TYPE REF TO zcl_lnt_iver_options.
    DATA t357 TYPE REF TO zcl_lnt_iver_options.
    DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t361) = |OpenABAP|.
    DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t362->has = abap_true.
    t362->value = t361.
    t358 = t362.
    t357 = NEW zcl_lnt_iver_options( i_also = t358 ).
    CREATE OBJECT t357->zlnt_view_ownkeys_b0e8086400eb.
    t357->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t357->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t364 ).
    CREATE OBJECT t357->zlnt_json_ownkeys_70e5fd461788.
    t357->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t365) = |also|.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t357->zlnt_json_ownkeys_70e5fd461788->put( p0 = t365 p1 = t366 ).
    t355 = t357.
    t290 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t291 i_first = t298 i_opts = t355 ).
    result = t290.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
  ENDMETHOD.
ENDCLASS.
