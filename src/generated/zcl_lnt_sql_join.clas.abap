* TS: src/abap/2_statements/expressions/sql_join.ts:7:1 SQLJoin
CLASS zcl_lnt_sql_join DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_join IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = |INNER|.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |LEFT OUTER|.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = |LEFT|.
    t14->load( ).
    APPEND t17 TO t14->items.
    t14->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = |RIGHT OUTER|.
    t14->load( ).
    APPEND t20 TO t14->items.
    t14->save( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |RIGHT|.
    t14->load( ).
    APPEND t23 TO t14->items.
    t14->save( ).
    t7 = zcl_lnt_st_combi_module=>alt_prio( i_first = t9 i_second = t12 i_rest = t14 ).
    IF t7 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
      t30 = t7.
      TRY.
          t6 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t29 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t6 = t29->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t5.
      TRY.
          t4 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t31 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t4 = t31->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = |JOIN|.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t34 i_rest = t37 ).
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t47 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v795| ).
    IF t47 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t47.
      TRY.
          t46 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t51 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t46 = t51->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t55 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^#[A-Z][A-Z0-9_]*$| flags = |i|.
    t54 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t55 ).
    IF t54 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t54.
      TRY.
          t53 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t58 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t53 = t58->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t60 TYPE REF TO zcl_lnt_iver_options.
    t45 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t46 i_first = t53 i_opts = t60 ).
    IF t45 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t62 TYPE REF TO object.
      t62 = t45.
      TRY.
          t44 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t61 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t44 = t61->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>opt_prio( i_first = t44 ).
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t69 TYPE REF TO object.
      t69 = t1.
      TRY.
          t66 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t68 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t66 = t68->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t74 TYPE REF TO object.
      t74 = t42.
      TRY.
          t71 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t73 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t71 = t73->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t75.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = NEW zcl_lnt_sql_join_source( ).
    DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t81 TYPE REF TO object.
    t81 = t79.
    TRY.
        t78 ?= t81.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t78 IS NOT BOUND.
      TRY.
          t80 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS BOUND.
        t78 = t80->source( ).
      ENDIF.
      IF t78 IS NOT BOUND.
        CREATE OBJECT t78.
        t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t78->oval = t79.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t78 TO t75->items.
    t75->save( ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = |ON|.
    t75->load( ).
    APPEND t83 TO t75->items.
    t75->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    t75->load( ).
    APPEND t86 TO t75->items.
    t75->save( ).
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t71 i_rest = t75 ).
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t95 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t95 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t100 TYPE REF TO object.
      t100 = t95.
      TRY.
          t94 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t99 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t94 = t99->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |CROSS JOIN|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t42.
      TRY.
          t107 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t109 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t107 = t109->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = NEW zcl_lnt_sql_join_source( ).
    DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t117 TYPE REF TO object.
    t117 = t115.
    TRY.
        t114 ?= t117.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t114 IS NOT BOUND.
      TRY.
          t116 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS BOUND.
        t114 = t116->source( ).
      ENDIF.
      IF t114 IS NOT BOUND.
        CREATE OBJECT t114.
        t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t114->oval = t115.
      ENDIF.
    ENDIF.
    t111->load( ).
    APPEND t114 TO t111->items.
    t111->save( ).
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t107 i_rest = t111 ).
    IF t102 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t102.
      TRY.
          t101 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t122 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t101 = t122->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zcl_lnt_iver_options.
    DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t131->has = abap_true.
    t131->value = |OpenABAP|.
    t126 = NEW zcl_lnt_iver_options( i_also = t131 ).
    CREATE OBJECT t126->zlnt_view_ownkeys_b0e8086400eb.
    t126->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t126->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t133 ).
    CREATE OBJECT t126->zlnt_json_ownkeys_70e5fd461788.
    t126->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t126->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t135 ).
    t92 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t94 i_first = t101 i_opts = t126 ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t142 TYPE REF TO object.
      t142 = t92.
      TRY.
          t139 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t139 IS NOT BOUND.
        TRY.
            t141 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t139 = t141->source( ).
        ENDIF.
        IF t139 IS NOT BOUND.
          CREATE OBJECT t139.
          t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t139->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t63 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t147 TYPE REF TO object.
      t147 = t63.
      TRY.
          t144 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t146 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t144 = t146->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t139 i_second = t144 i_rest = t149 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf.
  ENDMETHOD.
ENDCLASS.
