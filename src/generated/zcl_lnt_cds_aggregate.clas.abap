* TS: src/cds/expressions/cds_aggregate.ts:5:1 CDSAggregate
CLASS zcl_lnt_cds_aggregate DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_aggregate IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |AS|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |AS|.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t24 i_rest = t26 ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1078_337e43e74a5f.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1079_de691b322bdd.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    t43->load( ).
    APPEND t46 TO t43->items.
    t43->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1080_113106bb53d8.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t43->load( ).
    APPEND t49 TO t43->items.
    t43->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t18.
      TRY.
          t52 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t54 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t52 = t54->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t52 TO t43->items.
    t43->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1076_c34e8bcbaedc.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t43->load( ).
    APPEND t57 TO t43->items.
    t43->save( ).
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
    t43->load( ).
    APPEND t60 TO t43->items.
    t43->save( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t43->load( ).
    APPEND t65 TO t43->items.
    t43->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t43->load( ).
    APPEND t68 TO t43->items.
    t43->save( ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |*|.
    t43->load( ).
    APPEND t71 TO t43->items.
    t43->save( ).
    t35 = zcl_lnt_st_combi_module=>alt_prio( i_first = t38 i_second = t41 i_rest = t43 ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = |MAX|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = |MIN|.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |SUM|.
    t87->load( ).
    APPEND t90 TO t87->items.
    t87->save( ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |AVG|.
    t87->load( ).
    APPEND t93 TO t87->items.
    t87->save( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |COUNT|.
    t87->load( ).
    APPEND t96 TO t87->items.
    t87->save( ).
    t80 = zcl_lnt_st_combi_module=>alt_prio( i_first = t82 i_second = t85 i_rest = t87 ).
    IF t80 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t103 TYPE REF TO object.
      t103 = t80.
      TRY.
          t79 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t102 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t79 = t102->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |(|.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |DISTINCT|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |ALL|.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t113 = zcl_lnt_st_combi_module=>alt_prio( i_first = t115 i_second = t118 i_rest = t121 ).
    IF t113 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t113.
      TRY.
          t112 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t126 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t112 = t126->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t111 = zcl_lnt_st_combi_module=>opt_prio( i_first = t112 ).
    IF t111 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t111.
      TRY.
          t110 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t128 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t110 = t128->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t110 TO t107->items.
    t107->save( ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t35.
      TRY.
          t131 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t133 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t131 = t133->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t131 TO t107->items.
    t107->save( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = |AS|.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t144->cval = t145.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t144 i_rest = t147 ).
    IF t139 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t153 TYPE REF TO object.
      t153 = t139.
      TRY.
          t138 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t152 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t138 = t152->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>opt( i_first = t138 ).
    IF t137 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t155 TYPE REF TO object.
      t155 = t137.
      TRY.
          t136 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t154 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t136 = t154->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t136 TO t107->items.
    t107->save( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |)|.
    t107->load( ).
    APPEND t157 TO t107->items.
    t107->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t105 i_rest = t107 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
  ENDMETHOD.
ENDCLASS.
