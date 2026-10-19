* TS: src/abap/2_statements/statements/provide.ts:7:1 Provide
CLASS zcl_lnt_st_provide DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_provide IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |*|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d246_f8272c765b13.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t4 = zcl_lnt_st_combi_module=>alt_prio( i_first = t6 i_second = t9 i_rest = t12 ).
    IF t4 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
      t18 = t4.
      TRY.
          t3 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t17 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t3 = t17->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>plus_prio( i_first = t3 ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |FIELDS|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t1.
      TRY.
          t25 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t27 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t25 = t27->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |FROM|.
    t29->load( ).
    APPEND t32 TO t29->items.
    t29->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t29->load( ).
    APPEND t35 TO t29->items.
    t29->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |INTO|.
    t29->load( ).
    APPEND t38 TO t29->items.
    t29->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t29->load( ).
    APPEND t41 TO t29->items.
    t29->save( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |VALID|.
    t29->load( ).
    APPEND t44 TO t29->items.
    t29->save( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    t29->load( ).
    APPEND t47 TO t29->items.
    t29->save( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |BOUNDS|.
    t29->load( ).
    APPEND t50 TO t29->items.
    t29->save( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    t29->load( ).
    APPEND t53 TO t29->items.
    t29->save( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = |AND|.
    t29->load( ).
    APPEND t56 TO t29->items.
    t29->save( ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    t29->load( ).
    APPEND t59 TO t29->items.
    t29->save( ).
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t25 i_rest = t29 ).
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |FROM|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t71 i_rest = t74 ).
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t1.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>plus( i_first = t84 ).
    IF t83 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t83.
      TRY.
          t82 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t88 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t82 = t88->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t65 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t94 TYPE REF TO object.
      t94 = t65.
      TRY.
          t91 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t93 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t91 = t93->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t91 i_rest = t96 ).
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |WHERE|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t107 i_rest = t110 ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |BETWEEN|.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t126.
    t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t126->sval = |AND|.
    t123->load( ).
    APPEND t126 TO t123->items.
    t123->save( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t123->load( ).
    APPEND t129 TO t123->items.
    t123->save( ).
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t123 ).
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = |PROVIDE|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t19.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t145 = zcl_lnt_st_combi_module=>plus_prio( i_first = t146 ).
    IF t145 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t151 TYPE REF TO object.
      t151 = t145.
      TRY.
          t144 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t150 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t144 = t150->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t79.
      TRY.
          t155 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t157 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t155 = t157->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>plus_prio( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t154.
      TRY.
          t153 ?= t160.
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
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t162.
    t142 = zcl_lnt_st_combi_module=>alt_prio( i_first = t144 i_second = t153 i_rest = t162 ).
    IF t142 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t142.
      TRY.
          t141 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t167 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t141 = t167->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t180 TYPE REF TO object.
      t180 = t115.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t101 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t185 TYPE REF TO object.
      t185 = t101.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t175 = zcl_lnt_st_combi_module=>per( i_first = t177 i_second = t182 i_rest = t187 ).
    IF t175 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t193 TYPE REF TO object.
      t193 = t175.
      TRY.
          t174 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t192 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t174 = t192->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = zcl_lnt_st_combi_module=>opt( i_first = t174 ).
    IF t173 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t195 TYPE REF TO object.
      t195 = t173.
      TRY.
          t172 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t194 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t172 = t194->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    t169->load( ).
    APPEND t172 TO t169->items.
    t169->save( ).
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t141 i_rest = t169 ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t135.
      TRY.
          t202 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t204 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t202 = t204->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t202 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d583_278b8a5e07e6.
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
