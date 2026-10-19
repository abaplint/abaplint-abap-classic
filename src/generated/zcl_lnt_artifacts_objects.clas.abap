* TS: src/artifacts_objects.ts:5:1 ArtifactsObjects
CLASS zcl_lnt_artifacts_objects DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA object_map TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS new_object IMPORTING i_name TYPE string i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    CLASS-METHODS build_object_map.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_artifacts_objects IMPLEMENTATION.
  METHOD new_object.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = zcl_lnt_artifacts_objects=>object_map.
    IF t4 IS NOT BOUND.
      t3 = abap_true.
    ELSE.
      t3 = xsdbool( t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t3 = abap_true.
      zcl_lnt_artifacts_objects=>build_object_map( ).
    ENDIF.
    DATA t5 TYPE abap_bool.
    DATA(t7) = |__proto__|.
    t5 = xsdbool( t2 = t7 ).
    IF t5 = abap_true.
      DATA(t8) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t8->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA(t12) = |constructor|.
    t10 = xsdbool( t2 = t12 ).
    IF t10 = abap_true.
      DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t13->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA t15 TYPE abap_bool.
    DATA(t17) = |length|.
    t15 = xsdbool( t2 = t17 ).
    IF t15 = abap_true.
      DATA(t18) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t18->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t18.
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA(t22) = |toString|.
    t20 = xsdbool( t2 = t22 ).
    IF t20 = abap_true.
      DATA(t23) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t23->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t23.
    ENDIF.
    DATA t25 TYPE abap_bool.
    DATA(t27) = |toLocaleString|.
    t25 = xsdbool( t2 = t27 ).
    IF t25 = abap_true.
      DATA(t28) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t28->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t30 TYPE abap_bool.
    DATA(t32) = |valueOf|.
    t30 = xsdbool( t2 = t32 ).
    IF t30 = abap_true.
      DATA(t33) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t33->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t33.
    ENDIF.
    DATA t35 TYPE abap_bool.
    DATA(t37) = |hasOwnProperty|.
    t35 = xsdbool( t2 = t37 ).
    IF t35 = abap_true.
      DATA(t38) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t38->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t38.
    ENDIF.
    DATA t40 TYPE abap_bool.
    DATA(t42) = |isPrototypeOf|.
    t40 = xsdbool( t2 = t42 ).
    IF t40 = abap_true.
      DATA(t43) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t43->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t43.
    ENDIF.
    DATA t45 TYPE abap_bool.
    DATA(t47) = |propertyIsEnumerable|.
    t45 = xsdbool( t2 = t47 ).
    IF t45 = abap_true.
      DATA(t48) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t48->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t48.
    ENDIF.
    DATA t50 TYPE abap_bool.
    DATA(t52) = |__defineGetter__|.
    t50 = xsdbool( t2 = t52 ).
    IF t50 = abap_true.
      DATA(t53) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t53->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t53.
    ENDIF.
    DATA t55 TYPE abap_bool.
    DATA(t57) = |__defineSetter__|.
    t55 = xsdbool( t2 = t57 ).
    IF t55 = abap_true.
      DATA(t58) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t58->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t58.
    ENDIF.
    DATA t60 TYPE abap_bool.
    DATA(t62) = |__lookupGetter__|.
    t60 = xsdbool( t2 = t62 ).
    IF t60 = abap_true.
      DATA(t63) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t63->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t63.
    ENDIF.
    DATA t65 TYPE abap_bool.
    DATA(t67) = |__lookupSetter__|.
    t65 = xsdbool( t2 = t67 ).
    IF t65 = abap_true.
      DATA(t68) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t68->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t68.
    ENDIF.
    DATA t70 TYPE abap_bool.
    DATA(t72) = |at|.
    t70 = xsdbool( t2 = t72 ).
    IF t70 = abap_true.
      DATA(t73) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t73->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t73.
    ENDIF.
    DATA t75 TYPE abap_bool.
    DATA(t77) = |concat|.
    t75 = xsdbool( t2 = t77 ).
    IF t75 = abap_true.
      DATA(t78) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t78->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t78.
    ENDIF.
    DATA t80 TYPE abap_bool.
    DATA(t82) = |copyWithin|.
    t80 = xsdbool( t2 = t82 ).
    IF t80 = abap_true.
      DATA(t83) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t83->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t83.
    ENDIF.
    DATA t85 TYPE abap_bool.
    DATA(t87) = |entries|.
    t85 = xsdbool( t2 = t87 ).
    IF t85 = abap_true.
      DATA(t88) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t88->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t88.
    ENDIF.
    DATA t90 TYPE abap_bool.
    DATA(t92) = |every|.
    t90 = xsdbool( t2 = t92 ).
    IF t90 = abap_true.
      DATA(t93) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t93->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t93.
    ENDIF.
    DATA t95 TYPE abap_bool.
    DATA(t97) = |fill|.
    t95 = xsdbool( t2 = t97 ).
    IF t95 = abap_true.
      DATA(t98) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t98->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t98.
    ENDIF.
    DATA t100 TYPE abap_bool.
    DATA(t102) = |filter|.
    t100 = xsdbool( t2 = t102 ).
    IF t100 = abap_true.
      DATA(t103) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t103->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t103.
    ENDIF.
    DATA t105 TYPE abap_bool.
    DATA(t107) = |find|.
    t105 = xsdbool( t2 = t107 ).
    IF t105 = abap_true.
      DATA(t108) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t108->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t108.
    ENDIF.
    DATA t110 TYPE abap_bool.
    DATA(t112) = |findIndex|.
    t110 = xsdbool( t2 = t112 ).
    IF t110 = abap_true.
      DATA(t113) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t113->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t113.
    ENDIF.
    DATA t115 TYPE abap_bool.
    DATA(t117) = |findLast|.
    t115 = xsdbool( t2 = t117 ).
    IF t115 = abap_true.
      DATA(t118) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t118->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t118.
    ENDIF.
    DATA t120 TYPE abap_bool.
    DATA(t122) = |findLastIndex|.
    t120 = xsdbool( t2 = t122 ).
    IF t120 = abap_true.
      DATA(t123) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t123->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t123.
    ENDIF.
    DATA t125 TYPE abap_bool.
    DATA(t127) = |flat|.
    t125 = xsdbool( t2 = t127 ).
    IF t125 = abap_true.
      DATA(t128) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t128->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t128.
    ENDIF.
    DATA t130 TYPE abap_bool.
    DATA(t132) = |flatMap|.
    t130 = xsdbool( t2 = t132 ).
    IF t130 = abap_true.
      DATA(t133) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t133->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t133.
    ENDIF.
    DATA t135 TYPE abap_bool.
    DATA(t137) = |forEach|.
    t135 = xsdbool( t2 = t137 ).
    IF t135 = abap_true.
      DATA(t138) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t138->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t138.
    ENDIF.
    DATA t140 TYPE abap_bool.
    DATA(t142) = |includes|.
    t140 = xsdbool( t2 = t142 ).
    IF t140 = abap_true.
      DATA(t143) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t143->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t143.
    ENDIF.
    DATA t145 TYPE abap_bool.
    DATA(t147) = |indexOf|.
    t145 = xsdbool( t2 = t147 ).
    IF t145 = abap_true.
      DATA(t148) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t148->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t148.
    ENDIF.
    DATA t150 TYPE abap_bool.
    DATA(t152) = |join|.
    t150 = xsdbool( t2 = t152 ).
    IF t150 = abap_true.
      DATA(t153) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t153->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t153.
    ENDIF.
    DATA t155 TYPE abap_bool.
    DATA(t157) = |keys|.
    t155 = xsdbool( t2 = t157 ).
    IF t155 = abap_true.
      DATA(t158) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t158->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t158.
    ENDIF.
    DATA t160 TYPE abap_bool.
    DATA(t162) = |lastIndexOf|.
    t160 = xsdbool( t2 = t162 ).
    IF t160 = abap_true.
      DATA(t163) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t163->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t163.
    ENDIF.
    DATA t165 TYPE abap_bool.
    DATA(t167) = |map|.
    t165 = xsdbool( t2 = t167 ).
    IF t165 = abap_true.
      DATA(t168) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t168->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t168.
    ENDIF.
    DATA t170 TYPE abap_bool.
    DATA(t172) = |pop|.
    t170 = xsdbool( t2 = t172 ).
    IF t170 = abap_true.
      DATA(t173) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t173->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t173.
    ENDIF.
    DATA t175 TYPE abap_bool.
    DATA(t177) = |push|.
    t175 = xsdbool( t2 = t177 ).
    IF t175 = abap_true.
      DATA(t178) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t178->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t178.
    ENDIF.
    DATA t180 TYPE abap_bool.
    DATA(t182) = |reduce|.
    t180 = xsdbool( t2 = t182 ).
    IF t180 = abap_true.
      DATA(t183) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t183->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t183.
    ENDIF.
    DATA t185 TYPE abap_bool.
    DATA(t187) = |reduceRight|.
    t185 = xsdbool( t2 = t187 ).
    IF t185 = abap_true.
      DATA(t188) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t188->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t188.
    ENDIF.
    DATA t190 TYPE abap_bool.
    DATA(t192) = |reverse|.
    t190 = xsdbool( t2 = t192 ).
    IF t190 = abap_true.
      DATA(t193) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t193->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t193.
    ENDIF.
    DATA t195 TYPE abap_bool.
    DATA(t197) = |shift|.
    t195 = xsdbool( t2 = t197 ).
    IF t195 = abap_true.
      DATA(t198) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t198->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t198.
    ENDIF.
    DATA t200 TYPE abap_bool.
    DATA(t202) = |slice|.
    t200 = xsdbool( t2 = t202 ).
    IF t200 = abap_true.
      DATA(t203) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t203->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t203.
    ENDIF.
    DATA t205 TYPE abap_bool.
    DATA(t207) = |some|.
    t205 = xsdbool( t2 = t207 ).
    IF t205 = abap_true.
      DATA(t208) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t208->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t208.
    ENDIF.
    DATA t210 TYPE abap_bool.
    DATA(t212) = |sort|.
    t210 = xsdbool( t2 = t212 ).
    IF t210 = abap_true.
      DATA(t213) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t213->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t213.
    ENDIF.
    DATA t215 TYPE abap_bool.
    DATA(t217) = |splice|.
    t215 = xsdbool( t2 = t217 ).
    IF t215 = abap_true.
      DATA(t218) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t218->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t218.
    ENDIF.
    DATA t220 TYPE abap_bool.
    DATA(t222) = |toReversed|.
    t220 = xsdbool( t2 = t222 ).
    IF t220 = abap_true.
      DATA(t223) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t223->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t223.
    ENDIF.
    DATA t225 TYPE abap_bool.
    DATA(t227) = |toSorted|.
    t225 = xsdbool( t2 = t227 ).
    IF t225 = abap_true.
      DATA(t228) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t228->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t228.
    ENDIF.
    DATA t230 TYPE abap_bool.
    DATA(t232) = |toSpliced|.
    t230 = xsdbool( t2 = t232 ).
    IF t230 = abap_true.
      DATA(t233) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t233->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t233.
    ENDIF.
    DATA t235 TYPE abap_bool.
    DATA(t237) = |unshift|.
    t235 = xsdbool( t2 = t237 ).
    IF t235 = abap_true.
      DATA(t238) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t238->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t238.
    ENDIF.
    DATA t240 TYPE abap_bool.
    DATA(t242) = |values|.
    t240 = xsdbool( t2 = t242 ).
    IF t240 = abap_true.
      DATA(t243) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t243->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t243.
    ENDIF.
    DATA t245 TYPE abap_bool.
    DATA(t247) = |with|.
    t245 = xsdbool( t2 = t247 ).
    IF t245 = abap_true.
      DATA(t248) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t248->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t248.
    ENDIF.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t251 = zcl_lnt_artifacts_objects=>object_map->get( p0 = t2 ).
    t250 = t251.
    DATA(t254) = VALUE abap_bool( ).
    IF t250 IS NOT BOUND.
      t254 = abap_true.
    ELSE.
      t254 = xsdbool( t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t254 = abap_true.
      DATA t256 TYPE REF TO zif_lnt_object.
      DATA t257 TYPE REF TO zcl_lnt_unknown_object.
      t257 = NEW zcl_lnt_unknown_object( i_name = t1 i_type_9913 = t2 ).
      t256 ?= t257.
      result = t256.
      RETURN.
    ENDIF.
    DATA t260 TYPE REF TO zif_lnt_object.
    DATA t261 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    t261 = t250->as_classvalue( ).
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t265.
    t264 = t265.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t1.
    t264->load( ).
    APPEND t267 TO t264->items.
    t264->save( ).
    t263 = t264.
    DATA t270 TYPE REF TO object.
    t270 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t261 p1 = t263 ).
    t260 ?= t270.
    result = t260.

  ENDMETHOD.

  METHOD build_object_map.
    DATA t1 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    t1 = NEW zlnt_runtime_map__a5ffc3d163a5( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t6 TYPE REF TO object.
    t6 = t1.
    TRY.
        t3 ?= t6.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t3 IS NOT BOUND.
      TRY.
          t5 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS BOUND.
        t3 = t5->source( ).
      ENDIF.
      IF t3 IS NOT BOUND.
        CREATE OBJECT t3.
        t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t3->oval = t1.
      ENDIF.
    ENDIF.
    zcl_lnt_artifacts_objects=>object_map = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t8 = zcl_lnt_ob_index_module=>ns.
    t7 = t8->keys( ).
    DATA(t9) = VALUE string( ).
    t7->dense( ).
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      IF t7->has( t10 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t10 = t10 + 1.
      DATA t12 TYPE REF TO zif_lnt_object.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t15.
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t15 = zcl_lnt_ob_index_module=>ns.
      t14 = t15->get( p0 = t9 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      CREATE OBJECT t19.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      DATA(t22) = |DUMMY_NAME|.
      CLEAR t21.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t21->sval = t22.
      t18->load( ).
      APPEND t21 TO t18->items.
      t18->save( ).
      t17 = t18.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t24 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t13 p1 = t17 ).
      t12 ?= t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t25.
      DATA(t27) = VALUE string( ).
      t27 = t12->get_type( ).
      DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t31.
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t31 = zcl_lnt_ob_index_module=>ns.
      t30 = t31->get( p0 = t9 ).
      t29 = t30.
      t25 = t1->set( p0 = t27 p1 = t29 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1067_bb04b04c7dec.
  ENDMETHOD.
ENDCLASS.
