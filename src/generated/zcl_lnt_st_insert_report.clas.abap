* TS: src/abap/2_statements/statements/insert_report.ts:7:1 InsertReport
CLASS zcl_lnt_st_insert_report DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_insert_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |STATE|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t5 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t13 ).
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
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |EXTENSION TYPE|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t24 i_second = t27 i_rest = t30 ).
    IF t22 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t22.
      TRY.
          t21 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t35 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t21 = t35->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |DIRECTORY ENTRY|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t49 ).
    IF t41 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t41.
      TRY.
          t40 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t54 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t40 = t54->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t40 TO t37->items.
    t37->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |UNICODE ENABLING|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t58 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    IF t58 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t58.
      TRY.
          t57 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t71 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t57 = t71->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t57 TO t37->items.
    t37->save( ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = |PROGRAM TYPE|.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t80 i_rest = t83 ).
    IF t75 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t75.
      TRY.
          t74 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t88 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t74 = t88->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t74 TO t37->items.
    t37->save( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t94 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t94 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t94.
      TRY.
          t93 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t98 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t93 = t98->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = |VERSION|.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t106 i_rest = t109 ).
    IF t101 IS BOUND.
      DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t115 TYPE REF TO object.
      t115 = t101.
      TRY.
          t100 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t114 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t114 IS BOUND.
          t100 = t114->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t116 TYPE REF TO zcl_lnt_iver_options.
    t92 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t93 i_first = t100 i_opts = t116 ).
    IF t92 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t92.
      TRY.
          t91 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t117 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t91 = t117->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t91 TO t37->items.
    t37->save( ).
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |FIXED-POINT ARITHMETIC|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t126 i_rest = t129 ).
    IF t121 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t121.
      TRY.
          t120 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t134 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t120 = t134->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t37->load( ).
    APPEND t120 TO t37->items.
    t37->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = |KEEPING DIRECTORY ENTRY|.
    t37->load( ).
    APPEND t137 TO t37->items.
    t37->save( ).
    t1 = zcl_lnt_st_combi_module=>per( i_first = t4 i_second = t21 i_rest = t37 ).
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = |INSERT REPORT|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = |FROM|.
    t151->load( ).
    APPEND t154 TO t151->items.
    t151->save( ).
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t151->load( ).
    APPEND t157 TO t151->items.
    t151->save( ).
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t1.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t161 = zcl_lnt_st_combi_module=>opt( i_first = t162 ).
    IF t161 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t167 TYPE REF TO object.
      t167 = t161.
      TRY.
          t160 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t166 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t160 = t166->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t151->load( ).
    APPEND t160 TO t151->items.
    t151->save( ).
    t143 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t149 i_rest = t151 ).
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t177 TYPE REF TO object.
      t177 = t143.
      TRY.
          t174 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t176 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t174 = t176->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t174 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d537_ef985c59f92c.
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
