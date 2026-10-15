* TS: src/rules/method_length.ts.module module
CLASS zcl_lnt_method_length_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA issue_type_namespace TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLASS-DATA zlnt_builtin_init_fbb07e2e9e31 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_70e5a919165c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_70e5a919165c.
    IF zlnt_builtin_init_fbb07e2e9e31 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_fbb07e2e9e31 = abap_true.
    IF zcl_lnt_method_length_module=>zlnt_builtin_init_fbb07e2e9e31 = abap_false.
      zcl_lnt_method_length_module=>zlnt_builtin_init_70e5a919165c( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__abd6fd794ffb( ).
    zcl_lnt_method_length_module=>issue_type_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t3.
    IF zcl_lnt_method_length_module=>zlnt_builtin_init_fbb07e2e9e31 = abap_false.
      zcl_lnt_method_length_module=>zlnt_builtin_init_70e5a919165c( ).
    ENDIF.
    t3 = zcl_lnt_method_length_module=>issue_type_namespace.
    DATA(t4) = |0|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA(t6) = |EmptyMethod|.
    CLEAR t5.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t8.
    IF zcl_lnt_method_length_module=>zlnt_builtin_init_fbb07e2e9e31 = abap_false.
      zcl_lnt_method_length_module=>zlnt_builtin_init_70e5a919165c( ).
    ENDIF.
    t8 = zcl_lnt_method_length_module=>issue_type_namespace.
    DATA(t9) = |1|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = |MaxStatements|.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t7 = t8->set( p0 = t9 p1 = t10 ).
    DATA t12 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t13.
    IF zcl_lnt_method_length_module=>zlnt_builtin_init_fbb07e2e9e31 = abap_false.
      zcl_lnt_method_length_module=>zlnt_builtin_init_70e5a919165c( ).
    ENDIF.
    t13 = zcl_lnt_method_length_module=>issue_type_namespace.
    DATA(t14) = |EmptyMethod|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = 0.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t15->nval = t16.
    t12 = t13->set( p0 = t14 p1 = t15 ).
    DATA t17 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLEAR t18.
    IF zcl_lnt_method_length_module=>zlnt_builtin_init_fbb07e2e9e31 = abap_false.
      zcl_lnt_method_length_module=>zlnt_builtin_init_70e5a919165c( ).
    ENDIF.
    t18 = zcl_lnt_method_length_module=>issue_type_namespace.
    DATA(t19) = |MaxStatements|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = 1.
    CLEAR t20.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t20->nval = t21.
    t17 = t18->set( p0 = t19 p1 = t20 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1979_4f5c7ca3f69f.
  ENDMETHOD.
ENDCLASS.
