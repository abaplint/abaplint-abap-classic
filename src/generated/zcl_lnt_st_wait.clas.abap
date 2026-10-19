* TS: src/abap/2_statements/statements/wait.ts:8:1 Wait
CLASS zcl_lnt_st_wait DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_wait IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |UP TO|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |SECONDS|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t23 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t23 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t23.
      TRY.
          t22 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t27 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t22 = t27->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = |PUSH CHANNELS|.
    DATA t33 TYPE REF TO zcl_lnt_iver_options.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |OpenABAP|.
    t33 = NEW zcl_lnt_iver_options( i_also = t38 ).
    CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
    t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t40 ).
    CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
    t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t42 ).
    t20 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t22 i_first = t29 i_opts = t33 ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |FOR|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |MESSAGING CHANNELS|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t20.
      TRY.
          t58 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t60 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t58 = t60->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = |ASYNCHRONOUS TASKS|.
    t62->load( ).
    APPEND t65 TO t62->items.
    t62->save( ).
    t53 = zcl_lnt_st_combi_module=>per( i_first = t55 i_second = t58 i_rest = t62 ).
    IF t53 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t53.
      TRY.
          t52 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t71 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t52 = t71->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t52 i_rest = t74 ).
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t46.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>opt( i_first = t84 ).
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
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |UNTIL|.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    IF t97 IS BOUND.
      CREATE OBJECT t96.
      t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t96->cval = t97.
    ENDIF.
    t93->load( ).
    APPEND t96 TO t93->items.
    t93->save( ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t104 TYPE REF TO object.
      t104 = t1.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t100 = zcl_lnt_st_combi_module=>opt( i_first = t101 ).
    IF t100 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t100.
      TRY.
          t99 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t105 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t99 = t105->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t93->load( ).
    APPEND t99 TO t93->items.
    t93->save( ).
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t91 i_rest = t93 ).
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |WAIT|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t79.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t1.
      TRY.
          t125 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    t118 = zcl_lnt_st_combi_module=>alt( i_first = t120 i_second = t125 i_rest = t130 ).
    IF t118 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t118.
      TRY.
          t117 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t135 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t117 = t135->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t114 i_second = t117 i_rest = t138 ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t111 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t111.
      TRY.
          t145 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t147 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t145 = t147->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t145 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d678_fe590cf1b90c.
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
