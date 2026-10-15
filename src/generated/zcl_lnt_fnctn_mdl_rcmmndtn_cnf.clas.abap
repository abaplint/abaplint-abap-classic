* TS: src/rules/function_module_recommendations.ts:21:1 FunctionModuleRecommendationsConf
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_0a6bdd5621d6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_view_write_s_0f506212eca3 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA recommendations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_cnf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zcl_lnt_recommendations.
    DATA t6 TYPE string.
    DATA(t7) = |CALCULATE_HASH_FOR_CHAR|.
    t6 = t7.
    DATA t8 TYPE string.
    DATA(t9) = |use CL_ABAP_MESSAGE_DIGEST|.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    t10 = t11.
    t5 = NEW zcl_lnt_recommendations( i_name = t6 i_replace_2bce = t8 i_from = t10 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |name|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = |replace|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t18) = t2.
    DATA t19 TYPE REF TO zcl_lnt_recommendations.
    DATA t20 TYPE string.
    DATA(t21) = |CALCULATE_HASH_FOR_RAW|.
    t20 = t21.
    DATA t22 TYPE string.
    DATA(t23) = |use CL_ABAP_HMAC or CL_ABAP_MESSAGE_DIGEST|.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    t19 = NEW zcl_lnt_recommendations( i_name = t20 i_replace_2bce = t22 i_from = t24 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |name|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |replace|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t32) = t2.
    DATA t33 TYPE REF TO zcl_lnt_recommendations.
    DATA t34 TYPE string.
    DATA(t35) = |CCU_TIMESTAMP_DIFFERENCE|.
    t34 = t35.
    DATA t36 TYPE string.
    DATA(t37) = |use CL_ABAP_TSTMP|.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t33 = NEW zcl_lnt_recommendations( i_name = t34 i_replace_2bce = t36 i_from = t38 ).
    CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
    t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
    t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |name|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |replace|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t46) = t2.
    DATA t47 TYPE REF TO zcl_lnt_recommendations.
    DATA t48 TYPE string.
    DATA(t49) = |CLPB_EXPORT|.
    t48 = t49.
    DATA t50 TYPE string.
    DATA(t51) = |use CL_GUI_FRONTEND_SERVICES|.
    t50 = t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    t52 = t53.
    t47 = NEW zcl_lnt_recommendations( i_name = t48 i_replace_2bce = t50 i_from = t52 ).
    CREATE OBJECT t47->zlnt_view_ownkeys_b0e8086400eb.
    t47->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t47->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t47->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t55 ).
    ENDIF.
    CREATE OBJECT t47->zlnt_json_ownkeys_70e5fd461788.
    t47->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t56) = |name|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t47->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    DATA(t58) = |replace|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t47->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA(t60) = t2.
    DATA t61 TYPE REF TO zcl_lnt_recommendations.
    DATA t62 TYPE string.
    DATA(t63) = |CLPB_IMPORT|.
    t62 = t63.
    DATA t64 TYPE string.
    DATA(t65) = |use CL_GUI_FRONTEND_SERVICES|.
    t64 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    t66 = t67.
    t61 = NEW zcl_lnt_recommendations( i_name = t62 i_replace_2bce = t64 i_from = t66 ).
    CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
    t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t68 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
    t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t70) = |name|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = |replace|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t74) = t2.
    DATA t75 TYPE REF TO zcl_lnt_recommendations.
    DATA t76 TYPE string.
    DATA(t77) = |CONVERT_DATE_TO_EXTERNAL|.
    t76 = t77.
    DATA t78 TYPE string.
    DATA(t79) = |use CL_ABAP_DATFM|.
    t78 = t79.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    t80 = t81.
    t75 = NEW zcl_lnt_recommendations( i_name = t76 i_replace_2bce = t78 i_from = t80 ).
    CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
    t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t82 ).
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t83 ).
    ENDIF.
    CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
    t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t84) = |name|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    ENDIF.
    DATA(t86) = |replace|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    t74->load( ).
    APPEND t75 TO t74->items.
    t74->save( ).
    DATA(t88) = t2.
    DATA t89 TYPE REF TO zcl_lnt_recommendations.
    DATA t90 TYPE string.
    DATA(t91) = |CONVERT_TIME_INPUT|.
    t90 = t91.
    DATA t92 TYPE string.
    DATA(t93) = |use CL_ABAP_TIMEFM|.
    t92 = t93.
    DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t95.
    t94 = t95.
    t89 = NEW zcl_lnt_recommendations( i_name = t90 i_replace_2bce = t92 i_from = t94 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t96 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t97 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t98) = |name|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |replace|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA(t102) = t2.
    DATA t103 TYPE REF TO zcl_lnt_recommendations.
    DATA t104 TYPE string.
    DATA(t105) = |DOWNLOAD|.
    t104 = t105.
    DATA t106 TYPE string.
    DATA(t107) = |use CL_GUI_FRONTEND_SERVICES|.
    t106 = t107.
    DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t109.
    t108 = t109.
    t103 = NEW zcl_lnt_recommendations( i_name = t104 i_replace_2bce = t106 i_from = t108 ).
    CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
    t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t110 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t111 ).
    ENDIF.
    CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
    t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t112) = |name|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    DATA(t114) = |replace|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
    ENDIF.
    t102->load( ).
    APPEND t103 TO t102->items.
    t102->save( ).
    DATA(t116) = t2.
    DATA t117 TYPE REF TO zcl_lnt_recommendations.
    DATA t118 TYPE string.
    DATA(t119) = |ECATT_CONV_XSTRING_TO_STRING|.
    t118 = t119.
    DATA t120 TYPE string.
    DATA(t121) = |use CL_BINARY_CONVERT|.
    t120 = t121.
    DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t123.
    t122 = t123.
    t117 = NEW zcl_lnt_recommendations( i_name = t118 i_replace_2bce = t120 i_from = t122 ).
    CREATE OBJECT t117->zlnt_view_ownkeys_b0e8086400eb.
    t117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t124 ).
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t125 ).
    ENDIF.
    CREATE OBJECT t117->zlnt_json_ownkeys_70e5fd461788.
    t117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t126) = |name|.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
    ENDIF.
    DATA(t128) = |replace|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
    ENDIF.
    t116->load( ).
    APPEND t117 TO t116->items.
    t116->save( ).
    DATA(t130) = t2.
    DATA t131 TYPE REF TO zcl_lnt_recommendations.
    DATA t132 TYPE string.
    DATA(t133) = |F4_FILENAME|.
    t132 = t133.
    DATA t134 TYPE string.
    DATA(t135) = |use CL_GUI_FRONTEND_SERVICES|.
    t134 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t137.
    t136 = t137.
    t131 = NEW zcl_lnt_recommendations( i_name = t132 i_replace_2bce = t134 i_from = t136 ).
    CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
    t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t138 ).
    ENDIF.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t139 ).
    ENDIF.
    CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
    t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t140) = |name|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
    ENDIF.
    DATA(t142) = |replace|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
    ENDIF.
    t130->load( ).
    APPEND t131 TO t130->items.
    t130->save( ).
    DATA(t144) = t2.
    DATA t145 TYPE REF TO zcl_lnt_recommendations.
    DATA t146 TYPE string.
    DATA(t147) = |FUNCTION_EXISTS|.
    t146 = t147.
    DATA t148 TYPE string.
    DATA(t149) = |surround with try-catch CX_SY_DYN_CALL_ILLEGAL_METHOD instea|.
    t149 = t149 && |d|.
    t148 = t149.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t151.
    t150 = t151.
    t145 = NEW zcl_lnt_recommendations( i_name = t146 i_replace_2bce = t148 i_from = t150 ).
    CREATE OBJECT t145->zlnt_view_ownkeys_b0e8086400eb.
    t145->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    IF t145->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t152 ).
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    IF t145->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t153 ).
    ENDIF.
    CREATE OBJECT t145->zlnt_json_ownkeys_70e5fd461788.
    t145->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t154) = |name|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    IF t145->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    ENDIF.
    DATA(t156) = |replace|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    IF t145->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
    ENDIF.
    t144->load( ).
    APPEND t145 TO t144->items.
    t144->save( ).
    DATA(t158) = t2.
    DATA t159 TYPE REF TO zcl_lnt_recommendations.
    DATA t160 TYPE string.
    DATA(t161) = |GUI_CREATE_DIRECTORY|.
    t160 = t161.
    DATA t162 TYPE string.
    DATA(t163) = |use CL_GUI_FRONTEND_SERVICES|.
    t162 = t163.
    DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t165.
    t164 = t165.
    t159 = NEW zcl_lnt_recommendations( i_name = t160 i_replace_2bce = t162 i_from = t164 ).
    CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
    t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t166 ).
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t167 ).
    ENDIF.
    CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
    t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t168) = |name|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
    ENDIF.
    DATA(t170) = |replace|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
    ENDIF.
    t158->load( ).
    APPEND t159 TO t158->items.
    t158->save( ).
    DATA(t172) = t2.
    DATA t173 TYPE REF TO zcl_lnt_recommendations.
    DATA t174 TYPE string.
    DATA(t175) = |GUI_DELETE_FILE|.
    t174 = t175.
    DATA t176 TYPE string.
    DATA(t177) = |use CL_GUI_FRONTEND_SERVICES|.
    t176 = t177.
    DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t179.
    t178 = t179.
    t173 = NEW zcl_lnt_recommendations( i_name = t174 i_replace_2bce = t176 i_from = t178 ).
    CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
    t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t180 ).
    ENDIF.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t181 ).
    ENDIF.
    CREATE OBJECT t173->zlnt_json_ownkeys_70e5fd461788.
    t173->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t182) = |name|.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
    ENDIF.
    DATA(t184) = |replace|.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
    ENDIF.
    t172->load( ).
    APPEND t173 TO t172->items.
    t172->save( ).
    DATA(t186) = t2.
    DATA t187 TYPE REF TO zcl_lnt_recommendations.
    DATA t188 TYPE string.
    DATA(t189) = |GUI_DOWNLOAD|.
    t188 = t189.
    DATA t190 TYPE string.
    DATA(t191) = |use CL_GUI_FRONTEND_SERVICES|.
    t190 = t191.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t193.
    t192 = t193.
    t187 = NEW zcl_lnt_recommendations( i_name = t188 i_replace_2bce = t190 i_from = t192 ).
    CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
    t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t194 ).
    ENDIF.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t195 ).
    ENDIF.
    CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
    t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t196) = |name|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    ENDIF.
    DATA(t198) = |replace|.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
    ENDIF.
    t186->load( ).
    APPEND t187 TO t186->items.
    t186->save( ).
    DATA(t200) = t2.
    DATA t201 TYPE REF TO zcl_lnt_recommendations.
    DATA t202 TYPE string.
    DATA(t203) = |GUI_EXEC|.
    t202 = t203.
    DATA t204 TYPE string.
    DATA(t205) = |use CL_GUI_FRONTEND_SERVICES|.
    t204 = t205.
    DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t207.
    t206 = t207.
    t201 = NEW zcl_lnt_recommendations( i_name = t202 i_replace_2bce = t204 i_from = t206 ).
    CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
    t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t208 ).
    ENDIF.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t209 ).
    ENDIF.
    CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
    t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t210) = |name|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
    ENDIF.
    DATA(t212) = |replace|.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
    ENDIF.
    t200->load( ).
    APPEND t201 TO t200->items.
    t200->save( ).
    DATA(t214) = t2.
    DATA t215 TYPE REF TO zcl_lnt_recommendations.
    DATA t216 TYPE string.
    DATA(t217) = |GUI_FB_USAGE|.
    t216 = t217.
    DATA t218 TYPE string.
    DATA(t219) = |use CL_GUI_FRONTEND_SERVICES|.
    t218 = t219.
    DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t221.
    t220 = t221.
    t215 = NEW zcl_lnt_recommendations( i_name = t216 i_replace_2bce = t218 i_from = t220 ).
    CREATE OBJECT t215->zlnt_view_ownkeys_b0e8086400eb.
    t215->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t222 ).
    ENDIF.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t223 ).
    ENDIF.
    CREATE OBJECT t215->zlnt_json_ownkeys_70e5fd461788.
    t215->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t224) = |name|.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
    ENDIF.
    DATA(t226) = |replace|.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
    ENDIF.
    t214->load( ).
    APPEND t215 TO t214->items.
    t214->save( ).
    DATA(t228) = t2.
    DATA t229 TYPE REF TO zcl_lnt_recommendations.
    DATA t230 TYPE string.
    DATA(t231) = |GUI_FILE_LOAD_DIALOG|.
    t230 = t231.
    DATA t232 TYPE string.
    DATA(t233) = |use CL_GUI_FRONTEND_SERVICES|.
    t232 = t233.
    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t235.
    t234 = t235.
    t229 = NEW zcl_lnt_recommendations( i_name = t230 i_replace_2bce = t232 i_from = t234 ).
    CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
    t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t236 ).
    ENDIF.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t237 ).
    ENDIF.
    CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
    t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t238) = |name|.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
    ENDIF.
    DATA(t240) = |replace|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
    ENDIF.
    t228->load( ).
    APPEND t229 TO t228->items.
    t228->save( ).
    DATA(t242) = t2.
    DATA t243 TYPE REF TO zcl_lnt_recommendations.
    DATA t244 TYPE string.
    DATA(t245) = |GUI_FILE_SAVE_DIALOG|.
    t244 = t245.
    DATA t246 TYPE string.
    DATA(t247) = |use CL_GUI_FRONTEND_SERVICES|.
    t246 = t247.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t249.
    t248 = t249.
    t243 = NEW zcl_lnt_recommendations( i_name = t244 i_replace_2bce = t246 i_from = t248 ).
    CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
    t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t250 ).
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t251 ).
    ENDIF.
    CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
    t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t252) = |name|.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
    ENDIF.
    DATA(t254) = |replace|.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
    ENDIF.
    t242->load( ).
    APPEND t243 TO t242->items.
    t242->save( ).
    DATA(t256) = t2.
    DATA t257 TYPE REF TO zcl_lnt_recommendations.
    DATA t258 TYPE string.
    DATA(t259) = |GUI_GET_DESKTOP_INFO|.
    t258 = t259.
    DATA t260 TYPE string.
    DATA(t261) = |use CL_GUI_FRONTEND_SERVICES|.
    t260 = t261.
    DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t263.
    t262 = t263.
    t257 = NEW zcl_lnt_recommendations( i_name = t258 i_replace_2bce = t260 i_from = t262 ).
    CREATE OBJECT t257->zlnt_view_ownkeys_b0e8086400eb.
    t257->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    IF t257->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t264 ).
    ENDIF.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    IF t257->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t265 ).
    ENDIF.
    CREATE OBJECT t257->zlnt_json_ownkeys_70e5fd461788.
    t257->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t266) = |name|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t257->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    ENDIF.
    DATA(t268) = |replace|.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    IF t257->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
    ENDIF.
    t256->load( ).
    APPEND t257 TO t256->items.
    t256->save( ).
    DATA(t270) = t2.
    DATA t271 TYPE REF TO zcl_lnt_recommendations.
    DATA t272 TYPE string.
    DATA(t273) = |GUI_GET_FILE_INFO|.
    t272 = t273.
    DATA t274 TYPE string.
    DATA(t275) = |use CL_GUI_FRONTEND_SERVICES|.
    t274 = t275.
    DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t277.
    t276 = t277.
    t271 = NEW zcl_lnt_recommendations( i_name = t272 i_replace_2bce = t274 i_from = t276 ).
    CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
    t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t278 ).
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t279 ).
    ENDIF.
    CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
    t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t280) = |name|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    ENDIF.
    DATA(t282) = |replace|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
    ENDIF.
    t270->load( ).
    APPEND t271 TO t270->items.
    t270->save( ).
    DATA(t284) = t2.
    DATA t285 TYPE REF TO zcl_lnt_recommendations.
    DATA t286 TYPE string.
    DATA(t287) = |GUI_GET_REGVALUE|.
    t286 = t287.
    DATA t288 TYPE string.
    DATA(t289) = |use CL_GUI_FRONTEND_SERVICES|.
    t288 = t289.
    DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t291.
    t290 = t291.
    t285 = NEW zcl_lnt_recommendations( i_name = t286 i_replace_2bce = t288 i_from = t290 ).
    CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
    t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t292 ).
    ENDIF.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t293 ).
    ENDIF.
    CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
    t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t294) = |name|.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
    ENDIF.
    DATA(t296) = |replace|.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
    ENDIF.
    t284->load( ).
    APPEND t285 TO t284->items.
    t284->save( ).
    DATA(t298) = t2.
    DATA t299 TYPE REF TO zcl_lnt_recommendations.
    DATA t300 TYPE string.
    DATA(t301) = |GUI_MULTIPLE_FILE_LOAD_DIALOG|.
    t300 = t301.
    DATA t302 TYPE string.
    DATA(t303) = |use CL_GUI_FRONTEND_SERVICES|.
    t302 = t303.
    DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t305.
    t304 = t305.
    t299 = NEW zcl_lnt_recommendations( i_name = t300 i_replace_2bce = t302 i_from = t304 ).
    CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
    t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t306 ).
    ENDIF.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t307 ).
    ENDIF.
    CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
    t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t308) = |name|.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
    ENDIF.
    DATA(t310) = |replace|.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
    ENDIF.
    t298->load( ).
    APPEND t299 TO t298->items.
    t298->save( ).
    DATA(t312) = t2.
    DATA t313 TYPE REF TO zcl_lnt_recommendations.
    DATA t314 TYPE string.
    DATA(t315) = |GUI_REMOVE_DIRECTORY|.
    t314 = t315.
    DATA t316 TYPE string.
    DATA(t317) = |use CL_GUI_FRONTEND_SERVICES|.
    t316 = t317.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t319.
    t318 = t319.
    t313 = NEW zcl_lnt_recommendations( i_name = t314 i_replace_2bce = t316 i_from = t318 ).
    CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
    t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t320 ).
    ENDIF.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t321 ).
    ENDIF.
    CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
    t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t322) = |name|.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
    ENDIF.
    DATA(t324) = |replace|.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
    ENDIF.
    t312->load( ).
    APPEND t313 TO t312->items.
    t312->save( ).
    DATA(t326) = t2.
    DATA t327 TYPE REF TO zcl_lnt_recommendations.
    DATA t328 TYPE string.
    DATA(t329) = |GUI_RUN|.
    t328 = t329.
    DATA t330 TYPE string.
    DATA(t331) = |use CL_GUI_FRONTEND_SERVICES|.
    t330 = t331.
    DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t333.
    t332 = t333.
    t327 = NEW zcl_lnt_recommendations( i_name = t328 i_replace_2bce = t330 i_from = t332 ).
    CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
    t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t334 ).
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t335 ).
    ENDIF.
    CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
    t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t336) = |name|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
    ENDIF.
    DATA(t338) = |replace|.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
    ENDIF.
    t326->load( ).
    APPEND t327 TO t326->items.
    t326->save( ).
    DATA(t340) = t2.
    DATA t341 TYPE REF TO zcl_lnt_recommendations.
    DATA t342 TYPE string.
    DATA(t343) = |GUI_SET_REGVALUE|.
    t342 = t343.
    DATA t344 TYPE string.
    DATA(t345) = |use CL_GUI_FRONTEND_SERVICES|.
    t344 = t345.
    DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t347.
    t346 = t347.
    t341 = NEW zcl_lnt_recommendations( i_name = t342 i_replace_2bce = t344 i_from = t346 ).
    CREATE OBJECT t341->zlnt_view_ownkeys_b0e8086400eb.
    t341->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    IF t341->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t341->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t348 ).
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    IF t341->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t341->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t349 ).
    ENDIF.
    CREATE OBJECT t341->zlnt_json_ownkeys_70e5fd461788.
    t341->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t350) = |name|.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    IF t341->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t341->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
    ENDIF.
    DATA(t352) = |replace|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    IF t341->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t341->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
    ENDIF.
    t340->load( ).
    APPEND t341 TO t340->items.
    t340->save( ).
    DATA(t354) = t2.
    DATA t355 TYPE REF TO zcl_lnt_recommendations.
    DATA t356 TYPE string.
    DATA(t357) = |GUI_UPLOAD|.
    t356 = t357.
    DATA t358 TYPE string.
    DATA(t359) = |use CL_GUI_FRONTEND_SERVICES|.
    t358 = t359.
    DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t361.
    t360 = t361.
    t355 = NEW zcl_lnt_recommendations( i_name = t356 i_replace_2bce = t358 i_from = t360 ).
    CREATE OBJECT t355->zlnt_view_ownkeys_b0e8086400eb.
    t355->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    IF t355->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t355->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t362 ).
    ENDIF.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    IF t355->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t355->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t363 ).
    ENDIF.
    CREATE OBJECT t355->zlnt_json_ownkeys_70e5fd461788.
    t355->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t364) = |name|.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    IF t355->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t355->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
    ENDIF.
    DATA(t366) = |replace|.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    IF t355->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t355->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
    ENDIF.
    t354->load( ).
    APPEND t355 TO t354->items.
    t354->save( ).
    DATA(t368) = t2.
    DATA t369 TYPE REF TO zcl_lnt_recommendations.
    DATA t370 TYPE string.
    DATA(t371) = |GUI_VSS_DOWNLOAD|.
    t370 = t371.
    DATA t372 TYPE string.
    DATA(t373) = |use CL_GUI_FRONTEND_SERVICES|.
    t372 = t373.
    DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t375.
    t374 = t375.
    t369 = NEW zcl_lnt_recommendations( i_name = t370 i_replace_2bce = t372 i_from = t374 ).
    CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
    t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t376 ).
    ENDIF.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t377 ).
    ENDIF.
    CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
    t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t378) = |name|.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
    ENDIF.
    DATA(t380) = |replace|.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t380 p1 = t381 ).
    ENDIF.
    t368->load( ).
    APPEND t369 TO t368->items.
    t368->save( ).
    DATA(t382) = t2.
    DATA t383 TYPE REF TO zcl_lnt_recommendations.
    DATA t384 TYPE string.
    DATA(t385) = |GUI_VSS_UPLOAD|.
    t384 = t385.
    DATA t386 TYPE string.
    DATA(t387) = |use CL_GUI_FRONTEND_SERVICES|.
    t386 = t387.
    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t389.
    t388 = t389.
    t383 = NEW zcl_lnt_recommendations( i_name = t384 i_replace_2bce = t386 i_from = t388 ).
    CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
    t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t390 ).
    ENDIF.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t391 ).
    ENDIF.
    CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
    t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t392) = |name|.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t392 p1 = t393 ).
    ENDIF.
    DATA(t394) = |replace|.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
    ENDIF.
    t382->load( ).
    APPEND t383 TO t382->items.
    t382->save( ).
    DATA(t396) = t2.
    DATA t397 TYPE REF TO zcl_lnt_recommendations.
    DATA t398 TYPE string.
    DATA(t399) = |GUID_CREATE|.
    t398 = t399.
    DATA t400 TYPE string.
    DATA(t401) = |use CL_SYSTEM_UUID|.
    t400 = t401.
    DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t403.
    t402 = t403.
    t397 = NEW zcl_lnt_recommendations( i_name = t398 i_replace_2bce = t400 i_from = t402 ).
    CREATE OBJECT t397->zlnt_view_ownkeys_b0e8086400eb.
    t397->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t404 ).
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t405 ).
    ENDIF.
    CREATE OBJECT t397->zlnt_json_ownkeys_70e5fd461788.
    t397->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t406) = |name|.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t406 p1 = t407 ).
    ENDIF.
    DATA(t408) = |replace|.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t408 p1 = t409 ).
    ENDIF.
    t396->load( ).
    APPEND t397 TO t396->items.
    t396->save( ).
    DATA(t410) = t2.
    DATA t411 TYPE REF TO zcl_lnt_recommendations.
    DATA t412 TYPE string.
    DATA(t413) = |IGN_TIMESTAMP_DIFFERENCE|.
    t412 = t413.
    DATA t414 TYPE string.
    DATA(t415) = |use CL_ABAP_TSTMP|.
    t414 = t415.
    DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t417.
    t416 = t417.
    t411 = NEW zcl_lnt_recommendations( i_name = t412 i_replace_2bce = t414 i_from = t416 ).
    CREATE OBJECT t411->zlnt_view_ownkeys_b0e8086400eb.
    t411->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t418 ).
    ENDIF.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t419 ).
    ENDIF.
    CREATE OBJECT t411->zlnt_json_ownkeys_70e5fd461788.
    t411->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t420) = |name|.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t421.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
    ENDIF.
    DATA(t422) = |replace|.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
    ENDIF.
    t410->load( ).
    APPEND t411 TO t410->items.
    t410->save( ).
    DATA(t424) = t2.
    DATA t425 TYPE REF TO zcl_lnt_recommendations.
    DATA t426 TYPE string.
    DATA(t427) = |IGN_TIMESTAMP_PLUSMINUS|.
    t426 = t427.
    DATA t428 TYPE string.
    DATA(t429) = |use CL_ABAP_TSTMP|.
    t428 = t429.
    DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t431.
    t430 = t431.
    t425 = NEW zcl_lnt_recommendations( i_name = t426 i_replace_2bce = t428 i_from = t430 ).
    CREATE OBJECT t425->zlnt_view_ownkeys_b0e8086400eb.
    t425->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    IF t425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t432 ).
    ENDIF.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    IF t425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t433 ).
    ENDIF.
    CREATE OBJECT t425->zlnt_json_ownkeys_70e5fd461788.
    t425->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t434) = |name|.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    IF t425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t434 p1 = t435 ).
    ENDIF.
    DATA(t436) = |replace|.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    IF t425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t436 p1 = t437 ).
    ENDIF.
    t424->load( ).
    APPEND t425 TO t424->items.
    t424->save( ).
    DATA(t438) = t2.
    DATA t439 TYPE REF TO zcl_lnt_recommendations.
    DATA t440 TYPE string.
    DATA(t441) = |ISM_SD_GET_PRICING_CONDITIONS|.
    t440 = t441.
    DATA t442 TYPE string.
    DATA(t443) = |use CL_PRC_RESULT_FACTORY as per note 2220005|.
    t442 = t443.
    DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t445.
    t444 = t445.
    t439 = NEW zcl_lnt_recommendations( i_name = t440 i_replace_2bce = t442 i_from = t444 ).
    CREATE OBJECT t439->zlnt_view_ownkeys_b0e8086400eb.
    t439->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    IF t439->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t439->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t446 ).
    ENDIF.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    IF t439->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t439->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t447 ).
    ENDIF.
    CREATE OBJECT t439->zlnt_json_ownkeys_70e5fd461788.
    t439->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t448) = |name|.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    IF t439->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t439->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
    ENDIF.
    DATA(t450) = |replace|.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    IF t439->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t439->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
    ENDIF.
    t438->load( ).
    APPEND t439 TO t438->items.
    t438->save( ).
    DATA(t452) = t2.
    DATA t453 TYPE REF TO zcl_lnt_recommendations.
    DATA t454 TYPE string.
    DATA(t455) = |JOB_CREATE|.
    t454 = t455.
    DATA t456 TYPE string.
    DATA(t457) = |use CL_BP_ABAP_JOB|.
    t456 = t457.
    DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t459.
    t458 = t459.
    t453 = NEW zcl_lnt_recommendations( i_name = t454 i_replace_2bce = t456 i_from = t458 ).
    CREATE OBJECT t453->zlnt_view_ownkeys_b0e8086400eb.
    t453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t460 ).
    ENDIF.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t461 ).
    ENDIF.
    CREATE OBJECT t453->zlnt_json_ownkeys_70e5fd461788.
    t453->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t462) = |name|.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t462 p1 = t463 ).
    ENDIF.
    DATA(t464) = |replace|.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
    ENDIF.
    t452->load( ).
    APPEND t453 TO t452->items.
    t452->save( ).
    DATA(t466) = t2.
    DATA t467 TYPE REF TO zcl_lnt_recommendations.
    DATA t468 TYPE string.
    DATA(t469) = |JOB_SUBMIT|.
    t468 = t469.
    DATA t470 TYPE string.
    DATA(t471) = |use CL_BP_ABAP_JOB|.
    t470 = t471.
    DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t473.
    t472 = t473.
    t467 = NEW zcl_lnt_recommendations( i_name = t468 i_replace_2bce = t470 i_from = t472 ).
    CREATE OBJECT t467->zlnt_view_ownkeys_b0e8086400eb.
    t467->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    IF t467->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t474 ).
    ENDIF.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    IF t467->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t475 ).
    ENDIF.
    CREATE OBJECT t467->zlnt_json_ownkeys_70e5fd461788.
    t467->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t476) = |name|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    IF t467->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t467->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
    ENDIF.
    DATA(t478) = |replace|.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    IF t467->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t467->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
    ENDIF.
    t466->load( ).
    APPEND t467 TO t466->items.
    t466->save( ).
    DATA(t480) = t2.
    DATA t481 TYPE REF TO zcl_lnt_recommendations.
    DATA t482 TYPE string.
    DATA(t483) = |MD5_CALCULATE_HASH_FOR_CHAR|.
    t482 = t483.
    DATA t484 TYPE string.
    DATA(t485) = |use CL_ABAP_MESSAGE_DIGEST|.
    t484 = t485.
    DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t487.
    t486 = t487.
    t481 = NEW zcl_lnt_recommendations( i_name = t482 i_replace_2bce = t484 i_from = t486 ).
    CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
    t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t488 ).
    ENDIF.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t489 ).
    ENDIF.
    CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
    t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t490) = |name|.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t491.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t490 p1 = t491 ).
    ENDIF.
    DATA(t492) = |replace|.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t492 p1 = t493 ).
    ENDIF.
    t480->load( ).
    APPEND t481 TO t480->items.
    t480->save( ).
    DATA(t494) = t2.
    DATA t495 TYPE REF TO zcl_lnt_recommendations.
    DATA t496 TYPE string.
    DATA(t497) = |MD5_CALCULATE_HASH_FOR_RAW|.
    t496 = t497.
    DATA t498 TYPE string.
    DATA(t499) = |use CL_ABAP_MESSAGE_DIGEST|.
    t498 = t499.
    DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t501.
    t500 = t501.
    t495 = NEW zcl_lnt_recommendations( i_name = t496 i_replace_2bce = t498 i_from = t500 ).
    CREATE OBJECT t495->zlnt_view_ownkeys_b0e8086400eb.
    t495->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    IF t495->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t495->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t502 ).
    ENDIF.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    IF t495->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t495->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t503 ).
    ENDIF.
    CREATE OBJECT t495->zlnt_json_ownkeys_70e5fd461788.
    t495->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t504) = |name|.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    IF t495->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t495->zlnt_json_ownkeys_70e5fd461788->put( p0 = t504 p1 = t505 ).
    ENDIF.
    DATA(t506) = |replace|.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    IF t495->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t495->zlnt_json_ownkeys_70e5fd461788->put( p0 = t506 p1 = t507 ).
    ENDIF.
    t494->load( ).
    APPEND t495 TO t494->items.
    t494->save( ).
    DATA(t508) = t2.
    DATA t509 TYPE REF TO zcl_lnt_recommendations.
    DATA t510 TYPE string.
    DATA(t511) = |POPUP_TO_CONFIRM_LOSS_OF_DATA|.
    t510 = t511.
    DATA t512 TYPE string.
    DATA(t513) = |use POPUP_TO_CONFIRM|.
    t512 = t513.
    DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t515.
    t514 = t515.
    t509 = NEW zcl_lnt_recommendations( i_name = t510 i_replace_2bce = t512 i_from = t514 ).
    CREATE OBJECT t509->zlnt_view_ownkeys_b0e8086400eb.
    t509->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    IF t509->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t516 ).
    ENDIF.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    IF t509->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t517 ).
    ENDIF.
    CREATE OBJECT t509->zlnt_json_ownkeys_70e5fd461788.
    t509->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t518) = |name|.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    IF t509->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = t518 p1 = t519 ).
    ENDIF.
    DATA(t520) = |replace|.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    IF t509->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = t520 p1 = t521 ).
    ENDIF.
    t508->load( ).
    APPEND t509 TO t508->items.
    t508->save( ).
    DATA(t522) = t2.
    DATA t523 TYPE REF TO zcl_lnt_recommendations.
    DATA t524 TYPE string.
    DATA(t525) = |POPUP_TO_CONFIRM_STEP|.
    t524 = t525.
    DATA t526 TYPE string.
    DATA(t527) = |use POPUP_TO_CONFIRM|.
    t526 = t527.
    DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t529.
    t528 = t529.
    t523 = NEW zcl_lnt_recommendations( i_name = t524 i_replace_2bce = t526 i_from = t528 ).
    CREATE OBJECT t523->zlnt_view_ownkeys_b0e8086400eb.
    t523->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    IF t523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t530 ).
    ENDIF.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    IF t523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t531 ).
    ENDIF.
    CREATE OBJECT t523->zlnt_json_ownkeys_70e5fd461788.
    t523->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t532) = |name|.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t533.
    IF t523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t532 p1 = t533 ).
    ENDIF.
    DATA(t534) = |replace|.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    IF t523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t534 p1 = t535 ).
    ENDIF.
    t522->load( ).
    APPEND t523 TO t522->items.
    t522->save( ).
    DATA(t536) = t2.
    DATA t537 TYPE REF TO zcl_lnt_recommendations.
    DATA t538 TYPE string.
    DATA(t539) = |POPUP_TO_CONFIRM_WITH_MESSAGE|.
    t538 = t539.
    DATA t540 TYPE string.
    DATA(t541) = |use POPUP_TO_CONFIRM|.
    t540 = t541.
    DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t543.
    t542 = t543.
    t537 = NEW zcl_lnt_recommendations( i_name = t538 i_replace_2bce = t540 i_from = t542 ).
    CREATE OBJECT t537->zlnt_view_ownkeys_b0e8086400eb.
    t537->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    IF t537->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t537->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t544 ).
    ENDIF.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t545.
    IF t537->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t537->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t545 ).
    ENDIF.
    CREATE OBJECT t537->zlnt_json_ownkeys_70e5fd461788.
    t537->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t546) = |name|.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    IF t537->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t537->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
    ENDIF.
    DATA(t548) = |replace|.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    IF t537->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t537->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
    ENDIF.
    t536->load( ).
    APPEND t537 TO t536->items.
    t536->save( ).
    DATA(t550) = t2.
    DATA t551 TYPE REF TO zcl_lnt_recommendations.
    DATA t552 TYPE string.
    DATA(t553) = |POPUP_TO_CONFIRM_WITH_VALUE|.
    t552 = t553.
    DATA t554 TYPE string.
    DATA(t555) = |use POPUP_TO_CONFIRM|.
    t554 = t555.
    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t557.
    t556 = t557.
    t551 = NEW zcl_lnt_recommendations( i_name = t552 i_replace_2bce = t554 i_from = t556 ).
    CREATE OBJECT t551->zlnt_view_ownkeys_b0e8086400eb.
    t551->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    IF t551->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t551->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t558 ).
    ENDIF.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    IF t551->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t551->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t559 ).
    ENDIF.
    CREATE OBJECT t551->zlnt_json_ownkeys_70e5fd461788.
    t551->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t560) = |name|.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    IF t551->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t551->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
    ENDIF.
    DATA(t562) = |replace|.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    IF t551->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t551->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
    ENDIF.
    t550->load( ).
    APPEND t551 TO t550->items.
    t550->save( ).
    DATA(t564) = t2.
    DATA t565 TYPE REF TO zcl_lnt_recommendations.
    DATA t566 TYPE string.
    DATA(t567) = |POPUP_TO_CONFIRM_WITH_VALUE_2|.
    t566 = t567.
    DATA t568 TYPE string.
    DATA(t569) = |use POPUP_TO_CONFIRM|.
    t568 = t569.
    DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t571.
    t570 = t571.
    t565 = NEW zcl_lnt_recommendations( i_name = t566 i_replace_2bce = t568 i_from = t570 ).
    CREATE OBJECT t565->zlnt_view_ownkeys_b0e8086400eb.
    t565->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t572.
    IF t565->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t572 ).
    ENDIF.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    IF t565->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t573 ).
    ENDIF.
    CREATE OBJECT t565->zlnt_json_ownkeys_70e5fd461788.
    t565->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t574) = |name|.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    IF t565->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
    ENDIF.
    DATA(t576) = |replace|.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    IF t565->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t576 p1 = t577 ).
    ENDIF.
    t564->load( ).
    APPEND t565 TO t564->items.
    t564->save( ).
    DATA(t578) = t2.
    DATA t579 TYPE REF TO zcl_lnt_recommendations.
    DATA t580 TYPE string.
    DATA(t581) = |POPUP_TO_DECIDE|.
    t580 = t581.
    DATA t582 TYPE string.
    DATA(t583) = |use POPUP_TO_CONFIRM|.
    t582 = t583.
    DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t585.
    t584 = t585.
    t579 = NEW zcl_lnt_recommendations( i_name = t580 i_replace_2bce = t582 i_from = t584 ).
    CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
    t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t586 ).
    ENDIF.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t587 ).
    ENDIF.
    CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
    t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t588) = |name|.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t589.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t588 p1 = t589 ).
    ENDIF.
    DATA(t590) = |replace|.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t590 p1 = t591 ).
    ENDIF.
    t578->load( ).
    APPEND t579 TO t578->items.
    t578->save( ).
    DATA(t592) = t2.
    DATA t593 TYPE REF TO zcl_lnt_recommendations.
    DATA t594 TYPE string.
    DATA(t595) = |POPUP_TO_DECIDE_INFO|.
    t594 = t595.
    DATA t596 TYPE string.
    DATA(t597) = |use POPUP_TO_CONFIRM|.
    t596 = t597.
    DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t599.
    t598 = t599.
    t593 = NEW zcl_lnt_recommendations( i_name = t594 i_replace_2bce = t596 i_from = t598 ).
    CREATE OBJECT t593->zlnt_view_ownkeys_b0e8086400eb.
    t593->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t600.
    IF t593->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t593->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t600 ).
    ENDIF.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    IF t593->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t593->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t601 ).
    ENDIF.
    CREATE OBJECT t593->zlnt_json_ownkeys_70e5fd461788.
    t593->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t602) = |name|.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t603.
    IF t593->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t593->zlnt_json_ownkeys_70e5fd461788->put( p0 = t602 p1 = t603 ).
    ENDIF.
    DATA(t604) = |replace|.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    IF t593->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t593->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
    ENDIF.
    t592->load( ).
    APPEND t593 TO t592->items.
    t592->save( ).
    DATA(t606) = t2.
    DATA t607 TYPE REF TO zcl_lnt_recommendations.
    DATA t608 TYPE string.
    DATA(t609) = |POPUP_TO_DECIDE_WITH_MESSAGE|.
    t608 = t609.
    DATA t610 TYPE string.
    DATA(t611) = |use POPUP_TO_CONFIRM|.
    t610 = t611.
    DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t613.
    t612 = t613.
    t607 = NEW zcl_lnt_recommendations( i_name = t608 i_replace_2bce = t610 i_from = t612 ).
    CREATE OBJECT t607->zlnt_view_ownkeys_b0e8086400eb.
    t607->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    IF t607->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t614 ).
    ENDIF.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t615.
    IF t607->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t615 ).
    ENDIF.
    CREATE OBJECT t607->zlnt_json_ownkeys_70e5fd461788.
    t607->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t616) = |name|.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t617.
    IF t607->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = t616 p1 = t617 ).
    ENDIF.
    DATA(t618) = |replace|.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t619.
    IF t607->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
    ENDIF.
    t606->load( ).
    APPEND t607 TO t606->items.
    t606->save( ).
    DATA(t620) = t2.
    DATA t621 TYPE REF TO zcl_lnt_recommendations.
    DATA t622 TYPE string.
    DATA(t623) = |POPUP_TO_GET_VALUE|.
    t622 = t623.
    DATA t624 TYPE string.
    DATA(t625) = |use POPUP_GET_VALUES|.
    t624 = t625.
    DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t627.
    t626 = t627.
    t621 = NEW zcl_lnt_recommendations( i_name = t622 i_replace_2bce = t624 i_from = t626 ).
    CREATE OBJECT t621->zlnt_view_ownkeys_b0e8086400eb.
    t621->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t628.
    IF t621->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t621->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t628 ).
    ENDIF.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    IF t621->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t621->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t629 ).
    ENDIF.
    CREATE OBJECT t621->zlnt_json_ownkeys_70e5fd461788.
    t621->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t630) = |name|.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t631.
    IF t621->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t621->zlnt_json_ownkeys_70e5fd461788->put( p0 = t630 p1 = t631 ).
    ENDIF.
    DATA(t632) = |replace|.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    IF t621->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t621->zlnt_json_ownkeys_70e5fd461788->put( p0 = t632 p1 = t633 ).
    ENDIF.
    t620->load( ).
    APPEND t621 TO t620->items.
    t620->save( ).
    DATA(t634) = t2.
    DATA t635 TYPE REF TO zcl_lnt_recommendations.
    DATA t636 TYPE string.
    DATA(t637) = |QF05_RANDOM_INTEGER|.
    t636 = t637.
    DATA t638 TYPE string.
    DATA(t639) = |use CL_ABAP_RANDOM_INT|.
    t638 = t639.
    DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t641 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t641.
    t640 = t641.
    t635 = NEW zcl_lnt_recommendations( i_name = t636 i_replace_2bce = t638 i_from = t640 ).
    CREATE OBJECT t635->zlnt_view_ownkeys_b0e8086400eb.
    t635->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    IF t635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t642 ).
    ENDIF.
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t643.
    IF t635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t643 ).
    ENDIF.
    CREATE OBJECT t635->zlnt_json_ownkeys_70e5fd461788.
    t635->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t644) = |name|.
    DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t645.
    IF t635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t644 p1 = t645 ).
    ENDIF.
    DATA(t646) = |replace|.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    IF t635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t646 p1 = t647 ).
    ENDIF.
    t634->load( ).
    APPEND t635 TO t634->items.
    t634->save( ).
    DATA(t648) = t2.
    DATA t649 TYPE REF TO zcl_lnt_recommendations.
    DATA t650 TYPE string.
    DATA(t651) = |REGISTRY_GET|.
    t650 = t651.
    DATA t652 TYPE string.
    DATA(t653) = |use CL_GUI_FRONTEND_SERVICES|.
    t652 = t653.
    DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t655 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t655.
    t654 = t655.
    t649 = NEW zcl_lnt_recommendations( i_name = t650 i_replace_2bce = t652 i_from = t654 ).
    CREATE OBJECT t649->zlnt_view_ownkeys_b0e8086400eb.
    t649->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    IF t649->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t649->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t656 ).
    ENDIF.
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t657.
    IF t649->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t649->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t657 ).
    ENDIF.
    CREATE OBJECT t649->zlnt_json_ownkeys_70e5fd461788.
    t649->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t658) = |name|.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    IF t649->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t649->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
    ENDIF.
    DATA(t660) = |replace|.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t661.
    IF t649->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t649->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
    ENDIF.
    t648->load( ).
    APPEND t649 TO t648->items.
    t648->save( ).
    DATA(t662) = t2.
    DATA t663 TYPE REF TO zcl_lnt_recommendations.
    DATA t664 TYPE string.
    DATA(t665) = |REGISTRY_SET|.
    t664 = t665.
    DATA t666 TYPE string.
    DATA(t667) = |use CL_GUI_FRONTEND_SERVICES|.
    t666 = t667.
    DATA t668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t669.
    t668 = t669.
    t663 = NEW zcl_lnt_recommendations( i_name = t664 i_replace_2bce = t666 i_from = t668 ).
    CREATE OBJECT t663->zlnt_view_ownkeys_b0e8086400eb.
    t663->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t670.
    IF t663->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t663->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t670 ).
    ENDIF.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t671.
    IF t663->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t663->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t671 ).
    ENDIF.
    CREATE OBJECT t663->zlnt_json_ownkeys_70e5fd461788.
    t663->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t672) = |name|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t673.
    IF t663->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t663->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    ENDIF.
    DATA(t674) = |replace|.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    IF t663->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t663->zlnt_json_ownkeys_70e5fd461788->put( p0 = t674 p1 = t675 ).
    ENDIF.
    t662->load( ).
    APPEND t663 TO t662->items.
    t662->save( ).
    DATA(t676) = t2.
    DATA t677 TYPE REF TO zcl_lnt_recommendations.
    DATA t678 TYPE string.
    DATA(t679) = |REUSE_ALV_GRID_DISPLAY|.
    t678 = t679.
    DATA t680 TYPE string.
    DATA(t681) = |use CL_SALV_TABLE=>FACTORY or CL_GUI_ALV_GRID|.
    t680 = t681.
    DATA t682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t683.
    t682 = t683.
    t677 = NEW zcl_lnt_recommendations( i_name = t678 i_replace_2bce = t680 i_from = t682 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t684.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t684 ).
    ENDIF.
    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t685.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t685 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t686) = |name|.
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t687.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t686 p1 = t687 ).
    ENDIF.
    DATA(t688) = |replace|.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t689.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t688 p1 = t689 ).
    ENDIF.
    t676->load( ).
    APPEND t677 TO t676->items.
    t676->save( ).
    DATA(t690) = t2.
    DATA t691 TYPE REF TO zcl_lnt_recommendations.
    DATA t692 TYPE string.
    DATA(t693) = |ROUND|.
    t692 = t693.
    DATA t694 TYPE string.
    DATA(t695) = |use built in function: round()|.
    t694 = t695.
    DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t697.
    t696 = t697.
    t691 = NEW zcl_lnt_recommendations( i_name = t692 i_replace_2bce = t694 i_from = t696 ).
    CREATE OBJECT t691->zlnt_view_ownkeys_b0e8086400eb.
    t691->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t698.
    IF t691->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t691->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t698 ).
    ENDIF.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    IF t691->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t691->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t699 ).
    ENDIF.
    CREATE OBJECT t691->zlnt_json_ownkeys_70e5fd461788.
    t691->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t700) = |name|.
    DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t701.
    IF t691->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t691->zlnt_json_ownkeys_70e5fd461788->put( p0 = t700 p1 = t701 ).
    ENDIF.
    DATA(t702) = |replace|.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t703.
    IF t691->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t691->zlnt_json_ownkeys_70e5fd461788->put( p0 = t702 p1 = t703 ).
    ENDIF.
    t690->load( ).
    APPEND t691 TO t690->items.
    t690->save( ).
    DATA(t704) = t2.
    DATA t705 TYPE REF TO zcl_lnt_recommendations.
    DATA t706 TYPE string.
    DATA(t707) = |SAPGUI_PROGRESS_INDICATOR|.
    t706 = t707.
    DATA t708 TYPE string.
    DATA(t709) = |use CL_PROGRESS_INDICATOR|.
    t708 = t709.
    DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t711.
    t710 = t711.
    t705 = NEW zcl_lnt_recommendations( i_name = t706 i_replace_2bce = t708 i_from = t710 ).
    CREATE OBJECT t705->zlnt_view_ownkeys_b0e8086400eb.
    t705->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    IF t705->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t712 ).
    ENDIF.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    IF t705->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t713 ).
    ENDIF.
    CREATE OBJECT t705->zlnt_json_ownkeys_70e5fd461788.
    t705->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t714) = |name|.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t715.
    IF t705->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = t714 p1 = t715 ).
    ENDIF.
    DATA(t716) = |replace|.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t717.
    IF t705->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = t716 p1 = t717 ).
    ENDIF.
    t704->load( ).
    APPEND t705 TO t704->items.
    t704->save( ).
    DATA(t718) = t2.
    DATA t719 TYPE REF TO zcl_lnt_recommendations.
    DATA t720 TYPE string.
    DATA(t721) = |SCMS_BASE64_DECODE_STR|.
    t720 = t721.
    DATA t722 TYPE string.
    DATA(t723) = |use class CL_HTTP_UTILITY methods|.
    t722 = t723.
    DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t725.
    t724 = t725.
    t719 = NEW zcl_lnt_recommendations( i_name = t720 i_replace_2bce = t722 i_from = t724 ).
    CREATE OBJECT t719->zlnt_view_ownkeys_b0e8086400eb.
    t719->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t726.
    IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t726 ).
    ENDIF.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t727.
    IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t727 ).
    ENDIF.
    CREATE OBJECT t719->zlnt_json_ownkeys_70e5fd461788.
    t719->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t728) = |name|.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t729.
    IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t728 p1 = t729 ).
    ENDIF.
    DATA(t730) = |replace|.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t731.
    IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t730 p1 = t731 ).
    ENDIF.
    t718->load( ).
    APPEND t719 TO t718->items.
    t718->save( ).
    DATA(t732) = t2.
    DATA t733 TYPE REF TO zcl_lnt_recommendations.
    DATA t734 TYPE string.
    DATA(t735) = |SCMS_STRING_TO_XSTRING|.
    t734 = t735.
    DATA t736 TYPE string.
    DATA(t737) = |use CL_BINARY_CONVERT|.
    t736 = t737.
    DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t739 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t739.
    t738 = t739.
    t733 = NEW zcl_lnt_recommendations( i_name = t734 i_replace_2bce = t736 i_from = t738 ).
    CREATE OBJECT t733->zlnt_view_ownkeys_b0e8086400eb.
    t733->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t740.
    IF t733->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t740 ).
    ENDIF.
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t741.
    IF t733->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t741 ).
    ENDIF.
    CREATE OBJECT t733->zlnt_json_ownkeys_70e5fd461788.
    t733->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t742) = |name|.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t743.
    IF t733->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t742 p1 = t743 ).
    ENDIF.
    DATA(t744) = |replace|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t745.
    IF t733->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t744 p1 = t745 ).
    ENDIF.
    t732->load( ).
    APPEND t733 TO t732->items.
    t732->save( ).
    DATA(t746) = t2.
    DATA t747 TYPE REF TO zcl_lnt_recommendations.
    DATA t748 TYPE string.
    DATA(t749) = |SO_NEW_DOCUMENT_ATT_SEND_API1|.
    t748 = t749.
    DATA t750 TYPE string.
    DATA(t751) = |use CL_BCS|.
    t750 = t751.
    DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t753.
    t752 = t753.
    t747 = NEW zcl_lnt_recommendations( i_name = t748 i_replace_2bce = t750 i_from = t752 ).
    CREATE OBJECT t747->zlnt_view_ownkeys_b0e8086400eb.
    t747->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t754.
    IF t747->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t754 ).
    ENDIF.
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t755.
    IF t747->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t755 ).
    ENDIF.
    CREATE OBJECT t747->zlnt_json_ownkeys_70e5fd461788.
    t747->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t756) = |name|.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    IF t747->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t747->zlnt_json_ownkeys_70e5fd461788->put( p0 = t756 p1 = t757 ).
    ENDIF.
    DATA(t758) = |replace|.
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t759.
    IF t747->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t747->zlnt_json_ownkeys_70e5fd461788->put( p0 = t758 p1 = t759 ).
    ENDIF.
    t746->load( ).
    APPEND t747 TO t746->items.
    t746->save( ).
    DATA(t760) = t2.
    DATA t761 TYPE REF TO zcl_lnt_recommendations.
    DATA t762 TYPE string.
    DATA(t763) = |SSFC_BASE64_DECODE|.
    t762 = t763.
    DATA t764 TYPE string.
    DATA(t765) = |use class CL_HTTP_UTILITY methods|.
    t764 = t765.
    DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t767.
    t766 = t767.
    t761 = NEW zcl_lnt_recommendations( i_name = t762 i_replace_2bce = t764 i_from = t766 ).
    CREATE OBJECT t761->zlnt_view_ownkeys_b0e8086400eb.
    t761->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t768.
    IF t761->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t761->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t768 ).
    ENDIF.
    DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t769.
    IF t761->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t761->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t769 ).
    ENDIF.
    CREATE OBJECT t761->zlnt_json_ownkeys_70e5fd461788.
    t761->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t770) = |name|.
    DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t771.
    IF t761->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t761->zlnt_json_ownkeys_70e5fd461788->put( p0 = t770 p1 = t771 ).
    ENDIF.
    DATA(t772) = |replace|.
    DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t773.
    IF t761->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t761->zlnt_json_ownkeys_70e5fd461788->put( p0 = t772 p1 = t773 ).
    ENDIF.
    t760->load( ).
    APPEND t761 TO t760->items.
    t760->save( ).
    DATA(t774) = t2.
    DATA t775 TYPE REF TO zcl_lnt_recommendations.
    DATA t776 TYPE string.
    DATA(t777) = |SSFC_BASE64_ENCODE|.
    t776 = t777.
    DATA t778 TYPE string.
    DATA(t779) = |use class CL_HTTP_UTILITY methods|.
    t778 = t779.
    DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t781.
    t780 = t781.
    t775 = NEW zcl_lnt_recommendations( i_name = t776 i_replace_2bce = t778 i_from = t780 ).
    CREATE OBJECT t775->zlnt_view_ownkeys_b0e8086400eb.
    t775->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t782.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t782 ).
    ENDIF.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t783.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t783 ).
    ENDIF.
    CREATE OBJECT t775->zlnt_json_ownkeys_70e5fd461788.
    t775->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t784) = |name|.
    DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t785.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t784 p1 = t785 ).
    ENDIF.
    DATA(t786) = |replace|.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t787.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t786 p1 = t787 ).
    ENDIF.
    t774->load( ).
    APPEND t775 TO t774->items.
    t774->save( ).
    DATA(t788) = t2.
    DATA t789 TYPE REF TO zcl_lnt_recommendations.
    DATA t790 TYPE string.
    DATA(t791) = |SUBST_GET_FILE_LIST|.
    t790 = t791.
    DATA t792 TYPE string.
    DATA(t793) = |see note 1686357|.
    t792 = t793.
    DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t795.
    t794 = t795.
    t789 = NEW zcl_lnt_recommendations( i_name = t790 i_replace_2bce = t792 i_from = t794 ).
    CREATE OBJECT t789->zlnt_view_ownkeys_b0e8086400eb.
    t789->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t796.
    IF t789->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t789->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t796 ).
    ENDIF.
    DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t797.
    IF t789->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t789->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t797 ).
    ENDIF.
    CREATE OBJECT t789->zlnt_json_ownkeys_70e5fd461788.
    t789->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t798) = |name|.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t799.
    IF t789->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t789->zlnt_json_ownkeys_70e5fd461788->put( p0 = t798 p1 = t799 ).
    ENDIF.
    DATA(t800) = |replace|.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t801.
    IF t789->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t789->zlnt_json_ownkeys_70e5fd461788->put( p0 = t800 p1 = t801 ).
    ENDIF.
    t788->load( ).
    APPEND t789 TO t788->items.
    t788->save( ).
    DATA(t802) = t2.
    DATA t803 TYPE REF TO zcl_lnt_recommendations.
    DATA t804 TYPE string.
    DATA(t805) = |SYSTEM_GET_UNIQUE_ID|.
    t804 = t805.
    DATA t806 TYPE string.
    DATA(t807) = |use CL_SYSTEM_UUID|.
    t806 = t807.
    DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t809.
    t808 = t809.
    t803 = NEW zcl_lnt_recommendations( i_name = t804 i_replace_2bce = t806 i_from = t808 ).
    CREATE OBJECT t803->zlnt_view_ownkeys_b0e8086400eb.
    t803->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t810.
    IF t803->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t803->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t810 ).
    ENDIF.
    DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t811.
    IF t803->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t803->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t811 ).
    ENDIF.
    CREATE OBJECT t803->zlnt_json_ownkeys_70e5fd461788.
    t803->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t812) = |name|.
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t813.
    IF t803->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t803->zlnt_json_ownkeys_70e5fd461788->put( p0 = t812 p1 = t813 ).
    ENDIF.
    DATA(t814) = |replace|.
    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t815.
    IF t803->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t803->zlnt_json_ownkeys_70e5fd461788->put( p0 = t814 p1 = t815 ).
    ENDIF.
    t802->load( ).
    APPEND t803 TO t802->items.
    t802->save( ).
    DATA(t816) = t2.
    DATA t817 TYPE REF TO zcl_lnt_recommendations.
    DATA t818 TYPE string.
    DATA(t819) = |SYSTEM_UUID_C_CREATE|.
    t818 = t819.
    DATA t820 TYPE string.
    DATA(t821) = |use CL_SYSTEM_UUID|.
    t820 = t821.
    DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t823.
    t822 = t823.
    t817 = NEW zcl_lnt_recommendations( i_name = t818 i_replace_2bce = t820 i_from = t822 ).
    CREATE OBJECT t817->zlnt_view_ownkeys_b0e8086400eb.
    t817->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t824.
    IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t824 ).
    ENDIF.
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t825.
    IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t825 ).
    ENDIF.
    CREATE OBJECT t817->zlnt_json_ownkeys_70e5fd461788.
    t817->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t826) = |name|.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t827.
    IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t826 p1 = t827 ).
    ENDIF.
    DATA(t828) = |replace|.
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t829.
    IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t828 p1 = t829 ).
    ENDIF.
    t816->load( ).
    APPEND t817 TO t816->items.
    t816->save( ).
    DATA(t830) = t2.
    DATA t831 TYPE REF TO zcl_lnt_recommendations.
    DATA t832 TYPE string.
    DATA(t833) = |UPLOAD|.
    t832 = t833.
    DATA t834 TYPE string.
    DATA(t835) = |use CL_GUI_FRONTEND_SERVICES|.
    t834 = t835.
    DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t837 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t837.
    t836 = t837.
    t831 = NEW zcl_lnt_recommendations( i_name = t832 i_replace_2bce = t834 i_from = t836 ).
    CREATE OBJECT t831->zlnt_view_ownkeys_b0e8086400eb.
    t831->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t838.
    IF t831->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t831->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t838 ).
    ENDIF.
    DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t839.
    IF t831->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t831->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t839 ).
    ENDIF.
    CREATE OBJECT t831->zlnt_json_ownkeys_70e5fd461788.
    t831->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t840) = |name|.
    DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t841.
    IF t831->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t831->zlnt_json_ownkeys_70e5fd461788->put( p0 = t840 p1 = t841 ).
    ENDIF.
    DATA(t842) = |replace|.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t843.
    IF t831->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t831->zlnt_json_ownkeys_70e5fd461788->put( p0 = t842 p1 = t843 ).
    ENDIF.
    t830->load( ).
    APPEND t831 TO t830->items.
    t830->save( ).
    DATA(t844) = t2.
    DATA t845 TYPE REF TO zcl_lnt_recommendations.
    DATA t846 TYPE string.
    DATA(t847) = |WS_DOWNLOAD|.
    t846 = t847.
    DATA t848 TYPE string.
    DATA(t849) = |use CL_GUI_FRONTEND_SERVICES|.
    t848 = t849.
    DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t851 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t851.
    t850 = t851.
    t845 = NEW zcl_lnt_recommendations( i_name = t846 i_replace_2bce = t848 i_from = t850 ).
    CREATE OBJECT t845->zlnt_view_ownkeys_b0e8086400eb.
    t845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t852.
    IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t852 ).
    ENDIF.
    DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t853.
    IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t853 ).
    ENDIF.
    CREATE OBJECT t845->zlnt_json_ownkeys_70e5fd461788.
    t845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t854) = |name|.
    DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t855.
    IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t854 p1 = t855 ).
    ENDIF.
    DATA(t856) = |replace|.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t857.
    IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t856 p1 = t857 ).
    ENDIF.
    t844->load( ).
    APPEND t845 TO t844->items.
    t844->save( ).
    DATA(t858) = t2.
    DATA t859 TYPE REF TO zcl_lnt_recommendations.
    DATA t860 TYPE string.
    DATA(t861) = |WS_EXECUTE|.
    t860 = t861.
    DATA t862 TYPE string.
    DATA(t863) = |use CL_GUI_FRONTEND_SERVICES|.
    t862 = t863.
    DATA t864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t865.
    t864 = t865.
    t859 = NEW zcl_lnt_recommendations( i_name = t860 i_replace_2bce = t862 i_from = t864 ).
    CREATE OBJECT t859->zlnt_view_ownkeys_b0e8086400eb.
    t859->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t866.
    IF t859->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t859->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t866 ).
    ENDIF.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t867.
    IF t859->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t859->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t867 ).
    ENDIF.
    CREATE OBJECT t859->zlnt_json_ownkeys_70e5fd461788.
    t859->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t868) = |name|.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t869.
    IF t859->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t859->zlnt_json_ownkeys_70e5fd461788->put( p0 = t868 p1 = t869 ).
    ENDIF.
    DATA(t870) = |replace|.
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t871.
    IF t859->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t859->zlnt_json_ownkeys_70e5fd461788->put( p0 = t870 p1 = t871 ).
    ENDIF.
    t858->load( ).
    APPEND t859 TO t858->items.
    t858->save( ).
    DATA(t872) = t2.
    DATA t873 TYPE REF TO zcl_lnt_recommendations.
    DATA t874 TYPE string.
    DATA(t875) = |WS_FILENAME_GET|.
    t874 = t875.
    DATA t876 TYPE string.
    DATA(t877) = |use CL_GUI_FRONTEND_SERVICES|.
    t876 = t877.
    DATA t878 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t879 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t879.
    t878 = t879.
    t873 = NEW zcl_lnt_recommendations( i_name = t874 i_replace_2bce = t876 i_from = t878 ).
    CREATE OBJECT t873->zlnt_view_ownkeys_b0e8086400eb.
    t873->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t880.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t880 ).
    ENDIF.
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t881.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t881 ).
    ENDIF.
    CREATE OBJECT t873->zlnt_json_ownkeys_70e5fd461788.
    t873->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t882) = |name|.
    DATA t883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t883.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t882 p1 = t883 ).
    ENDIF.
    DATA(t884) = |replace|.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t885.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t884 p1 = t885 ).
    ENDIF.
    t872->load( ).
    APPEND t873 TO t872->items.
    t872->save( ).
    DATA(t886) = t2.
    DATA t887 TYPE REF TO zcl_lnt_recommendations.
    DATA t888 TYPE string.
    DATA(t889) = |WS_FILE_ATTRIB|.
    t888 = t889.
    DATA t890 TYPE string.
    DATA(t891) = |use CL_GUI_FRONTEND_SERVICES|.
    t890 = t891.
    DATA t892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t893.
    t892 = t893.
    t887 = NEW zcl_lnt_recommendations( i_name = t888 i_replace_2bce = t890 i_from = t892 ).
    CREATE OBJECT t887->zlnt_view_ownkeys_b0e8086400eb.
    t887->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t894.
    IF t887->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t894 ).
    ENDIF.
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t895.
    IF t887->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t895 ).
    ENDIF.
    CREATE OBJECT t887->zlnt_json_ownkeys_70e5fd461788.
    t887->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t896) = |name|.
    DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t897.
    IF t887->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = t896 p1 = t897 ).
    ENDIF.
    DATA(t898) = |replace|.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t899.
    IF t887->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = t898 p1 = t899 ).
    ENDIF.
    t886->load( ).
    APPEND t887 TO t886->items.
    t886->save( ).
    DATA(t900) = t2.
    DATA t901 TYPE REF TO zcl_lnt_recommendations.
    DATA t902 TYPE string.
    DATA(t903) = |WS_FILE_COPY|.
    t902 = t903.
    DATA t904 TYPE string.
    DATA(t905) = |use CL_GUI_FRONTEND_SERVICES|.
    t904 = t905.
    DATA t906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t907 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t907.
    t906 = t907.
    t901 = NEW zcl_lnt_recommendations( i_name = t902 i_replace_2bce = t904 i_from = t906 ).
    CREATE OBJECT t901->zlnt_view_ownkeys_b0e8086400eb.
    t901->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t908.
    IF t901->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t901->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t908 ).
    ENDIF.
    DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t909.
    IF t901->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t901->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t909 ).
    ENDIF.
    CREATE OBJECT t901->zlnt_json_ownkeys_70e5fd461788.
    t901->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t910) = |name|.
    DATA t911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t911.
    IF t901->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t901->zlnt_json_ownkeys_70e5fd461788->put( p0 = t910 p1 = t911 ).
    ENDIF.
    DATA(t912) = |replace|.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t913.
    IF t901->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t901->zlnt_json_ownkeys_70e5fd461788->put( p0 = t912 p1 = t913 ).
    ENDIF.
    t900->load( ).
    APPEND t901 TO t900->items.
    t900->save( ).
    DATA(t914) = t2.
    DATA t915 TYPE REF TO zcl_lnt_recommendations.
    DATA t916 TYPE string.
    DATA(t917) = |WS_FILE_DELETE|.
    t916 = t917.
    DATA t918 TYPE string.
    DATA(t919) = |use CL_GUI_FRONTEND_SERVICES|.
    t918 = t919.
    DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t921 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t921.
    t920 = t921.
    t915 = NEW zcl_lnt_recommendations( i_name = t916 i_replace_2bce = t918 i_from = t920 ).
    CREATE OBJECT t915->zlnt_view_ownkeys_b0e8086400eb.
    t915->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t922.
    IF t915->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t922 ).
    ENDIF.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t923.
    IF t915->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t923 ).
    ENDIF.
    CREATE OBJECT t915->zlnt_json_ownkeys_70e5fd461788.
    t915->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t924) = |name|.
    DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t925.
    IF t915->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = t924 p1 = t925 ).
    ENDIF.
    DATA(t926) = |replace|.
    DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t927.
    IF t915->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = t926 p1 = t927 ).
    ENDIF.
    t914->load( ).
    APPEND t915 TO t914->items.
    t914->save( ).
    DATA(t928) = t2.
    DATA t929 TYPE REF TO zcl_lnt_recommendations.
    DATA t930 TYPE string.
    DATA(t931) = |WS_QUERY|.
    t930 = t931.
    DATA t932 TYPE string.
    DATA(t933) = |use CL_GUI_FRONTEND_SERVICES|.
    t932 = t933.
    DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t935.
    t934 = t935.
    t929 = NEW zcl_lnt_recommendations( i_name = t930 i_replace_2bce = t932 i_from = t934 ).
    CREATE OBJECT t929->zlnt_view_ownkeys_b0e8086400eb.
    t929->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t936.
    IF t929->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t936 ).
    ENDIF.
    DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t937.
    IF t929->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t937 ).
    ENDIF.
    CREATE OBJECT t929->zlnt_json_ownkeys_70e5fd461788.
    t929->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t938) = |name|.
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t939.
    IF t929->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t938 p1 = t939 ).
    ENDIF.
    DATA(t940) = |replace|.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t941.
    IF t929->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t940 p1 = t941 ).
    ENDIF.
    t928->load( ).
    APPEND t929 TO t928->items.
    t928->save( ).
    DATA(t942) = t2.
    DATA t943 TYPE REF TO zcl_lnt_recommendations.
    DATA t944 TYPE string.
    DATA(t945) = |WS_UPLOAD|.
    t944 = t945.
    DATA t946 TYPE string.
    DATA(t947) = |use CL_GUI_FRONTEND_SERVICES|.
    t946 = t947.
    DATA t948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t949.
    t948 = t949.
    t943 = NEW zcl_lnt_recommendations( i_name = t944 i_replace_2bce = t946 i_from = t948 ).
    CREATE OBJECT t943->zlnt_view_ownkeys_b0e8086400eb.
    t943->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t950.
    IF t943->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t950 ).
    ENDIF.
    DATA t951 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t951.
    IF t943->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t951 ).
    ENDIF.
    CREATE OBJECT t943->zlnt_json_ownkeys_70e5fd461788.
    t943->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t952) = |name|.
    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t953.
    IF t943->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t952 p1 = t953 ).
    ENDIF.
    DATA(t954) = |replace|.
    DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t955.
    IF t943->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t954 p1 = t955 ).
    ENDIF.
    t942->load( ).
    APPEND t943 TO t942->items.
    t942->save( ).
    DATA(t956) = t2.
    t1 = t956.
    me->zlnt_view_write_s_0f506212eca3( p0 = t1 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1517_8372396b0f05.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_0a6bdd5621d6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `recommendations` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              result ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT result.
          result->source = t1.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
        ENDIF.
        result->load( ).
        DATA t2 TYPE REF TO object.
        CLEAR t2.
        DATA t3 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t3.
        LOOP AT result->items INTO t2.
          DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t4.
          CLEAR t3.
          IF t2 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t4 ?= t2.
            CLEAR t3.
            IF t4 IS BOUND.
              IF t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t3 ?= t4->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t3 IS NOT BOUND.
                IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t5.
                  IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t5 ?= t4->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t5->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t6) = VALUE string( ).
                DATA(t7) = VALUE string( ).
                DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t8.
                t3 = NEW zcl_lnt_recommendations( view_source = t4 i_name = t6 i_replace_2bce = t7 i_from = t8 ).
              ENDIF.
            ENDIF.
          ELSE.
            t3 ?= t2.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ELSE.
      result = me->recommendations.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0f506212eca3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t2.
        DATA t3 TYPE REF TO object.
        CLEAR t3.
        CLEAR t2.
        t3 = p0.
        TRY.
            t1 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1 IS NOT BOUND.
          TRY.
              t2 ?= p0.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2 IS BOUND.
            t1 = t2->source( ).
          ENDIF.
          IF t1 IS NOT BOUND.
            CREATE OBJECT t1.
            t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t1->oval = p0.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `recommendations` p1 = t1 ).
    ELSE.
      me->recommendations = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `recommendations`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `recommendations`.
        result = abap_true.
      WHEN `exclude`.
        result = abap_true.
      WHEN `severity`.
        result = abap_true.
    ENDCASE.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_false.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    result = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = NEW #( ).
    t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exclude` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exclude` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `severity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `severity` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `recommendations` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `recommendations` p1 = VALUE #( ) ).
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: native prototype lookup unavailable`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->severity->value.
        ENDIF.
      WHEN `recommendations`.
        CLEAR result.
        IF me->recommendations IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->recommendations.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->recommendations.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->recommendations.
            ENDIF.
          ENDIF.
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          me->severity->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
