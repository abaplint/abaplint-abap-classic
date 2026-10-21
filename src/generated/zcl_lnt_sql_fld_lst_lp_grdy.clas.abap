* TS: src/abap/2_statements/expressions/sql_field_list_loop_greedy.ts:8:1 SQLFieldListLoopGreedy
CLASS zcl_lnt_sql_fld_lst_lp_grdy DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_fld_lst_lp_grdy IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t6 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t6.
      TRY.
          t5 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t10 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t5 = t10->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |,|.
    DATA t16 TYPE REF TO zcl_lnt_iver_options.
    DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t21->has = abap_true.
    t21->value = |OpenABAP|.
    t16 = NEW zcl_lnt_iver_options( i_also = t21 ).
    CREATE OBJECT t16->zlnt_view_ownkeys_b0e8086400eb.
    t16->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t23 ).
    CREATE OBJECT t16->zlnt_json_ownkeys_70e5fd461788.
    t16->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t25 ).
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t12 i_opts = t16 ).
    IF t4 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t3 ?= t4.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t27 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t3 = t27->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |AS|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t46 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t46 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t46.
      TRY.
          t45 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t50 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t45 = t50->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t56 = zcl_lnt_st_combi_module=>tok( i_t = t57 ).
    IF t56 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t55 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t58 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t55 = t58->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t64.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t61 i_rest = t64 ).
    IF t53 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t52 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t69 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t52 = t69->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_iver_options.
    DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t78->has = abap_true.
    t78->value = |OpenABAP|.
    t73 = NEW zcl_lnt_iver_options( i_also = t78 ).
    CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
    t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t80 ).
    CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
    t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t82 ).
    t43 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t45 i_first = t52 i_opts = t73 ).
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t93 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t95 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t93 = t95->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t97->load( ).
    APPEND t100 TO t97->items.
    t97->save( ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t103->cval = t104.
    ENDIF.
    t97->load( ).
    APPEND t103 TO t97->items.
    t97->save( ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t97->load( ).
    APPEND t106 TO t97->items.
    t97->save( ).
    t88 = zcl_lnt_st_combi_module=>alt_prio( i_first = t90 i_second = t93 i_rest = t97 ).
    IF t88 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t87 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t112 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t87 = t112->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t117 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t116 = zcl_lnt_st_combi_module=>opt_prio( i_first = t117 ).
    IF t116 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t115 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t121 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t115 = t121->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t126 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t128 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t126 = t128->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t123->load( ).
    APPEND t126 TO t123->items.
    t123->save( ).
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t115 i_rest = t123 ).
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t84 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t136 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t138 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t136 = t138->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>plus_prio( i_first = t136 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = |*|.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t145->cval = t146.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t147.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t134 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t150 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t152 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t150 = t152->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t147->load( ).
    APPEND t150 TO t147->items.
    t147->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t142 i_second = t145 i_rest = t147 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d275_b37eb4f86fc3.
  ENDMETHOD.
ENDCLASS.
