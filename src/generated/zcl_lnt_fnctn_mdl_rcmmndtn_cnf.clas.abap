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
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_recommendations.
    DATA t6 TYPE string.
    t6 = |CALCULATE_HASH_FOR_CHAR|.
    DATA t8 TYPE string.
    t8 = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = NEW zcl_lnt_recommendations( i_name = t6 i_replace_2bce = t8 i_from = t10 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |name|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    DATA(t16) = |replace|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA t19 TYPE REF TO zcl_lnt_recommendations.
    DATA t20 TYPE string.
    t20 = |CALCULATE_HASH_FOR_RAW|.
    DATA t22 TYPE string.
    t22 = |use CL_ABAP_HMAC or CL_ABAP_MESSAGE_DIGEST|.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t19 = NEW zcl_lnt_recommendations( i_name = t20 i_replace_2bce = t22 i_from = t24 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |name|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    DATA(t30) = |replace|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    t2->load( ).
    APPEND t19 TO t2->items.
    t2->save( ).
    DATA t33 TYPE REF TO zcl_lnt_recommendations.
    DATA t34 TYPE string.
    t34 = |CCU_TIMESTAMP_DIFFERENCE|.
    DATA t36 TYPE string.
    t36 = |use CL_ABAP_TSTMP|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t33 = NEW zcl_lnt_recommendations( i_name = t34 i_replace_2bce = t36 i_from = t38 ).
    CREATE OBJECT t33->zlnt_view_ownkeys_b0e8086400eb.
    t33->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t33->zlnt_json_ownkeys_70e5fd461788.
    t33->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |name|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |replace|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    t2->load( ).
    APPEND t33 TO t2->items.
    t2->save( ).
    DATA t47 TYPE REF TO zcl_lnt_recommendations.
    DATA t48 TYPE string.
    t48 = |CLPB_EXPORT|.
    DATA t50 TYPE string.
    t50 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t47 = NEW zcl_lnt_recommendations( i_name = t48 i_replace_2bce = t50 i_from = t52 ).
    CREATE OBJECT t47->zlnt_view_ownkeys_b0e8086400eb.
    t47->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t54 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t55 ).
    ENDIF.
    CREATE OBJECT t47->zlnt_json_ownkeys_70e5fd461788.
    t47->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t56) = |name|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    DATA(t58) = |replace|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t47->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    t2->load( ).
    APPEND t47 TO t2->items.
    t2->save( ).
    DATA t61 TYPE REF TO zcl_lnt_recommendations.
    DATA t62 TYPE string.
    t62 = |CLPB_IMPORT|.
    DATA t64 TYPE string.
    t64 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t61 = NEW zcl_lnt_recommendations( i_name = t62 i_replace_2bce = t64 i_from = t66 ).
    CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
    t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t68 ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t69 ).
    ENDIF.
    CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
    t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t70) = |name|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    DATA(t72) = |replace|.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
    ENDIF.
    t2->load( ).
    APPEND t61 TO t2->items.
    t2->save( ).
    DATA t75 TYPE REF TO zcl_lnt_recommendations.
    DATA t76 TYPE string.
    t76 = |CONVERT_DATE_TO_EXTERNAL|.
    DATA t78 TYPE string.
    t78 = |use CL_ABAP_DATFM|.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t75 = NEW zcl_lnt_recommendations( i_name = t76 i_replace_2bce = t78 i_from = t80 ).
    CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
    t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t82 ).
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t83 ).
    ENDIF.
    CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
    t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t84) = |name|.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
    DATA(t86) = |replace|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    t2->load( ).
    APPEND t75 TO t2->items.
    t2->save( ).
    DATA t89 TYPE REF TO zcl_lnt_recommendations.
    DATA t90 TYPE string.
    t90 = |CONVERT_TIME_INPUT|.
    DATA t92 TYPE string.
    t92 = |use CL_ABAP_TIMEFM|.
    DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t89 = NEW zcl_lnt_recommendations( i_name = t90 i_replace_2bce = t92 i_from = t94 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t96 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t97 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t98) = |name|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    DATA(t100) = |replace|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    t2->load( ).
    APPEND t89 TO t2->items.
    t2->save( ).
    DATA t103 TYPE REF TO zcl_lnt_recommendations.
    DATA t104 TYPE string.
    t104 = |DOWNLOAD|.
    DATA t106 TYPE string.
    t106 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t103 = NEW zcl_lnt_recommendations( i_name = t104 i_replace_2bce = t106 i_from = t108 ).
    CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
    t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t110 ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t111 ).
    ENDIF.
    CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
    t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t112) = |name|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    DATA(t114) = |replace|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
    ENDIF.
    t2->load( ).
    APPEND t103 TO t2->items.
    t2->save( ).
    DATA t117 TYPE REF TO zcl_lnt_recommendations.
    DATA t118 TYPE string.
    t118 = |ECATT_CONV_XSTRING_TO_STRING|.
    DATA t120 TYPE string.
    t120 = |use CL_BINARY_CONVERT|.
    DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t117 = NEW zcl_lnt_recommendations( i_name = t118 i_replace_2bce = t120 i_from = t122 ).
    CREATE OBJECT t117->zlnt_view_ownkeys_b0e8086400eb.
    t117->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t124 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t117->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t125 ).
    ENDIF.
    CREATE OBJECT t117->zlnt_json_ownkeys_70e5fd461788.
    t117->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t126) = |name|.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
    DATA(t128) = |replace|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t117->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t117->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
    ENDIF.
    t2->load( ).
    APPEND t117 TO t2->items.
    t2->save( ).
    DATA t131 TYPE REF TO zcl_lnt_recommendations.
    DATA t132 TYPE string.
    t132 = |F4_FILENAME|.
    DATA t134 TYPE string.
    t134 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t131 = NEW zcl_lnt_recommendations( i_name = t132 i_replace_2bce = t134 i_from = t136 ).
    CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
    t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t138 ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t139 ).
    ENDIF.
    CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
    t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t140) = |name|.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
    DATA(t142) = |replace|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
    ENDIF.
    t2->load( ).
    APPEND t131 TO t2->items.
    t2->save( ).
    DATA t145 TYPE REF TO zcl_lnt_recommendations.
    DATA t146 TYPE string.
    t146 = |FUNCTION_EXISTS|.
    DATA t148 TYPE string.
    DATA(t149) = |surround with try-catch CX_SY_DYN_CALL_ILLEGAL_METHOD instea|.
    t149 = t149 && |d|.
    t148 = t149.
    DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t145 = NEW zcl_lnt_recommendations( i_name = t146 i_replace_2bce = t148 i_from = t150 ).
    CREATE OBJECT t145->zlnt_view_ownkeys_b0e8086400eb.
    t145->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t152 ).
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t145->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t145->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t153 ).
    ENDIF.
    CREATE OBJECT t145->zlnt_json_ownkeys_70e5fd461788.
    t145->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t154) = |name|.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
    DATA(t156) = |replace|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t145->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t145->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
    ENDIF.
    t2->load( ).
    APPEND t145 TO t2->items.
    t2->save( ).
    DATA t159 TYPE REF TO zcl_lnt_recommendations.
    DATA t160 TYPE string.
    t160 = |GUI_CREATE_DIRECTORY|.
    DATA t162 TYPE string.
    t162 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t159 = NEW zcl_lnt_recommendations( i_name = t160 i_replace_2bce = t162 i_from = t164 ).
    CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
    t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t166 ).
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t167 ).
    ENDIF.
    CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
    t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t168) = |name|.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
    DATA(t170) = |replace|.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
    ENDIF.
    t2->load( ).
    APPEND t159 TO t2->items.
    t2->save( ).
    DATA t173 TYPE REF TO zcl_lnt_recommendations.
    DATA t174 TYPE string.
    t174 = |GUI_DELETE_FILE|.
    DATA t176 TYPE string.
    t176 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t173 = NEW zcl_lnt_recommendations( i_name = t174 i_replace_2bce = t176 i_from = t178 ).
    CREATE OBJECT t173->zlnt_view_ownkeys_b0e8086400eb.
    t173->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t180 ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t173->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t173->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t181 ).
    ENDIF.
    CREATE OBJECT t173->zlnt_json_ownkeys_70e5fd461788.
    t173->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t182) = |name|.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
    DATA(t184) = |replace|.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t173->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t173->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
    ENDIF.
    t2->load( ).
    APPEND t173 TO t2->items.
    t2->save( ).
    DATA t187 TYPE REF TO zcl_lnt_recommendations.
    DATA t188 TYPE string.
    t188 = |GUI_DOWNLOAD|.
    DATA t190 TYPE string.
    t190 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t187 = NEW zcl_lnt_recommendations( i_name = t188 i_replace_2bce = t190 i_from = t192 ).
    CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
    t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t194 ).
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t195 ).
    ENDIF.
    CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
    t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t196) = |name|.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
    DATA(t198) = |replace|.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
    ENDIF.
    t2->load( ).
    APPEND t187 TO t2->items.
    t2->save( ).
    DATA t201 TYPE REF TO zcl_lnt_recommendations.
    DATA t202 TYPE string.
    t202 = |GUI_EXEC|.
    DATA t204 TYPE string.
    t204 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t201 = NEW zcl_lnt_recommendations( i_name = t202 i_replace_2bce = t204 i_from = t206 ).
    CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
    t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t208 ).
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t209 ).
    ENDIF.
    CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
    t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t210) = |name|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
    DATA(t212) = |replace|.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
    ENDIF.
    t2->load( ).
    APPEND t201 TO t2->items.
    t2->save( ).
    DATA t215 TYPE REF TO zcl_lnt_recommendations.
    DATA t216 TYPE string.
    t216 = |GUI_FB_USAGE|.
    DATA t218 TYPE string.
    t218 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t215 = NEW zcl_lnt_recommendations( i_name = t216 i_replace_2bce = t218 i_from = t220 ).
    CREATE OBJECT t215->zlnt_view_ownkeys_b0e8086400eb.
    t215->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t222 ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t223 ).
    ENDIF.
    CREATE OBJECT t215->zlnt_json_ownkeys_70e5fd461788.
    t215->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t224) = |name|.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
    DATA(t226) = |replace|.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
    ENDIF.
    t2->load( ).
    APPEND t215 TO t2->items.
    t2->save( ).
    DATA t229 TYPE REF TO zcl_lnt_recommendations.
    DATA t230 TYPE string.
    t230 = |GUI_FILE_LOAD_DIALOG|.
    DATA t232 TYPE string.
    t232 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t229 = NEW zcl_lnt_recommendations( i_name = t230 i_replace_2bce = t232 i_from = t234 ).
    CREATE OBJECT t229->zlnt_view_ownkeys_b0e8086400eb.
    t229->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t236 ).
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t229->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t237 ).
    ENDIF.
    CREATE OBJECT t229->zlnt_json_ownkeys_70e5fd461788.
    t229->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t238) = |name|.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
    DATA(t240) = |replace|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t229->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t229->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
    ENDIF.
    t2->load( ).
    APPEND t229 TO t2->items.
    t2->save( ).
    DATA t243 TYPE REF TO zcl_lnt_recommendations.
    DATA t244 TYPE string.
    t244 = |GUI_FILE_SAVE_DIALOG|.
    DATA t246 TYPE string.
    t246 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t243 = NEW zcl_lnt_recommendations( i_name = t244 i_replace_2bce = t246 i_from = t248 ).
    CREATE OBJECT t243->zlnt_view_ownkeys_b0e8086400eb.
    t243->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t250 ).
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t243->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t243->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t251 ).
    ENDIF.
    CREATE OBJECT t243->zlnt_json_ownkeys_70e5fd461788.
    t243->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t252) = |name|.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
    DATA(t254) = |replace|.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t243->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t243->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
    ENDIF.
    t2->load( ).
    APPEND t243 TO t2->items.
    t2->save( ).
    DATA t257 TYPE REF TO zcl_lnt_recommendations.
    DATA t258 TYPE string.
    t258 = |GUI_GET_DESKTOP_INFO|.
    DATA t260 TYPE string.
    t260 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t257 = NEW zcl_lnt_recommendations( i_name = t258 i_replace_2bce = t260 i_from = t262 ).
    CREATE OBJECT t257->zlnt_view_ownkeys_b0e8086400eb.
    t257->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t264 ).
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t257->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t265 ).
    ENDIF.
    CREATE OBJECT t257->zlnt_json_ownkeys_70e5fd461788.
    t257->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t266) = |name|.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
    DATA(t268) = |replace|.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t257->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
    ENDIF.
    t2->load( ).
    APPEND t257 TO t2->items.
    t2->save( ).
    DATA t271 TYPE REF TO zcl_lnt_recommendations.
    DATA t272 TYPE string.
    t272 = |GUI_GET_FILE_INFO|.
    DATA t274 TYPE string.
    t274 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t271 = NEW zcl_lnt_recommendations( i_name = t272 i_replace_2bce = t274 i_from = t276 ).
    CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
    t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t278 ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t279 ).
    ENDIF.
    CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
    t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t280) = |name|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    DATA(t282) = |replace|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
    ENDIF.
    t2->load( ).
    APPEND t271 TO t2->items.
    t2->save( ).
    DATA t285 TYPE REF TO zcl_lnt_recommendations.
    DATA t286 TYPE string.
    t286 = |GUI_GET_REGVALUE|.
    DATA t288 TYPE string.
    t288 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t285 = NEW zcl_lnt_recommendations( i_name = t286 i_replace_2bce = t288 i_from = t290 ).
    CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
    t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t292 ).
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t293 ).
    ENDIF.
    CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
    t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t294) = |name|.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
    DATA(t296) = |replace|.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
    ENDIF.
    t2->load( ).
    APPEND t285 TO t2->items.
    t2->save( ).
    DATA t299 TYPE REF TO zcl_lnt_recommendations.
    DATA t300 TYPE string.
    t300 = |GUI_MULTIPLE_FILE_LOAD_DIALOG|.
    DATA t302 TYPE string.
    t302 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t299 = NEW zcl_lnt_recommendations( i_name = t300 i_replace_2bce = t302 i_from = t304 ).
    CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
    t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t306 ).
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t307 ).
    ENDIF.
    CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
    t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t308) = |name|.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
    DATA(t310) = |replace|.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
    ENDIF.
    t2->load( ).
    APPEND t299 TO t2->items.
    t2->save( ).
    DATA t313 TYPE REF TO zcl_lnt_recommendations.
    DATA t314 TYPE string.
    t314 = |GUI_REMOVE_DIRECTORY|.
    DATA t316 TYPE string.
    t316 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t313 = NEW zcl_lnt_recommendations( i_name = t314 i_replace_2bce = t316 i_from = t318 ).
    CREATE OBJECT t313->zlnt_view_ownkeys_b0e8086400eb.
    t313->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t320 ).
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t313->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t313->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t321 ).
    ENDIF.
    CREATE OBJECT t313->zlnt_json_ownkeys_70e5fd461788.
    t313->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t322) = |name|.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
    DATA(t324) = |replace|.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t313->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t313->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
    ENDIF.
    t2->load( ).
    APPEND t313 TO t2->items.
    t2->save( ).
    DATA t327 TYPE REF TO zcl_lnt_recommendations.
    DATA t328 TYPE string.
    t328 = |GUI_RUN|.
    DATA t330 TYPE string.
    t330 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t327 = NEW zcl_lnt_recommendations( i_name = t328 i_replace_2bce = t330 i_from = t332 ).
    CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
    t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t334 ).
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t335 ).
    ENDIF.
    CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
    t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t336) = |name|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
    DATA(t338) = |replace|.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
    ENDIF.
    t2->load( ).
    APPEND t327 TO t2->items.
    t2->save( ).
    DATA t341 TYPE REF TO zcl_lnt_recommendations.
    DATA t342 TYPE string.
    t342 = |GUI_SET_REGVALUE|.
    DATA t344 TYPE string.
    t344 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t341 = NEW zcl_lnt_recommendations( i_name = t342 i_replace_2bce = t344 i_from = t346 ).
    CREATE OBJECT t341->zlnt_view_ownkeys_b0e8086400eb.
    t341->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t341->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t348 ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t341->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t341->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t349 ).
    ENDIF.
    CREATE OBJECT t341->zlnt_json_ownkeys_70e5fd461788.
    t341->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t350) = |name|.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t341->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
    DATA(t352) = |replace|.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t341->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t341->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
    ENDIF.
    t2->load( ).
    APPEND t341 TO t2->items.
    t2->save( ).
    DATA t355 TYPE REF TO zcl_lnt_recommendations.
    DATA t356 TYPE string.
    t356 = |GUI_UPLOAD|.
    DATA t358 TYPE string.
    t358 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t355 = NEW zcl_lnt_recommendations( i_name = t356 i_replace_2bce = t358 i_from = t360 ).
    CREATE OBJECT t355->zlnt_view_ownkeys_b0e8086400eb.
    t355->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t355->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t362 ).
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t355->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t355->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t363 ).
    ENDIF.
    CREATE OBJECT t355->zlnt_json_ownkeys_70e5fd461788.
    t355->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t364) = |name|.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t355->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
    DATA(t366) = |replace|.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t355->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t355->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
    ENDIF.
    t2->load( ).
    APPEND t355 TO t2->items.
    t2->save( ).
    DATA t369 TYPE REF TO zcl_lnt_recommendations.
    DATA t370 TYPE string.
    t370 = |GUI_VSS_DOWNLOAD|.
    DATA t372 TYPE string.
    t372 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t369 = NEW zcl_lnt_recommendations( i_name = t370 i_replace_2bce = t372 i_from = t374 ).
    CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
    t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t376 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t377 ).
    ENDIF.
    CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
    t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t378) = |name|.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
    DATA(t380) = |replace|.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t380 p1 = t381 ).
    ENDIF.
    t2->load( ).
    APPEND t369 TO t2->items.
    t2->save( ).
    DATA t383 TYPE REF TO zcl_lnt_recommendations.
    DATA t384 TYPE string.
    t384 = |GUI_VSS_UPLOAD|.
    DATA t386 TYPE string.
    t386 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t383 = NEW zcl_lnt_recommendations( i_name = t384 i_replace_2bce = t386 i_from = t388 ).
    CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
    t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t390 ).
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t391 ).
    ENDIF.
    CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
    t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t392) = |name|.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t392 p1 = t393 ).
    DATA(t394) = |replace|.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
    ENDIF.
    t2->load( ).
    APPEND t383 TO t2->items.
    t2->save( ).
    DATA t397 TYPE REF TO zcl_lnt_recommendations.
    DATA t398 TYPE string.
    t398 = |GUID_CREATE|.
    DATA t400 TYPE string.
    t400 = |use CL_SYSTEM_UUID|.
    DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t397 = NEW zcl_lnt_recommendations( i_name = t398 i_replace_2bce = t400 i_from = t402 ).
    CREATE OBJECT t397->zlnt_view_ownkeys_b0e8086400eb.
    t397->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t404 ).
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t397->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t397->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t405 ).
    ENDIF.
    CREATE OBJECT t397->zlnt_json_ownkeys_70e5fd461788.
    t397->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t406) = |name|.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t406 p1 = t407 ).
    DATA(t408) = |replace|.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t397->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t397->zlnt_json_ownkeys_70e5fd461788->put( p0 = t408 p1 = t409 ).
    ENDIF.
    t2->load( ).
    APPEND t397 TO t2->items.
    t2->save( ).
    DATA t411 TYPE REF TO zcl_lnt_recommendations.
    DATA t412 TYPE string.
    t412 = |IGN_TIMESTAMP_DIFFERENCE|.
    DATA t414 TYPE string.
    t414 = |use CL_ABAP_TSTMP|.
    DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t411 = NEW zcl_lnt_recommendations( i_name = t412 i_replace_2bce = t414 i_from = t416 ).
    CREATE OBJECT t411->zlnt_view_ownkeys_b0e8086400eb.
    t411->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t418 ).
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t411->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t419 ).
    ENDIF.
    CREATE OBJECT t411->zlnt_json_ownkeys_70e5fd461788.
    t411->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t420) = |name|.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
    DATA(t422) = |replace|.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t411->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t411->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
    ENDIF.
    t2->load( ).
    APPEND t411 TO t2->items.
    t2->save( ).
    DATA t425 TYPE REF TO zcl_lnt_recommendations.
    DATA t426 TYPE string.
    t426 = |IGN_TIMESTAMP_PLUSMINUS|.
    DATA t428 TYPE string.
    t428 = |use CL_ABAP_TSTMP|.
    DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t425 = NEW zcl_lnt_recommendations( i_name = t426 i_replace_2bce = t428 i_from = t430 ).
    CREATE OBJECT t425->zlnt_view_ownkeys_b0e8086400eb.
    t425->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t432 ).
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t425->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t425->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t433 ).
    ENDIF.
    CREATE OBJECT t425->zlnt_json_ownkeys_70e5fd461788.
    t425->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t434) = |name|.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t434 p1 = t435 ).
    DATA(t436) = |replace|.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t425->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t425->zlnt_json_ownkeys_70e5fd461788->put( p0 = t436 p1 = t437 ).
    ENDIF.
    t2->load( ).
    APPEND t425 TO t2->items.
    t2->save( ).
    DATA t439 TYPE REF TO zcl_lnt_recommendations.
    DATA t440 TYPE string.
    t440 = |ISM_SD_GET_PRICING_CONDITIONS|.
    DATA t442 TYPE string.
    t442 = |use CL_PRC_RESULT_FACTORY as per note 2220005|.
    DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t439 = NEW zcl_lnt_recommendations( i_name = t440 i_replace_2bce = t442 i_from = t444 ).
    CREATE OBJECT t439->zlnt_view_ownkeys_b0e8086400eb.
    t439->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t439->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t446 ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t439->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t439->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t447 ).
    ENDIF.
    CREATE OBJECT t439->zlnt_json_ownkeys_70e5fd461788.
    t439->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t448) = |name|.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t439->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
    DATA(t450) = |replace|.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t439->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t439->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
    ENDIF.
    t2->load( ).
    APPEND t439 TO t2->items.
    t2->save( ).
    DATA t453 TYPE REF TO zcl_lnt_recommendations.
    DATA t454 TYPE string.
    t454 = |JOB_CREATE|.
    DATA t456 TYPE string.
    t456 = |use CL_BP_ABAP_JOB|.
    DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t453 = NEW zcl_lnt_recommendations( i_name = t454 i_replace_2bce = t456 i_from = t458 ).
    CREATE OBJECT t453->zlnt_view_ownkeys_b0e8086400eb.
    t453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t460 ).
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t461 ).
    ENDIF.
    CREATE OBJECT t453->zlnt_json_ownkeys_70e5fd461788.
    t453->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t462) = |name|.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t462 p1 = t463 ).
    DATA(t464) = |replace|.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
    ENDIF.
    t2->load( ).
    APPEND t453 TO t2->items.
    t2->save( ).
    DATA t467 TYPE REF TO zcl_lnt_recommendations.
    DATA t468 TYPE string.
    t468 = |JOB_SUBMIT|.
    DATA t470 TYPE string.
    t470 = |use CL_BP_ABAP_JOB|.
    DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t467 = NEW zcl_lnt_recommendations( i_name = t468 i_replace_2bce = t470 i_from = t472 ).
    CREATE OBJECT t467->zlnt_view_ownkeys_b0e8086400eb.
    t467->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t474 ).
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t467->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t475 ).
    ENDIF.
    CREATE OBJECT t467->zlnt_json_ownkeys_70e5fd461788.
    t467->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t476) = |name|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t467->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
    DATA(t478) = |replace|.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t467->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t467->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
    ENDIF.
    t2->load( ).
    APPEND t467 TO t2->items.
    t2->save( ).
    DATA t481 TYPE REF TO zcl_lnt_recommendations.
    DATA t482 TYPE string.
    t482 = |MD5_CALCULATE_HASH_FOR_CHAR|.
    DATA t484 TYPE string.
    t484 = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t481 = NEW zcl_lnt_recommendations( i_name = t482 i_replace_2bce = t484 i_from = t486 ).
    CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
    t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t488 ).
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t489 ).
    ENDIF.
    CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
    t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t490) = |name|.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t490 p1 = t491 ).
    DATA(t492) = |replace|.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t492 p1 = t493 ).
    ENDIF.
    t2->load( ).
    APPEND t481 TO t2->items.
    t2->save( ).
    DATA t495 TYPE REF TO zcl_lnt_recommendations.
    DATA t496 TYPE string.
    t496 = |MD5_CALCULATE_HASH_FOR_RAW|.
    DATA t498 TYPE string.
    t498 = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t495 = NEW zcl_lnt_recommendations( i_name = t496 i_replace_2bce = t498 i_from = t500 ).
    CREATE OBJECT t495->zlnt_view_ownkeys_b0e8086400eb.
    t495->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t495->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t502 ).
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t495->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t495->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t503 ).
    ENDIF.
    CREATE OBJECT t495->zlnt_json_ownkeys_70e5fd461788.
    t495->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t504) = |name|.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t495->zlnt_json_ownkeys_70e5fd461788->put( p0 = t504 p1 = t505 ).
    DATA(t506) = |replace|.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t495->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t495->zlnt_json_ownkeys_70e5fd461788->put( p0 = t506 p1 = t507 ).
    ENDIF.
    t2->load( ).
    APPEND t495 TO t2->items.
    t2->save( ).
    DATA t509 TYPE REF TO zcl_lnt_recommendations.
    DATA t510 TYPE string.
    t510 = |POPUP_TO_CONFIRM_LOSS_OF_DATA|.
    DATA t512 TYPE string.
    t512 = |use POPUP_TO_CONFIRM|.
    DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t509 = NEW zcl_lnt_recommendations( i_name = t510 i_replace_2bce = t512 i_from = t514 ).
    CREATE OBJECT t509->zlnt_view_ownkeys_b0e8086400eb.
    t509->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t516 ).
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t509->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t517 ).
    ENDIF.
    CREATE OBJECT t509->zlnt_json_ownkeys_70e5fd461788.
    t509->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t518) = |name|.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = t518 p1 = t519 ).
    DATA(t520) = |replace|.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t509->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = t520 p1 = t521 ).
    ENDIF.
    t2->load( ).
    APPEND t509 TO t2->items.
    t2->save( ).
    DATA t523 TYPE REF TO zcl_lnt_recommendations.
    DATA t524 TYPE string.
    t524 = |POPUP_TO_CONFIRM_STEP|.
    DATA t526 TYPE string.
    t526 = |use POPUP_TO_CONFIRM|.
    DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t523 = NEW zcl_lnt_recommendations( i_name = t524 i_replace_2bce = t526 i_from = t528 ).
    CREATE OBJECT t523->zlnt_view_ownkeys_b0e8086400eb.
    t523->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t530 ).
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t523->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t523->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t531 ).
    ENDIF.
    CREATE OBJECT t523->zlnt_json_ownkeys_70e5fd461788.
    t523->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t532) = |name|.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t532 p1 = t533 ).
    DATA(t534) = |replace|.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t523->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t523->zlnt_json_ownkeys_70e5fd461788->put( p0 = t534 p1 = t535 ).
    ENDIF.
    t2->load( ).
    APPEND t523 TO t2->items.
    t2->save( ).
    DATA t537 TYPE REF TO zcl_lnt_recommendations.
    DATA t538 TYPE string.
    t538 = |POPUP_TO_CONFIRM_WITH_MESSAGE|.
    DATA t540 TYPE string.
    t540 = |use POPUP_TO_CONFIRM|.
    DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t537 = NEW zcl_lnt_recommendations( i_name = t538 i_replace_2bce = t540 i_from = t542 ).
    CREATE OBJECT t537->zlnt_view_ownkeys_b0e8086400eb.
    t537->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t537->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t544 ).
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t537->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t537->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t545 ).
    ENDIF.
    CREATE OBJECT t537->zlnt_json_ownkeys_70e5fd461788.
    t537->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t546) = |name|.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t537->zlnt_json_ownkeys_70e5fd461788->put( p0 = t546 p1 = t547 ).
    DATA(t548) = |replace|.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t537->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t537->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
    ENDIF.
    t2->load( ).
    APPEND t537 TO t2->items.
    t2->save( ).
    DATA t551 TYPE REF TO zcl_lnt_recommendations.
    DATA t552 TYPE string.
    t552 = |POPUP_TO_CONFIRM_WITH_VALUE|.
    DATA t554 TYPE string.
    t554 = |use POPUP_TO_CONFIRM|.
    DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t551 = NEW zcl_lnt_recommendations( i_name = t552 i_replace_2bce = t554 i_from = t556 ).
    CREATE OBJECT t551->zlnt_view_ownkeys_b0e8086400eb.
    t551->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t551->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t558 ).
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t551->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t551->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t559 ).
    ENDIF.
    CREATE OBJECT t551->zlnt_json_ownkeys_70e5fd461788.
    t551->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t560) = |name|.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t551->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
    DATA(t562) = |replace|.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t551->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t551->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
    ENDIF.
    t2->load( ).
    APPEND t551 TO t2->items.
    t2->save( ).
    DATA t565 TYPE REF TO zcl_lnt_recommendations.
    DATA t566 TYPE string.
    t566 = |POPUP_TO_CONFIRM_WITH_VALUE_2|.
    DATA t568 TYPE string.
    t568 = |use POPUP_TO_CONFIRM|.
    DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t565 = NEW zcl_lnt_recommendations( i_name = t566 i_replace_2bce = t568 i_from = t570 ).
    CREATE OBJECT t565->zlnt_view_ownkeys_b0e8086400eb.
    t565->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t572 ).
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t565->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t565->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t573 ).
    ENDIF.
    CREATE OBJECT t565->zlnt_json_ownkeys_70e5fd461788.
    t565->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t574) = |name|.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
    DATA(t576) = |replace|.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t565->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t565->zlnt_json_ownkeys_70e5fd461788->put( p0 = t576 p1 = t577 ).
    ENDIF.
    t2->load( ).
    APPEND t565 TO t2->items.
    t2->save( ).
    DATA t579 TYPE REF TO zcl_lnt_recommendations.
    DATA t580 TYPE string.
    t580 = |POPUP_TO_DECIDE|.
    DATA t582 TYPE string.
    t582 = |use POPUP_TO_CONFIRM|.
    DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t579 = NEW zcl_lnt_recommendations( i_name = t580 i_replace_2bce = t582 i_from = t584 ).
    CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
    t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t586 ).
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t587 ).
    ENDIF.
    CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
    t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t588) = |name|.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t588 p1 = t589 ).
    DATA(t590) = |replace|.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t590 p1 = t591 ).
    ENDIF.
    t2->load( ).
    APPEND t579 TO t2->items.
    t2->save( ).
    DATA t593 TYPE REF TO zcl_lnt_recommendations.
    DATA t594 TYPE string.
    t594 = |POPUP_TO_DECIDE_INFO|.
    DATA t596 TYPE string.
    t596 = |use POPUP_TO_CONFIRM|.
    DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t593 = NEW zcl_lnt_recommendations( i_name = t594 i_replace_2bce = t596 i_from = t598 ).
    CREATE OBJECT t593->zlnt_view_ownkeys_b0e8086400eb.
    t593->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t593->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t600 ).
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t593->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t593->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t601 ).
    ENDIF.
    CREATE OBJECT t593->zlnt_json_ownkeys_70e5fd461788.
    t593->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t602) = |name|.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t593->zlnt_json_ownkeys_70e5fd461788->put( p0 = t602 p1 = t603 ).
    DATA(t604) = |replace|.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t593->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t593->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
    ENDIF.
    t2->load( ).
    APPEND t593 TO t2->items.
    t2->save( ).
    DATA t607 TYPE REF TO zcl_lnt_recommendations.
    DATA t608 TYPE string.
    t608 = |POPUP_TO_DECIDE_WITH_MESSAGE|.
    DATA t610 TYPE string.
    t610 = |use POPUP_TO_CONFIRM|.
    DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t607 = NEW zcl_lnt_recommendations( i_name = t608 i_replace_2bce = t610 i_from = t612 ).
    CREATE OBJECT t607->zlnt_view_ownkeys_b0e8086400eb.
    t607->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t614 ).
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t607->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t615 ).
    ENDIF.
    CREATE OBJECT t607->zlnt_json_ownkeys_70e5fd461788.
    t607->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t616) = |name|.
    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = t616 p1 = t617 ).
    DATA(t618) = |replace|.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t607->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
    ENDIF.
    t2->load( ).
    APPEND t607 TO t2->items.
    t2->save( ).
    DATA t621 TYPE REF TO zcl_lnt_recommendations.
    DATA t622 TYPE string.
    t622 = |POPUP_TO_GET_VALUE|.
    DATA t624 TYPE string.
    t624 = |use POPUP_GET_VALUES|.
    DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t621 = NEW zcl_lnt_recommendations( i_name = t622 i_replace_2bce = t624 i_from = t626 ).
    CREATE OBJECT t621->zlnt_view_ownkeys_b0e8086400eb.
    t621->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t621->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t628 ).
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t621->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t621->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t629 ).
    ENDIF.
    CREATE OBJECT t621->zlnt_json_ownkeys_70e5fd461788.
    t621->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t630) = |name|.
    DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t621->zlnt_json_ownkeys_70e5fd461788->put( p0 = t630 p1 = t631 ).
    DATA(t632) = |replace|.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t621->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t621->zlnt_json_ownkeys_70e5fd461788->put( p0 = t632 p1 = t633 ).
    ENDIF.
    t2->load( ).
    APPEND t621 TO t2->items.
    t2->save( ).
    DATA t635 TYPE REF TO zcl_lnt_recommendations.
    DATA t636 TYPE string.
    t636 = |QF05_RANDOM_INTEGER|.
    DATA t638 TYPE string.
    t638 = |use CL_ABAP_RANDOM_INT|.
    DATA t640 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t635 = NEW zcl_lnt_recommendations( i_name = t636 i_replace_2bce = t638 i_from = t640 ).
    CREATE OBJECT t635->zlnt_view_ownkeys_b0e8086400eb.
    t635->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t642 ).
    DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t635->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t635->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t643 ).
    ENDIF.
    CREATE OBJECT t635->zlnt_json_ownkeys_70e5fd461788.
    t635->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t644) = |name|.
    DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t644 p1 = t645 ).
    DATA(t646) = |replace|.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t635->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t635->zlnt_json_ownkeys_70e5fd461788->put( p0 = t646 p1 = t647 ).
    ENDIF.
    t2->load( ).
    APPEND t635 TO t2->items.
    t2->save( ).
    DATA t649 TYPE REF TO zcl_lnt_recommendations.
    DATA t650 TYPE string.
    t650 = |REGISTRY_GET|.
    DATA t652 TYPE string.
    t652 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t654 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t649 = NEW zcl_lnt_recommendations( i_name = t650 i_replace_2bce = t652 i_from = t654 ).
    CREATE OBJECT t649->zlnt_view_ownkeys_b0e8086400eb.
    t649->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t649->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t656 ).
    DATA t657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t649->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t649->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t657 ).
    ENDIF.
    CREATE OBJECT t649->zlnt_json_ownkeys_70e5fd461788.
    t649->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t658) = |name|.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t649->zlnt_json_ownkeys_70e5fd461788->put( p0 = t658 p1 = t659 ).
    DATA(t660) = |replace|.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t649->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t649->zlnt_json_ownkeys_70e5fd461788->put( p0 = t660 p1 = t661 ).
    ENDIF.
    t2->load( ).
    APPEND t649 TO t2->items.
    t2->save( ).
    DATA t663 TYPE REF TO zcl_lnt_recommendations.
    DATA t664 TYPE string.
    t664 = |REGISTRY_SET|.
    DATA t666 TYPE string.
    t666 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t668 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t663 = NEW zcl_lnt_recommendations( i_name = t664 i_replace_2bce = t666 i_from = t668 ).
    CREATE OBJECT t663->zlnt_view_ownkeys_b0e8086400eb.
    t663->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t663->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t670 ).
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t663->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t663->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t671 ).
    ENDIF.
    CREATE OBJECT t663->zlnt_json_ownkeys_70e5fd461788.
    t663->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t672) = |name|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t663->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    DATA(t674) = |replace|.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t663->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t663->zlnt_json_ownkeys_70e5fd461788->put( p0 = t674 p1 = t675 ).
    ENDIF.
    t2->load( ).
    APPEND t663 TO t2->items.
    t2->save( ).
    DATA t677 TYPE REF TO zcl_lnt_recommendations.
    DATA t678 TYPE string.
    t678 = |REUSE_ALV_GRID_DISPLAY|.
    DATA t680 TYPE string.
    t680 = |use CL_SALV_TABLE=>FACTORY or CL_GUI_ALV_GRID|.
    DATA t682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t677 = NEW zcl_lnt_recommendations( i_name = t678 i_replace_2bce = t680 i_from = t682 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t684 ).
    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t685 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t686) = |name|.
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t686 p1 = t687 ).
    DATA(t688) = |replace|.
    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t688 p1 = t689 ).
    ENDIF.
    t2->load( ).
    APPEND t677 TO t2->items.
    t2->save( ).
    DATA t691 TYPE REF TO zcl_lnt_recommendations.
    DATA t692 TYPE string.
    t692 = |ROUND|.
    DATA t694 TYPE string.
    t694 = |use built in function: round()|.
    DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t691 = NEW zcl_lnt_recommendations( i_name = t692 i_replace_2bce = t694 i_from = t696 ).
    CREATE OBJECT t691->zlnt_view_ownkeys_b0e8086400eb.
    t691->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t691->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t698 ).
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t691->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t691->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t699 ).
    ENDIF.
    CREATE OBJECT t691->zlnt_json_ownkeys_70e5fd461788.
    t691->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t700) = |name|.
    DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t691->zlnt_json_ownkeys_70e5fd461788->put( p0 = t700 p1 = t701 ).
    DATA(t702) = |replace|.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t691->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t691->zlnt_json_ownkeys_70e5fd461788->put( p0 = t702 p1 = t703 ).
    ENDIF.
    t2->load( ).
    APPEND t691 TO t2->items.
    t2->save( ).
    DATA t705 TYPE REF TO zcl_lnt_recommendations.
    DATA t706 TYPE string.
    t706 = |SAPGUI_PROGRESS_INDICATOR|.
    DATA t708 TYPE string.
    t708 = |use CL_PROGRESS_INDICATOR|.
    DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t705 = NEW zcl_lnt_recommendations( i_name = t706 i_replace_2bce = t708 i_from = t710 ).
    CREATE OBJECT t705->zlnt_view_ownkeys_b0e8086400eb.
    t705->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t712 ).
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t705->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t705->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t713 ).
    ENDIF.
    CREATE OBJECT t705->zlnt_json_ownkeys_70e5fd461788.
    t705->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t714) = |name|.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = t714 p1 = t715 ).
    DATA(t716) = |replace|.
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t705->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t705->zlnt_json_ownkeys_70e5fd461788->put( p0 = t716 p1 = t717 ).
    ENDIF.
    t2->load( ).
    APPEND t705 TO t2->items.
    t2->save( ).
    DATA t719 TYPE REF TO zcl_lnt_recommendations.
    DATA t720 TYPE string.
    t720 = |SCMS_BASE64_DECODE_STR|.
    DATA t722 TYPE string.
    t722 = |use class CL_HTTP_UTILITY methods|.
    DATA t724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t719 = NEW zcl_lnt_recommendations( i_name = t720 i_replace_2bce = t722 i_from = t724 ).
    CREATE OBJECT t719->zlnt_view_ownkeys_b0e8086400eb.
    t719->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t726 ).
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t727 ).
    ENDIF.
    CREATE OBJECT t719->zlnt_json_ownkeys_70e5fd461788.
    t719->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t728) = |name|.
    DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t728 p1 = t729 ).
    DATA(t730) = |replace|.
    DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = t730 p1 = t731 ).
    ENDIF.
    t2->load( ).
    APPEND t719 TO t2->items.
    t2->save( ).
    DATA t733 TYPE REF TO zcl_lnt_recommendations.
    DATA t734 TYPE string.
    t734 = |SCMS_STRING_TO_XSTRING|.
    DATA t736 TYPE string.
    t736 = |use CL_BINARY_CONVERT|.
    DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t733 = NEW zcl_lnt_recommendations( i_name = t734 i_replace_2bce = t736 i_from = t738 ).
    CREATE OBJECT t733->zlnt_view_ownkeys_b0e8086400eb.
    t733->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t740 ).
    DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t733->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t733->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t741 ).
    ENDIF.
    CREATE OBJECT t733->zlnt_json_ownkeys_70e5fd461788.
    t733->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t742) = |name|.
    DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t742 p1 = t743 ).
    DATA(t744) = |replace|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t733->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t733->zlnt_json_ownkeys_70e5fd461788->put( p0 = t744 p1 = t745 ).
    ENDIF.
    t2->load( ).
    APPEND t733 TO t2->items.
    t2->save( ).
    DATA t747 TYPE REF TO zcl_lnt_recommendations.
    DATA t748 TYPE string.
    t748 = |SO_NEW_DOCUMENT_ATT_SEND_API1|.
    DATA t750 TYPE string.
    t750 = |use CL_BCS|.
    DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t747 = NEW zcl_lnt_recommendations( i_name = t748 i_replace_2bce = t750 i_from = t752 ).
    CREATE OBJECT t747->zlnt_view_ownkeys_b0e8086400eb.
    t747->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t754 ).
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t747->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t747->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t755 ).
    ENDIF.
    CREATE OBJECT t747->zlnt_json_ownkeys_70e5fd461788.
    t747->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t756) = |name|.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t747->zlnt_json_ownkeys_70e5fd461788->put( p0 = t756 p1 = t757 ).
    DATA(t758) = |replace|.
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t747->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t747->zlnt_json_ownkeys_70e5fd461788->put( p0 = t758 p1 = t759 ).
    ENDIF.
    t2->load( ).
    APPEND t747 TO t2->items.
    t2->save( ).
    DATA t761 TYPE REF TO zcl_lnt_recommendations.
    DATA t762 TYPE string.
    t762 = |SSFC_BASE64_DECODE|.
    DATA t764 TYPE string.
    t764 = |use class CL_HTTP_UTILITY methods|.
    DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t761 = NEW zcl_lnt_recommendations( i_name = t762 i_replace_2bce = t764 i_from = t766 ).
    CREATE OBJECT t761->zlnt_view_ownkeys_b0e8086400eb.
    t761->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t761->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t768 ).
    DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t761->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t761->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t769 ).
    ENDIF.
    CREATE OBJECT t761->zlnt_json_ownkeys_70e5fd461788.
    t761->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t770) = |name|.
    DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t761->zlnt_json_ownkeys_70e5fd461788->put( p0 = t770 p1 = t771 ).
    DATA(t772) = |replace|.
    DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t761->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t761->zlnt_json_ownkeys_70e5fd461788->put( p0 = t772 p1 = t773 ).
    ENDIF.
    t2->load( ).
    APPEND t761 TO t2->items.
    t2->save( ).
    DATA t775 TYPE REF TO zcl_lnt_recommendations.
    DATA t776 TYPE string.
    t776 = |SSFC_BASE64_ENCODE|.
    DATA t778 TYPE string.
    t778 = |use class CL_HTTP_UTILITY methods|.
    DATA t780 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t775 = NEW zcl_lnt_recommendations( i_name = t776 i_replace_2bce = t778 i_from = t780 ).
    CREATE OBJECT t775->zlnt_view_ownkeys_b0e8086400eb.
    t775->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t782 ).
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t783 ).
    ENDIF.
    CREATE OBJECT t775->zlnt_json_ownkeys_70e5fd461788.
    t775->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t784) = |name|.
    DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t784 p1 = t785 ).
    DATA(t786) = |replace|.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t786 p1 = t787 ).
    ENDIF.
    t2->load( ).
    APPEND t775 TO t2->items.
    t2->save( ).
    DATA t789 TYPE REF TO zcl_lnt_recommendations.
    DATA t790 TYPE string.
    t790 = |SUBST_GET_FILE_LIST|.
    DATA t792 TYPE string.
    t792 = |see note 1686357|.
    DATA t794 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t789 = NEW zcl_lnt_recommendations( i_name = t790 i_replace_2bce = t792 i_from = t794 ).
    CREATE OBJECT t789->zlnt_view_ownkeys_b0e8086400eb.
    t789->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t789->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t796 ).
    DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t789->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t789->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t797 ).
    ENDIF.
    CREATE OBJECT t789->zlnt_json_ownkeys_70e5fd461788.
    t789->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t798) = |name|.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t789->zlnt_json_ownkeys_70e5fd461788->put( p0 = t798 p1 = t799 ).
    DATA(t800) = |replace|.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t789->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t789->zlnt_json_ownkeys_70e5fd461788->put( p0 = t800 p1 = t801 ).
    ENDIF.
    t2->load( ).
    APPEND t789 TO t2->items.
    t2->save( ).
    DATA t803 TYPE REF TO zcl_lnt_recommendations.
    DATA t804 TYPE string.
    t804 = |SYSTEM_GET_UNIQUE_ID|.
    DATA t806 TYPE string.
    t806 = |use CL_SYSTEM_UUID|.
    DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t803 = NEW zcl_lnt_recommendations( i_name = t804 i_replace_2bce = t806 i_from = t808 ).
    CREATE OBJECT t803->zlnt_view_ownkeys_b0e8086400eb.
    t803->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t803->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t810 ).
    DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t803->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t803->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t811 ).
    ENDIF.
    CREATE OBJECT t803->zlnt_json_ownkeys_70e5fd461788.
    t803->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t812) = |name|.
    DATA t813 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t803->zlnt_json_ownkeys_70e5fd461788->put( p0 = t812 p1 = t813 ).
    DATA(t814) = |replace|.
    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t803->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t803->zlnt_json_ownkeys_70e5fd461788->put( p0 = t814 p1 = t815 ).
    ENDIF.
    t2->load( ).
    APPEND t803 TO t2->items.
    t2->save( ).
    DATA t817 TYPE REF TO zcl_lnt_recommendations.
    DATA t818 TYPE string.
    t818 = |SYSTEM_UUID_C_CREATE|.
    DATA t820 TYPE string.
    t820 = |use CL_SYSTEM_UUID|.
    DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t817 = NEW zcl_lnt_recommendations( i_name = t818 i_replace_2bce = t820 i_from = t822 ).
    CREATE OBJECT t817->zlnt_view_ownkeys_b0e8086400eb.
    t817->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t824 ).
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t817->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t817->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t825 ).
    ENDIF.
    CREATE OBJECT t817->zlnt_json_ownkeys_70e5fd461788.
    t817->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t826) = |name|.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t826 p1 = t827 ).
    DATA(t828) = |replace|.
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t817->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t817->zlnt_json_ownkeys_70e5fd461788->put( p0 = t828 p1 = t829 ).
    ENDIF.
    t2->load( ).
    APPEND t817 TO t2->items.
    t2->save( ).
    DATA t831 TYPE REF TO zcl_lnt_recommendations.
    DATA t832 TYPE string.
    t832 = |UPLOAD|.
    DATA t834 TYPE string.
    t834 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t831 = NEW zcl_lnt_recommendations( i_name = t832 i_replace_2bce = t834 i_from = t836 ).
    CREATE OBJECT t831->zlnt_view_ownkeys_b0e8086400eb.
    t831->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t831->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t838 ).
    DATA t839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t831->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t831->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t839 ).
    ENDIF.
    CREATE OBJECT t831->zlnt_json_ownkeys_70e5fd461788.
    t831->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t840) = |name|.
    DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t831->zlnt_json_ownkeys_70e5fd461788->put( p0 = t840 p1 = t841 ).
    DATA(t842) = |replace|.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t831->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t831->zlnt_json_ownkeys_70e5fd461788->put( p0 = t842 p1 = t843 ).
    ENDIF.
    t2->load( ).
    APPEND t831 TO t2->items.
    t2->save( ).
    DATA t845 TYPE REF TO zcl_lnt_recommendations.
    DATA t846 TYPE string.
    t846 = |WS_DOWNLOAD|.
    DATA t848 TYPE string.
    t848 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t845 = NEW zcl_lnt_recommendations( i_name = t846 i_replace_2bce = t848 i_from = t850 ).
    CREATE OBJECT t845->zlnt_view_ownkeys_b0e8086400eb.
    t845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t852 ).
    DATA t853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t853 ).
    ENDIF.
    CREATE OBJECT t845->zlnt_json_ownkeys_70e5fd461788.
    t845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t854) = |name|.
    DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t854 p1 = t855 ).
    DATA(t856) = |replace|.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t856 p1 = t857 ).
    ENDIF.
    t2->load( ).
    APPEND t845 TO t2->items.
    t2->save( ).
    DATA t859 TYPE REF TO zcl_lnt_recommendations.
    DATA t860 TYPE string.
    t860 = |WS_EXECUTE|.
    DATA t862 TYPE string.
    t862 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t859 = NEW zcl_lnt_recommendations( i_name = t860 i_replace_2bce = t862 i_from = t864 ).
    CREATE OBJECT t859->zlnt_view_ownkeys_b0e8086400eb.
    t859->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t859->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t866 ).
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t859->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t859->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t867 ).
    ENDIF.
    CREATE OBJECT t859->zlnt_json_ownkeys_70e5fd461788.
    t859->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t868) = |name|.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t859->zlnt_json_ownkeys_70e5fd461788->put( p0 = t868 p1 = t869 ).
    DATA(t870) = |replace|.
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t859->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t859->zlnt_json_ownkeys_70e5fd461788->put( p0 = t870 p1 = t871 ).
    ENDIF.
    t2->load( ).
    APPEND t859 TO t2->items.
    t2->save( ).
    DATA t873 TYPE REF TO zcl_lnt_recommendations.
    DATA t874 TYPE string.
    t874 = |WS_FILENAME_GET|.
    DATA t876 TYPE string.
    t876 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t878 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t873 = NEW zcl_lnt_recommendations( i_name = t874 i_replace_2bce = t876 i_from = t878 ).
    CREATE OBJECT t873->zlnt_view_ownkeys_b0e8086400eb.
    t873->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t880 ).
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t881 ).
    ENDIF.
    CREATE OBJECT t873->zlnt_json_ownkeys_70e5fd461788.
    t873->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t882) = |name|.
    DATA t883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t882 p1 = t883 ).
    DATA(t884) = |replace|.
    DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t884 p1 = t885 ).
    ENDIF.
    t2->load( ).
    APPEND t873 TO t2->items.
    t2->save( ).
    DATA t887 TYPE REF TO zcl_lnt_recommendations.
    DATA t888 TYPE string.
    t888 = |WS_FILE_ATTRIB|.
    DATA t890 TYPE string.
    t890 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t887 = NEW zcl_lnt_recommendations( i_name = t888 i_replace_2bce = t890 i_from = t892 ).
    CREATE OBJECT t887->zlnt_view_ownkeys_b0e8086400eb.
    t887->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t894 ).
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t887->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t895 ).
    ENDIF.
    CREATE OBJECT t887->zlnt_json_ownkeys_70e5fd461788.
    t887->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t896) = |name|.
    DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = t896 p1 = t897 ).
    DATA(t898) = |replace|.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t887->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = t898 p1 = t899 ).
    ENDIF.
    t2->load( ).
    APPEND t887 TO t2->items.
    t2->save( ).
    DATA t901 TYPE REF TO zcl_lnt_recommendations.
    DATA t902 TYPE string.
    t902 = |WS_FILE_COPY|.
    DATA t904 TYPE string.
    t904 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t906 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t901 = NEW zcl_lnt_recommendations( i_name = t902 i_replace_2bce = t904 i_from = t906 ).
    CREATE OBJECT t901->zlnt_view_ownkeys_b0e8086400eb.
    t901->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t901->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t908 ).
    DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t901->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t901->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t909 ).
    ENDIF.
    CREATE OBJECT t901->zlnt_json_ownkeys_70e5fd461788.
    t901->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t910) = |name|.
    DATA t911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t901->zlnt_json_ownkeys_70e5fd461788->put( p0 = t910 p1 = t911 ).
    DATA(t912) = |replace|.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t901->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t901->zlnt_json_ownkeys_70e5fd461788->put( p0 = t912 p1 = t913 ).
    ENDIF.
    t2->load( ).
    APPEND t901 TO t2->items.
    t2->save( ).
    DATA t915 TYPE REF TO zcl_lnt_recommendations.
    DATA t916 TYPE string.
    t916 = |WS_FILE_DELETE|.
    DATA t918 TYPE string.
    t918 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t915 = NEW zcl_lnt_recommendations( i_name = t916 i_replace_2bce = t918 i_from = t920 ).
    CREATE OBJECT t915->zlnt_view_ownkeys_b0e8086400eb.
    t915->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t922 ).
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t915->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t915->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t923 ).
    ENDIF.
    CREATE OBJECT t915->zlnt_json_ownkeys_70e5fd461788.
    t915->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t924) = |name|.
    DATA t925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = t924 p1 = t925 ).
    DATA(t926) = |replace|.
    DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t915->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t915->zlnt_json_ownkeys_70e5fd461788->put( p0 = t926 p1 = t927 ).
    ENDIF.
    t2->load( ).
    APPEND t915 TO t2->items.
    t2->save( ).
    DATA t929 TYPE REF TO zcl_lnt_recommendations.
    DATA t930 TYPE string.
    t930 = |WS_QUERY|.
    DATA t932 TYPE string.
    t932 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t929 = NEW zcl_lnt_recommendations( i_name = t930 i_replace_2bce = t932 i_from = t934 ).
    CREATE OBJECT t929->zlnt_view_ownkeys_b0e8086400eb.
    t929->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t936 ).
    DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t929->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t929->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t937 ).
    ENDIF.
    CREATE OBJECT t929->zlnt_json_ownkeys_70e5fd461788.
    t929->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t938) = |name|.
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t938 p1 = t939 ).
    DATA(t940) = |replace|.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t929->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t929->zlnt_json_ownkeys_70e5fd461788->put( p0 = t940 p1 = t941 ).
    ENDIF.
    t2->load( ).
    APPEND t929 TO t2->items.
    t2->save( ).
    DATA t943 TYPE REF TO zcl_lnt_recommendations.
    DATA t944 TYPE string.
    t944 = |WS_UPLOAD|.
    DATA t946 TYPE string.
    t946 = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t943 = NEW zcl_lnt_recommendations( i_name = t944 i_replace_2bce = t946 i_from = t948 ).
    CREATE OBJECT t943->zlnt_view_ownkeys_b0e8086400eb.
    t943->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t950 ).
    DATA t951 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t943->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t943->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `replace` p1 = t951 ).
    ENDIF.
    CREATE OBJECT t943->zlnt_json_ownkeys_70e5fd461788.
    t943->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t952) = |name|.
    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t952 p1 = t953 ).
    DATA(t954) = |replace|.
    DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t943->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t943->zlnt_json_ownkeys_70e5fd461788->put( p0 = t954 p1 = t955 ).
    ENDIF.
    t2->load( ).
    APPEND t943 TO t2->items.
    t2->save( ).
    t1 = t2.
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
        DATA t3 TYPE REF TO zcl_lnt_recommendations.
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
      IF p0 IS BOUND.
        DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t3 TYPE REF TO object.
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
            DATA t2 TYPE REF TO object.
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
          DATA t4 TYPE REF TO object.
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
