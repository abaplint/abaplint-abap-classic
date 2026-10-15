* TS: src/abap/2_statements/statements/get_permissions.ts:7:1 GetPermissions
CLASS zcl_lnt_st_get_permissions DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_get_permissions IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |GLOBAL AUTHORIZATION|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |INSTANCE|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |FROM|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t21.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA(t26) = t17.
    DATA(t27) = t20.
    DATA(t28) = t23.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |GET PERMISSIONS ONLY|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = t1.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t36.
      TRY.
          t35 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    CREATE OBJECT t40.
    t39 = t40.
    DATA(t41) = t39.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |ENTITY|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t39.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    CLEAR t45.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t47) = t39.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = t15.
    CLEAR t50.
    IF t51 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t51.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    CLEAR t48.
    IF t49 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      CLEAR t54.
      t55 = t49.
      TRY.
          t48 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t54 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t48 = t54->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA(t56) = t39.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = |REQUEST|.
    CLEAR t57.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA(t59) = t39.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t60.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t62) = t39.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |RESULT|.
    CLEAR t63.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62->load( ).
    APPEND t63 TO t62->items.
    t62->save( ).
    DATA(t65) = t39.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t66.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65->load( ).
    APPEND t66 TO t65->items.
    t65->save( ).
    DATA(t68) = t39.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |FAILED|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA(t71) = t39.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t72.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71->load( ).
    APPEND t72 TO t71->items.
    t71->save( ).
    DATA(t74) = t39.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = |REPORTED|.
    CLEAR t75.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = t76.
    t74->load( ).
    APPEND t75 TO t74->items.
    t74->save( ).
    DATA(t77) = t39.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t78.
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA(t81) = t31.
    DATA(t82) = t34.
    DATA(t83) = t39.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t30 = t80.
    t29 = t30.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t86.
    DATA t87 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t88.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t88 = zcl_lnt_version_module=>release_b8cd.
    DATA(t89) = |v754|.
    t87 = t88->get( p0 = t89 ).
    t86 = t87.
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      CLEAR t90.
      t91 = t86.
      TRY.
          t85 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t90 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t85 = t90->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = t29.
    CLEAR t92.
    IF t93 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t94.
      DATA t95 TYPE REF TO object.
      CLEAR t95.
      CLEAR t94.
      t95 = t93.
      TRY.
          t92 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t94 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t92 = t94->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t96 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t96.
    DATA(t97) = abap_true.
    IF t97 = abap_true.
      DATA t98 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t98.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA(t102) = |OpenABAP|.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t102.
        t100 = t103.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t100 = t104.
      ENDIF.
      t99 = t100.
      t98 = NEW zcl_lnt_iver_options( i_also = t99 ).
      CREATE OBJECT t98->zlnt_view_ownkeys_b0e8086400eb.
      t98->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t98->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t98->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t105 ).
      ENDIF.
      CREATE OBJECT t98->zlnt_json_ownkeys_70e5fd461788.
      t98->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t106) = |also|.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t98->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t98->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
      ENDIF.
      t96 = t98.
    ELSE.
      DATA t108 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t108.
      t96 = t108.
    ENDIF.
    t84 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t85 i_first = t92 i_opts = t96 ).
    result = t84.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d518_af85f98e0d0f.
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
