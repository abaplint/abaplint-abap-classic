* TS: src/cds/expressions/cds_parameters_select.ts:5:1 CDSParametersSelect
CLASS zcl_lnt_cds_parameters_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parameters_select IMPLEMENTATION.
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
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
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
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t28 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t39 i_rest = t42 ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t33.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t1.
      TRY.
          t60 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t62 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t60 = t62->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t57->load( ).
    APPEND t60 TO t57->items.
    t57->save( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t57->load( ).
    APPEND t65 TO t57->items.
    t57->save( ).
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t50 i_second = t55 i_rest = t57 ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t1.
      TRY.
          t74 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t76 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t74 = t76->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = |:|.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t47.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t81->load( ).
    APPEND t84 TO t81->items.
    t81->save( ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |DEFAULT|.
    t90 = zcl_lnt_st_combi_module=>opt_prio( i_first = t91 ).
    IF t90 IS BOUND.
      DATA t93 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t94 TYPE REF TO object.
      t94 = t90.
      TRY.
          t89 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t93 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t93 IS BOUND.
          t89 = t93->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    t81->load( ).
    APPEND t89 TO t81->items.
    t81->save( ).
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t79 i_rest = t81 ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t105 TYPE REF TO object.
      t105 = t1.
      TRY.
          t102 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t104 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t102 = t104->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |=|.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |>|.
    t109->load( ).
    APPEND t112 TO t109->items.
    t109->save( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t47.
      TRY.
          t115 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t117 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t115 = t117->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t109->load( ).
    APPEND t115 TO t109->items.
    t109->save( ).
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t107 i_rest = t109 ).
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t71.
      TRY.
          t126 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t99.
      TRY.
          t131 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t123 = zcl_lnt_st_combi_module=>alt_prio( i_first = t126 i_second = t131 i_rest = t136 ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = |(|.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t149 TYPE REF TO object.
      t149 = t123.
      TRY.
          t146 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t148 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t146 = t148->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t150.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t158.
    t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t158->sval = |,|.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t123.
      TRY.
          t161 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t163 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t161 = t163->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t166.
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t161 i_rest = t166 ).
    IF t156 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t172 TYPE REF TO object.
      t172 = t156.
      TRY.
          t155 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t171 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t155 = t171->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>star( i_first = t155 ).
    IF t154 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t154.
      TRY.
          t153 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t173 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t153 = t173->source( ).
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
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = |)|.
    t150->load( ).
    APPEND t176 TO t150->items.
    t150->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t146 i_rest = t150 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
  ENDMETHOD.
ENDCLASS.
