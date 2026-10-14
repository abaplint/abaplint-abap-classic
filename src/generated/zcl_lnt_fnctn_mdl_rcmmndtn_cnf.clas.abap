* TS: src/rules/function_module_recommendations.ts:21:1 FunctionModuleRecommendationsConf
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA recommendations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_rcmmndtn_cnf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zcl_lnt_recommendations.
    DATA(t6) = |CALCULATE_HASH_FOR_CHAR|.
    DATA(t7) = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    t5 = NEW zcl_lnt_recommendations( i_name = t6 i_replace_2bce = t7 i_from = t8 ).
    APPEND t5 TO t4->items.
    DATA(t9) = t2.
    DATA t10 TYPE REF TO zcl_lnt_recommendations.
    DATA(t11) = |CALCULATE_HASH_FOR_RAW|.
    DATA(t12) = |use CL_ABAP_HMAC or CL_ABAP_MESSAGE_DIGEST|.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    t10 = NEW zcl_lnt_recommendations( i_name = t11 i_replace_2bce = t12 i_from = t13 ).
    APPEND t10 TO t9->items.
    DATA(t14) = t2.
    DATA t15 TYPE REF TO zcl_lnt_recommendations.
    DATA(t16) = |CCU_TIMESTAMP_DIFFERENCE|.
    DATA(t17) = |use CL_ABAP_TSTMP|.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t15 = NEW zcl_lnt_recommendations( i_name = t16 i_replace_2bce = t17 i_from = t18 ).
    APPEND t15 TO t14->items.
    DATA(t19) = t2.
    DATA t20 TYPE REF TO zcl_lnt_recommendations.
    DATA(t21) = |CLPB_EXPORT|.
    DATA(t22) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t20 = NEW zcl_lnt_recommendations( i_name = t21 i_replace_2bce = t22 i_from = t23 ).
    APPEND t20 TO t19->items.
    DATA(t24) = t2.
    DATA t25 TYPE REF TO zcl_lnt_recommendations.
    DATA(t26) = |CLPB_IMPORT|.
    DATA(t27) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    t25 = NEW zcl_lnt_recommendations( i_name = t26 i_replace_2bce = t27 i_from = t28 ).
    APPEND t25 TO t24->items.
    DATA(t29) = t2.
    DATA t30 TYPE REF TO zcl_lnt_recommendations.
    DATA(t31) = |CONVERT_DATE_TO_EXTERNAL|.
    DATA(t32) = |use CL_ABAP_DATFM|.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t30 = NEW zcl_lnt_recommendations( i_name = t31 i_replace_2bce = t32 i_from = t33 ).
    APPEND t30 TO t29->items.
    DATA(t34) = t2.
    DATA t35 TYPE REF TO zcl_lnt_recommendations.
    DATA(t36) = |CONVERT_TIME_INPUT|.
    DATA(t37) = |use CL_ABAP_TIMEFM|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    t35 = NEW zcl_lnt_recommendations( i_name = t36 i_replace_2bce = t37 i_from = t38 ).
    APPEND t35 TO t34->items.
    DATA(t39) = t2.
    DATA t40 TYPE REF TO zcl_lnt_recommendations.
    DATA(t41) = |DOWNLOAD|.
    DATA(t42) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t40 = NEW zcl_lnt_recommendations( i_name = t41 i_replace_2bce = t42 i_from = t43 ).
    APPEND t40 TO t39->items.
    DATA(t44) = t2.
    DATA t45 TYPE REF TO zcl_lnt_recommendations.
    DATA(t46) = |ECATT_CONV_XSTRING_TO_STRING|.
    DATA(t47) = |use CL_BINARY_CONVERT|.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    t45 = NEW zcl_lnt_recommendations( i_name = t46 i_replace_2bce = t47 i_from = t48 ).
    APPEND t45 TO t44->items.
    DATA(t49) = t2.
    DATA t50 TYPE REF TO zcl_lnt_recommendations.
    DATA(t51) = |F4_FILENAME|.
    DATA(t52) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t53.
    t50 = NEW zcl_lnt_recommendations( i_name = t51 i_replace_2bce = t52 i_from = t53 ).
    APPEND t50 TO t49->items.
    DATA(t54) = t2.
    DATA t55 TYPE REF TO zcl_lnt_recommendations.
    DATA(t56) = |FUNCTION_EXISTS|.
    DATA(t57) = |surround with try-catch CX_SY_DYN_CALL_ILLEGAL_METHOD instea|.
    t57 = t57 && |d|.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    t55 = NEW zcl_lnt_recommendations( i_name = t56 i_replace_2bce = t57 i_from = t58 ).
    APPEND t55 TO t54->items.
    DATA(t59) = t2.
    DATA t60 TYPE REF TO zcl_lnt_recommendations.
    DATA(t61) = |GUI_CREATE_DIRECTORY|.
    DATA(t62) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t63.
    t60 = NEW zcl_lnt_recommendations( i_name = t61 i_replace_2bce = t62 i_from = t63 ).
    APPEND t60 TO t59->items.
    DATA(t64) = t2.
    DATA t65 TYPE REF TO zcl_lnt_recommendations.
    DATA(t66) = |GUI_DELETE_FILE|.
    DATA(t67) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t68.
    t65 = NEW zcl_lnt_recommendations( i_name = t66 i_replace_2bce = t67 i_from = t68 ).
    APPEND t65 TO t64->items.
    DATA(t69) = t2.
    DATA t70 TYPE REF TO zcl_lnt_recommendations.
    DATA(t71) = |GUI_DOWNLOAD|.
    DATA(t72) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t73.
    t70 = NEW zcl_lnt_recommendations( i_name = t71 i_replace_2bce = t72 i_from = t73 ).
    APPEND t70 TO t69->items.
    DATA(t74) = t2.
    DATA t75 TYPE REF TO zcl_lnt_recommendations.
    DATA(t76) = |GUI_EXEC|.
    DATA(t77) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t78.
    t75 = NEW zcl_lnt_recommendations( i_name = t76 i_replace_2bce = t77 i_from = t78 ).
    APPEND t75 TO t74->items.
    DATA(t79) = t2.
    DATA t80 TYPE REF TO zcl_lnt_recommendations.
    DATA(t81) = |GUI_FB_USAGE|.
    DATA(t82) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    t80 = NEW zcl_lnt_recommendations( i_name = t81 i_replace_2bce = t82 i_from = t83 ).
    APPEND t80 TO t79->items.
    DATA(t84) = t2.
    DATA t85 TYPE REF TO zcl_lnt_recommendations.
    DATA(t86) = |GUI_FILE_LOAD_DIALOG|.
    DATA(t87) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t88.
    t85 = NEW zcl_lnt_recommendations( i_name = t86 i_replace_2bce = t87 i_from = t88 ).
    APPEND t85 TO t84->items.
    DATA(t89) = t2.
    DATA t90 TYPE REF TO zcl_lnt_recommendations.
    DATA(t91) = |GUI_FILE_SAVE_DIALOG|.
    DATA(t92) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t93.
    t90 = NEW zcl_lnt_recommendations( i_name = t91 i_replace_2bce = t92 i_from = t93 ).
    APPEND t90 TO t89->items.
    DATA(t94) = t2.
    DATA t95 TYPE REF TO zcl_lnt_recommendations.
    DATA(t96) = |GUI_GET_DESKTOP_INFO|.
    DATA(t97) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t98.
    t95 = NEW zcl_lnt_recommendations( i_name = t96 i_replace_2bce = t97 i_from = t98 ).
    APPEND t95 TO t94->items.
    DATA(t99) = t2.
    DATA t100 TYPE REF TO zcl_lnt_recommendations.
    DATA(t101) = |GUI_GET_FILE_INFO|.
    DATA(t102) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t103.
    t100 = NEW zcl_lnt_recommendations( i_name = t101 i_replace_2bce = t102 i_from = t103 ).
    APPEND t100 TO t99->items.
    DATA(t104) = t2.
    DATA t105 TYPE REF TO zcl_lnt_recommendations.
    DATA(t106) = |GUI_GET_REGVALUE|.
    DATA(t107) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t108.
    t105 = NEW zcl_lnt_recommendations( i_name = t106 i_replace_2bce = t107 i_from = t108 ).
    APPEND t105 TO t104->items.
    DATA(t109) = t2.
    DATA t110 TYPE REF TO zcl_lnt_recommendations.
    DATA(t111) = |GUI_MULTIPLE_FILE_LOAD_DIALOG|.
    DATA(t112) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t113.
    t110 = NEW zcl_lnt_recommendations( i_name = t111 i_replace_2bce = t112 i_from = t113 ).
    APPEND t110 TO t109->items.
    DATA(t114) = t2.
    DATA t115 TYPE REF TO zcl_lnt_recommendations.
    DATA(t116) = |GUI_REMOVE_DIRECTORY|.
    DATA(t117) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    t115 = NEW zcl_lnt_recommendations( i_name = t116 i_replace_2bce = t117 i_from = t118 ).
    APPEND t115 TO t114->items.
    DATA(t119) = t2.
    DATA t120 TYPE REF TO zcl_lnt_recommendations.
    DATA(t121) = |GUI_RUN|.
    DATA(t122) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t123.
    t120 = NEW zcl_lnt_recommendations( i_name = t121 i_replace_2bce = t122 i_from = t123 ).
    APPEND t120 TO t119->items.
    DATA(t124) = t2.
    DATA t125 TYPE REF TO zcl_lnt_recommendations.
    DATA(t126) = |GUI_SET_REGVALUE|.
    DATA(t127) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t128.
    t125 = NEW zcl_lnt_recommendations( i_name = t126 i_replace_2bce = t127 i_from = t128 ).
    APPEND t125 TO t124->items.
    DATA(t129) = t2.
    DATA t130 TYPE REF TO zcl_lnt_recommendations.
    DATA(t131) = |GUI_UPLOAD|.
    DATA(t132) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t133.
    t130 = NEW zcl_lnt_recommendations( i_name = t131 i_replace_2bce = t132 i_from = t133 ).
    APPEND t130 TO t129->items.
    DATA(t134) = t2.
    DATA t135 TYPE REF TO zcl_lnt_recommendations.
    DATA(t136) = |GUI_VSS_DOWNLOAD|.
    DATA(t137) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t138.
    t135 = NEW zcl_lnt_recommendations( i_name = t136 i_replace_2bce = t137 i_from = t138 ).
    APPEND t135 TO t134->items.
    DATA(t139) = t2.
    DATA t140 TYPE REF TO zcl_lnt_recommendations.
    DATA(t141) = |GUI_VSS_UPLOAD|.
    DATA(t142) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t143.
    t140 = NEW zcl_lnt_recommendations( i_name = t141 i_replace_2bce = t142 i_from = t143 ).
    APPEND t140 TO t139->items.
    DATA(t144) = t2.
    DATA t145 TYPE REF TO zcl_lnt_recommendations.
    DATA(t146) = |GUID_CREATE|.
    DATA(t147) = |use CL_SYSTEM_UUID|.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t148.
    t145 = NEW zcl_lnt_recommendations( i_name = t146 i_replace_2bce = t147 i_from = t148 ).
    APPEND t145 TO t144->items.
    DATA(t149) = t2.
    DATA t150 TYPE REF TO zcl_lnt_recommendations.
    DATA(t151) = |IGN_TIMESTAMP_DIFFERENCE|.
    DATA(t152) = |use CL_ABAP_TSTMP|.
    DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t153.
    t150 = NEW zcl_lnt_recommendations( i_name = t151 i_replace_2bce = t152 i_from = t153 ).
    APPEND t150 TO t149->items.
    DATA(t154) = t2.
    DATA t155 TYPE REF TO zcl_lnt_recommendations.
    DATA(t156) = |IGN_TIMESTAMP_PLUSMINUS|.
    DATA(t157) = |use CL_ABAP_TSTMP|.
    DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t158.
    t155 = NEW zcl_lnt_recommendations( i_name = t156 i_replace_2bce = t157 i_from = t158 ).
    APPEND t155 TO t154->items.
    DATA(t159) = t2.
    DATA t160 TYPE REF TO zcl_lnt_recommendations.
    DATA(t161) = |ISM_SD_GET_PRICING_CONDITIONS|.
    DATA(t162) = |use CL_PRC_RESULT_FACTORY as per note 2220005|.
    DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t163.
    t160 = NEW zcl_lnt_recommendations( i_name = t161 i_replace_2bce = t162 i_from = t163 ).
    APPEND t160 TO t159->items.
    DATA(t164) = t2.
    DATA t165 TYPE REF TO zcl_lnt_recommendations.
    DATA(t166) = |JOB_CREATE|.
    DATA(t167) = |use CL_BP_ABAP_JOB|.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t168.
    t165 = NEW zcl_lnt_recommendations( i_name = t166 i_replace_2bce = t167 i_from = t168 ).
    APPEND t165 TO t164->items.
    DATA(t169) = t2.
    DATA t170 TYPE REF TO zcl_lnt_recommendations.
    DATA(t171) = |JOB_SUBMIT|.
    DATA(t172) = |use CL_BP_ABAP_JOB|.
    DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t173.
    t170 = NEW zcl_lnt_recommendations( i_name = t171 i_replace_2bce = t172 i_from = t173 ).
    APPEND t170 TO t169->items.
    DATA(t174) = t2.
    DATA t175 TYPE REF TO zcl_lnt_recommendations.
    DATA(t176) = |MD5_CALCULATE_HASH_FOR_CHAR|.
    DATA(t177) = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t178.
    t175 = NEW zcl_lnt_recommendations( i_name = t176 i_replace_2bce = t177 i_from = t178 ).
    APPEND t175 TO t174->items.
    DATA(t179) = t2.
    DATA t180 TYPE REF TO zcl_lnt_recommendations.
    DATA(t181) = |MD5_CALCULATE_HASH_FOR_RAW|.
    DATA(t182) = |use CL_ABAP_MESSAGE_DIGEST|.
    DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t183.
    t180 = NEW zcl_lnt_recommendations( i_name = t181 i_replace_2bce = t182 i_from = t183 ).
    APPEND t180 TO t179->items.
    DATA(t184) = t2.
    DATA t185 TYPE REF TO zcl_lnt_recommendations.
    DATA(t186) = |POPUP_TO_CONFIRM_LOSS_OF_DATA|.
    DATA(t187) = |use POPUP_TO_CONFIRM|.
    DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t188.
    t185 = NEW zcl_lnt_recommendations( i_name = t186 i_replace_2bce = t187 i_from = t188 ).
    APPEND t185 TO t184->items.
    DATA(t189) = t2.
    DATA t190 TYPE REF TO zcl_lnt_recommendations.
    DATA(t191) = |POPUP_TO_CONFIRM_STEP|.
    DATA(t192) = |use POPUP_TO_CONFIRM|.
    DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t193.
    t190 = NEW zcl_lnt_recommendations( i_name = t191 i_replace_2bce = t192 i_from = t193 ).
    APPEND t190 TO t189->items.
    DATA(t194) = t2.
    DATA t195 TYPE REF TO zcl_lnt_recommendations.
    DATA(t196) = |POPUP_TO_CONFIRM_WITH_MESSAGE|.
    DATA(t197) = |use POPUP_TO_CONFIRM|.
    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t198.
    t195 = NEW zcl_lnt_recommendations( i_name = t196 i_replace_2bce = t197 i_from = t198 ).
    APPEND t195 TO t194->items.
    DATA(t199) = t2.
    DATA t200 TYPE REF TO zcl_lnt_recommendations.
    DATA(t201) = |POPUP_TO_CONFIRM_WITH_VALUE|.
    DATA(t202) = |use POPUP_TO_CONFIRM|.
    DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t203.
    t200 = NEW zcl_lnt_recommendations( i_name = t201 i_replace_2bce = t202 i_from = t203 ).
    APPEND t200 TO t199->items.
    DATA(t204) = t2.
    DATA t205 TYPE REF TO zcl_lnt_recommendations.
    DATA(t206) = |POPUP_TO_CONFIRM_WITH_VALUE_2|.
    DATA(t207) = |use POPUP_TO_CONFIRM|.
    DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t208.
    t205 = NEW zcl_lnt_recommendations( i_name = t206 i_replace_2bce = t207 i_from = t208 ).
    APPEND t205 TO t204->items.
    DATA(t209) = t2.
    DATA t210 TYPE REF TO zcl_lnt_recommendations.
    DATA(t211) = |POPUP_TO_DECIDE|.
    DATA(t212) = |use POPUP_TO_CONFIRM|.
    DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t213.
    t210 = NEW zcl_lnt_recommendations( i_name = t211 i_replace_2bce = t212 i_from = t213 ).
    APPEND t210 TO t209->items.
    DATA(t214) = t2.
    DATA t215 TYPE REF TO zcl_lnt_recommendations.
    DATA(t216) = |POPUP_TO_DECIDE_INFO|.
    DATA(t217) = |use POPUP_TO_CONFIRM|.
    DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t218.
    t215 = NEW zcl_lnt_recommendations( i_name = t216 i_replace_2bce = t217 i_from = t218 ).
    APPEND t215 TO t214->items.
    DATA(t219) = t2.
    DATA t220 TYPE REF TO zcl_lnt_recommendations.
    DATA(t221) = |POPUP_TO_DECIDE_WITH_MESSAGE|.
    DATA(t222) = |use POPUP_TO_CONFIRM|.
    DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t223.
    t220 = NEW zcl_lnt_recommendations( i_name = t221 i_replace_2bce = t222 i_from = t223 ).
    APPEND t220 TO t219->items.
    DATA(t224) = t2.
    DATA t225 TYPE REF TO zcl_lnt_recommendations.
    DATA(t226) = |POPUP_TO_GET_VALUE|.
    DATA(t227) = |use POPUP_GET_VALUES|.
    DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t228.
    t225 = NEW zcl_lnt_recommendations( i_name = t226 i_replace_2bce = t227 i_from = t228 ).
    APPEND t225 TO t224->items.
    DATA(t229) = t2.
    DATA t230 TYPE REF TO zcl_lnt_recommendations.
    DATA(t231) = |QF05_RANDOM_INTEGER|.
    DATA(t232) = |use CL_ABAP_RANDOM_INT|.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t233.
    t230 = NEW zcl_lnt_recommendations( i_name = t231 i_replace_2bce = t232 i_from = t233 ).
    APPEND t230 TO t229->items.
    DATA(t234) = t2.
    DATA t235 TYPE REF TO zcl_lnt_recommendations.
    DATA(t236) = |REGISTRY_GET|.
    DATA(t237) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t238.
    t235 = NEW zcl_lnt_recommendations( i_name = t236 i_replace_2bce = t237 i_from = t238 ).
    APPEND t235 TO t234->items.
    DATA(t239) = t2.
    DATA t240 TYPE REF TO zcl_lnt_recommendations.
    DATA(t241) = |REGISTRY_SET|.
    DATA(t242) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t243.
    t240 = NEW zcl_lnt_recommendations( i_name = t241 i_replace_2bce = t242 i_from = t243 ).
    APPEND t240 TO t239->items.
    DATA(t244) = t2.
    DATA t245 TYPE REF TO zcl_lnt_recommendations.
    DATA(t246) = |REUSE_ALV_GRID_DISPLAY|.
    DATA(t247) = |use CL_SALV_TABLE=>FACTORY or CL_GUI_ALV_GRID|.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t248.
    t245 = NEW zcl_lnt_recommendations( i_name = t246 i_replace_2bce = t247 i_from = t248 ).
    APPEND t245 TO t244->items.
    DATA(t249) = t2.
    DATA t250 TYPE REF TO zcl_lnt_recommendations.
    DATA(t251) = |ROUND|.
    DATA(t252) = |use built in function: round()|.
    DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t253.
    t250 = NEW zcl_lnt_recommendations( i_name = t251 i_replace_2bce = t252 i_from = t253 ).
    APPEND t250 TO t249->items.
    DATA(t254) = t2.
    DATA t255 TYPE REF TO zcl_lnt_recommendations.
    DATA(t256) = |SAPGUI_PROGRESS_INDICATOR|.
    DATA(t257) = |use CL_PROGRESS_INDICATOR|.
    DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t258.
    t255 = NEW zcl_lnt_recommendations( i_name = t256 i_replace_2bce = t257 i_from = t258 ).
    APPEND t255 TO t254->items.
    DATA(t259) = t2.
    DATA t260 TYPE REF TO zcl_lnt_recommendations.
    DATA(t261) = |SCMS_BASE64_DECODE_STR|.
    DATA(t262) = |use class CL_HTTP_UTILITY methods|.
    DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t263.
    t260 = NEW zcl_lnt_recommendations( i_name = t261 i_replace_2bce = t262 i_from = t263 ).
    APPEND t260 TO t259->items.
    DATA(t264) = t2.
    DATA t265 TYPE REF TO zcl_lnt_recommendations.
    DATA(t266) = |SCMS_STRING_TO_XSTRING|.
    DATA(t267) = |use CL_BINARY_CONVERT|.
    DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t268.
    t265 = NEW zcl_lnt_recommendations( i_name = t266 i_replace_2bce = t267 i_from = t268 ).
    APPEND t265 TO t264->items.
    DATA(t269) = t2.
    DATA t270 TYPE REF TO zcl_lnt_recommendations.
    DATA(t271) = |SO_NEW_DOCUMENT_ATT_SEND_API1|.
    DATA(t272) = |use CL_BCS|.
    DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t273.
    t270 = NEW zcl_lnt_recommendations( i_name = t271 i_replace_2bce = t272 i_from = t273 ).
    APPEND t270 TO t269->items.
    DATA(t274) = t2.
    DATA t275 TYPE REF TO zcl_lnt_recommendations.
    DATA(t276) = |SSFC_BASE64_DECODE|.
    DATA(t277) = |use class CL_HTTP_UTILITY methods|.
    DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t278.
    t275 = NEW zcl_lnt_recommendations( i_name = t276 i_replace_2bce = t277 i_from = t278 ).
    APPEND t275 TO t274->items.
    DATA(t279) = t2.
    DATA t280 TYPE REF TO zcl_lnt_recommendations.
    DATA(t281) = |SSFC_BASE64_ENCODE|.
    DATA(t282) = |use class CL_HTTP_UTILITY methods|.
    DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t283.
    t280 = NEW zcl_lnt_recommendations( i_name = t281 i_replace_2bce = t282 i_from = t283 ).
    APPEND t280 TO t279->items.
    DATA(t284) = t2.
    DATA t285 TYPE REF TO zcl_lnt_recommendations.
    DATA(t286) = |SUBST_GET_FILE_LIST|.
    DATA(t287) = |see note 1686357|.
    DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t288.
    t285 = NEW zcl_lnt_recommendations( i_name = t286 i_replace_2bce = t287 i_from = t288 ).
    APPEND t285 TO t284->items.
    DATA(t289) = t2.
    DATA t290 TYPE REF TO zcl_lnt_recommendations.
    DATA(t291) = |SYSTEM_GET_UNIQUE_ID|.
    DATA(t292) = |use CL_SYSTEM_UUID|.
    DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t293.
    t290 = NEW zcl_lnt_recommendations( i_name = t291 i_replace_2bce = t292 i_from = t293 ).
    APPEND t290 TO t289->items.
    DATA(t294) = t2.
    DATA t295 TYPE REF TO zcl_lnt_recommendations.
    DATA(t296) = |SYSTEM_UUID_C_CREATE|.
    DATA(t297) = |use CL_SYSTEM_UUID|.
    DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t298.
    t295 = NEW zcl_lnt_recommendations( i_name = t296 i_replace_2bce = t297 i_from = t298 ).
    APPEND t295 TO t294->items.
    DATA(t299) = t2.
    DATA t300 TYPE REF TO zcl_lnt_recommendations.
    DATA(t301) = |UPLOAD|.
    DATA(t302) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t303.
    t300 = NEW zcl_lnt_recommendations( i_name = t301 i_replace_2bce = t302 i_from = t303 ).
    APPEND t300 TO t299->items.
    DATA(t304) = t2.
    DATA t305 TYPE REF TO zcl_lnt_recommendations.
    DATA(t306) = |WS_DOWNLOAD|.
    DATA(t307) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t308.
    t305 = NEW zcl_lnt_recommendations( i_name = t306 i_replace_2bce = t307 i_from = t308 ).
    APPEND t305 TO t304->items.
    DATA(t309) = t2.
    DATA t310 TYPE REF TO zcl_lnt_recommendations.
    DATA(t311) = |WS_EXECUTE|.
    DATA(t312) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t313.
    t310 = NEW zcl_lnt_recommendations( i_name = t311 i_replace_2bce = t312 i_from = t313 ).
    APPEND t310 TO t309->items.
    DATA(t314) = t2.
    DATA t315 TYPE REF TO zcl_lnt_recommendations.
    DATA(t316) = |WS_FILENAME_GET|.
    DATA(t317) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t318.
    t315 = NEW zcl_lnt_recommendations( i_name = t316 i_replace_2bce = t317 i_from = t318 ).
    APPEND t315 TO t314->items.
    DATA(t319) = t2.
    DATA t320 TYPE REF TO zcl_lnt_recommendations.
    DATA(t321) = |WS_FILE_ATTRIB|.
    DATA(t322) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t323.
    t320 = NEW zcl_lnt_recommendations( i_name = t321 i_replace_2bce = t322 i_from = t323 ).
    APPEND t320 TO t319->items.
    DATA(t324) = t2.
    DATA t325 TYPE REF TO zcl_lnt_recommendations.
    DATA(t326) = |WS_FILE_COPY|.
    DATA(t327) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t328.
    t325 = NEW zcl_lnt_recommendations( i_name = t326 i_replace_2bce = t327 i_from = t328 ).
    APPEND t325 TO t324->items.
    DATA(t329) = t2.
    DATA t330 TYPE REF TO zcl_lnt_recommendations.
    DATA(t331) = |WS_FILE_DELETE|.
    DATA(t332) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t333.
    t330 = NEW zcl_lnt_recommendations( i_name = t331 i_replace_2bce = t332 i_from = t333 ).
    APPEND t330 TO t329->items.
    DATA(t334) = t2.
    DATA t335 TYPE REF TO zcl_lnt_recommendations.
    DATA(t336) = |WS_QUERY|.
    DATA(t337) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t338.
    t335 = NEW zcl_lnt_recommendations( i_name = t336 i_replace_2bce = t337 i_from = t338 ).
    APPEND t335 TO t334->items.
    DATA(t339) = t2.
    DATA t340 TYPE REF TO zcl_lnt_recommendations.
    DATA(t341) = |WS_UPLOAD|.
    DATA(t342) = |use CL_GUI_FRONTEND_SERVICES|.
    DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t343.
    t340 = NEW zcl_lnt_recommendations( i_name = t341 i_replace_2bce = t342 i_from = t343 ).
    APPEND t340 TO t339->items.
    DATA(t344) = t2.
    t1 = t344.
    me->recommendations = t1.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1418_596507c5c11d.
  ENDMETHOD.
ENDCLASS.
