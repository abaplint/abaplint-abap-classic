* TS: src/abap/2_statements/statements/format.ts:7:1 Format
CLASS zcl_lnt_st_format DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_format IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |=|.
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
    IF t1 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t18 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t20 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t18 = t20->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |ON|.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = |OFF|.
    t25->load( ).
    APPEND t28 TO t25->items.
    t25->save( ).
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t23 i_rest = t25 ).
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = |RESET|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |INTENSIFIED|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t48 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>opt( i_first = t48 ).
    IF t47 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t46 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t52 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t46 = t52->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t55 ).
    IF t41 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t40 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t60 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t40 = t60->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |INVERSE|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t73 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt( i_first = t73 ).
    IF t72 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t71 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t77 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t71 = t77->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t71 i_rest = t80 ).
    IF t66 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t65 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t85 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t65 = t85->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t65 TO t62->items.
    t62->save( ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |HOTSPOT|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t96 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t98 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t96 = t98->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t95 = zcl_lnt_st_combi_module=>opt( i_first = t96 ).
    IF t95 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t94 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t100 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t94 = t100->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t94 i_rest = t103 ).
    IF t89 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t108 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t88 = t108->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t88 TO t62->items.
    t62->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |FRAMES|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t114 i_second = t117 i_rest = t122 ).
    IF t112 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t111 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t127 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t111 = t127->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t111 TO t62->items.
    t62->save( ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |INPUT|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t138 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>opt( i_first = t138 ).
    IF t137 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t136 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t142 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t136 = t142->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t145.
    t131 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t136 i_rest = t145 ).
    IF t131 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t130 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t150 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t130 = t150->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t62->load( ).
    APPEND t130 TO t62->items.
    t62->save( ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    t62->load( ).
    APPEND t153 TO t62->items.
    t62->save( ).
    t34 = zcl_lnt_st_combi_module=>per( i_first = t37 i_second = t40 i_rest = t62 ).
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t162.
    t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t162->sval = |FORMAT|.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t34 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t165 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t170.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t165 i_rest = t170 ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t177 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t177 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d502_cbd42cb54589.
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
