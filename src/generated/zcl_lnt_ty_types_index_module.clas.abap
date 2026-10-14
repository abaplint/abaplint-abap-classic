* TS: src/abap/types/index.ts.module module
CLASS zcl_lnt_ty_types_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_efe29485d0df TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_14fd5659d5b0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5(  ).
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
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1029_a243aa0aec15 ).
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
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1030_6600c335ee28 ).
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
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1031_e503345f4c84 ).
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
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1032_f78e39381f78 ).
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
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1033_4175388fb722 ).
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
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1035_3d4f282d9a47 ).
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
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1037_ead0a3c2ba70 ).
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
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1038_cab5fff85ba2 ).
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
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1040_e224823bc9c2 ).
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
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1041_e7fb389676c4 ).
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
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1042_57ec2010231a ).
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
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1043_18fb8ae33dc3 ).
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
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1044_85fc144000cd ).
    t50 = t51->set( p0 = t52 p1 = t53 ).
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1900_448c7d370ea4.
  ENDMETHOD.
ENDCLASS.
