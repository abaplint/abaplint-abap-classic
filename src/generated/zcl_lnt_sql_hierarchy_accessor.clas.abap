* TS: src/abap/2_statements/expressions/sql_hierarchy_accessor.ts:7:1 SQLHierarchyAccessor
CLASS zcl_lnt_sql_hierarchy_accessor DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_hierarchy_accessor IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |TO|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
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
    t18->sval = |FROM|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t28 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t30 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t28 = t30->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t27 = zcl_lnt_st_combi_module=>opt_prio( i_first = t28 ).
    IF t27 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t26 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t32 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t26 = t32->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t23 ).
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = |DISTANCE|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t47 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t1.
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
    t45 = zcl_lnt_st_combi_module=>alt_prio( i_first = t47 i_second = t52 i_rest = t57 ).
    IF t45 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t44 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t62 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t44 = t62->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t44 i_rest = t65 ).
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = |SOURCE|.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |START|.
    t78->load( ).
    APPEND t81 TO t78->items.
    t78->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |WHERE|.
    t78->load( ).
    APPEND t84 TO t78->items.
    t78->save( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t78->load( ).
    APPEND t87 TO t78->items.
    t78->save( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t92 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t94 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t92 = t94->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>opt_prio( i_first = t92 ).
    IF t91 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t90 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t96 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t90 = t96->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t78->load( ).
    APPEND t90 TO t78->items.
    t78->save( ).
    t70 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t76 i_rest = t78 ).
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |HIERARCHY_DESCENDANTS|.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t108.
    t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t108->sval = |HIERARCHY_ANCESTORS|.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = |HIERARCHY_SIBLINGS|.
    t110->load( ).
    APPEND t113 TO t110->items.
    t110->save( ).
    t102 = zcl_lnt_st_combi_module=>alt_prio( i_first = t105 i_second = t108 i_rest = t110 ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t121 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t121 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t121.
      TRY.
          t120 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t125 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t120 = t125->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t102 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t130 ?= t102.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t132 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t130 = t132->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t136 = zcl_lnt_st_combi_module=>tok( i_t = t137 ).
    IF t136 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t135 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t138 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t135 = t138->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t70 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t143 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t143 TO t140->items.
    t140->save( ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t149 = zcl_lnt_st_combi_module=>tok( i_t = t150 ).
    IF t149 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t148 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t151 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t148 = t151->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t148 TO t140->items.
    t140->save( ).
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t130 i_second = t135 i_rest = t140 ).
    IF t128 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t127 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t157 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t127 = t157->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t159 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t120 i_first = t127 i_opts = t159 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d329_7e278fad49db.
  ENDMETHOD.
ENDCLASS.
