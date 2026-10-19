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
    zcl_lnt_class_module=>class_category_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t2 = zcl_lnt_class_module=>class_category_namespace->set( p0 = |Test| p1 = |05| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t6 = zcl_lnt_class_module=>class_category_namespace->set( p0 = |Persistent| p1 = |10| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t10 = zcl_lnt_class_module=>class_category_namespace->set( p0 = |PersistentFactory| p1 = |11| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t14 = zcl_lnt_class_module=>class_category_namespace->set( p0 = |Exception| p1 = |40| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_class_module=>zlnt_builtin_init_13a963be492d = abap_false.
      zcl_lnt_class_module=>zlnt_builtin_init_5c9d4964deda( ).
    ENDIF.
    t18 = zcl_lnt_class_module=>class_category_namespace->set( p0 = |SharedObject| p1 = |45| ).
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
