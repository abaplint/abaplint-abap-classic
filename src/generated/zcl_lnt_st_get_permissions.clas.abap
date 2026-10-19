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
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |GLOBAL AUTHORIZATION|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |INSTANCE|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |FROM|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |GET PERMISSIONS ONLY|.
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
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |ENTITY|.
    t39->load( ).
    APPEND t42 TO t39->items.
    t39->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t39->load( ).
    APPEND t45 TO t39->items.
    t39->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t15.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    IF t49 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
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
    t39->load( ).
    APPEND t48 TO t39->items.
    t39->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = |REQUEST|.
    t39->load( ).
    APPEND t57 TO t39->items.
    t39->save( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t39->load( ).
    APPEND t60 TO t39->items.
    t39->save( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = |RESULT|.
    t39->load( ).
    APPEND t63 TO t39->items.
    t39->save( ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t39->load( ).
    APPEND t66 TO t39->items.
    t39->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = |FAILED|.
    t39->load( ).
    APPEND t69 TO t39->items.
    t39->save( ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t39->load( ).
    APPEND t72 TO t39->items.
    t39->save( ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = |REPORTED|.
    t39->load( ).
    APPEND t75 TO t39->items.
    t39->save( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t78->cval = t79.
    ENDIF.
    t39->load( ).
    APPEND t78 TO t39->items.
    t39->save( ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t39 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t86 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    IF t86 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t91 TYPE REF TO object.
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
    IF t29 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t95 TYPE REF TO object.
      t95 = t29.
      TRY.
          t92 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t94 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t92 = t94->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_iver_options.
    DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t103->has = abap_true.
    t103->value = |OpenABAP|.
    t98 = NEW zcl_lnt_iver_options( i_also = t103 ).
    CREATE OBJECT t98->zlnt_view_ownkeys_b0e8086400eb.
    t98->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t98->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t105 ).
    CREATE OBJECT t98->zlnt_json_ownkeys_70e5fd461788.
    t98->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t98->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t107 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t85 i_first = t92 i_opts = t98 ).

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
