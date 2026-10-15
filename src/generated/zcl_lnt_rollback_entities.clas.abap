* TS: src/abap/2_statements/statements/rollback_entities.ts:6:1 RollbackEntities
CLASS zcl_lnt_rollback_entities DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_rollback_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA(t1) = VALUE string( ).
    DATA(t2) = |ROLLBACK ENTITIES|.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA(t4) = |KeyUser|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t10.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t10 = zcl_lnt_version_module=>release_b8cd.
    DATA(t11) = |v754|.
    t9 = t10->get( p0 = t11 ).
    t8 = t9.
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t8.
      TRY.
          t7 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t12 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t7 = t12->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = t1.
    CLEAR t14.
    CREATE OBJECT t14.
    t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t14->sval = t15.
    DATA t16 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = |OpenABAP|.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t22.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      t19 = t20.
      t18 = NEW zcl_lnt_iver_options( i_also = t19 ).
      CREATE OBJECT t18->zlnt_view_ownkeys_b0e8086400eb.
      t18->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      IF t18->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t18->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t25 ).
      ENDIF.
      CREATE OBJECT t18->zlnt_json_ownkeys_70e5fd461788.
      t18->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t26) = |also|.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      IF t18->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t18->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
      ENDIF.
      t16 = t18.
    ELSE.
      DATA t28 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t28.
      t16 = t28.
    ENDIF.
    t6 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t7 i_first = t14 i_opts = t16 ).
    CLEAR t5.
    IF t6 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t6.
      TRY.
          t5 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t29 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t5 = t29->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t4 i_first = t5 ).
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d607_bbac092fc6e3.
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
