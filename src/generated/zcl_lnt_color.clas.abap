* TS: src/abap/2_statements/expressions/color.ts:5:1 Color
CLASS zcl_lnt_color DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_color IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |=|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
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
    t18->sval = |1|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |2|.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |3|.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |4|.
    t23->load( ).
    APPEND t29 TO t23->items.
    t23->save( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |5|.
    t23->load( ).
    APPEND t32 TO t23->items.
    t23->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |6|.
    t23->load( ).
    APPEND t35 TO t23->items.
    t23->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |7|.
    t23->load( ).
    APPEND t38 TO t23->items.
    t23->save( ).
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t21 i_rest = t23 ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |COL_BACKGROUND|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |COL_HEADING|.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |COL_NORMAL|.
    t52->load( ).
    APPEND t55 TO t52->items.
    t52->save( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |COL_TOTAL|.
    t52->load( ).
    APPEND t58 TO t52->items.
    t52->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |COL_KEY|.
    t52->load( ).
    APPEND t61 TO t52->items.
    t52->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = |COL_POSITIVE|.
    t52->load( ).
    APPEND t64 TO t52->items.
    t52->save( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |COL_NEGATIVE|.
    t52->load( ).
    APPEND t67 TO t52->items.
    t52->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |COL_GROUP|.
    t52->load( ).
    APPEND t70 TO t52->items.
    t52->save( ).
    t44 = zcl_lnt_st_combi_module=>alt_prio( i_first = t47 i_second = t50 i_rest = t52 ).
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
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
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |ON|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |OFF|.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = |COLOR OFF|.
    t92->load( ).
    APPEND t95 TO t92->items.
    t92->save( ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t104 TYPE REF TO object.
      t104 = t15.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t109 TYPE REF TO object.
      t109 = t44.
      TRY.
          t106 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t108 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t106 = t108->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t99 = zcl_lnt_st_combi_module=>alt_prio( i_first = t101 i_second = t106 i_rest = t111 ).
    IF t99 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t117 TYPE REF TO object.
      t117 = t99.
      TRY.
          t98 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t98 IS NOT BOUND.
        TRY.
            t116 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t98 = t116->source( ).
        ENDIF.
        IF t98 IS NOT BOUND.
          CREATE OBJECT t98.
          t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t98->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    t92->load( ).
    APPEND t98 TO t92->items.
    t92->save( ).
    t85 = zcl_lnt_st_combi_module=>alt_prio( i_first = t87 i_second = t90 i_rest = t92 ).
    IF t85 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t85.
      TRY.
          t84 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t122 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t84 = t122->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    t76 = zcl_lnt_st_combi_module=>alt( i_first = t79 i_second = t84 i_rest = t125 ).
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |ON|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = |OFF|.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t130 = zcl_lnt_st_combi_module=>alt_prio( i_first = t133 i_second = t136 i_rest = t139 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = |COLOR|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t157 TYPE REF TO object.
      t157 = t76.
      TRY.
          t154 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t156 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t154 = t156->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t130.
      TRY.
          t161 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t163 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t161 = t163->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t160 = zcl_lnt_st_combi_module=>opt( i_first = t161 ).
    IF t160 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t166 TYPE REF TO object.
      t166 = t160.
      TRY.
          t159 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t165 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t159 = t165->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    t152 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t159 i_rest = t168 ).
    IF t152 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t152.
      TRY.
          t151 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t151 IS NOT BOUND.
        TRY.
            t173 ?= t152.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t151 = t173->source( ).
        ENDIF.
        IF t151 IS NOT BOUND.
          CREATE OBJECT t151.
          t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t151->oval = t152.
        ENDIF.
      ENDIF.
    ENDIF.
    t150 = zcl_lnt_st_combi_module=>opt( i_first = t151 ).
    IF t150 IS BOUND.
      DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t176 TYPE REF TO object.
      t176 = t150.
      TRY.
          t149 ?= t176.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t175 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t175 IS BOUND.
          t149 = t175->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    result = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t149 i_rest = t178 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
  ENDMETHOD.
ENDCLASS.
