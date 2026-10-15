* TS: src/rules/keyword_case.ts:24:1 KeywordCaseConf
CLASS zcl_lnt_keyword_case_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_98fc2d44a45f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_b5f35bae4d8c IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_10e8de9b4f9f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_98f31361663b IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_274b357e7ae8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_62340e480568 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_3e49b3d4558c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_a9656df83491 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_a14b6839a5a2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ac01bd221b31 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_767dc70211a6 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_c6b2a3c554bb IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_8a9646993486 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_948df8ac89ce IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_20e2964f7001 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_380cf81d7f21 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_a5f5d8291c71 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS zlnt_view_write_s_a55fb27298a6 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA style TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ignore_exceptions TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignr_lwr_clss_implmnttn_sttmnt TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_global_class_definition TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_global_interface TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_function_module_name TYPE abap_bool.
    DATA ignore_global_class_boundaries TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_keyword_case_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = |upper|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_b5f35bae4d8c( p0 = t2 ).
    DATA(t3) = abap_true.
    DATA(t4) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t4->has = abap_true.
    t4->value = t3.
    me->zlnt_view_write_s_98f31361663b( p0 = t4 ).
    DATA(t5) = abap_true.
    DATA(t6) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t6->has = abap_true.
    t6->value = t5.
    me->zlnt_view_write_s_62340e480568( p0 = t6 ).
    DATA(t7) = abap_false.
    DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t8->has = abap_true.
    t8->value = t7.
    me->zlnt_view_write_s_a9656df83491( p0 = t8 ).
    DATA(t9) = abap_false.
    DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t10->has = abap_true.
    t10->value = t9.
    me->zlnt_view_write_s_ac01bd221b31( p0 = t10 ).
    DATA(t11) = abap_false.
    me->zlnt_view_write_s_c6b2a3c554bb( p0 = t11 ).
    DATA(t12) = abap_false.
    DATA(t13) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t13->has = abap_true.
    t13->value = t12.
    me->zlnt_view_write_s_948df8ac89ce( p0 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t14.
    me->zlnt_view_write_s_380cf81d7f21( p0 = t14 ).
    DATA(t15) = CONV f( 10 ).
    DATA(t16) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t16->has = abap_true.
    t16->value = t15.
    me->zlnt_view_write_s_a55fb27298a6( p0 = t16 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1555_8b16ca09c68c.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_98fc2d44a45f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `style` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->style.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b5f35bae4d8c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `style` p1 = t1 ).
    ELSE.
      me->style = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `style`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_10e8de9b4f9f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreExceptions` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_exceptions.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_98f31361663b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreExceptions` p1 = t1 ).
    ELSE.
      me->ignore_exceptions = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_274b357e7ae8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreLowerClassImplmentationStatement` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignr_lwr_clss_implmnttn_sttmnt.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_62340e480568.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreLowerClassImplmentationStatement` p1 = t1 ).
    ELSE.
      me->ignr_lwr_clss_implmnttn_sttmnt = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreLowerClassImplmentationStatement`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3e49b3d4558c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreGlobalClassDefinition` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_global_class_definition.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a9656df83491.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreGlobalClassDefinition` p1 = t1 ).
    ELSE.
      me->ignore_global_class_definition = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassDefinition`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a14b6839a5a2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreGlobalInterface` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_global_interface.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ac01bd221b31.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreGlobalInterface` p1 = t1 ).
    ELSE.
      me->ignore_global_interface = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalInterface`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_767dc70211a6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreFunctionModuleName` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_function_module_name.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c6b2a3c554bb.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreFunctionModuleName` p1 = t1 ).
    ELSE.
      me->ignore_function_module_name = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreFunctionModuleName`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8a9646993486.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreGlobalClassBoundaries` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_global_class_boundaries.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_948df8ac89ce.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreGlobalClassBoundaries` p1 = t1 ).
    ELSE.
      me->ignore_global_class_boundaries = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassBoundaries`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_20e2964f7001.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreKeywords` ) ).
      CLEAR result.
      IF t1 IS BOUND.
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
        ENDIF.
      ENDIF.
    ELSE.
      result = me->ignore_keywords.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_380cf81d7f21.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
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
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreKeywords` p1 = t1 ).
    ELSE.
      me->ignore_keywords = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreKeywords`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a5f5d8291c71.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `maxIssuesPerFile` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        IF t1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        result->value = t1->as_number( ).
      ENDIF.
    ELSE.
      result = me->max_issues_per_file.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a55fb27298a6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t1->nval = p0->value.
        t1->number_special = p0->number_special.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `maxIssuesPerFile` p1 = t1 ).
    ELSE.
      me->max_issues_per_file = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `maxIssuesPerFile`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `style`.
        result = abap_true.
      WHEN `ignoreExceptions`.
        result = abap_true.
      WHEN `ignoreLowerClassImplmentationStatement`.
        result = abap_true.
      WHEN `ignoreGlobalClassDefinition`.
        result = abap_true.
      WHEN `ignoreGlobalInterface`.
        result = abap_true.
      WHEN `ignoreFunctionModuleName`.
        result = abap_true.
      WHEN `ignoreGlobalClassBoundaries`.
        result = abap_true.
      WHEN `ignoreKeywords`.
        result = abap_true.
      WHEN `maxIssuesPerFile`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `style` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `style` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreExceptions` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreExceptions` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreLowerClassImplmentationStatement` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreLowerClassImplmentationStatement` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreGlobalClassDefinition` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreGlobalClassDefinition` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreGlobalInterface` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreGlobalInterface` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreFunctionModuleName` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreFunctionModuleName` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreGlobalClassBoundaries` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreGlobalClassBoundaries` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreKeywords` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreKeywords` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `maxIssuesPerFile` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `maxIssuesPerFile` p1 = VALUE #( ) ).
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
      WHEN `style`.
        CLEAR result.
        IF me->style IS BOUND AND me->style->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->style->value.
        ENDIF.
      WHEN `ignoreExceptions`.
        CLEAR result.
        IF me->ignore_exceptions IS BOUND AND me->ignore_exceptions->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_exceptions->value.
        ENDIF.
      WHEN `ignoreLowerClassImplmentationStatement`.
        CLEAR result.
        IF me->ignr_lwr_clss_implmnttn_sttmnt IS BOUND AND me->ignr_lwr_clss_implmnttn_sttmnt->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignr_lwr_clss_implmnttn_sttmnt->value.
        ENDIF.
      WHEN `ignoreGlobalClassDefinition`.
        CLEAR result.
        IF me->ignore_global_class_definition IS BOUND AND me->ignore_global_class_definition->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_global_class_definition->value.
        ENDIF.
      WHEN `ignoreGlobalInterface`.
        CLEAR result.
        IF me->ignore_global_interface IS BOUND AND me->ignore_global_interface->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_global_interface->value.
        ENDIF.
      WHEN `ignoreFunctionModuleName`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_function_module_name.
      WHEN `ignoreGlobalClassBoundaries`.
        CLEAR result.
        IF me->ignore_global_class_boundaries IS BOUND AND me->ignore_global_class_boundaries->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_global_class_boundaries->value.
        ENDIF.
      WHEN `ignoreKeywords`.
        CLEAR result.
        IF me->ignore_keywords IS BOUND.
          CLEAR result.
          IF me->ignore_keywords IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->ignore_keywords.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->ignore_keywords.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->ignore_keywords.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `maxIssuesPerFile`.
        CLEAR result.
        IF me->max_issues_per_file IS BOUND AND me->max_issues_per_file->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          result->nval = me->max_issues_per_file->value.
          result->number_special = me->max_issues_per_file->number_special.
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
      WHEN `style`.
        CLEAR me->style.
        IF p1 IS BOUND.
          me->style = NEW #( ).
          me->style->has = abap_true.
          me->style->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `style`.
      WHEN `ignoreExceptions`.
        CLEAR me->ignore_exceptions.
        IF p1 IS BOUND.
          me->ignore_exceptions = NEW #( ).
          me->ignore_exceptions->has = abap_true.
          me->ignore_exceptions->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
      WHEN `ignoreLowerClassImplmentationStatement`.
        CLEAR me->ignr_lwr_clss_implmnttn_sttmnt.
        IF p1 IS BOUND.
          me->ignr_lwr_clss_implmnttn_sttmnt = NEW #( ).
          me->ignr_lwr_clss_implmnttn_sttmnt->has = abap_true.
          me->ignr_lwr_clss_implmnttn_sttmnt->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreLowerClassImplmentationStatement`.
      WHEN `ignoreGlobalClassDefinition`.
        CLEAR me->ignore_global_class_definition.
        IF p1 IS BOUND.
          me->ignore_global_class_definition = NEW #( ).
          me->ignore_global_class_definition->has = abap_true.
          me->ignore_global_class_definition->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassDefinition`.
      WHEN `ignoreGlobalInterface`.
        CLEAR me->ignore_global_interface.
        IF p1 IS BOUND.
          me->ignore_global_interface = NEW #( ).
          me->ignore_global_interface->has = abap_true.
          me->ignore_global_interface->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalInterface`.
      WHEN `ignoreFunctionModuleName`.
        me->ignore_function_module_name = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreFunctionModuleName`.
      WHEN `ignoreGlobalClassBoundaries`.
        CLEAR me->ignore_global_class_boundaries.
        IF p1 IS BOUND.
          me->ignore_global_class_boundaries = NEW #( ).
          me->ignore_global_class_boundaries->has = abap_true.
          me->ignore_global_class_boundaries->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassBoundaries`.
      WHEN `maxIssuesPerFile`.
        CLEAR me->max_issues_per_file.
        IF p1 IS BOUND.
          me->max_issues_per_file = NEW #( ).
          me->max_issues_per_file->has = abap_true.
          IF p1 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
          ENDIF.
          me->max_issues_per_file->value = p1->as_number( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `maxIssuesPerFile`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
