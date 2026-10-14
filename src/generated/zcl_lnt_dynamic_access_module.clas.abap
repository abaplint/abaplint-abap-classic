* TS: src/abap/2_statements/expressions/_dynamic_access.ts.module module
CLASS zcl_lnt_dynamic_access_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA dyn_ident TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA dyn_close TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA dyn_inside TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS dyn_comp IMPORTING i_inside TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS dyn_attr RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_58df737b37ab TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f10ed84afca7.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynamic_access_module IMPLEMENTATION.
  METHOD dyn_comp.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_inside ).
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v757|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t4.
      t3->oval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t13.
      t12->oval = t15.
    ENDIF.
    t11 = t12.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t18 = zcl_lnt_dynamic_access_module=>dyn_ident.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17->oval = t19.
    ENDIF.
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t20 = t21.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t24 = zcl_lnt_dynamic_access_module=>dyn_inside.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t24.
      t23->oval = t25.
    ENDIF.
    APPEND t23 TO t22->items.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    LOOP AT t26->items INTO t28.
      t27 ?= t28.
      DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA(t31) = CAST zif_lnt_statement_runnable( t27 ).
      IF t31 IS BOUND.
        CREATE OBJECT t30.
        t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t32 TYPE REF TO object.
        t32 = t31.
        t30->oval = t32.
      ENDIF.
      APPEND t30 TO t29->items.
    ENDLOOP.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t35 = zcl_lnt_dynamic_access_module=>dyn_close.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t35.
      t34->oval = t36.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
    t37 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t39 i_rest = t40 ).
    t10 = t37.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t10.
      t9->oval = t41.
    ENDIF.
    DATA t42 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t42.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t42 ).
    result = t2.

  ENDMETHOD.
  METHOD dyn_attr.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t5.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t5 = zcl_lnt_version_module=>release_b8cd.
    DATA(t6) = |v757|.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    IF t3 IS BOUND.
      CREATE OBJECT t2.
      t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t3.
      t2->oval = t7.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d24_f4a493f20ed30d ).
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t14 TYPE REF TO object.
      t14 = t12.
      t11->oval = t14.
    ENDIF.
    t10 = t11.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t17 = zcl_lnt_dynamic_access_module=>dyn_ident.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t17.
      t16->oval = t18.
    ENDIF.
    t15 = t16.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t23 = zcl_lnt_dynamic_access_module=>dyn_inside.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t23.
      t22->oval = t24.
    ENDIF.
    APPEND t22 TO t21->items.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t27 = zcl_lnt_dynamic_access_module=>dyn_close.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t27.
      t26->oval = t28.
    ENDIF.
    APPEND t26 TO t25->items.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t9 = t29.
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t33 TYPE REF TO object.
      t33 = t9.
      t8->oval = t33.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t34.
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t8 i_opts = t34 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_init_f10ed84afca7.
    IF zlnt_builtin_init_58df737b37ab = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_58df737b37ab = abap_true.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t1 = zcl_lnt_st_combi_module=>tok( i_t = t2 ).
    zcl_lnt_dynamic_access_module=>dyn_ident = t1.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    IF t6 IS BOUND.
      CREATE OBJECT t5.
      t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t6.
      t5->oval = t8.
    ENDIF.
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t11 = zcl_lnt_st_combi_module=>tok( i_t = t12 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t13 TYPE REF TO object.
      t13 = t11.
      t10->oval = t13.
    ENDIF.
    t9 = t10.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t16 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t18 i_rest = t19 ).
    t3 = t16.
    zcl_lnt_dynamic_access_module=>dyn_close = t3.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = NEW zcl_lnt_st_field_chain(  ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t23.
      t22->oval = t24.
    ENDIF.
    t21 = t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t30 = zcl_lnt_st_combi_module=>alt_prio( i_first = t31 i_second = t32 i_rest = t33 ).
    t20 = t30.
    zcl_lnt_dynamic_access_module=>dyn_inside = t20.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1830_84c068dcd9f2.
  ENDMETHOD.
ENDCLASS.
