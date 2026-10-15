* TS: src/objects/class.ts.module module
CLASS zcl_lnt_class_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA class_category_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_13a963be492d TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_5c9d4964deda.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_5c9d4964deda.
    IF zlnt_builtin_init_13a963be492d = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_13a963be492d = abap_true.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_class_module=>class_category_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t3 = zcl_lnt_class_module=>class_category_namespace.
    DATA(t4) = |Test|.
    DATA(t5) = |05|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t7 = zcl_lnt_class_module=>class_category_namespace.
    DATA(t8) = |Persistent|.
    DATA(t9) = |10|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t11 = zcl_lnt_class_module=>class_category_namespace.
    DATA(t12) = |PersistentFactory|.
    DATA(t13) = |11|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t15 = zcl_lnt_class_module=>class_category_namespace.
    DATA(t16) = |Exception|.
    DATA(t17) = |40|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t19 = zcl_lnt_class_module=>class_category_namespace.
    DATA(t20) = |SharedObject|.
    DATA(t21) = |45|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1972_174af2c869b4.
  ENDMETHOD.
ENDCLASS.
