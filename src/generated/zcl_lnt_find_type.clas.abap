* TS: src/abap/2_statements/expressions/find_type.ts:5:1 FindType
CLASS zcl_lnt_find_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_find_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = |REGEX|.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t8.
    t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t8->sval = |SUBSTRING|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t16 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v755| ).
    IF t16 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t16.
      TRY.
          t15 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t20 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t15 = t20->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = |PCRE|.
    DATA t26 TYPE REF TO zcl_lnt_iver_options.
    DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t31->has = abap_true.
    t31->value = |OpenABAP|.
    t26 = NEW zcl_lnt_iver_options( i_also = t31 ).
    CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
    t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t33 ).
    CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
    t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t35 ).
    t14 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t15 i_first = t22 i_opts = t26 ).
    IF t14 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t14.
      TRY.
          t13 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t37 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t13 = t37->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    t10->load( ).
    APPEND t13 TO t10->items.
    t10->save( ).
    t3 = zcl_lnt_st_combi_module=>alt( i_first = t5 i_second = t8 i_rest = t10 ).
    IF t3 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
      t44 = t3.
      TRY.
          t2 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t2 IS NOT BOUND.
        TRY.
            t43 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t2 = t43->source( ).
        ENDIF.
        IF t2 IS NOT BOUND.
          CREATE OBJECT t2.
          t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t2->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>opt( i_first = t2 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
  ENDMETHOD.
ENDCLASS.
