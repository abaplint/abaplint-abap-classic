* TS: src/cds/expressions/cds_element.ts:7:1 CDSElement
CLASS zcl_lnt_cds_element DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_element IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |: REDIRECTED TO|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |PARENT|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |COMPOSITION CHILD|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    t19 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t15 i_rest = t18 ).
    t10 = t19.
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t10.
      TRY.
          t9 ?= t24.
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
      DATA t26 TYPE REF TO object.
      t26 = t8.
      TRY.
          t7 ?= t26.
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
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>opt_prio( i_first = t35 ).
    IF t34 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t34.
      TRY.
          t33 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t37 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t33 = t37->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t33 TO t27->items.
    t27->save( ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t27 ).
    t1 = t39.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |:|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = |LOCALIZED|.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t57->load( ).
    APPEND t60 TO t57->items.
    t57->save( ).
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    t62 = zcl_lnt_st_combi_module=>alt_prio( i_first = t52 i_second = t55 i_rest = t57 ).
    t50 = t62.
    IF t50 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t50.
      TRY.
          t49 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t66 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t49 = t66->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t69 ).
    t43 = t70.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = |$extension|.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = |.|.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = |*|.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t82->load( ).
    APPEND t85 TO t82->items.
    t82->save( ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t80 i_rest = t82 ).
    t74 = t87.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |,|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t108 ).
    t100 = t109.
    IF t100 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t100.
      TRY.
          t99 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t113 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t99 = t113->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t98 = zcl_lnt_st_combi_module=>star_prio( i_first = t99 ).
    IF t98 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t98.
      TRY.
          t97 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t115 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t97 = t115->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t97 i_rest = t118 ).
    t91 = t119.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = |EXCLUDING|.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = t127.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |\{|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t91.
      TRY.
          t134 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t136 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t134 = t136->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t131->load( ).
    APPEND t134 TO t131->items.
    t131->save( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = |\}|.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t131->load( ).
    APPEND t139 TO t131->items.
    t131->save( ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t129 i_rest = t131 ).
    t123 = t141.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = |INCLUDE|.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = t149.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t154.
    t153 = t154.
    DATA(t156) = |AS|.
    t153->load( ).
    APPEND t156 TO t153->items.
    t153->save( ).
    DATA(t158) = |KEY|.
    t153->load( ).
    APPEND t158 TO t153->items.
    t153->save( ).
    DATA(t160) = |VIRTUAL|.
    t153->load( ).
    APPEND t160 TO t153->items.
    t153->save( ).
    DATA(t162) = |\}|.
    t153->load( ).
    APPEND t162 TO t153->items.
    t153->save( ).
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    t163 = zcl_lnt_st_combi_module=>stop_before1( i_words = t153 ).
    t152 = t163.
    IF t152 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t166 TYPE REF TO object.
      t166 = t152.
      TRY.
          t151 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t165 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t151 = t165->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t167 = t168.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    t167->load( ).
    APPEND t170 TO t167->items.
    t167->save( ).
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |SIGNATURE ONLY|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t123.
      TRY.
          t186 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t188 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t186 = t188->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t185 = zcl_lnt_st_combi_module=>opt_prio( i_first = t186 ).
    IF t185 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t191 TYPE REF TO object.
      t191 = t185.
      TRY.
          t184 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t190 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t184 = t190->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t193.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    t194 = zcl_lnt_st_combi_module=>seq( i_first = t181 i_second = t184 i_rest = t193 ).
    t179 = t194.
    IF t179 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t199 TYPE REF TO object.
      t199 = t179.
      TRY.
          t178 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t198 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t178 = t198->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t206 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t207 TYPE REF TO object.
      t207 = t123.
      TRY.
          t204 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t206 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t206 IS BOUND.
          t204 = t206->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |SIGNATURE ONLY|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t210 = zcl_lnt_st_combi_module=>opt_prio( i_first = t211 ).
    IF t210 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t214 TYPE REF TO object.
      t214 = t210.
      TRY.
          t209 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t209 IS NOT BOUND.
        TRY.
            t213 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t209 = t213->source( ).
        ENDIF.
        IF t209 IS NOT BOUND.
          CREATE OBJECT t209.
          t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t209->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    t217 = zcl_lnt_st_combi_module=>seq( i_first = t204 i_second = t209 i_rest = t216 ).
    t202 = t217.
    IF t202 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t222 TYPE REF TO object.
      t222 = t202.
      TRY.
          t201 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t221 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t201 = t221->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    t225 = zcl_lnt_st_combi_module=>alt_prio( i_first = t178 i_second = t201 i_rest = t224 ).
    t176 = t225.
    IF t176 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t230 TYPE REF TO object.
      t230 = t176.
      TRY.
          t175 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t229 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t175 = t229->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    t174 = zcl_lnt_st_combi_module=>opt_prio( i_first = t175 ).
    IF t174 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t174.
      TRY.
          t173 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t231 ?= t174.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t173 = t231->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t174.
        ENDIF.
      ENDIF.
    ENDIF.
    t167->load( ).
    APPEND t173 TO t167->items.
    t167->save( ).
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    t233 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t151 i_rest = t167 ).
    t145 = t233.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |VIRTUAL|.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = t241.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t244) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t243->cval = t244.
    ENDIF.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t246.
    t245 = t246.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t249) = |:|.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = t249.
    t245->load( ).
    APPEND t248 TO t245->items.
    t245->save( ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    t245->load( ).
    APPEND t251 TO t245->items.
    t245->save( ).
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    t253 = zcl_lnt_st_combi_module=>seq( i_first = t240 i_second = t243 i_rest = t245 ).
    t237 = t253.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t261) = |.|.
    CREATE OBJECT t260.
    t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t260->sval = t261.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t266->cval = t267.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t269->cval = t270.
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t272.
    t271 = t272.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t275) = |*|.
    CREATE OBJECT t274.
    t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t274->sval = t275.
    t271->load( ).
    APPEND t274 TO t271->items.
    t271->save( ).
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    t276 = zcl_lnt_st_combi_module=>alt_prio( i_first = t266 i_second = t269 i_rest = t271 ).
    t264 = t276.
    IF t264 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t281 TYPE REF TO object.
      t281 = t264.
      TRY.
          t263 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t280 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t263 = t280->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t283.
    t282 = t283.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t291) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    IF t291 IS BOUND.
      CREATE OBJECT t290.
      t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t290->cval = t291.
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1114_3b343875274a.
    IF t294 IS BOUND.
      CREATE OBJECT t293.
      t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t293->cval = t294.
    ENDIF.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t296.
    DATA t297 TYPE REF TO zif_lnt_statement_runnable.
    t297 = zcl_lnt_st_combi_module=>alt_prio( i_first = t290 i_second = t293 i_rest = t296 ).
    t288 = t297.
    IF t288 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t302 TYPE REF TO object.
      t302 = t288.
      TRY.
          t287 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t287 IS NOT BOUND.
        TRY.
            t301 ?= t288.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t287 = t301->source( ).
        ENDIF.
        IF t287 IS NOT BOUND.
          CREATE OBJECT t287.
          t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t287->oval = t288.
        ENDIF.
      ENDIF.
    ENDIF.
    t286 = zcl_lnt_st_combi_module=>opt_prio( i_first = t287 ).
    IF t286 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t286.
      TRY.
          t285 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t303 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t285 = t303->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t282->load( ).
    APPEND t285 TO t282->items.
    t282->save( ).
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    t305 = zcl_lnt_st_combi_module=>seq( i_first = t260 i_second = t263 i_rest = t282 ).
    t257 = t305.
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t312->cval = t313.
    ENDIF.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t257 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t320 TYPE REF TO object.
      t320 = t257.
      TRY.
          t317 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t317 IS NOT BOUND.
        TRY.
            t319 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t317 = t319->source( ).
        ENDIF.
        IF t317 IS NOT BOUND.
          CREATE OBJECT t317.
          t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t317->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    t316 = zcl_lnt_st_combi_module=>plus_prio( i_first = t317 ).
    IF t316 IS BOUND.
      DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t322 TYPE REF TO object.
      t322 = t316.
      TRY.
          t315 ?= t322.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t321 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t321 IS BOUND.
          t315 = t321->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t324.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    t325 = zcl_lnt_st_combi_module=>seq( i_first = t312 i_second = t315 i_rest = t324 ).
    t309 = t325.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t335 TYPE REF TO object.
      t335 = t74.
      TRY.
          t332 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t334 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t332 = t334->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t145 IS BOUND.
      DATA t339 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t340 TYPE REF TO object.
      t340 = t145.
      TRY.
          t337 ?= t340.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t339 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t339 IS BOUND.
          t337 = t339->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t342.
    t341 = t342.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    t341->load( ).
    APPEND t344 TO t341->items.
    t341->save( ).
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t348) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
    IF t348 IS BOUND.
      CREATE OBJECT t347.
      t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t347->cval = t348.
    ENDIF.
    t341->load( ).
    APPEND t347 TO t341->items.
    t341->save( ).
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t351) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t351 IS BOUND.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t350->cval = t351.
    ENDIF.
    t341->load( ).
    APPEND t350 TO t341->items.
    t341->save( ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t354) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t353->cval = t354.
    ENDIF.
    t341->load( ).
    APPEND t353 TO t341->items.
    t341->save( ).
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t309 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t359 TYPE REF TO object.
      t359 = t309.
      TRY.
          t356 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t358 ?= t309.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t356 = t358->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t309.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t356 TO t341->items.
    t341->save( ).
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t362) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t361->cval = t362.
    ENDIF.
    t341->load( ).
    APPEND t361 TO t341->items.
    t341->save( ).
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t365) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
    IF t365 IS BOUND.
      CREATE OBJECT t364.
      t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t364->cval = t365.
    ENDIF.
    t341->load( ).
    APPEND t364 TO t341->items.
    t341->save( ).
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t368) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t367->cval = t368.
    ENDIF.
    t341->load( ).
    APPEND t367 TO t341->items.
    t341->save( ).
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t374) = |(|.
    CREATE OBJECT t373.
    t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t373->sval = t374.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t377) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    IF t377 IS BOUND.
      CREATE OBJECT t376.
      t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t376->cval = t377.
    ENDIF.
    DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t379.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t382) = |)|.
    CREATE OBJECT t381.
    t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t381->sval = t382.
    t378->load( ).
    APPEND t381 TO t378->items.
    t378->save( ).
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    t383 = zcl_lnt_st_combi_module=>seq( i_first = t373 i_second = t376 i_rest = t378 ).
    t371 = t383.
    IF t371 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t388 TYPE REF TO object.
      t388 = t371.
      TRY.
          t370 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t370 IS NOT BOUND.
        TRY.
            t387 ?= t371.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t370 = t387->source( ).
        ENDIF.
        IF t370 IS NOT BOUND.
          CREATE OBJECT t370.
          t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t370->oval = t371.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t370 TO t341->items.
    t341->save( ).
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t391) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t391 IS BOUND.
      CREATE OBJECT t390.
      t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t390->cval = t391.
    ENDIF.
    t341->load( ).
    APPEND t390 TO t341->items.
    t341->save( ).
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t397) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t397 IS BOUND.
      CREATE OBJECT t396.
      t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t396->cval = t397.
    ENDIF.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t402) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t402 IS BOUND.
      CREATE OBJECT t401.
      t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t401->cval = t402.
    ENDIF.
    t400 = zcl_lnt_st_combi_module=>opt_prio( i_first = t401 ).
    IF t400 IS BOUND.
      DATA t403 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t404 TYPE REF TO object.
      t404 = t400.
      TRY.
          t399 ?= t404.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t399 IS NOT BOUND.
        TRY.
            t403 ?= t400.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS BOUND.
          t399 = t403->source( ).
        ENDIF.
        IF t399 IS NOT BOUND.
          CREATE OBJECT t399.
          t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t399->oval = t400.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t406.
    t405 = t406.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t416 TYPE REF TO object.
      t416 = t1.
      TRY.
          t413 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t415 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t413 = t415->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t420 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t421 TYPE REF TO object.
      t421 = t43.
      TRY.
          t418 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t420 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t420 IS BOUND.
          t418 = t420->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t423.
    DATA t424 TYPE REF TO zif_lnt_statement_runnable.
    t424 = zcl_lnt_st_combi_module=>alt_prio( i_first = t413 i_second = t418 i_rest = t423 ).
    t411 = t424.
    IF t411 IS BOUND.
      DATA t428 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t429 TYPE REF TO object.
      t429 = t411.
      TRY.
          t410 ?= t429.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t410 IS NOT BOUND.
        TRY.
            t428 ?= t411.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t428 IS BOUND.
          t410 = t428->source( ).
        ENDIF.
        IF t410 IS NOT BOUND.
          CREATE OBJECT t410.
          t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t410->oval = t411.
        ENDIF.
      ENDIF.
    ENDIF.
    t409 = zcl_lnt_st_combi_module=>opt_prio( i_first = t410 ).
    IF t409 IS BOUND.
      DATA t430 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t431 TYPE REF TO object.
      t431 = t409.
      TRY.
          t408 ?= t431.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t430 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t430 IS BOUND.
          t408 = t430->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    t405->load( ).
    APPEND t408 TO t405->items.
    t405->save( ).
    DATA t432 TYPE REF TO zif_lnt_statement_runnable.
    t432 = zcl_lnt_st_combi_module=>seq( i_first = t396 i_second = t399 i_rest = t405 ).
    t394 = t432.
    IF t394 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t437 TYPE REF TO object.
      t437 = t394.
      TRY.
          t393 ?= t437.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t393 IS NOT BOUND.
        TRY.
            t436 ?= t394.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t393 = t436->source( ).
        ENDIF.
        IF t393 IS NOT BOUND.
          CREATE OBJECT t393.
          t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t393->oval = t394.
        ENDIF.
      ENDIF.
    ENDIF.
    t341->load( ).
    APPEND t393 TO t341->items.
    t341->save( ).
    DATA t438 TYPE REF TO zif_lnt_statement_runnable.
    t438 = zcl_lnt_st_combi_module=>alt_prio( i_first = t332 i_second = t337 i_rest = t341 ).
    t329 = t438.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t237 IS BOUND.
      DATA t447 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t448 TYPE REF TO object.
      t448 = t237.
      TRY.
          t445 ?= t448.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t447 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t447 IS BOUND.
          t445 = t447->source( ).
        ENDIF.
        IF t445 IS NOT BOUND.
          CREATE OBJECT t445.
          t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t445->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t451 TYPE REF TO zif_lnt_statement_runnable.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t457) = |KEY|.
    CREATE OBJECT t456.
    t456->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t456->sval = t457.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t460) = |VIRTUAL|.
    CREATE OBJECT t459.
    t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t459->sval = t460.
    DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t462.
    DATA t463 TYPE REF TO zif_lnt_statement_runnable.
    t463 = zcl_lnt_st_combi_module=>alt_prio( i_first = t456 i_second = t459 i_rest = t462 ).
    t454 = t463.
    IF t454 IS BOUND.
      DATA t467 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t468 TYPE REF TO object.
      t468 = t454.
      TRY.
          t453 ?= t468.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t467 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t467 IS BOUND.
          t453 = t467->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t329 IS BOUND.
      DATA t472 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t473 TYPE REF TO object.
      t473 = t329.
      TRY.
          t470 ?= t473.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t472 ?= t329.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t472 IS BOUND.
          t470 = t472->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t329.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t475 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t475.
    DATA t476 TYPE REF TO zif_lnt_statement_runnable.
    t476 = zcl_lnt_st_combi_module=>seq( i_first = t453 i_second = t470 i_rest = t475 ).
    t451 = t476.
    IF t451 IS BOUND.
      DATA t480 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t481 TYPE REF TO object.
      t481 = t451.
      TRY.
          t450 ?= t481.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t450 IS NOT BOUND.
        TRY.
            t480 ?= t451.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t480 IS BOUND.
          t450 = t480->source( ).
        ENDIF.
        IF t450 IS NOT BOUND.
          CREATE OBJECT t450.
          t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t450->oval = t451.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t482 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t483.
    t482 = t483.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t329 IS BOUND.
      DATA t487 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t488 TYPE REF TO object.
      t488 = t329.
      TRY.
          t485 ?= t488.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t485 IS NOT BOUND.
        TRY.
            t487 ?= t329.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t487 IS BOUND.
          t485 = t487->source( ).
        ENDIF.
        IF t485 IS NOT BOUND.
          CREATE OBJECT t485.
          t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t485->oval = t329.
        ENDIF.
      ENDIF.
    ENDIF.
    t482->load( ).
    APPEND t485 TO t482->items.
    t482->save( ).
    DATA t489 TYPE REF TO zif_lnt_statement_runnable.
    t489 = zcl_lnt_st_combi_module=>alt_prio( i_first = t445 i_second = t450 i_rest = t482 ).
    t442 = t489.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t498) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t498 IS BOUND.
      CREATE OBJECT t497.
      t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t497->cval = t498.
    ENDIF.
    t496 = zcl_lnt_st_combi_module=>star_prio( i_first = t497 ).
    IF t496 IS BOUND.
      DATA t499 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t500 TYPE REF TO object.
      t500 = t496.
      TRY.
          t495 ?= t500.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t495 IS NOT BOUND.
        TRY.
            t499 ?= t496.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t499 IS BOUND.
          t495 = t499->source( ).
        ENDIF.
        IF t495 IS NOT BOUND.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t495->oval = t496.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t442 IS BOUND.
      DATA t504 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t505 TYPE REF TO object.
      t505 = t442.
      TRY.
          t502 ?= t505.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t502 IS NOT BOUND.
        TRY.
            t504 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t504 IS BOUND.
          t502 = t504->source( ).
        ENDIF.
        IF t502 IS NOT BOUND.
          CREATE OBJECT t502.
          t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t502->oval = t442.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t506 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t507.
    t506 = t507.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t510 TYPE REF TO zif_lnt_statement_runnable.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t512) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t512 IS BOUND.
      CREATE OBJECT t511.
      t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t511->cval = t512.
    ENDIF.
    t510 = zcl_lnt_st_combi_module=>opt_prio( i_first = t511 ).
    IF t510 IS BOUND.
      DATA t513 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t514 TYPE REF TO object.
      t514 = t510.
      TRY.
          t509 ?= t514.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t509 IS NOT BOUND.
        TRY.
            t513 ?= t510.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t513 IS BOUND.
          t509 = t513->source( ).
        ENDIF.
        IF t509 IS NOT BOUND.
          CREATE OBJECT t509.
          t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t509->oval = t510.
        ENDIF.
      ENDIF.
    ENDIF.
    t506->load( ).
    APPEND t509 TO t506->items.
    t506->save( ).
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t517 TYPE REF TO zif_lnt_statement_runnable.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t519) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t519 IS BOUND.
      CREATE OBJECT t518.
      t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t518->cval = t519.
    ENDIF.
    t517 = zcl_lnt_st_combi_module=>star_prio( i_first = t518 ).
    IF t517 IS BOUND.
      DATA t520 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t521 TYPE REF TO object.
      t521 = t517.
      TRY.
          t516 ?= t521.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t516 IS NOT BOUND.
        TRY.
            t520 ?= t517.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t520 IS BOUND.
          t516 = t520->source( ).
        ENDIF.
        IF t516 IS NOT BOUND.
          CREATE OBJECT t516.
          t516->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t516->oval = t517.
        ENDIF.
      ENDIF.
    ENDIF.
    t506->load( ).
    APPEND t516 TO t506->items.
    t506->save( ).
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    t522 = zcl_lnt_st_combi_module=>seq( i_first = t495 i_second = t502 i_rest = t506 ).
    result = t522.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
  ENDMETHOD.
ENDCLASS.
