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
    IF xsdbool( t2 = |__proto__| ) = abap_true.
      DATA(t8) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t8->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t8.
    ENDIF.
    IF xsdbool( t2 = |constructor| ) = abap_true.
      DATA(t13) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t13->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t13.
    ENDIF.
    IF xsdbool( t2 = |length| ) = abap_true.
      DATA(t18) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t18->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t18.
    ENDIF.
    IF xsdbool( t2 = |toString| ) = abap_true.
      DATA(t23) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t23->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t23.
    ENDIF.
    IF xsdbool( t2 = |toLocaleString| ) = abap_true.
      DATA(t28) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t28->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t28.
    ENDIF.
    IF xsdbool( t2 = |valueOf| ) = abap_true.
      DATA(t33) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t33->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t33.
    ENDIF.
    IF xsdbool( t2 = |hasOwnProperty| ) = abap_true.
      DATA(t38) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t38->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t38.
    ENDIF.
    IF xsdbool( t2 = |isPrototypeOf| ) = abap_true.
      DATA(t43) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t43->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t43.
    ENDIF.
    IF xsdbool( t2 = |propertyIsEnumerable| ) = abap_true.
      DATA(t48) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t48->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t48.
    ENDIF.
    IF xsdbool( t2 = |__defineGetter__| ) = abap_true.
      DATA(t53) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t53->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t53.
    ENDIF.
    IF xsdbool( t2 = |__defineSetter__| ) = abap_true.
      DATA(t58) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t58->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t58.
    ENDIF.
    IF xsdbool( t2 = |__lookupGetter__| ) = abap_true.
      DATA(t63) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t63->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t63.
    ENDIF.
    IF xsdbool( t2 = |__lookupSetter__| ) = abap_true.
      DATA(t68) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t68->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t68.
    ENDIF.
    IF xsdbool( t2 = |at| ) = abap_true.
      DATA(t73) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t73->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t73.
    ENDIF.
    IF xsdbool( t2 = |concat| ) = abap_true.
      DATA(t78) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t78->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t78.
    ENDIF.
    IF xsdbool( t2 = |copyWithin| ) = abap_true.
      DATA(t83) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t83->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t83.
    ENDIF.
    IF xsdbool( t2 = |entries| ) = abap_true.
      DATA(t88) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t88->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t88.
    ENDIF.
    IF xsdbool( t2 = |every| ) = abap_true.
      DATA(t93) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t93->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t93.
    ENDIF.
    IF xsdbool( t2 = |fill| ) = abap_true.
      DATA(t98) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t98->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t98.
    ENDIF.
    IF xsdbool( t2 = |filter| ) = abap_true.
      DATA(t103) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t103->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t103.
    ENDIF.
    IF xsdbool( t2 = |find| ) = abap_true.
      DATA(t108) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t108->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t108.
    ENDIF.
    IF xsdbool( t2 = |findIndex| ) = abap_true.
      DATA(t113) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t113->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t113.
    ENDIF.
    IF xsdbool( t2 = |findLast| ) = abap_true.
      DATA(t118) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t118->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t118.
    ENDIF.
    IF xsdbool( t2 = |findLastIndex| ) = abap_true.
      DATA(t123) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t123->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t123.
    ENDIF.
    IF xsdbool( t2 = |flat| ) = abap_true.
      DATA(t128) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t128->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t128.
    ENDIF.
    IF xsdbool( t2 = |flatMap| ) = abap_true.
      DATA(t133) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t133->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t133.
    ENDIF.
    IF xsdbool( t2 = |forEach| ) = abap_true.
      DATA(t138) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t138->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t138.
    ENDIF.
    IF xsdbool( t2 = |includes| ) = abap_true.
      DATA(t143) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t143->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t143.
    ENDIF.
    IF xsdbool( t2 = |indexOf| ) = abap_true.
      DATA(t148) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t148->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t148.
    ENDIF.
    IF xsdbool( t2 = |join| ) = abap_true.
      DATA(t153) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t153->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t153.
    ENDIF.
    IF xsdbool( t2 = |keys| ) = abap_true.
      DATA(t158) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t158->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t158.
    ENDIF.
    IF xsdbool( t2 = |lastIndexOf| ) = abap_true.
      DATA(t163) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t163->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t163.
    ENDIF.
    IF xsdbool( t2 = |map| ) = abap_true.
      DATA(t168) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t168->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t168.
    ENDIF.
    IF xsdbool( t2 = |pop| ) = abap_true.
      DATA(t173) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t173->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t173.
    ENDIF.
    IF xsdbool( t2 = |push| ) = abap_true.
      DATA(t178) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t178->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t178.
    ENDIF.
    IF xsdbool( t2 = |reduce| ) = abap_true.
      DATA(t183) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t183->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t183.
    ENDIF.
    IF xsdbool( t2 = |reduceRight| ) = abap_true.
      DATA(t188) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t188->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t188.
    ENDIF.
    IF xsdbool( t2 = |reverse| ) = abap_true.
      DATA(t193) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t193->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t193.
    ENDIF.
    IF xsdbool( t2 = |shift| ) = abap_true.
      DATA(t198) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t198->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t198.
    ENDIF.
    IF xsdbool( t2 = |slice| ) = abap_true.
      DATA(t203) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t203->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t203.
    ENDIF.
    IF xsdbool( t2 = |some| ) = abap_true.
      DATA(t208) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t208->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t208.
    ENDIF.
    IF xsdbool( t2 = |sort| ) = abap_true.
      DATA(t213) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t213->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t213.
    ENDIF.
    IF xsdbool( t2 = |splice| ) = abap_true.
      DATA(t218) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t218->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t218.
    ENDIF.
    IF xsdbool( t2 = |toReversed| ) = abap_true.
      DATA(t223) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t223->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t223.
    ENDIF.
    IF xsdbool( t2 = |toSorted| ) = abap_true.
      DATA(t228) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t228->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t228.
    ENDIF.
    IF xsdbool( t2 = |toSpliced| ) = abap_true.
      DATA(t233) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t233->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t233.
    ENDIF.
    IF xsdbool( t2 = |unshift| ) = abap_true.
      DATA(t238) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t238->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t238.
    ENDIF.
    IF xsdbool( t2 = |values| ) = abap_true.
      DATA(t243) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t243->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t243.
    ENDIF.
    IF xsdbool( t2 = |with| ) = abap_true.
      DATA(t248) = NEW zlnt_exception_un_5f2d02892fe8( ).
      t248->source_location = |Array prototype constructor lookup is unsupported|.
      RAISE EXCEPTION t248.
    ENDIF.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t250 = zcl_lnt_artifacts_objects=>object_map->get( p0 = t2 ).
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
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t264.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t1.
    t264->load( ).
    APPEND t267 TO t264->items.
    t264->save( ).
    DATA t270 TYPE REF TO object.
    t270 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t261 p1 = t264 ).
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
    IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
      zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
    ENDIF.
    t7 = zcl_lnt_ob_index_module=>ns->keys( ).
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
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t13 = zcl_lnt_ob_index_module=>ns->get( p0 = t9 ).
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t21->sval = |DUMMY_NAME|.
      t18->load( ).
      APPEND t21 TO t18->items.
      t18->save( ).
      DATA t24 TYPE REF TO object.
      t24 = zlnt_runtime_clas_c216c6067abd=>new_args( p0 = t13 p1 = t18 ).
      t12 ?= t24.
      DATA t25 TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
      CLEAR t25.
      DATA(t27) = VALUE string( ).
      t27 = t12->get_type( ).
      IF zcl_lnt_ob_index_module=>zlnt_builtin_init_7d9865c72425 = abap_false.
        zcl_lnt_ob_index_module=>zlnt_builtin_init_38a35685e8ab( ).
      ENDIF.
      t25 = t1->set( p0 = t27 p1 = zcl_lnt_ob_index_module=>ns->get( p0 = t9 ) ).
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
