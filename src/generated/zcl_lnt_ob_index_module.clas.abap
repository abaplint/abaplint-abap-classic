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
    zcl_lnt_ob_index_module=>ns = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t3 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t3 = zcl_lnt_ob_index_module=>ns.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1188_0a7e79babb22.
    t2 = t3->set( p0 = |ABAPQueryFunctionalArea| p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t7 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t7 = zcl_lnt_ob_index_module=>ns.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1189_26017ebaa299.
    t6 = t7->set( p0 = |ABAPQueryQuery| p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t11 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t11 = zcl_lnt_ob_index_module=>ns.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1190_7f30face2069.
    t10 = t11->set( p0 = |ActivationVariant| p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t15 = zcl_lnt_ob_index_module=>ns.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1191_18dadd9855df.
    t14 = t15->set( p0 = |APIReleaseState| p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t19 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t19 = zcl_lnt_ob_index_module=>ns.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1192_e58d48da8281.
    t18 = t19->set( p0 = |ApplicationDescriptorsFiori| p1 = t21 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t23 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t23 = zcl_lnt_ob_index_module=>ns.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1193_60af4f03ef94.
    t22 = t23->set( p0 = |ApplicationJobCatalogEntry| p1 = t25 ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t27 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t27 = zcl_lnt_ob_index_module=>ns.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1194_2c77a443a827.
    t26 = t27->set( p0 = |ApplicationJobTemplate| p1 = t29 ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t31 = zcl_lnt_ob_index_module=>ns.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1195_e718a37f723f.
    t30 = t31->set( p0 = |ApplicationLogObject| p1 = t33 ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t35 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t35 = zcl_lnt_ob_index_module=>ns.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1196_0570ed22775b.
    t34 = t35->set( p0 = |AssignmentServiceToAuthorizationGroup| p1 = t37 ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t39 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t39 = zcl_lnt_ob_index_module=>ns.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1197_a1bc52c674d3.
    t38 = t39->set( p0 = |ATCCheckCategory| p1 = t41 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t43 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t43 = zcl_lnt_ob_index_module=>ns.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1198_7246c4b8b735.
    t42 = t43->set( p0 = |ATCCheckObject| p1 = t45 ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t47 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t47 = zcl_lnt_ob_index_module=>ns.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1199_6dc7bb3a326d.
    t46 = t47->set( p0 = |ATCCheckVariant| p1 = t49 ).
    DATA t50 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t51 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t51 = zcl_lnt_ob_index_module=>ns.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1200_4e5faec67292.
    t50 = t51->set( p0 = |AuthorizationCheckField| p1 = t53 ).
    DATA t54 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t55 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t55 = zcl_lnt_ob_index_module=>ns.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1201_2df2cedc0e8a.
    t54 = t55->set( p0 = |AuthorizationGroup| p1 = t57 ).
    DATA t58 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t59 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t59 = zcl_lnt_ob_index_module=>ns.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1203_aebc2455b782.
    t58 = t59->set( p0 = |AuthorizationObjectClass| p1 = t61 ).
    DATA t62 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t63 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t63 = zcl_lnt_ob_index_module=>ns.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1204_6d0431c16739.
    t62 = t63->set( p0 = |AuthorizationObjectExtension| p1 = t65 ).
    DATA t66 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t67 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t67 = zcl_lnt_ob_index_module=>ns.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1202_0dfbead6f819.
    t66 = t67->set( p0 = |AuthorizationObject| p1 = t69 ).
    DATA t70 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t71 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t71 = zcl_lnt_ob_index_module=>ns.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1205_4f9de27b6964.
    t70 = t71->set( p0 = |BADIDefinition| p1 = t73 ).
    DATA t74 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t75 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t75 = zcl_lnt_ob_index_module=>ns.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1206_a681f7c1801f.
    t74 = t75->set( p0 = |BehaviorDefinition| p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t79 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t79 = zcl_lnt_ob_index_module=>ns.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1207_875def9f2bdf.
    t78 = t79->set( p0 = |BRFPlusSystemApplication| p1 = t81 ).
    DATA t82 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t83 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t83 = zcl_lnt_ob_index_module=>ns.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1208_949da0211b87.
    t82 = t83->set( p0 = |BSPApplication| p1 = t85 ).
    DATA t86 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t87 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t87 = zcl_lnt_ob_index_module=>ns.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1209_327aff890ae1.
    t86 = t87->set( p0 = |BusinessAddInImplementation| p1 = t89 ).
    DATA t90 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t91 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t91 = zcl_lnt_ob_index_module=>ns.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1211_42cc0e8e856d.
    t90 = t91->set( p0 = |BusinessCatalogAppAssignment| p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t95 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t95 = zcl_lnt_ob_index_module=>ns.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1210_203b3e7b7a72.
    t94 = t95->set( p0 = |BusinessCatalog| p1 = t97 ).
    DATA t98 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t99 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t99 = zcl_lnt_ob_index_module=>ns.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1212_3e4aaf38f405.
    t98 = t99->set( p0 = |BusinessConfigurationMaintenanceObject| p1 = t101 ).
    DATA t102 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t103 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t103 = zcl_lnt_ob_index_module=>ns.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1213_0718844a0850.
    t102 = t103->set( p0 = |BusinessConfigurationSet| p1 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t107 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t107 = zcl_lnt_ob_index_module=>ns.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1214_a5da1659d313.
    t106 = t107->set( p0 = |BusinessFunctionAssignment| p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t111 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t111 = zcl_lnt_ob_index_module=>ns.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1215_72ed0defdde2.
    t110 = t111->set( p0 = |BusinessFunctionSetAssignment| p1 = t113 ).
    DATA t114 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t115 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t115 = zcl_lnt_ob_index_module=>ns.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1216_279542c6df3e.
    t114 = t115->set( p0 = |BusinessObjectModel| p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t119 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t119 = zcl_lnt_ob_index_module=>ns.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1217_89c0f6f2c23b.
    t118 = t119->set( p0 = |BusinessObjectType| p1 = t121 ).
    DATA t122 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t123 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t123 = zcl_lnt_ob_index_module=>ns.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1218_28d87ba7517e.
    t122 = t123->set( p0 = |CDSEntityBuffer| p1 = t125 ).
    DATA t126 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t127 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t127 = zcl_lnt_ob_index_module=>ns.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1219_a72fddfb7b6c.
    t126 = t127->set( p0 = |CDSMetadataExtension| p1 = t129 ).
    DATA t130 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t131 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t131 = zcl_lnt_ob_index_module=>ns.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1220_f3d0eeed1484.
    t130 = t131->set( p0 = |CDSType| p1 = t133 ).
    DATA t134 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t135 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t135 = zcl_lnt_ob_index_module=>ns.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1221_096655b87e97.
    t134 = t135->set( p0 = |ChangeDocument| p1 = t137 ).
    DATA t138 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t139 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t139 = zcl_lnt_ob_index_module=>ns.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1222_6a44a3793316.
    t138 = t139->set( p0 = |ChapterOfBookStructure| p1 = t141 ).
    DATA t142 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t143 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t143 = zcl_lnt_ob_index_module=>ns.
    DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1223_1b3011ca7550.
    t142 = t143->set( p0 = |CheckpointGroup| p1 = t145 ).
    DATA t146 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t147 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t147 = zcl_lnt_ob_index_module=>ns.
    DATA(t149) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1224_79bf9124506a.
    t146 = t147->set( p0 = |Class| p1 = t149 ).
    DATA t150 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t151 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t151 = zcl_lnt_ob_index_module=>ns.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1225_c388965dd35d.
    t150 = t151->set( p0 = |Classification| p1 = t153 ).
    DATA t154 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t155 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t155 = zcl_lnt_ob_index_module=>ns.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1226_65cf732c0dd9.
    t154 = t155->set( p0 = |CommunicationScenario| p1 = t157 ).
    DATA t158 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t159 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t159 = zcl_lnt_ob_index_module=>ns.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1227_e18846beac5b.
    t158 = t159->set( p0 = |CompositeEnhancementImplementation| p1 = t161 ).
    DATA t162 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t163 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t163 = zcl_lnt_ob_index_module=>ns.
    DATA(t165) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1228_980df0483688.
    t162 = t163->set( p0 = |CompositeEnhancementSpot| p1 = t165 ).
    DATA t166 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t167 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t167 = zcl_lnt_ob_index_module=>ns.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1229_80301d71b2ff.
    t166 = t167->set( p0 = |ConceptsOfPackage| p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t171 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t171 = zcl_lnt_ob_index_module=>ns.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1230_d9fbee49a462.
    t170 = t171->set( p0 = |CustomDataBrowserObject| p1 = t173 ).
    DATA t174 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t175 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t175 = zcl_lnt_ob_index_module=>ns.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1231_08a133ee48db.
    t174 = t175->set( p0 = |CustomerEnhancementProject| p1 = t177 ).
    DATA t178 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t179 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t179 = zcl_lnt_ob_index_module=>ns.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1232_fb27ba8a3f34.
    t178 = t179->set( p0 = |CustomizingAttributes| p1 = t181 ).
    DATA t182 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t183 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t183 = zcl_lnt_ob_index_module=>ns.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1233_f022b01cd619.
    t182 = t183->set( p0 = |CustomizingImgActivity| p1 = t185 ).
    DATA t186 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t187 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t187 = zcl_lnt_ob_index_module=>ns.
    DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1234_88442f4ab77c.
    t186 = t187->set( p0 = |CustomizingTransaction| p1 = t189 ).
    DATA t190 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t191 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t191 = zcl_lnt_ob_index_module=>ns.
    DATA(t193) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1235_854ad5719869.
    t190 = t191->set( p0 = |DataControl| p1 = t193 ).
    DATA t194 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t195 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t195 = zcl_lnt_ob_index_module=>ns.
    DATA(t197) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1236_6872bb1bca37.
    t194 = t195->set( p0 = |DataDefinition| p1 = t197 ).
    DATA t198 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t199 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t199 = zcl_lnt_ob_index_module=>ns.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1237_d1e4d0feefd6.
    t198 = t199->set( p0 = |DataElement| p1 = t201 ).
    DATA t202 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t203 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t203 = zcl_lnt_ob_index_module=>ns.
    DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1238_0fc60be51dab.
    t202 = t203->set( p0 = |DatastoreObject| p1 = t205 ).
    DATA t206 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t207 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t207 = zcl_lnt_ob_index_module=>ns.
    DATA(t209) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1239_ee03a29f95a6.
    t206 = t207->set( p0 = |DialogModule| p1 = t209 ).
    DATA t210 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t211 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t211 = zcl_lnt_ob_index_module=>ns.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1240_a62b67eb4190.
    t210 = t211->set( p0 = |Documentation| p1 = t213 ).
    DATA t214 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t215 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t215 = zcl_lnt_ob_index_module=>ns.
    DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1243_332432e07897.
    t214 = t215->set( p0 = |Domain| p1 = t217 ).
    DATA t218 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t219 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t219 = zcl_lnt_ob_index_module=>ns.
    DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1244_f43efebdeae6.
    t218 = t219->set( p0 = |EcattTestConfiguration| p1 = t221 ).
    DATA t222 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t223 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t223 = zcl_lnt_ob_index_module=>ns.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1245_dd0b0bb2bbef.
    t222 = t223->set( p0 = |EcattTestDataContainer| p1 = t225 ).
    DATA t226 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t227 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t227 = zcl_lnt_ob_index_module=>ns.
    DATA(t229) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1246_ae924c03d8f8.
    t226 = t227->set( p0 = |EcattTestScript| p1 = t229 ).
    DATA t230 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t231 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t231 = zcl_lnt_ob_index_module=>ns.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1247_a81f6611bdb1.
    t230 = t231->set( p0 = |EmailTemplate| p1 = t233 ).
    DATA t234 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t235 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t235 = zcl_lnt_ob_index_module=>ns.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1248_bbee93bdc825.
    t234 = t235->set( p0 = |EnhancementImplementation| p1 = t237 ).
    DATA t238 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t239 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t239 = zcl_lnt_ob_index_module=>ns.
    DATA(t241) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1250_cdc91e32c712.
    t238 = t239->set( p0 = |EnhancementSpot| p1 = t241 ).
    DATA t242 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t243 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t243 = zcl_lnt_ob_index_module=>ns.
    DATA(t245) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1251_095a90280f8a.
    t242 = t243->set( p0 = |EntityType| p1 = t245 ).
    DATA t246 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t247 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t247 = zcl_lnt_ob_index_module=>ns.
    DATA(t249) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1252_ca632203b9f0.
    t246 = t247->set( p0 = |EventBinding| p1 = t249 ).
    DATA t250 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t251 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t251 = zcl_lnt_ob_index_module=>ns.
    DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1252_ca632203b9f0.
    t250 = t251->set( p0 = |EventBinding| p1 = t253 ).
    DATA t254 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t255 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t255 = zcl_lnt_ob_index_module=>ns.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1253_4338e85462de.
    t254 = t255->set( p0 = |EventConsumer| p1 = t257 ).
    DATA t258 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t259 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t259 = zcl_lnt_ob_index_module=>ns.
    DATA(t261) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1254_27ed380ff4ff.
    t258 = t259->set( p0 = |ExtensionIndex| p1 = t261 ).
    DATA t262 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t263 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t263 = zcl_lnt_ob_index_module=>ns.
    DATA(t265) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1255_87b47e899690.
    t262 = t263->set( p0 = |FieldCatalog| p1 = t265 ).
    DATA t266 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t267 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t267 = zcl_lnt_ob_index_module=>ns.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1256_9c8ea321ff89.
    t266 = t267->set( p0 = |FormObjectForm| p1 = t269 ).
    DATA t270 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t271 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t271 = zcl_lnt_ob_index_module=>ns.
    DATA(t273) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1257_e760b4d8ea95.
    t270 = t271->set( p0 = |FormObjectInterface| p1 = t273 ).
    DATA t274 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t275 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t275 = zcl_lnt_ob_index_module=>ns.
    DATA(t277) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1258_72efcf9d82d1.
    t274 = t275->set( p0 = |FormatType| p1 = t277 ).
    DATA t278 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t279 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t279 = zcl_lnt_ob_index_module=>ns.
    DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1259_917940fd10fd.
    t278 = t279->set( p0 = |FunctionGroup| p1 = t281 ).
    DATA t282 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t283 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t283 = zcl_lnt_ob_index_module=>ns.
    DATA(t285) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1261_80a32aefc52f.
    t282 = t283->set( p0 = |GatewayModelMetadata| p1 = t285 ).
    DATA t286 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t287 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t287 = zcl_lnt_ob_index_module=>ns.
    DATA(t289) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1260_f25762297266.
    t286 = t287->set( p0 = |GatewayModel| p1 = t289 ).
    DATA t290 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t291 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t291 = zcl_lnt_ob_index_module=>ns.
    DATA(t293) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1262_18a7d61c9853.
    t290 = t291->set( p0 = |GatewayODataGroupAndAssignment| p1 = t293 ).
    DATA t294 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t295 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t295 = zcl_lnt_ob_index_module=>ns.
    DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1263_41918f34a737.
    t294 = t295->set( p0 = |GatewayProject| p1 = t297 ).
    DATA t298 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t299 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t299 = zcl_lnt_ob_index_module=>ns.
    DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1265_4049a037a39d.
    t298 = t299->set( p0 = |GatewayServiceGroupsMetadata| p1 = t301 ).
    DATA t302 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t303 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t303 = zcl_lnt_ob_index_module=>ns.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1264_fe8259f91624.
    t302 = t303->set( p0 = |GatewayService| p1 = t305 ).
    DATA t306 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t307 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t307 = zcl_lnt_ob_index_module=>ns.
    DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1266_bead85b72289.
    t306 = t307->set( p0 = |GatewayVocabularyAnnotation| p1 = t309 ).
    DATA t310 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t311 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t311 = zcl_lnt_ob_index_module=>ns.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1267_5d9d1fe4a594.
    t310 = t311->set( p0 = |GeneralHierarchyStorageExtrensionName| p1 = t313 ).
    DATA t314 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t315 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t315 = zcl_lnt_ob_index_module=>ns.
    DATA(t317) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1268_dc8c27d268f6.
    t314 = t315->set( p0 = |GeneralStorageStructure| p1 = t317 ).
    DATA t318 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t319 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t319 = zcl_lnt_ob_index_module=>ns.
    DATA(t321) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1269_9cb75d5b2507.
    t318 = t319->set( p0 = |GeneralText| p1 = t321 ).
    DATA t322 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t323 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t323 = zcl_lnt_ob_index_module=>ns.
    DATA(t325) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1270_8c7b8cbda38d.
    t322 = t323->set( p0 = |HttpService| p1 = t325 ).
    DATA t326 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t327 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t327 = zcl_lnt_ob_index_module=>ns.
    DATA(t329) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1271_57d52cf07c2e.
    t326 = t327->set( p0 = |IACBinaryData| p1 = t329 ).
    DATA t330 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t331 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t331 = zcl_lnt_ob_index_module=>ns.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1272_91dba7279b1b.
    t330 = t331->set( p0 = |IACLanguageResource| p1 = t333 ).
    DATA t334 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t335 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t335 = zcl_lnt_ob_index_module=>ns.
    DATA(t337) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1273_9a1e1d42ce7e.
    t334 = t335->set( p0 = |IACService| p1 = t337 ).
    DATA t338 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t339 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t339 = zcl_lnt_ob_index_module=>ns.
    DATA(t341) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1274_4174c8443f25.
    t338 = t339->set( p0 = |IACTemplate| p1 = t341 ).
    DATA t342 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t343 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t343 = zcl_lnt_ob_index_module=>ns.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1275_494180b4d1bd.
    t342 = t343->set( p0 = |IAMApp| p1 = t345 ).
    DATA t346 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t347 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t347 = zcl_lnt_ob_index_module=>ns.
    DATA(t349) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1276_7ddf35ef50dd.
    t346 = t347->set( p0 = |ICFService| p1 = t349 ).
    DATA t350 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t351 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t351 = zcl_lnt_ob_index_module=>ns.
    DATA(t353) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1278_c726b07de0d1.
    t350 = t351->set( p0 = |IdocExtension| p1 = t353 ).
    DATA t354 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t355 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t355 = zcl_lnt_ob_index_module=>ns.
    DATA(t357) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1277_7d3819128f6e.
    t354 = t355->set( p0 = |Idoc| p1 = t357 ).
    DATA t358 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t359 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t359 = zcl_lnt_ob_index_module=>ns.
    DATA(t361) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1279_924aec42bf4a.
    t358 = t359->set( p0 = |InboundService| p1 = t361 ).
    DATA t362 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t363 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t363 = zcl_lnt_ob_index_module=>ns.
    DATA(t365) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1280_e7a06801cbb1.
    t362 = t363->set( p0 = |InfoArea| p1 = t365 ).
    DATA t366 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t367 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t367 = zcl_lnt_ob_index_module=>ns.
    DATA(t369) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1281_da73290d5b14.
    t366 = t367->set( p0 = |InfoObject| p1 = t369 ).
    DATA t370 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t371 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t371 = zcl_lnt_ob_index_module=>ns.
    DATA(t373) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1282_348684cb2f84.
    t370 = t371->set( p0 = |Interface| p1 = t373 ).
    DATA t374 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t375 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t375 = zcl_lnt_ob_index_module=>ns.
    DATA(t377) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1283_e7f038964532.
    t374 = t375->set( p0 = |KnowledgeTransferDocument| p1 = t377 ).
    DATA t378 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t379 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t379 = zcl_lnt_ob_index_module=>ns.
    DATA(t381) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1284_126cb3f90cd0.
    t378 = t379->set( p0 = |LockObject| p1 = t381 ).
    DATA t382 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t383 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t383 = zcl_lnt_ob_index_module=>ns.
    DATA(t385) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1285_cc77f2cfa3e2.
    t382 = t383->set( p0 = |MaintenanceAndTransportObject| p1 = t385 ).
    DATA t386 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t387 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t387 = zcl_lnt_ob_index_module=>ns.
    DATA(t389) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1286_cc1208d19ab7.
    t386 = t387->set( p0 = |MessageClass| p1 = t389 ).
    DATA t390 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t391 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t391 = zcl_lnt_ob_index_module=>ns.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1287_6c19099bab1e.
    t390 = t391->set( p0 = |MessagingChannel| p1 = t393 ).
    DATA t394 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t395 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t395 = zcl_lnt_ob_index_module=>ns.
    DATA(t397) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1288_43cc7a3394d8.
    t394 = t395->set( p0 = |MIMEObject| p1 = t397 ).
    DATA t398 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t399 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t399 = zcl_lnt_ob_index_module=>ns.
    DATA(t401) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1289_8585c7bbdc43.
    t398 = t399->set( p0 = |Namespace| p1 = t401 ).
    DATA t402 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t403 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t403 = zcl_lnt_ob_index_module=>ns.
    DATA(t405) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1290_5b6f2e52672c.
    t402 = t403->set( p0 = |NeptuneAPI| p1 = t405 ).
    DATA t406 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t407 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t407 = zcl_lnt_ob_index_module=>ns.
    DATA(t409) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1291_858765246c78.
    t406 = t407->set( p0 = |NeptuneApp| p1 = t409 ).
    DATA t410 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t411 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t411 = zcl_lnt_ob_index_module=>ns.
    DATA(t413) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1292_c17257b419c0.
    t410 = t411->set( p0 = |NeptuneCustomColor| p1 = t413 ).
    DATA t414 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t415 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t415 = zcl_lnt_ob_index_module=>ns.
    DATA(t417) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1293_774dfd74fbd2.
    t414 = t415->set( p0 = |NeptuneCustomJSHelper| p1 = t417 ).
    DATA t418 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t419 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t419 = zcl_lnt_ob_index_module=>ns.
    DATA(t421) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1294_b452fd8f8d48.
    t418 = t419->set( p0 = |NeptuneDocumentation| p1 = t421 ).
    DATA t422 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t423 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t423 = zcl_lnt_ob_index_module=>ns.
    DATA(t425) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1295_d9f253fcf5fd.
    t422 = t423->set( p0 = |NeptuneEnhancement| p1 = t425 ).
    DATA t426 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t427 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t427 = zcl_lnt_ob_index_module=>ns.
    DATA(t429) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1297_194f8edd8644.
    t426 = t427->set( p0 = |NeptuneLaunchpadLayout| p1 = t429 ).
    DATA t430 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t431 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t431 = zcl_lnt_ob_index_module=>ns.
    DATA(t433) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1296_fd7a41ded56b.
    t430 = t431->set( p0 = |NeptuneLaunchpad| p1 = t433 ).
    DATA t434 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t435 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t435 = zcl_lnt_ob_index_module=>ns.
    DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1298_672635193b91.
    t434 = t435->set( p0 = |NeptuneLoginPage| p1 = t437 ).
    DATA t438 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t439 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t439 = zcl_lnt_ob_index_module=>ns.
    DATA(t441) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1299_00e2e3e9eecb.
    t438 = t439->set( p0 = |NeptuneMediaLibrary| p1 = t441 ).
    DATA t442 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t443 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t443 = zcl_lnt_ob_index_module=>ns.
    DATA(t445) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1300_30d13b922010.
    t442 = t443->set( p0 = |NeptuneMediaPack| p1 = t445 ).
    DATA t446 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t447 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t447 = zcl_lnt_ob_index_module=>ns.
    DATA(t449) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1301_53631e4eb972.
    t446 = t447->set( p0 = |NeptuneMetadata| p1 = t449 ).
    DATA t450 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t451 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t451 = zcl_lnt_ob_index_module=>ns.
    DATA(t453) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1302_f421f758d425.
    t450 = t451->set( p0 = |NeptuneMobileClient| p1 = t453 ).
    DATA t454 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t455 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t455 = zcl_lnt_ob_index_module=>ns.
    DATA(t457) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1303_f30a0a1adb7f.
    t454 = t455->set( p0 = |NeptuneOData| p1 = t457 ).
    DATA t458 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t459 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t459 = zcl_lnt_ob_index_module=>ns.
    DATA(t461) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1304_643b4ae6dd55.
    t458 = t459->set( p0 = |NeptunePolicy| p1 = t461 ).
    DATA t462 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t463 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t463 = zcl_lnt_ob_index_module=>ns.
    DATA(t465) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1305_856dcc9932bf.
    t462 = t463->set( p0 = |NeptuneRFCMapping| p1 = t465 ).
    DATA t466 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t467 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t467 = zcl_lnt_ob_index_module=>ns.
    DATA(t469) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1306_a66cfa4b6ec2.
    t466 = t467->set( p0 = |NeptuneRichTextTemplate| p1 = t469 ).
    DATA t470 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t471 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t471 = zcl_lnt_ob_index_module=>ns.
    DATA(t473) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1307_6cd60ee8958b.
    t470 = t471->set( p0 = |NeptuneSplashScreen| p1 = t473 ).
    DATA t474 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t475 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t475 = zcl_lnt_ob_index_module=>ns.
    DATA(t477) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1308_6c30cdb9458a.
    t474 = t475->set( p0 = |NeptuneStickyBanner| p1 = t477 ).
    DATA t478 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t479 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t479 = zcl_lnt_ob_index_module=>ns.
    DATA(t481) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1310_7bc0862d5d39.
    t478 = t479->set( p0 = |NeptuneTileGroup| p1 = t481 ).
    DATA t482 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t483 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t483 = zcl_lnt_ob_index_module=>ns.
    DATA(t485) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1311_b73d3b527790.
    t482 = t483->set( p0 = |NeptuneTileLayout| p1 = t485 ).
    DATA t486 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t487 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t487 = zcl_lnt_ob_index_module=>ns.
    DATA(t489) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1309_831bf78a7978.
    t486 = t487->set( p0 = |NeptuneTile| p1 = t489 ).
    DATA t490 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t491 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t491 = zcl_lnt_ob_index_module=>ns.
    DATA(t493) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1312_dc5c8ee5ee85.
    t490 = t491->set( p0 = |NeptuneURLAlias| p1 = t493 ).
    DATA t494 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t495 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t495 = zcl_lnt_ob_index_module=>ns.
    DATA(t497) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1313_e0941813f606.
    t494 = t495->set( p0 = |NumberRange| p1 = t497 ).
    DATA t498 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t499 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t499 = zcl_lnt_ob_index_module=>ns.
    DATA(t501) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1314_fe7fe1b4ff67.
    t498 = t499->set( p0 = |Oauth2Profile| p1 = t501 ).
    DATA t502 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t503 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t503 = zcl_lnt_ob_index_module=>ns.
    DATA(t505) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1315_550a7fa8ce6f.
    t502 = t503->set( p0 = |ObjectCharacteristic| p1 = t505 ).
    DATA t506 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t507 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t507 = zcl_lnt_ob_index_module=>ns.
    DATA(t509) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1316_91912e406cf6.
    t506 = t507->set( p0 = |OutboundService| p1 = t509 ).
    DATA t510 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t511 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t511 = zcl_lnt_ob_index_module=>ns.
    DATA(t513) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1318_b3c2b571002e.
    t510 = t511->set( p0 = |PackageInterface| p1 = t513 ).
    DATA t514 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t515 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t515 = zcl_lnt_ob_index_module=>ns.
    DATA(t517) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1317_98ed57ff571d.
    t514 = t515->set( p0 = |Package| p1 = t517 ).
    DATA t518 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t519 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t519 = zcl_lnt_ob_index_module=>ns.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1319_f10c5c1c5bd2.
    t518 = t519->set( p0 = |PageFormat| p1 = t521 ).
    DATA t522 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t523 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t523 = zcl_lnt_ob_index_module=>ns.
    DATA(t525) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1320_b5b3363aa1f9.
    t522 = t523->set( p0 = |Parameter| p1 = t525 ).
    DATA t526 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t527 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t527 = zcl_lnt_ob_index_module=>ns.
    DATA(t529) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1321_18cbd4ecb4de.
    t526 = t527->set( p0 = |PersonalizationObject| p1 = t529 ).
    DATA t530 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t531 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t531 = zcl_lnt_ob_index_module=>ns.
    DATA(t533) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1322_e58083008ffb.
    t530 = t531->set( p0 = |Program| p1 = t533 ).
    DATA t534 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t535 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t535 = zcl_lnt_ob_index_module=>ns.
    DATA(t537) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1325_6b20a4100a68.
    t534 = t535->set( p0 = |ProxyObject| p1 = t537 ).
    DATA t538 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t539 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t539 = zcl_lnt_ob_index_module=>ns.
    DATA(t541) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1326_95d07c6e2b00.
    t538 = t539->set( p0 = |PushChannel| p1 = t541 ).
    DATA t542 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t543 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t543 = zcl_lnt_ob_index_module=>ns.
    DATA(t545) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1327_23c5119dc0cd.
    t542 = t543->set( p0 = |QueryUserGroup| p1 = t545 ).
    DATA t546 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t547 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t547 = zcl_lnt_ob_index_module=>ns.
    DATA(t549) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1340_7acdab4ff047.
    t546 = t547->set( p0 = |RestrictionField| p1 = t549 ).
    DATA t550 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t551 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t551 = zcl_lnt_ob_index_module=>ns.
    DATA(t553) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1341_c2fe64a924d3.
    t550 = t551->set( p0 = |RestrictionType| p1 = t553 ).
    DATA t554 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t555 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t555 = zcl_lnt_ob_index_module=>ns.
    DATA(t557) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1342_0dfa84a8b679.
    t554 = t555->set( p0 = |RFCService| p1 = t557 ).
    DATA t558 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t559 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t559 = zcl_lnt_ob_index_module=>ns.
    DATA(t561) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1344_0ac265784457.
    t558 = t559->set( p0 = |SAPScriptStyle| p1 = t561 ).
    DATA t562 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t563 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t563 = zcl_lnt_ob_index_module=>ns.
    DATA(t565) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1343_c715beb186c6.
    t562 = t563->set( p0 = |SAPScript| p1 = t565 ).
    DATA t566 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t567 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t567 = zcl_lnt_ob_index_module=>ns.
    DATA(t569) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1345_8c467e7ba9bb.
    t566 = t567->set( p0 = |ScreenVariant| p1 = t569 ).
    DATA t570 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t571 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t571 = zcl_lnt_ob_index_module=>ns.
    DATA(t573) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1346_d84d261ad8a9.
    t570 = t571->set( p0 = |SearchHelp| p1 = t573 ).
    DATA t574 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t575 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t575 = zcl_lnt_ob_index_module=>ns.
    DATA(t577) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1347_2dab5ec1f046.
    t574 = t575->set( p0 = |ServiceBinding| p1 = t577 ).
    DATA t578 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t579 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t579 = zcl_lnt_ob_index_module=>ns.
    DATA(t581) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1348_9c8533c70757.
    t578 = t579->set( p0 = |ServiceDefinition| p1 = t581 ).
    DATA t582 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t583 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t583 = zcl_lnt_ob_index_module=>ns.
    DATA(t585) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1349_42554aa70ed0.
    t582 = t583->set( p0 = |SharedMemory| p1 = t585 ).
    DATA t586 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t587 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t587 = zcl_lnt_ob_index_module=>ns.
    DATA(t589) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1350_e594999a8252.
    t586 = t587->set( p0 = |SmartForm| p1 = t589 ).
    DATA t590 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t591 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t591 = zcl_lnt_ob_index_module=>ns.
    DATA(t593) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1351_2227ca26f8c5.
    t590 = t591->set( p0 = |SmartStyle| p1 = t593 ).
    DATA t594 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t595 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t595 = zcl_lnt_ob_index_module=>ns.
    DATA(t597) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1352_d2893d852548.
    t594 = t595->set( p0 = |StandardTask| p1 = t597 ).
    DATA t598 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t599 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t599 = zcl_lnt_ob_index_module=>ns.
    DATA(t601) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1353_d9349a69f99a.
    t598 = t599->set( p0 = |SwitchAssignmentHierarchy| p1 = t601 ).
    DATA t602 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t603 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t603 = zcl_lnt_ob_index_module=>ns.
    DATA(t605) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1354_e37ffde603df.
    t602 = t603->set( p0 = |SwitchAssignments| p1 = t605 ).
    DATA t606 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t607 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t607 = zcl_lnt_ob_index_module=>ns.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1356_094f96f262ee.
    t606 = t607->set( p0 = |TableType| p1 = t609 ).
    DATA t610 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t611 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t611 = zcl_lnt_ob_index_module=>ns.
    DATA(t613) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1355_92f531eaac66.
    t610 = t611->set( p0 = |Table| p1 = t613 ).
    DATA t614 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t615 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t615 = zcl_lnt_ob_index_module=>ns.
    DATA(t617) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1357_e35e10f731f8.
    t614 = t615->set( p0 = |TechnicalJobDefinition| p1 = t617 ).
    DATA t618 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t619 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t619 = zcl_lnt_ob_index_module=>ns.
    DATA(t621) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1359_820640b2b641.
    t618 = t619->set( p0 = |TransactionVariant| p1 = t621 ).
    DATA t622 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t623 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t623 = zcl_lnt_ob_index_module=>ns.
    DATA(t625) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1358_856ae5ca70bf.
    t622 = t623->set( p0 = |Transaction| p1 = t625 ).
    DATA t626 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t627 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t627 = zcl_lnt_ob_index_module=>ns.
    DATA(t629) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1360_b7ed2e5cd906.
    t626 = t627->set( p0 = |Transformation| p1 = t629 ).
    DATA t630 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t631 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t631 = zcl_lnt_ob_index_module=>ns.
    DATA(t633) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1361_27884b4b0657.
    t630 = t631->set( p0 = |TypePool| p1 = t633 ).
    DATA t634 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t635 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t635 = zcl_lnt_ob_index_module=>ns.
    DATA(t637) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1363_2bc590c796d1.
    t634 = t635->set( p0 = |ViewCluster| p1 = t637 ).
    DATA t638 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t639 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t639 = zcl_lnt_ob_index_module=>ns.
    DATA(t641) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1362_bf065685ae45.
    t638 = t639->set( p0 = |View| p1 = t641 ).
    DATA t642 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t643 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t643 = zcl_lnt_ob_index_module=>ns.
    DATA(t645) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1364_0e50e52e518a.
    t642 = t643->set( p0 = |VirtualEndPoint| p1 = t645 ).
    DATA t646 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t647 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t647 = zcl_lnt_ob_index_module=>ns.
    DATA(t649) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1366_7f4b9d42b947.
    t646 = t647->set( p0 = |WebDynproApplicationConfiguration| p1 = t649 ).
    DATA t650 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t651 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t651 = zcl_lnt_ob_index_module=>ns.
    DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1365_966e575456b6.
    t650 = t651->set( p0 = |WebDynproApplication| p1 = t653 ).
    DATA t654 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t655 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t655 = zcl_lnt_ob_index_module=>ns.
    DATA(t657) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1368_7e3d2272c1ea.
    t654 = t655->set( p0 = |WebDynproComponentConfiguration| p1 = t657 ).
    DATA t658 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t659 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t659 = zcl_lnt_ob_index_module=>ns.
    DATA(t661) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1367_d94ec004b4ca.
    t658 = t659->set( p0 = |WebDynproComponent| p1 = t661 ).
    DATA t662 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t663 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t663 = zcl_lnt_ob_index_module=>ns.
    DATA(t665) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1369_63e1fa9eb9e5.
    t662 = t663->set( p0 = |WebMIME| p1 = t665 ).
    DATA t666 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    DATA t667 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t667 = zcl_lnt_ob_index_module=>ns.
    DATA(t669) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1370_19cca897fd49.
    t666 = t667->set( p0 = |WebReportingTemplate| p1 = t669 ).
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
