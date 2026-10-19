* TS: src/abap/2_statements/statements/scroll_list.ts:7:1 ScrollList
CLASS zcl_lnt_scroll_list DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_scroll_list IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |INDEX|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |LINE|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |TO COLUMN|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |TO|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |FIRST PAGE|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |LAST PAGE|.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = |PAGE|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t66 i_rest = t69 ).
    IF t61 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t61.
      TRY.
          t60 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t74 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t60 = t74->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t57->load( ).
    APPEND t60 TO t57->items.
    t57->save( ).
    t50 = zcl_lnt_st_combi_module=>alt( i_first = t52 i_second = t55 i_rest = t57 ).
    IF t50 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t50.
      TRY.
          t49 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t80 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t49 = t80->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t83 ).
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = |PAGES|.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t88 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t94 i_rest = t97 ).
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |SCROLL LIST|.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t1.
      TRY.
          t111 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t125 TYPE REF TO object.
      t125 = t43.
      TRY.
          t122 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t127.
    t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t127->sval = |BACKWARD|.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = |FORWARD|.
    t129->load( ).
    APPEND t132 TO t129->items.
    t129->save( ).
    t120 = zcl_lnt_st_combi_module=>alt( i_first = t122 i_second = t127 i_rest = t129 ).
    IF t120 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t139 TYPE REF TO object.
      t139 = t120.
      TRY.
          t119 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t138 ?= t120.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t119 = t138->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t120.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t88 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t88.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    IF t142 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t142.
      TRY.
          t141 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t147 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t141 = t147->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t141 i_rest = t150 ).
    IF t117 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t117.
      TRY.
          t116 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t155 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t116 = t155->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = |LEFT|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = |RIGHT|.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t164 = zcl_lnt_st_combi_module=>alt( i_first = t166 i_second = t169 i_rest = t172 ).
    IF t164 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t178 TYPE REF TO object.
      t178 = t164.
      TRY.
          t163 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t177 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t163 = t177->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t185.
    t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t185->sval = |BY|.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t188->cval = t189.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t190.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t193.
    t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t193->sval = |PLACES|.
    t190->load( ).
    APPEND t193 TO t190->items.
    t190->save( ).
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t188 i_rest = t190 ).
    IF t183 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t183.
      TRY.
          t182 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t199 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t182 = t199->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t181 = zcl_lnt_st_combi_module=>opt( i_first = t182 ).
    IF t181 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t202 TYPE REF TO object.
      t202 = t181.
      TRY.
          t180 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t201 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t180 = t201->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t163 i_second = t180 i_rest = t204 ).
    IF t161 IS BOUND.
      DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t210 TYPE REF TO object.
      t210 = t161.
      TRY.
          t160 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t209 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS BOUND.
          t160 = t209->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t157->load( ).
    APPEND t160 TO t157->items.
    t157->save( ).
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t214 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t215 TYPE REF TO object.
      t215 = t29.
      TRY.
          t212 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t214 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t214 IS BOUND.
          t212 = t214->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t157->load( ).
    APPEND t212 TO t157->items.
    t157->save( ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t220 TYPE REF TO object.
      t220 = t15.
      TRY.
          t217 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t219 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t217 = t219->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t157->load( ).
    APPEND t217 TO t157->items.
    t157->save( ).
    t109 = zcl_lnt_st_combi_module=>per( i_first = t111 i_second = t116 i_rest = t157 ).
    IF t109 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t226 TYPE REF TO object.
      t226 = t109.
      TRY.
          t108 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t225 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t108 = t225->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t108 i_rest = t228 ).
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t238 TYPE REF TO object.
      t238 = t102.
      TRY.
          t235 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t237 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t235 = t237->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t235 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d609_9bc117e52bf1.
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
