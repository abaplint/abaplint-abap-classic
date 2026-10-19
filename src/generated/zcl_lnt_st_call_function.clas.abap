* TS: src/abap/2_statements/statements/call_function.ts:7:1 CallFunction
CLASS zcl_lnt_st_call_function DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_call_function IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = |Cloud|.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |STARTING NEW TASK|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t13 ).
    t5 = t14.
    IF t5 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t5.
      TRY.
          t4 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t18 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t4 = t18->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t3 i_first = t4 ).
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = |Cloud|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = |IN UPDATE TASK|.
    t24 = zcl_lnt_st_combi_module=>str( i_s = t25 ).
    IF t24 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t24.
      TRY.
          t23 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t26 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t23 = t26->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t22 i_first = t23 ).
    t20 = t21.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = |UNIT|.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t37 ).
    t28 = t38.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t44) = |Cloud|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = |IN BACKGROUND|.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |TASK|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t28.
      TRY.
          t57 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t59 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t57 = t59->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    t63 = zcl_lnt_st_combi_module=>alt_prio( i_first = t54 i_second = t57 i_rest = t62 ).
    t52 = t63.
    IF t52 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t52.
      TRY.
          t51 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t67 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t51 = t67->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t51 i_rest = t70 ).
    t46 = t71.
    IF t46 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t46.
      TRY.
          t45 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t75 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t45 = t75->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t44 i_first = t45 ).
    t42 = t43.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = |CALLING|.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d237_6d1df3154820.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |ON END OF TASK|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t85->load( ).
    APPEND t88 TO t85->items.
    t85->save( ).
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t80 i_second = t83 i_rest = t85 ).
    t77 = t90.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = |PERFORMING|.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = |ON END OF TASK|.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = t106.
    t102->load( ).
    APPEND t105 TO t102->items.
    t102->save( ).
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t100 i_rest = t102 ).
    t94 = t107.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = |AS SEPARATE UNIT|.
    t112 = zcl_lnt_st_combi_module=>str( i_s = t113 ).
    t111 = t112.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t116) = |KEEPING LOGICAL UNIT OF WORK|.
    t115 = zcl_lnt_st_combi_module=>str( i_s = t116 ).
    t114 = t115.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t1.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t20.
      TRY.
          t125 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t42.
      TRY.
          t132 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t134 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t132 = t134->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t132 TO t129->items.
    t129->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    t129->load( ).
    APPEND t137 TO t129->items.
    t129->save( ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t143 TYPE REF TO object.
      t143 = t77.
      TRY.
          t140 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t140 TO t129->items.
    t129->save( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t94 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t94.
      TRY.
          t145 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t147 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t145 = t147->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t145 TO t129->items.
    t129->save( ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t111 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t153 TYPE REF TO object.
      t153 = t111.
      TRY.
          t150 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t152 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t150 = t152->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t150 TO t129->items.
    t129->save( ).
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t114 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t114.
      TRY.
          t155 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t157 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t155 = t157->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t155 TO t129->items.
    t129->save( ).
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    t159 = zcl_lnt_st_combi_module=>per( i_first = t120 i_second = t125 i_rest = t129 ).
    t117 = t159.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = |EXCEPTION-TABLE|.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = t167.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t170 IS BOUND.
      CREATE OBJECT t169.
      t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t169->cval = t170.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    t173 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t169 i_rest = t172 ).
    t163 = t173.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = |PARAMETER-TABLE|.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t196 TYPE REF TO object.
      t196 = t163.
      TRY.
          t193 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t192 = zcl_lnt_st_combi_module=>opt( i_first = t193 ).
    IF t192 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t192.
      TRY.
          t191 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t197 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t191 = t197->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t191 TO t188->items.
    t188->save( ).
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t186 i_rest = t188 ).
    t181 = t199.
    IF t181 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t204 TYPE REF TO object.
      t204 = t181.
      TRY.
          t180 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t203 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t180 = t203->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t163 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t209 TYPE REF TO object.
      t209 = t163.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    t212 = zcl_lnt_st_combi_module=>alt( i_first = t180 i_second = t206 i_rest = t211 ).
    t177 = t212.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t220) = |CALL|.
    CREATE OBJECT t219.
    t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t219->sval = t220.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = |FUNCTION|.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t230) = |Cloud|.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = |CUSTOMER-FUNCTION|.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t229 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t230 i_first = t231 ).
    IF t229 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t229.
      TRY.
          t228 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t233 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t228 = t233->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    t237 = zcl_lnt_st_combi_module=>alt_prio( i_first = t225 i_second = t228 i_rest = t236 ).
    t223 = t237.
    IF t223 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t242 TYPE REF TO object.
      t242 = t223.
      TRY.
          t222 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t222 IS NOT BOUND.
        TRY.
            t241 ?= t223.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t222 = t241->source( ).
        ENDIF.
        IF t222 IS NOT BOUND.
          CREATE OBJECT t222.
          t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t222->oval = t223.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t244.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t246->cval = t247.
    ENDIF.
    t243->load( ).
    APPEND t246 TO t243->items.
    t243->save( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t117.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    t250 = zcl_lnt_st_combi_module=>opt( i_first = t251 ).
    IF t250 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t250.
      TRY.
          t249 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t255 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t249 = t255->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t249 TO t243->items.
    t243->save( ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t262) = zlnt_runtime_desc_78196487750d=>zlnt_member_d201_586873752c2d.
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t261->cval = t262.
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t177 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t177.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    t270 = zcl_lnt_st_combi_module=>alt( i_first = t261 i_second = t264 i_rest = t269 ).
    t259 = t270.
    IF t259 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t275 TYPE REF TO object.
      t275 = t259.
      TRY.
          t258 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t258 IS NOT BOUND.
        TRY.
            t274 ?= t259.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t258 = t274->source( ).
        ENDIF.
        IF t258 IS NOT BOUND.
          CREATE OBJECT t258.
          t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t258->oval = t259.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t258 TO t243->items.
    t243->save( ).
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    t276 = zcl_lnt_st_combi_module=>seq( i_first = t219 i_second = t222 i_rest = t243 ).
    t216 = t276.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t281) = |KeyUser|.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t216 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t285 TYPE REF TO object.
      t285 = t216.
      TRY.
          t282 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t282 IS NOT BOUND.
        TRY.
            t284 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t282 = t284->source( ).
        ENDIF.
        IF t282 IS NOT BOUND.
          CREATE OBJECT t282.
          t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t282->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    t280 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t281 i_first = t282 ).
    result = t280.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d392_33e10f2ca820.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
