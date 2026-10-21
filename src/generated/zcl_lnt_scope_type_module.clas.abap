* TS: src/abap/5_syntax/_scope_type.ts.module module
CLASS zcl_lnt_scope_type_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA scope_type_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_dfd373a603fc TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f8ae50df5ce6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_scope_type_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_f8ae50df5ce6.
    IF zlnt_builtin_init_dfd373a603fc = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_dfd373a603fc = abap_true.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    zcl_lnt_scope_type_module=>scope_type_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t2 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |BuiltIn| p1 = |_builtin| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t6 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Dummy| p1 = |_dummy| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t10 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |SelectionEvent| p1 = |selection_event| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t14 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Global| p1 = |_global| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t18 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Program| p1 = |_program| ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t22 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |TypePool| p1 = |_type_pool| ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t26 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |FunctionGroup| p1 = |_function_group| ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t30 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |ClassDefinition| p1 = |class_definition| ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t34 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Interface| p1 = |interface| ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t38 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |ClassImplementation| p1 = |class_implementation| ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t42 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Form| p1 = |form| ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t46 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |FunctionModule| p1 = |function| ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t50 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Method| p1 = |method| ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t54 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |MethodInstance| p1 = |method_instance| ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t58 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |MethodDefinition| p1 = |method_definition| ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t62 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |For| p1 = |for| ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t66 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |Let| p1 = |let| ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_scope_type_module=>zlnt_builtin_init_dfd373a603fc = abap_false.
      zcl_lnt_scope_type_module=>zlnt_builtin_init_f8ae50df5ce6( ).
    ENDIF.
    t70 = zcl_lnt_scope_type_module=>scope_type_namespace->set( p0 = |OpenSQL| p1 = |open_sql| ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1964_fcee8548109b.
  ENDMETHOD.
ENDCLASS.
