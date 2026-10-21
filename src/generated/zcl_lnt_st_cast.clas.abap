* TS: src/abap/2_statements/expressions/cast.ts:8:1 Cast
CLASS zcl_lnt_st_cast DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_cast IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t13 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t10 = t13->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t10 i_rest = t16 ).
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |CAST|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t33 = zcl_lnt_st_combi_module=>tok( i_t = t34 ).
    IF t33 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t32 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t35 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t32 = t35->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t29->load( ).
    APPEND t32 TO t29->items.
    t29->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t39 = zcl_lnt_st_combi_module=>opt_prio( i_first = t40 ).
    IF t39 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t38 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t42 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t38 = t42->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t29->load( ).
    APPEND t38 TO t29->items.
    t29->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t29->load( ).
    APPEND t45 TO t29->items.
    t29->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t48 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t29->load( ).
    APPEND t48 TO t29->items.
    t29->save( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>opt( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t53 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t57 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t53 = t57->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t29->load( ).
    APPEND t53 TO t29->items.
    t29->save( ).
    t21 = zcl_lnt_st_combi_module=>seq( i_first = t24 i_second = t27 i_rest = t29 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t65 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t65 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t65.
      TRY.
          t64 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t69 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t64 = t69->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t71 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t73 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t71 = t73->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zcl_lnt_iver_options.
    DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t82->has = abap_true.
    t82->value = |OpenABAP|.
    t77 = NEW zcl_lnt_iver_options( i_also = t82 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t84 ).
    CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
    t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t86 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t64 i_first = t71 i_opts = t77 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
  ENDMETHOD.
ENDCLASS.
