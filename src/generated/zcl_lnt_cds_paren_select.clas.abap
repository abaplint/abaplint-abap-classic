* TS: src/cds/expressions/cds_paren_select.ts:5:1 CDSParenSelect
CLASS zcl_lnt_cds_paren_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_paren_select IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |UNION|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = |ALL|.
    t27 = zcl_lnt_st_combi_module=>opt( i_first = t28 ).
    IF t27 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t27.
      TRY.
          t26 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t30 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t26 = t30->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t1.
      TRY.
          t35 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t32->load( ).
    APPEND t35 TO t32->items.
    t32->save( ).
    t21 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t26 i_rest = t32 ).
    IF t21 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t21.
      TRY.
          t20 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t43 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t20 = t43->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |EXCEPT|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t1.
      TRY.
          t52 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t54 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t52 = t54->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t52 i_rest = t57 ).
    IF t47 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t47.
      TRY.
          t46 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t62 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t46 = t62->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |INTERSECT|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t1.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    t68 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t73 i_rest = t78 ).
    IF t68 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t68.
      TRY.
          t67 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t83 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t67 = t83->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    t64->load( ).
    APPEND t67 TO t64->items.
    t64->save( ).
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t20 i_second = t46 i_rest = t64 ).
    IF t18 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
      t90 = t18.
      TRY.
          t17 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t89 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t17 = t89->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t15 = zcl_lnt_st_combi_module=>star( i_first = t17 ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |(|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t15.
      TRY.
          t105 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t107 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t105 = t107->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t110 ).
    IF t100 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t100.
      TRY.
          t99 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t115 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t99 = t115->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t15.
      TRY.
          t124 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t126 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t124 = t126->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t124 i_rest = t129 ).
    IF t119 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t119.
      TRY.
          t118 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t134 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t118 = t134->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t97 = zcl_lnt_st_combi_module=>alt_prio( i_first = t99 i_second = t118 i_rest = t137 ).
    IF t97 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t143 TYPE REF TO object.
      t143 = t97.
      TRY.
          t96 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t142 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t96 = t142->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t144.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = |)|.
    t144->load( ).
    APPEND t147 TO t144->items.
    t144->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t96 i_rest = t144 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1111_638cac4e89ac.
  ENDMETHOD.
ENDCLASS.
