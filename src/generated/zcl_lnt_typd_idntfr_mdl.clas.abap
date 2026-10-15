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
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t3 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t4) = |MethodImporting|.
    DATA(t5) = |importing|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t7 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t8) = |MethodExporting|.
    DATA(t9) = |exporting|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t11 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t12) = |MethodChanging|.
    DATA(t13) = |changing|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t15 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t16) = |MethodReturning|.
    DATA(t17) = |returning|.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t19 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t20) = |FunctionModuleImporting|.
    DATA(t21) = |function_module_importing|.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t23 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t24) = |FunctionModuleExporting|.
    DATA(t25) = |function_module_exporting|.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t27 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t28) = |FunctionModuleChanging|.
    DATA(t29) = |function_module_changing|.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t31 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t32) = |FunctionModuleTables|.
    DATA(t33) = |function_module_tables|.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t35 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t36) = |EventParameter|.
    DATA(t37) = |event_parameter|.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t39 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t40) = |FormParameter|.
    DATA(t41) = |form_parameter|.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t43 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t44) = |FormParameterStructure|.
    DATA(t45) = |form_parameter_structure|.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t47 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t48) = |ReadOnly|.
    DATA(t49) = |read_only|.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t51 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t52) = |Tables|.
    DATA(t53) = |tables|.
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t55 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t56) = |Abstract|.
    DATA(t57) = |abstract|.
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t59.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t59 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t60) = |PassByValue|.
    DATA(t61) = |pass_by_value|.
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t63.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t63 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t64) = |InlineDefinition|.
    DATA(t65) = |inline|.
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t67.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t67 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t68) = |BuiltIn|.
    DATA(t69) = |built-in|.
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t71.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t71 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t72) = |DDIC|.
    DATA(t73) = |ddic|.
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t75.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t75 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t76) = |Static|.
    DATA(t77) = |static|.
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t79.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t79 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t80) = |Enum|.
    DATA(t81) = |enum|.
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t83.
    IF zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_910ada6e0975 = abap_false.
      zcl_lnt_typd_idntfr_mdl=>zlnt_builtin_init_0fa96352736b( ).
    ENDIF.
    t83 = zcl_lnt_typd_idntfr_mdl=>identifier_meta_namespace.
    DATA(t84) = |SelectionScreenTab|.
    DATA(t85) = |selection_screen_tab|.
    t82 = t83->set( p0 = t84 p1 = t85 ).
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
