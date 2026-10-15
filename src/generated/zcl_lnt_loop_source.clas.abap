* TS: src/abap/2_statements/expressions/loop_source.ts:6:1 LoopSource
CLASS zcl_lnt_loop_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_loop_source IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    CLEAR t3.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t11.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v740sp02|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    CLEAR t8.
    IF t9 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      CLEAR t13.
      t14 = t9.
      TRY.
          t8 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t13 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t8 = t13->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t15.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = |OpenABAP|.
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = t23.
        t21 = t24.
      ELSE.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      t20 = t21.
      t19 = NEW zcl_lnt_iver_options( i_also = t20 ).
      CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
      t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t26 ).
      ENDIF.
      CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
      t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t27) = |also|.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
      ENDIF.
      t17 = t19.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t29.
      t17 = t29.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t8 i_first = t15 i_opts = t17 ).
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t7.
      TRY.
          t6 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t30 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t6 = t30->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = t6.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t2.
    DATA(t36) = t5.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>alt( i_first = t35 i_second = t36 i_rest = t37 ).
    t1 = t34.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43.
  ENDMETHOD.
ENDCLASS.
