* TS: src/abap/2_statements/statements/call_transaction.ts:7:1 CallTransaction
CLASS zcl_lnt_st_call_transaction DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_call_transaction IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |OPTIONS FROM|.
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
    t18->sval = |MESSAGES INTO|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t32 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t32.
      TRY.
          t31 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t36 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t31 = t36->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |WITH|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |WITHOUT|.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t42 = zcl_lnt_st_combi_module=>alt_prio( i_first = t44 i_second = t47 i_rest = t50 ).
    IF t42 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t41 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t55 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t41 = t55->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |AUTHORITY-CHECK|.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t58 i_rest = t61 ).
    IF t39 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t38 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t66 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t38 = t66->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t70 TYPE REF TO zcl_lnt_iver_options.
    DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t75->has = abap_true.
    t75->value = |OpenABAP|.
    t70 = NEW zcl_lnt_iver_options( i_also = t75 ).
    CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
    t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t77 ).
    CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
    t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t79 ).
    t29 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t31 i_first = t38 i_opts = t70 ).
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |UPDATE|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t93 ).
    IF t85 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t84 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t98 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t84 = t98->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |AND SKIP FIRST SCREEN|.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t106 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t108 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t106 = t108->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t103->load( ).
    APPEND t106 TO t103->items.
    t103->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t111 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t103->load( ).
    APPEND t111 TO t103->items.
    t103->save( ).
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t119.
    t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t119->sval = |MODE|.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t122->cval = t123.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t119 i_second = t122 i_rest = t125 ).
    IF t117 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t116 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t130 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t116 = t130->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    t103->load( ).
    APPEND t116 TO t103->items.
    t103->save( ).
    t81 = zcl_lnt_st_combi_module=>per( i_first = t84 i_second = t101 i_rest = t103 ).
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = |CALL TRANSACTION|.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t142->cval = t143.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t144.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t151 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t149 = t151->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>opt_prio( i_first = t149 ).
    IF t148 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t153 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t147 = t153->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    t144->load( ).
    APPEND t147 TO t144->items.
    t144->save( ).
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t161.
    t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t161->sval = |USING|.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t164->cval = t165.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t164 i_rest = t167 ).
    IF t159 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t158 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t172 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t158 = t172->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    t157 = zcl_lnt_st_combi_module=>opt_prio( i_first = t158 ).
    IF t157 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t156 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t174 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t156 = t174->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t144->load( ).
    APPEND t156 TO t144->items.
    t144->save( ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t179 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t178 = zcl_lnt_st_combi_module=>opt( i_first = t179 ).
    IF t178 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t177 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t183 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t177 = t183->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t144->load( ).
    APPEND t177 TO t144->items.
    t144->save( ).
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t142 i_rest = t144 ).
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136 IS BOUND.
      DATA t193 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t191 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t191 IS NOT BOUND.
        TRY.
            t193 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t193 IS BOUND.
          t191 = t193->source( ).
        ENDIF.
        IF t191 IS NOT BOUND.
          CREATE OBJECT t191.
          t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t191->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t191 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d398_61420d891824.
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
