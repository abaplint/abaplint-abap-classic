* TS: src/abap/2_statements/statements/read_line.ts:7:1 ReadLine
CLASS zcl_lnt_read_line DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_read_line IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |LINE VALUE INTO|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |INTO|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t29 i_rest = t32 ).
    IF t24 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t23 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t37 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t23 = t37->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>opt( i_first = t23 ).
    IF t22 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t21 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t39 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t21 = t39->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t42 ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |FIELD VALUE|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t55 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t57 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t55 = t57->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>plus( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t53 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t59 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t53 = t59->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t62 ).
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |INDEX|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t73 i_rest = t76 ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |OF PAGE|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t87 i_rest = t90 ).
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    t95 = zcl_lnt_st_combi_module=>str( i_s = |OF CURRENT PAGE| ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |READ|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = |CURRENT LINE|.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = |LINE|.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t119.
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t116 i_rest = t119 ).
    IF t111 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t110 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t124 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t110 = t124->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t105 = zcl_lnt_st_combi_module=>alt( i_first = t107 i_second = t110 i_rest = t127 ).
    IF t105 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t104 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t132 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t104 = t132->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t142 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t142 IS NOT BOUND.
        TRY.
            t144 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t142 = t144->source( ).
        ENDIF.
        IF t142 IS NOT BOUND.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t142->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t149 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t147 = t149->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t154 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t156 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t154 = t156->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t151->load( ).
    APPEND t154 TO t151->items.
    t151->save( ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t151->load( ).
    APPEND t159 TO t151->items.
    t151->save( ).
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t164 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t166 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t164 = t166->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t151->load( ).
    APPEND t164 TO t151->items.
    t151->save( ).
    t140 = zcl_lnt_st_combi_module=>per( i_first = t142 i_second = t147 i_rest = t151 ).
    IF t140 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t139 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t172 ?= t140.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t139 = t172->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t140.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>opt( i_first = t139 ).
    IF t138 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t137 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t174 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t137 = t174->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t134->load( ).
    APPEND t137 TO t134->items.
    t134->save( ).
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t104 i_rest = t134 ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t182 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d592_4837260953f4.
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
