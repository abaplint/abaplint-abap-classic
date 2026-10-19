* TS: src/abap/types/_typed_identifier.ts.module module
CLASS zcl_lnt_typd_idntfr_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA identifier_meta_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_910ada6e0975 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_0fa96352736b.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_typd_idntfr_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_0fa96352736b.
    IF zlnt_builtin_init_910ada6e0975 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_910ada6e0975 = abap_true.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t2 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |MethodImporting| p1 = |importing| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t6 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |MethodExporting| p1 = |exporting| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t10 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |MethodChanging| p1 = |changing| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t14 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |MethodReturning| p1 = |returning| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t18 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FunctionModuleImporting| p1 = |function_module_importing| ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t22 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FunctionModuleExporting| p1 = |function_module_exporting| ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t26 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FunctionModuleChanging| p1 = |function_module_changing| ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t30 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FunctionModuleTables| p1 = |function_module_tables| ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t34 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |EventParameter| p1 = |event_parameter| ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t38 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FormParameter| p1 = |form_parameter| ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t42 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |FormParameterStructure| p1 = |form_parameter_structure| ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t46 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |ReadOnly| p1 = |read_only| ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t50 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |Tables| p1 = |tables| ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t54 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |Abstract| p1 = |abstract| ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t58 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |PassByValue| p1 = |pass_by_value| ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t62 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |InlineDefinition| p1 = |inline| ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t66 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |BuiltIn| p1 = |built-in| ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t70 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |DDIC| p1 = |ddic| ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t74 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |Static| p1 = |static| ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t78 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |Enum| p1 = |enum| ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t82 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace->set( p0 = |SelectionScreenTab| p1 = |selection_screen_tab| ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1965_29f840f48faa.
  ENDMETHOD.
ENDCLASS.
