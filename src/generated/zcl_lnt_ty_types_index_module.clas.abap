* TS: src/abap/types/index.ts.module module
CLASS zcl_lnt_ty_types_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_efe29485d0df TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_14fd5659d5b0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_types_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_14fd5659d5b0.
    IF zlnt_builtin_init_efe29485d0df = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_efe29485d0df = abap_true.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    zcl_lnt_ty_types_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t3 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t4) = |ClassAttribute|.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1051_bc853270bead.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t7 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t8) = |Attributes|.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1052_c7af40439c34.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t11 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t12) = |ClassConstant|.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1053_933feba7ea8b.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t15 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t16) = |ClassDefinition|.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1054_755a4d42bc88.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t19 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t20) = |ClassImplementation|.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1055_4f73490952e8.
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t23 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t24) = |FormDefinition|.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1057_6c3f2e767f11.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t27 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t28) = |FunctionModuleDefinition|.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1059_bee82e1d812f.
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t31 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t32) = |InterfaceDefinition|.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1060_3f544f5e9b16.
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t35 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t36) = |MethodDefinition|.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1062_1146100580cf.
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t39 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t40) = |MethodDefinitions|.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1063_f4e3a2ea6cf6.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t43 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t44) = |MethodImplementation|.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1064_6bad8e66fdb3.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t47 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t48) = |MethodParameters|.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1065_c808f34fb6c6.
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_ty_types_index_module=>zlnt_builtin_init_efe29485d0df = abap_false.
      zcl_lnt_ty_types_index_module=>zlnt_builtin_init_14fd5659d5b0( ).
    ENDIF.
    t51 = zcl_lnt_ty_types_index_module=>ns.
    DATA(t52) = |TypeDefinitions|.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1066_3fb2b9a19997.
    t50 = t51->set( p0 = t52 p1 = t53 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1805_58ab6239075a.
  ENDMETHOD.
ENDCLASS.
