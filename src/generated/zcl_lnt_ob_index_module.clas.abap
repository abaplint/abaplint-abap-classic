* TS: src/objects/index.ts.module module
CLASS zcl_lnt_ob_index_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA ns TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLASS-DATA zlnt_builtin_init_7d9865c72425 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_38a35685e8ab.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_index_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_38a35685e8ab.
    IF zlnt_builtin_init_7d9865c72425 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_7d9865c72425 = abap_true.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a5ffc3d163a5(  ).
    zcl_lnt_ob_index_module=>ns = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t3.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t3 = zcl_lnt_ob_index_module=>ns.
    DATA(t4) = CONV string( |ABAPQueryFunctionalArea| ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1188_0a7e79babb22 ).
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t7.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t7 = zcl_lnt_ob_index_module=>ns.
    DATA(t8) = CONV string( |ABAPQueryQuery| ).
    DATA(t9) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1189_26017ebaa299 ).
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t11.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t11 = zcl_lnt_ob_index_module=>ns.
    DATA(t12) = CONV string( |ActivationVariant| ).
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1190_7f30face2069 ).
    t10 = t11->set( p0 = t12 p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t15.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t15 = zcl_lnt_ob_index_module=>ns.
    DATA(t16) = CONV string( |APIReleaseState| ).
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1191_18dadd9855df ).
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t19.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t19 = zcl_lnt_ob_index_module=>ns.
    DATA(t20) = CONV string( |ApplicationDescriptorsFiori| ).
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1192_e58d48da8281 ).
    t18 = t19->set( p0 = t20 p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t23.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t23 = zcl_lnt_ob_index_module=>ns.
    DATA(t24) = CONV string( |ApplicationJobCatalogEntry| ).
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1193_60af4f03ef94 ).
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t27.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t27 = zcl_lnt_ob_index_module=>ns.
    DATA(t28) = CONV string( |ApplicationJobTemplate| ).
    DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1194_2c77a443a827 ).
    t26 = t27->set( p0 = t28 p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t31.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t31 = zcl_lnt_ob_index_module=>ns.
    DATA(t32) = CONV string( |ApplicationLogObject| ).
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1195_e718a37f723f ).
    t30 = t31->set( p0 = t32 p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t35.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t35 = zcl_lnt_ob_index_module=>ns.
    DATA(t36) = CONV string( |AssignmentServiceToAuthorizationGroup| ).
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1196_0570ed22775b ).
    t34 = t35->set( p0 = t36 p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t39.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t39 = zcl_lnt_ob_index_module=>ns.
    DATA(t40) = CONV string( |ATCCheckCategory| ).
    DATA(t41) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1197_a1bc52c674d3 ).
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t43.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t43 = zcl_lnt_ob_index_module=>ns.
    DATA(t44) = CONV string( |ATCCheckObject| ).
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1198_7246c4b8b735 ).
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t47.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t47 = zcl_lnt_ob_index_module=>ns.
    DATA(t48) = CONV string( |ATCCheckVariant| ).
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1199_6dc7bb3a326d ).
    t46 = t47->set( p0 = t48 p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t51.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t51 = zcl_lnt_ob_index_module=>ns.
    DATA(t52) = CONV string( |AuthorizationCheckField| ).
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1200_4e5faec67292 ).
    t50 = t51->set( p0 = t52 p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t55.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t55 = zcl_lnt_ob_index_module=>ns.
    DATA(t56) = CONV string( |AuthorizationGroup| ).
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1201_2df2cedc0e8a ).
    t54 = t55->set( p0 = t56 p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t59.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t59 = zcl_lnt_ob_index_module=>ns.
    DATA(t60) = CONV string( |AuthorizationObjectClass| ).
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1203_aebc2455b782 ).
    t58 = t59->set( p0 = t60 p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t63.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t63 = zcl_lnt_ob_index_module=>ns.
    DATA(t64) = CONV string( |AuthorizationObjectExtension| ).
    DATA(t65) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1204_6d0431c16739 ).
    t62 = t63->set( p0 = t64 p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t67.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t67 = zcl_lnt_ob_index_module=>ns.
    DATA(t68) = CONV string( |AuthorizationObject| ).
    DATA(t69) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1202_0dfbead6f819 ).
    t66 = t67->set( p0 = t68 p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t71.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t71 = zcl_lnt_ob_index_module=>ns.
    DATA(t72) = CONV string( |BADIDefinition| ).
    DATA(t73) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1205_4f9de27b6964 ).
    t70 = t71->set( p0 = t72 p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t75.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t75 = zcl_lnt_ob_index_module=>ns.
    DATA(t76) = CONV string( |BehaviorDefinition| ).
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1206_a681f7c1801f ).
    t74 = t75->set( p0 = t76 p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t79.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t79 = zcl_lnt_ob_index_module=>ns.
    DATA(t80) = CONV string( |BRFPlusSystemApplication| ).
    DATA(t81) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1207_875def9f2bdf ).
    t78 = t79->set( p0 = t80 p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t83.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t83 = zcl_lnt_ob_index_module=>ns.
    DATA(t84) = CONV string( |BSPApplication| ).
    DATA(t85) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1208_949da0211b87 ).
    t82 = t83->set( p0 = t84 p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t87.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t87 = zcl_lnt_ob_index_module=>ns.
    DATA(t88) = CONV string( |BusinessAddInImplementation| ).
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1209_327aff890ae1 ).
    t86 = t87->set( p0 = t88 p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t91.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t91 = zcl_lnt_ob_index_module=>ns.
    DATA(t92) = CONV string( |BusinessCatalogAppAssignment| ).
    DATA(t93) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1211_42cc0e8e856d ).
    t90 = t91->set( p0 = t92 p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t95.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t95 = zcl_lnt_ob_index_module=>ns.
    DATA(t96) = CONV string( |BusinessCatalog| ).
    DATA(t97) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1210_203b3e7b7a72 ).
    t94 = t95->set( p0 = t96 p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t99.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t99 = zcl_lnt_ob_index_module=>ns.
    DATA(t100) = CONV string( |BusinessConfigurationMaintenanceObject| ).
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1212_3e4aaf38f405 ).
    t98 = t99->set( p0 = t100 p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t103.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t103 = zcl_lnt_ob_index_module=>ns.
    DATA(t104) = CONV string( |BusinessConfigurationSet| ).
    DATA(t105) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1213_0718844a0850 ).
    t102 = t103->set( p0 = t104 p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t107.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t107 = zcl_lnt_ob_index_module=>ns.
    DATA(t108) = CONV string( |BusinessFunctionAssignment| ).
    DATA(t109) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1214_a5da1659d313 ).
    t106 = t107->set( p0 = t108 p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t111.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t111 = zcl_lnt_ob_index_module=>ns.
    DATA(t112) = CONV string( |BusinessFunctionSetAssignment| ).
    DATA(t113) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1215_72ed0defdde2 ).
    t110 = t111->set( p0 = t112 p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t115.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t115 = zcl_lnt_ob_index_module=>ns.
    DATA(t116) = CONV string( |BusinessObjectModel| ).
    DATA(t117) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1216_279542c6df3e ).
    t114 = t115->set( p0 = t116 p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t119.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t119 = zcl_lnt_ob_index_module=>ns.
    DATA(t120) = CONV string( |BusinessObjectType| ).
    DATA(t121) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1217_89c0f6f2c23b ).
    t118 = t119->set( p0 = t120 p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t123.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t123 = zcl_lnt_ob_index_module=>ns.
    DATA(t124) = CONV string( |CDSEntityBuffer| ).
    DATA(t125) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1218_28d87ba7517e ).
    t122 = t123->set( p0 = t124 p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t127.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t127 = zcl_lnt_ob_index_module=>ns.
    DATA(t128) = CONV string( |CDSMetadataExtension| ).
    DATA(t129) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1219_a72fddfb7b6c ).
    t126 = t127->set( p0 = t128 p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t131.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t131 = zcl_lnt_ob_index_module=>ns.
    DATA(t132) = CONV string( |CDSType| ).
    DATA(t133) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1220_f3d0eeed1484 ).
    t130 = t131->set( p0 = t132 p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t135.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t135 = zcl_lnt_ob_index_module=>ns.
    DATA(t136) = CONV string( |ChangeDocument| ).
    DATA(t137) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1221_096655b87e97 ).
    t134 = t135->set( p0 = t136 p1 = t137 ).
    DATA t138 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t139.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t139 = zcl_lnt_ob_index_module=>ns.
    DATA(t140) = CONV string( |ChapterOfBookStructure| ).
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1222_6a44a3793316 ).
    t138 = t139->set( p0 = t140 p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t143.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t143 = zcl_lnt_ob_index_module=>ns.
    DATA(t144) = CONV string( |CheckpointGroup| ).
    DATA(t145) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1223_1b3011ca7550 ).
    t142 = t143->set( p0 = t144 p1 = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t147.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t147 = zcl_lnt_ob_index_module=>ns.
    DATA(t148) = CONV string( |Class| ).
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1224_79bf9124506a ).
    t146 = t147->set( p0 = t148 p1 = t149 ).
    DATA t150 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t151.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t151 = zcl_lnt_ob_index_module=>ns.
    DATA(t152) = CONV string( |Classification| ).
    DATA(t153) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1225_c388965dd35d ).
    t150 = t151->set( p0 = t152 p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t155.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t155 = zcl_lnt_ob_index_module=>ns.
    DATA(t156) = CONV string( |CommunicationScenario| ).
    DATA(t157) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1226_65cf732c0dd9 ).
    t154 = t155->set( p0 = t156 p1 = t157 ).
    DATA t158 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t159.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t159 = zcl_lnt_ob_index_module=>ns.
    DATA(t160) = CONV string( |CompositeEnhancementImplementation| ).
    DATA(t161) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1227_e18846beac5b ).
    t158 = t159->set( p0 = t160 p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t163.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t163 = zcl_lnt_ob_index_module=>ns.
    DATA(t164) = CONV string( |CompositeEnhancementSpot| ).
    DATA(t165) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1228_980df0483688 ).
    t162 = t163->set( p0 = t164 p1 = t165 ).
    DATA t166 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t167.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t167 = zcl_lnt_ob_index_module=>ns.
    DATA(t168) = CONV string( |ConceptsOfPackage| ).
    DATA(t169) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1229_80301d71b2ff ).
    t166 = t167->set( p0 = t168 p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t171.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t171 = zcl_lnt_ob_index_module=>ns.
    DATA(t172) = CONV string( |CustomDataBrowserObject| ).
    DATA(t173) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1230_d9fbee49a462 ).
    t170 = t171->set( p0 = t172 p1 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t175.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t175 = zcl_lnt_ob_index_module=>ns.
    DATA(t176) = CONV string( |CustomerEnhancementProject| ).
    DATA(t177) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1231_08a133ee48db ).
    t174 = t175->set( p0 = t176 p1 = t177 ).
    DATA t178 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t179.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t179 = zcl_lnt_ob_index_module=>ns.
    DATA(t180) = CONV string( |CustomizingAttributes| ).
    DATA(t181) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1232_fb27ba8a3f34 ).
    t178 = t179->set( p0 = t180 p1 = t181 ).
    DATA t182 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t183.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t183 = zcl_lnt_ob_index_module=>ns.
    DATA(t184) = CONV string( |CustomizingImgActivity| ).
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1233_f022b01cd619 ).
    t182 = t183->set( p0 = t184 p1 = t185 ).
    DATA t186 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t187.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t187 = zcl_lnt_ob_index_module=>ns.
    DATA(t188) = CONV string( |CustomizingTransaction| ).
    DATA(t189) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1234_88442f4ab77c ).
    t186 = t187->set( p0 = t188 p1 = t189 ).
    DATA t190 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t191.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t191 = zcl_lnt_ob_index_module=>ns.
    DATA(t192) = CONV string( |DataControl| ).
    DATA(t193) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1235_854ad5719869 ).
    t190 = t191->set( p0 = t192 p1 = t193 ).
    DATA t194 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t195.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t195 = zcl_lnt_ob_index_module=>ns.
    DATA(t196) = CONV string( |DataDefinition| ).
    DATA(t197) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1236_6872bb1bca37 ).
    t194 = t195->set( p0 = t196 p1 = t197 ).
    DATA t198 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t199.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t199 = zcl_lnt_ob_index_module=>ns.
    DATA(t200) = CONV string( |DataElement| ).
    DATA(t201) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1237_d1e4d0feefd6 ).
    t198 = t199->set( p0 = t200 p1 = t201 ).
    DATA t202 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t203.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t203 = zcl_lnt_ob_index_module=>ns.
    DATA(t204) = CONV string( |DatastoreObject| ).
    DATA(t205) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1238_0fc60be51dab ).
    t202 = t203->set( p0 = t204 p1 = t205 ).
    DATA t206 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t207.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t207 = zcl_lnt_ob_index_module=>ns.
    DATA(t208) = CONV string( |DialogModule| ).
    DATA(t209) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1239_ee03a29f95a6 ).
    t206 = t207->set( p0 = t208 p1 = t209 ).
    DATA t210 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t211.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t211 = zcl_lnt_ob_index_module=>ns.
    DATA(t212) = CONV string( |Documentation| ).
    DATA(t213) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1240_a62b67eb4190 ).
    t210 = t211->set( p0 = t212 p1 = t213 ).
    DATA t214 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t215.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t215 = zcl_lnt_ob_index_module=>ns.
    DATA(t216) = CONV string( |Domain| ).
    DATA(t217) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1243_332432e07897 ).
    t214 = t215->set( p0 = t216 p1 = t217 ).
    DATA t218 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t219.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t219 = zcl_lnt_ob_index_module=>ns.
    DATA(t220) = CONV string( |EcattTestConfiguration| ).
    DATA(t221) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1244_f43efebdeae6 ).
    t218 = t219->set( p0 = t220 p1 = t221 ).
    DATA t222 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t223.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t223 = zcl_lnt_ob_index_module=>ns.
    DATA(t224) = CONV string( |EcattTestDataContainer| ).
    DATA(t225) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1245_dd0b0bb2bbef ).
    t222 = t223->set( p0 = t224 p1 = t225 ).
    DATA t226 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t227.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t227 = zcl_lnt_ob_index_module=>ns.
    DATA(t228) = CONV string( |EcattTestScript| ).
    DATA(t229) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1246_ae924c03d8f8 ).
    t226 = t227->set( p0 = t228 p1 = t229 ).
    DATA t230 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t231.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t231 = zcl_lnt_ob_index_module=>ns.
    DATA(t232) = CONV string( |EmailTemplate| ).
    DATA(t233) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1247_a81f6611bdb1 ).
    t230 = t231->set( p0 = t232 p1 = t233 ).
    DATA t234 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t235.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t235 = zcl_lnt_ob_index_module=>ns.
    DATA(t236) = CONV string( |EnhancementImplementation| ).
    DATA(t237) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1248_bbee93bdc825 ).
    t234 = t235->set( p0 = t236 p1 = t237 ).
    DATA t238 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t239.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t239 = zcl_lnt_ob_index_module=>ns.
    DATA(t240) = CONV string( |EnhancementSpot| ).
    DATA(t241) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1250_cdc91e32c712 ).
    t238 = t239->set( p0 = t240 p1 = t241 ).
    DATA t242 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t243.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t243 = zcl_lnt_ob_index_module=>ns.
    DATA(t244) = CONV string( |EntityType| ).
    DATA(t245) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1251_095a90280f8a ).
    t242 = t243->set( p0 = t244 p1 = t245 ).
    DATA t246 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t247.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t247 = zcl_lnt_ob_index_module=>ns.
    DATA(t248) = CONV string( |EventBinding| ).
    DATA(t249) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1252_ca632203b9f0 ).
    t246 = t247->set( p0 = t248 p1 = t249 ).
    DATA t250 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t251.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t251 = zcl_lnt_ob_index_module=>ns.
    DATA(t252) = CONV string( |EventBinding| ).
    DATA(t253) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1252_ca632203b9f0 ).
    t250 = t251->set( p0 = t252 p1 = t253 ).
    DATA t254 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t255.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t255 = zcl_lnt_ob_index_module=>ns.
    DATA(t256) = CONV string( |EventConsumer| ).
    DATA(t257) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1253_4338e85462de ).
    t254 = t255->set( p0 = t256 p1 = t257 ).
    DATA t258 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t259.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t259 = zcl_lnt_ob_index_module=>ns.
    DATA(t260) = CONV string( |ExtensionIndex| ).
    DATA(t261) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1254_27ed380ff4ff ).
    t258 = t259->set( p0 = t260 p1 = t261 ).
    DATA t262 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t263.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t263 = zcl_lnt_ob_index_module=>ns.
    DATA(t264) = CONV string( |FieldCatalog| ).
    DATA(t265) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1255_87b47e899690 ).
    t262 = t263->set( p0 = t264 p1 = t265 ).
    DATA t266 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t267.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t267 = zcl_lnt_ob_index_module=>ns.
    DATA(t268) = CONV string( |FormObjectForm| ).
    DATA(t269) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1256_9c8ea321ff89 ).
    t266 = t267->set( p0 = t268 p1 = t269 ).
    DATA t270 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t271.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t271 = zcl_lnt_ob_index_module=>ns.
    DATA(t272) = CONV string( |FormObjectInterface| ).
    DATA(t273) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1257_e760b4d8ea95 ).
    t270 = t271->set( p0 = t272 p1 = t273 ).
    DATA t274 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t275.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t275 = zcl_lnt_ob_index_module=>ns.
    DATA(t276) = CONV string( |FormatType| ).
    DATA(t277) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1258_72efcf9d82d1 ).
    t274 = t275->set( p0 = t276 p1 = t277 ).
    DATA t278 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t279.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t279 = zcl_lnt_ob_index_module=>ns.
    DATA(t280) = CONV string( |FunctionGroup| ).
    DATA(t281) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1259_917940fd10fd ).
    t278 = t279->set( p0 = t280 p1 = t281 ).
    DATA t282 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t283.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t283 = zcl_lnt_ob_index_module=>ns.
    DATA(t284) = CONV string( |GatewayModelMetadata| ).
    DATA(t285) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1261_80a32aefc52f ).
    t282 = t283->set( p0 = t284 p1 = t285 ).
    DATA t286 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t287.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t287 = zcl_lnt_ob_index_module=>ns.
    DATA(t288) = CONV string( |GatewayModel| ).
    DATA(t289) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1260_f25762297266 ).
    t286 = t287->set( p0 = t288 p1 = t289 ).
    DATA t290 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t291.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t291 = zcl_lnt_ob_index_module=>ns.
    DATA(t292) = CONV string( |GatewayODataGroupAndAssignment| ).
    DATA(t293) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1262_18a7d61c9853 ).
    t290 = t291->set( p0 = t292 p1 = t293 ).
    DATA t294 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t294.
    DATA t295 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t295.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t295 = zcl_lnt_ob_index_module=>ns.
    DATA(t296) = CONV string( |GatewayProject| ).
    DATA(t297) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1263_41918f34a737 ).
    t294 = t295->set( p0 = t296 p1 = t297 ).
    DATA t298 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t299.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t299 = zcl_lnt_ob_index_module=>ns.
    DATA(t300) = CONV string( |GatewayServiceGroupsMetadata| ).
    DATA(t301) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1265_4049a037a39d ).
    t298 = t299->set( p0 = t300 p1 = t301 ).
    DATA t302 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t303.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t303 = zcl_lnt_ob_index_module=>ns.
    DATA(t304) = CONV string( |GatewayService| ).
    DATA(t305) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1264_fe8259f91624 ).
    t302 = t303->set( p0 = t304 p1 = t305 ).
    DATA t306 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t307.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t307 = zcl_lnt_ob_index_module=>ns.
    DATA(t308) = CONV string( |GatewayVocabularyAnnotation| ).
    DATA(t309) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1266_bead85b72289 ).
    t306 = t307->set( p0 = t308 p1 = t309 ).
    DATA t310 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t311.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t311 = zcl_lnt_ob_index_module=>ns.
    DATA(t312) = CONV string( |GeneralHierarchyStorageExtrensionName| ).
    DATA(t313) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1267_5d9d1fe4a594 ).
    t310 = t311->set( p0 = t312 p1 = t313 ).
    DATA t314 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t315.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t315 = zcl_lnt_ob_index_module=>ns.
    DATA(t316) = CONV string( |GeneralStorageStructure| ).
    DATA(t317) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1268_dc8c27d268f6 ).
    t314 = t315->set( p0 = t316 p1 = t317 ).
    DATA t318 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t319.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t319 = zcl_lnt_ob_index_module=>ns.
    DATA(t320) = CONV string( |GeneralText| ).
    DATA(t321) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1269_9cb75d5b2507 ).
    t318 = t319->set( p0 = t320 p1 = t321 ).
    DATA t322 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t322.
    DATA t323 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t323.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t323 = zcl_lnt_ob_index_module=>ns.
    DATA(t324) = CONV string( |HttpService| ).
    DATA(t325) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1270_8c7b8cbda38d ).
    t322 = t323->set( p0 = t324 p1 = t325 ).
    DATA t326 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t327.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t327 = zcl_lnt_ob_index_module=>ns.
    DATA(t328) = CONV string( |IACBinaryData| ).
    DATA(t329) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1271_57d52cf07c2e ).
    t326 = t327->set( p0 = t328 p1 = t329 ).
    DATA t330 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t331.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t331 = zcl_lnt_ob_index_module=>ns.
    DATA(t332) = CONV string( |IACLanguageResource| ).
    DATA(t333) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1272_91dba7279b1b ).
    t330 = t331->set( p0 = t332 p1 = t333 ).
    DATA t334 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t335.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t335 = zcl_lnt_ob_index_module=>ns.
    DATA(t336) = CONV string( |IACService| ).
    DATA(t337) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1273_9a1e1d42ce7e ).
    t334 = t335->set( p0 = t336 p1 = t337 ).
    DATA t338 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t339.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t339 = zcl_lnt_ob_index_module=>ns.
    DATA(t340) = CONV string( |IACTemplate| ).
    DATA(t341) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1274_4174c8443f25 ).
    t338 = t339->set( p0 = t340 p1 = t341 ).
    DATA t342 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t343.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t343 = zcl_lnt_ob_index_module=>ns.
    DATA(t344) = CONV string( |IAMApp| ).
    DATA(t345) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1275_494180b4d1bd ).
    t342 = t343->set( p0 = t344 p1 = t345 ).
    DATA t346 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t347.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t347 = zcl_lnt_ob_index_module=>ns.
    DATA(t348) = CONV string( |ICFService| ).
    DATA(t349) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1276_7ddf35ef50dd ).
    t346 = t347->set( p0 = t348 p1 = t349 ).
    DATA t350 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t351.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t351 = zcl_lnt_ob_index_module=>ns.
    DATA(t352) = CONV string( |IdocExtension| ).
    DATA(t353) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1278_c726b07de0d1 ).
    t350 = t351->set( p0 = t352 p1 = t353 ).
    DATA t354 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t355.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t355 = zcl_lnt_ob_index_module=>ns.
    DATA(t356) = CONV string( |Idoc| ).
    DATA(t357) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1277_7d3819128f6e ).
    t354 = t355->set( p0 = t356 p1 = t357 ).
    DATA t358 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t359.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t359 = zcl_lnt_ob_index_module=>ns.
    DATA(t360) = CONV string( |InboundService| ).
    DATA(t361) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1279_924aec42bf4a ).
    t358 = t359->set( p0 = t360 p1 = t361 ).
    DATA t362 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t363.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t363 = zcl_lnt_ob_index_module=>ns.
    DATA(t364) = CONV string( |InfoArea| ).
    DATA(t365) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1280_e7a06801cbb1 ).
    t362 = t363->set( p0 = t364 p1 = t365 ).
    DATA t366 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t367.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t367 = zcl_lnt_ob_index_module=>ns.
    DATA(t368) = CONV string( |InfoObject| ).
    DATA(t369) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1281_da73290d5b14 ).
    t366 = t367->set( p0 = t368 p1 = t369 ).
    DATA t370 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t371.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t371 = zcl_lnt_ob_index_module=>ns.
    DATA(t372) = CONV string( |Interface| ).
    DATA(t373) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1282_348684cb2f84 ).
    t370 = t371->set( p0 = t372 p1 = t373 ).
    DATA t374 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t374.
    DATA t375 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t375.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t375 = zcl_lnt_ob_index_module=>ns.
    DATA(t376) = CONV string( |KnowledgeTransferDocument| ).
    DATA(t377) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1283_e7f038964532 ).
    t374 = t375->set( p0 = t376 p1 = t377 ).
    DATA t378 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t379.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t379 = zcl_lnt_ob_index_module=>ns.
    DATA(t380) = CONV string( |LockObject| ).
    DATA(t381) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1284_126cb3f90cd0 ).
    t378 = t379->set( p0 = t380 p1 = t381 ).
    DATA t382 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t383.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t383 = zcl_lnt_ob_index_module=>ns.
    DATA(t384) = CONV string( |MaintenanceAndTransportObject| ).
    DATA(t385) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1285_cc77f2cfa3e2 ).
    t382 = t383->set( p0 = t384 p1 = t385 ).
    DATA t386 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t387.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t387 = zcl_lnt_ob_index_module=>ns.
    DATA(t388) = CONV string( |MessageClass| ).
    DATA(t389) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1286_cc1208d19ab7 ).
    t386 = t387->set( p0 = t388 p1 = t389 ).
    DATA t390 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t391.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t391 = zcl_lnt_ob_index_module=>ns.
    DATA(t392) = CONV string( |MessagingChannel| ).
    DATA(t393) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1287_6c19099bab1e ).
    t390 = t391->set( p0 = t392 p1 = t393 ).
    DATA t394 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t395.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t395 = zcl_lnt_ob_index_module=>ns.
    DATA(t396) = CONV string( |MIMEObject| ).
    DATA(t397) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1288_43cc7a3394d8 ).
    t394 = t395->set( p0 = t396 p1 = t397 ).
    DATA t398 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t399.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t399 = zcl_lnt_ob_index_module=>ns.
    DATA(t400) = CONV string( |Namespace| ).
    DATA(t401) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1289_8585c7bbdc43 ).
    t398 = t399->set( p0 = t400 p1 = t401 ).
    DATA t402 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t403.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t403 = zcl_lnt_ob_index_module=>ns.
    DATA(t404) = CONV string( |NeptuneAPI| ).
    DATA(t405) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1290_5b6f2e52672c ).
    t402 = t403->set( p0 = t404 p1 = t405 ).
    DATA t406 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t406.
    DATA t407 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t407.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t407 = zcl_lnt_ob_index_module=>ns.
    DATA(t408) = CONV string( |NeptuneApp| ).
    DATA(t409) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1291_858765246c78 ).
    t406 = t407->set( p0 = t408 p1 = t409 ).
    DATA t410 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t411.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t411 = zcl_lnt_ob_index_module=>ns.
    DATA(t412) = CONV string( |NeptuneCustomColor| ).
    DATA(t413) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1292_c17257b419c0 ).
    t410 = t411->set( p0 = t412 p1 = t413 ).
    DATA t414 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t415.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t415 = zcl_lnt_ob_index_module=>ns.
    DATA(t416) = CONV string( |NeptuneCustomJSHelper| ).
    DATA(t417) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1293_774dfd74fbd2 ).
    t414 = t415->set( p0 = t416 p1 = t417 ).
    DATA t418 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t419.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t419 = zcl_lnt_ob_index_module=>ns.
    DATA(t420) = CONV string( |NeptuneDocumentation| ).
    DATA(t421) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1294_b452fd8f8d48 ).
    t418 = t419->set( p0 = t420 p1 = t421 ).
    DATA t422 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t423.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t423 = zcl_lnt_ob_index_module=>ns.
    DATA(t424) = CONV string( |NeptuneEnhancement| ).
    DATA(t425) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1295_d9f253fcf5fd ).
    t422 = t423->set( p0 = t424 p1 = t425 ).
    DATA t426 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t427.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t427 = zcl_lnt_ob_index_module=>ns.
    DATA(t428) = CONV string( |NeptuneLaunchpadLayout| ).
    DATA(t429) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1297_194f8edd8644 ).
    t426 = t427->set( p0 = t428 p1 = t429 ).
    DATA t430 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t431.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t431 = zcl_lnt_ob_index_module=>ns.
    DATA(t432) = CONV string( |NeptuneLaunchpad| ).
    DATA(t433) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1296_fd7a41ded56b ).
    t430 = t431->set( p0 = t432 p1 = t433 ).
    DATA t434 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t435.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t435 = zcl_lnt_ob_index_module=>ns.
    DATA(t436) = CONV string( |NeptuneLoginPage| ).
    DATA(t437) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1298_672635193b91 ).
    t434 = t435->set( p0 = t436 p1 = t437 ).
    DATA t438 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t439.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t439 = zcl_lnt_ob_index_module=>ns.
    DATA(t440) = CONV string( |NeptuneMediaLibrary| ).
    DATA(t441) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1299_00e2e3e9eecb ).
    t438 = t439->set( p0 = t440 p1 = t441 ).
    DATA t442 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t443.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t443 = zcl_lnt_ob_index_module=>ns.
    DATA(t444) = CONV string( |NeptuneMediaPack| ).
    DATA(t445) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1300_30d13b922010 ).
    t442 = t443->set( p0 = t444 p1 = t445 ).
    DATA t446 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t447.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t447 = zcl_lnt_ob_index_module=>ns.
    DATA(t448) = CONV string( |NeptuneMetadata| ).
    DATA(t449) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1301_53631e4eb972 ).
    t446 = t447->set( p0 = t448 p1 = t449 ).
    DATA t450 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t451.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t451 = zcl_lnt_ob_index_module=>ns.
    DATA(t452) = CONV string( |NeptuneMobileClient| ).
    DATA(t453) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1302_f421f758d425 ).
    t450 = t451->set( p0 = t452 p1 = t453 ).
    DATA t454 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t455.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t455 = zcl_lnt_ob_index_module=>ns.
    DATA(t456) = CONV string( |NeptuneOData| ).
    DATA(t457) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1303_f30a0a1adb7f ).
    t454 = t455->set( p0 = t456 p1 = t457 ).
    DATA t458 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t459.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t459 = zcl_lnt_ob_index_module=>ns.
    DATA(t460) = CONV string( |NeptunePolicy| ).
    DATA(t461) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1304_643b4ae6dd55 ).
    t458 = t459->set( p0 = t460 p1 = t461 ).
    DATA t462 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t463.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t463 = zcl_lnt_ob_index_module=>ns.
    DATA(t464) = CONV string( |NeptuneRFCMapping| ).
    DATA(t465) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1305_856dcc9932bf ).
    t462 = t463->set( p0 = t464 p1 = t465 ).
    DATA t466 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t466.
    DATA t467 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t467.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t467 = zcl_lnt_ob_index_module=>ns.
    DATA(t468) = CONV string( |NeptuneRichTextTemplate| ).
    DATA(t469) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1306_a66cfa4b6ec2 ).
    t466 = t467->set( p0 = t468 p1 = t469 ).
    DATA t470 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t471.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t471 = zcl_lnt_ob_index_module=>ns.
    DATA(t472) = CONV string( |NeptuneSplashScreen| ).
    DATA(t473) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1307_6cd60ee8958b ).
    t470 = t471->set( p0 = t472 p1 = t473 ).
    DATA t474 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t474.
    DATA t475 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t475.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t475 = zcl_lnt_ob_index_module=>ns.
    DATA(t476) = CONV string( |NeptuneStickyBanner| ).
    DATA(t477) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1308_6c30cdb9458a ).
    t474 = t475->set( p0 = t476 p1 = t477 ).
    DATA t478 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t478.
    DATA t479 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t479.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t479 = zcl_lnt_ob_index_module=>ns.
    DATA(t480) = CONV string( |NeptuneTileGroup| ).
    DATA(t481) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1310_7bc0862d5d39 ).
    t478 = t479->set( p0 = t480 p1 = t481 ).
    DATA t482 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t482.
    DATA t483 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t483.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t483 = zcl_lnt_ob_index_module=>ns.
    DATA(t484) = CONV string( |NeptuneTileLayout| ).
    DATA(t485) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1311_b73d3b527790 ).
    t482 = t483->set( p0 = t484 p1 = t485 ).
    DATA t486 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t486.
    DATA t487 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t487.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t487 = zcl_lnt_ob_index_module=>ns.
    DATA(t488) = CONV string( |NeptuneTile| ).
    DATA(t489) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1309_831bf78a7978 ).
    t486 = t487->set( p0 = t488 p1 = t489 ).
    DATA t490 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t490.
    DATA t491 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t491.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t491 = zcl_lnt_ob_index_module=>ns.
    DATA(t492) = CONV string( |NeptuneURLAlias| ).
    DATA(t493) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1312_dc5c8ee5ee85 ).
    t490 = t491->set( p0 = t492 p1 = t493 ).
    DATA t494 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t494.
    DATA t495 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t495.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t495 = zcl_lnt_ob_index_module=>ns.
    DATA(t496) = CONV string( |NumberRange| ).
    DATA(t497) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1313_e0941813f606 ).
    t494 = t495->set( p0 = t496 p1 = t497 ).
    DATA t498 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t499.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t499 = zcl_lnt_ob_index_module=>ns.
    DATA(t500) = CONV string( |Oauth2Profile| ).
    DATA(t501) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1314_fe7fe1b4ff67 ).
    t498 = t499->set( p0 = t500 p1 = t501 ).
    DATA t502 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t503.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t503 = zcl_lnt_ob_index_module=>ns.
    DATA(t504) = CONV string( |ObjectCharacteristic| ).
    DATA(t505) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1315_550a7fa8ce6f ).
    t502 = t503->set( p0 = t504 p1 = t505 ).
    DATA t506 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t507.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t507 = zcl_lnt_ob_index_module=>ns.
    DATA(t508) = CONV string( |OutboundService| ).
    DATA(t509) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1316_91912e406cf6 ).
    t506 = t507->set( p0 = t508 p1 = t509 ).
    DATA t510 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t511.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t511 = zcl_lnt_ob_index_module=>ns.
    DATA(t512) = CONV string( |PackageInterface| ).
    DATA(t513) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1318_b3c2b571002e ).
    t510 = t511->set( p0 = t512 p1 = t513 ).
    DATA t514 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t515.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t515 = zcl_lnt_ob_index_module=>ns.
    DATA(t516) = CONV string( |Package| ).
    DATA(t517) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1317_98ed57ff571d ).
    t514 = t515->set( p0 = t516 p1 = t517 ).
    DATA t518 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t518.
    DATA t519 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t519.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t519 = zcl_lnt_ob_index_module=>ns.
    DATA(t520) = CONV string( |PageFormat| ).
    DATA(t521) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1319_f10c5c1c5bd2 ).
    t518 = t519->set( p0 = t520 p1 = t521 ).
    DATA t522 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t523.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t523 = zcl_lnt_ob_index_module=>ns.
    DATA(t524) = CONV string( |Parameter| ).
    DATA(t525) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1320_b5b3363aa1f9 ).
    t522 = t523->set( p0 = t524 p1 = t525 ).
    DATA t526 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t527.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t527 = zcl_lnt_ob_index_module=>ns.
    DATA(t528) = CONV string( |PersonalizationObject| ).
    DATA(t529) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1321_18cbd4ecb4de ).
    t526 = t527->set( p0 = t528 p1 = t529 ).
    DATA t530 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t531.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t531 = zcl_lnt_ob_index_module=>ns.
    DATA(t532) = CONV string( |Program| ).
    DATA(t533) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1322_e58083008ffb ).
    t530 = t531->set( p0 = t532 p1 = t533 ).
    DATA t534 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t535.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t535 = zcl_lnt_ob_index_module=>ns.
    DATA(t536) = CONV string( |ProxyObject| ).
    DATA(t537) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1325_6b20a4100a68 ).
    t534 = t535->set( p0 = t536 p1 = t537 ).
    DATA t538 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t538.
    DATA t539 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t539.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t539 = zcl_lnt_ob_index_module=>ns.
    DATA(t540) = CONV string( |PushChannel| ).
    DATA(t541) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1326_95d07c6e2b00 ).
    t538 = t539->set( p0 = t540 p1 = t541 ).
    DATA t542 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t543.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t543 = zcl_lnt_ob_index_module=>ns.
    DATA(t544) = CONV string( |QueryUserGroup| ).
    DATA(t545) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1327_23c5119dc0cd ).
    t542 = t543->set( p0 = t544 p1 = t545 ).
    DATA t546 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t547.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t547 = zcl_lnt_ob_index_module=>ns.
    DATA(t548) = CONV string( |RestrictionField| ).
    DATA(t549) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1340_7acdab4ff047 ).
    t546 = t547->set( p0 = t548 p1 = t549 ).
    DATA t550 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t551.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t551 = zcl_lnt_ob_index_module=>ns.
    DATA(t552) = CONV string( |RestrictionType| ).
    DATA(t553) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1341_c2fe64a924d3 ).
    t550 = t551->set( p0 = t552 p1 = t553 ).
    DATA t554 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t554.
    DATA t555 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t555.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t555 = zcl_lnt_ob_index_module=>ns.
    DATA(t556) = CONV string( |RFCService| ).
    DATA(t557) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1342_0dfa84a8b679 ).
    t554 = t555->set( p0 = t556 p1 = t557 ).
    DATA t558 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t558.
    DATA t559 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t559.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t559 = zcl_lnt_ob_index_module=>ns.
    DATA(t560) = CONV string( |SAPScriptStyle| ).
    DATA(t561) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1344_0ac265784457 ).
    t558 = t559->set( p0 = t560 p1 = t561 ).
    DATA t562 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t562.
    DATA t563 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t563.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t563 = zcl_lnt_ob_index_module=>ns.
    DATA(t564) = CONV string( |SAPScript| ).
    DATA(t565) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1343_c715beb186c6 ).
    t562 = t563->set( p0 = t564 p1 = t565 ).
    DATA t566 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t566.
    DATA t567 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t567.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t567 = zcl_lnt_ob_index_module=>ns.
    DATA(t568) = CONV string( |ScreenVariant| ).
    DATA(t569) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1345_8c467e7ba9bb ).
    t566 = t567->set( p0 = t568 p1 = t569 ).
    DATA t570 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t570.
    DATA t571 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t571.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t571 = zcl_lnt_ob_index_module=>ns.
    DATA(t572) = CONV string( |SearchHelp| ).
    DATA(t573) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1346_d84d261ad8a9 ).
    t570 = t571->set( p0 = t572 p1 = t573 ).
    DATA t574 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t575.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t575 = zcl_lnt_ob_index_module=>ns.
    DATA(t576) = CONV string( |ServiceBinding| ).
    DATA(t577) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1347_2dab5ec1f046 ).
    t574 = t575->set( p0 = t576 p1 = t577 ).
    DATA t578 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t578.
    DATA t579 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t579.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t579 = zcl_lnt_ob_index_module=>ns.
    DATA(t580) = CONV string( |ServiceDefinition| ).
    DATA(t581) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1348_9c8533c70757 ).
    t578 = t579->set( p0 = t580 p1 = t581 ).
    DATA t582 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t582.
    DATA t583 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t583.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t583 = zcl_lnt_ob_index_module=>ns.
    DATA(t584) = CONV string( |SharedMemory| ).
    DATA(t585) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1349_42554aa70ed0 ).
    t582 = t583->set( p0 = t584 p1 = t585 ).
    DATA t586 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t586.
    DATA t587 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t587.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t587 = zcl_lnt_ob_index_module=>ns.
    DATA(t588) = CONV string( |SmartForm| ).
    DATA(t589) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1350_e594999a8252 ).
    t586 = t587->set( p0 = t588 p1 = t589 ).
    DATA t590 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t590.
    DATA t591 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t591.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t591 = zcl_lnt_ob_index_module=>ns.
    DATA(t592) = CONV string( |SmartStyle| ).
    DATA(t593) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1351_2227ca26f8c5 ).
    t590 = t591->set( p0 = t592 p1 = t593 ).
    DATA t594 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t594.
    DATA t595 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t595.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t595 = zcl_lnt_ob_index_module=>ns.
    DATA(t596) = CONV string( |StandardTask| ).
    DATA(t597) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1352_d2893d852548 ).
    t594 = t595->set( p0 = t596 p1 = t597 ).
    DATA t598 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t599.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t599 = zcl_lnt_ob_index_module=>ns.
    DATA(t600) = CONV string( |SwitchAssignmentHierarchy| ).
    DATA(t601) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1353_d9349a69f99a ).
    t598 = t599->set( p0 = t600 p1 = t601 ).
    DATA t602 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t602.
    DATA t603 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t603.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t603 = zcl_lnt_ob_index_module=>ns.
    DATA(t604) = CONV string( |SwitchAssignments| ).
    DATA(t605) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1354_e37ffde603df ).
    t602 = t603->set( p0 = t604 p1 = t605 ).
    DATA t606 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t606.
    DATA t607 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t607.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t607 = zcl_lnt_ob_index_module=>ns.
    DATA(t608) = CONV string( |TableType| ).
    DATA(t609) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1356_094f96f262ee ).
    t606 = t607->set( p0 = t608 p1 = t609 ).
    DATA t610 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t610.
    DATA t611 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t611.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t611 = zcl_lnt_ob_index_module=>ns.
    DATA(t612) = CONV string( |Table| ).
    DATA(t613) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1355_92f531eaac66 ).
    t610 = t611->set( p0 = t612 p1 = t613 ).
    DATA t614 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t615.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t615 = zcl_lnt_ob_index_module=>ns.
    DATA(t616) = CONV string( |TechnicalJobDefinition| ).
    DATA(t617) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1357_e35e10f731f8 ).
    t614 = t615->set( p0 = t616 p1 = t617 ).
    DATA t618 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t618.
    DATA t619 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t619.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t619 = zcl_lnt_ob_index_module=>ns.
    DATA(t620) = CONV string( |TransactionVariant| ).
    DATA(t621) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1359_820640b2b641 ).
    t618 = t619->set( p0 = t620 p1 = t621 ).
    DATA t622 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t623.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t623 = zcl_lnt_ob_index_module=>ns.
    DATA(t624) = CONV string( |Transaction| ).
    DATA(t625) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1358_856ae5ca70bf ).
    t622 = t623->set( p0 = t624 p1 = t625 ).
    DATA t626 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t626.
    DATA t627 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t627.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t627 = zcl_lnt_ob_index_module=>ns.
    DATA(t628) = CONV string( |Transformation| ).
    DATA(t629) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1360_b7ed2e5cd906 ).
    t626 = t627->set( p0 = t628 p1 = t629 ).
    DATA t630 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t630.
    DATA t631 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t631.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t631 = zcl_lnt_ob_index_module=>ns.
    DATA(t632) = CONV string( |TypePool| ).
    DATA(t633) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1361_27884b4b0657 ).
    t630 = t631->set( p0 = t632 p1 = t633 ).
    DATA t634 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t634.
    DATA t635 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t635.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t635 = zcl_lnt_ob_index_module=>ns.
    DATA(t636) = CONV string( |ViewCluster| ).
    DATA(t637) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1363_2bc590c796d1 ).
    t634 = t635->set( p0 = t636 p1 = t637 ).
    DATA t638 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t638.
    DATA t639 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t639.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t639 = zcl_lnt_ob_index_module=>ns.
    DATA(t640) = CONV string( |View| ).
    DATA(t641) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1362_bf065685ae45 ).
    t638 = t639->set( p0 = t640 p1 = t641 ).
    DATA t642 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t642.
    DATA t643 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t643.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t643 = zcl_lnt_ob_index_module=>ns.
    DATA(t644) = CONV string( |VirtualEndPoint| ).
    DATA(t645) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1364_0e50e52e518a ).
    t642 = t643->set( p0 = t644 p1 = t645 ).
    DATA t646 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t646.
    DATA t647 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t647.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t647 = zcl_lnt_ob_index_module=>ns.
    DATA(t648) = CONV string( |WebDynproApplicationConfiguration| ).
    DATA(t649) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1366_7f4b9d42b947 ).
    t646 = t647->set( p0 = t648 p1 = t649 ).
    DATA t650 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t650.
    DATA t651 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t651.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t651 = zcl_lnt_ob_index_module=>ns.
    DATA(t652) = CONV string( |WebDynproApplication| ).
    DATA(t653) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1365_966e575456b6 ).
    t650 = t651->set( p0 = t652 p1 = t653 ).
    DATA t654 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t654.
    DATA t655 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t655.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t655 = zcl_lnt_ob_index_module=>ns.
    DATA(t656) = CONV string( |WebDynproComponentConfiguration| ).
    DATA(t657) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1368_7e3d2272c1ea ).
    t654 = t655->set( p0 = t656 p1 = t657 ).
    DATA t658 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t659.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t659 = zcl_lnt_ob_index_module=>ns.
    DATA(t660) = CONV string( |WebDynproComponent| ).
    DATA(t661) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1367_d94ec004b4ca ).
    t658 = t659->set( p0 = t660 p1 = t661 ).
    DATA t662 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t662.
    DATA t663 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t663.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t663 = zcl_lnt_ob_index_module=>ns.
    DATA(t664) = CONV string( |WebMIME| ).
    DATA(t665) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1369_63e1fa9eb9e5 ).
    t662 = t663->set( p0 = t664 p1 = t665 ).
    DATA t666 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    CLEAR t667.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t667 = zcl_lnt_ob_index_module=>ns.
    DATA(t668) = CONV string( |WebReportingTemplate| ).
    DATA(t669) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d1370_19cca897fd49 ).
    t666 = t667->set( p0 = t668 p1 = t669 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1808_ea0945e843de.
  ENDMETHOD.
ENDCLASS.
