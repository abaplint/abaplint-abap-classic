* TS: src/objects/data_definition.ts:10:1 ParsedDataDefinition
CLASS zcl_lnt_parsed_data_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA sql_view_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA associations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA relations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA tree TYPE REF TO zcl_lnt_expression_node.
    METHODS constructor IMPORTING i_sql_view_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_associations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_relations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_tree TYPE
    REF TO zcl_lnt_expression_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsed_data_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_sql_view_name.
    DATA(t2) = i_definition_name.
    DATA(t3) = i_description.
    DATA(t4) = i_fields_62af.
    DATA(t5) = i_sources.
    DATA(t6) = i_associations.
    DATA(t7) = i_relations.
    DATA(t8) = i_tree.
    DATA(t9) = t1.
    me->sql_view_name = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlViewName` p1 = t10 ).
    ENDIF.
    DATA(t11) = |sqlViewName|.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t11 p1 = t12 ).
    ENDIF.
    DATA(t13) = t2.
    me->definition_name = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitionName`.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `definitionName` p1 = t14 ).
    ENDIF.
    DATA(t15) = |definitionName|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = t3.
    me->description = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t18 ).
    ENDIF.
    DATA(t19) = |description|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = t4.
    me->fields_464c = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fields`.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t22 ).
    ENDIF.
    DATA(t23) = |fields|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = t5.
    me->sources = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sources`.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sources` p1 = t26 ).
    ENDIF.
    DATA(t27) = |sources|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = t6.
    me->associations = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `associations`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `associations` p1 = t30 ).
    ENDIF.
    DATA(t31) = |associations|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = t7.
    me->relations = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `relations`.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `relations` p1 = t34 ).
    ENDIF.
    DATA(t35) = |relations|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = t8.
    me->tree = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tree` p1 = t38 ).
    ENDIF.
    DATA(t39) = |tree|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1856_41d1e78f615f.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    CASE p0.
      WHEN `sqlViewName`.
        CLEAR me->sql_view_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `definitionName`.
        CLEAR me->definition_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `description`.
        CLEAR me->description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `fields`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `sources`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `associations`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `relations`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `tree`.
        CLEAR me->tree.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA(t1) = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
      ENDIF.
      READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/objects/data_definition.ts.ParsedDataDefinition: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `sqlViewName`.
        CLEAR result.
        IF me->sql_view_name IS BOUND AND me->sql_view_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->sql_view_name->value.
        ENDIF.
      WHEN `definitionName`.
        CLEAR result.
        IF me->definition_name IS BOUND AND me->definition_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->definition_name->value.
        ENDIF.
      WHEN `description`.
        CLEAR result.
        IF me->description IS BOUND AND me->description->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->description->value.
        ENDIF.
      WHEN `fields`.
        CLEAR result.
        IF me->fields_464c IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->fields_464c.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->fields_464c.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->fields_464c.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `sources`.
        CLEAR result.
        IF me->sources IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->sources.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->sources.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->sources.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `associations`.
        CLEAR result.
        IF me->associations IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->associations.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->associations.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->associations.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `relations`.
        CLEAR result.
        IF me->relations IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->relations.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->relations.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->relations.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `tree`.
        CLEAR result.
        IF me->tree IS BOUND.
          CLEAR result.
          IF me->tree IS BOUND.
            DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t9.
            DATA t10 TYPE REF TO object.
            CLEAR t10.
            CLEAR t9.
            t10 = me->tree.
            TRY.
                result ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t9 ?= me->tree.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t9 IS BOUND.
                result = t9->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->tree.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/objects/data_definition.ts.ParsedDataDefinition: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `sqlViewName`.
        CLEAR me->sql_view_name.
        IF p1 IS BOUND.
          me->sql_view_name = NEW #( ).
          me->sql_view_name->has = abap_true.
          me->sql_view_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlViewName`.
      WHEN `definitionName`.
        CLEAR me->definition_name.
        IF p1 IS BOUND.
          me->definition_name = NEW #( ).
          me->definition_name->has = abap_true.
          me->definition_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitionName`.
      WHEN `description`.
        CLEAR me->description.
        IF p1 IS BOUND.
          me->description = NEW #( ).
          me->description->has = abap_true.
          me->description->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      WHEN `fields`.
        CLEAR me->fields_464c.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->fields_464c ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->fields_464c.
            me->fields_464c->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->fields_464c->load( ).
          DATA t1 TYPE REF TO object.
          CLEAR t1.
          DATA t2 TYPE REF TO zcl_lnt_shape_5383185c.
          CLEAR t2.
          LOOP AT me->fields_464c->items INTO t1.
            DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3.
            CLEAR t2.
            IF t1 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t3 ?= t1.
              DATA t4 TYPE REF TO object.
              CLEAR t4.
              t4 = t3->as_ref( ).
              t2 ?= t4.
            ELSE.
              t2 ?= t1.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fields`.
      WHEN `sources`.
        CLEAR me->sources.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->sources ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->sources.
            me->sources->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->sources->load( ).
          DATA t5 TYPE REF TO object.
          CLEAR t5.
          DATA t6 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t6.
          LOOP AT me->sources->items INTO t5.
            DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t7.
            CLEAR t6.
            IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t7 ?= t5.
              DATA t8 TYPE REF TO object.
              CLEAR t8.
              t8 = t7->as_ref( ).
              t6 ?= t8.
            ELSE.
              t6 ?= t5.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sources`.
      WHEN `associations`.
        CLEAR me->associations.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->associations ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->associations.
            me->associations->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->associations->load( ).
          DATA t9 TYPE REF TO object.
          CLEAR t9.
          DATA t10 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t10.
          LOOP AT me->associations->items INTO t9.
            DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t11.
            CLEAR t10.
            IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t11 ?= t9.
              DATA t12 TYPE REF TO object.
              CLEAR t12.
              t12 = t11->as_ref( ).
              t10 ?= t12.
            ELSE.
              t10 ?= t9.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `associations`.
      WHEN `relations`.
        CLEAR me->relations.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->relations ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->relations.
            me->relations->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->relations->load( ).
          DATA t13 TYPE REF TO object.
          CLEAR t13.
          DATA t14 TYPE REF TO zcl_lnt_shape_35310764.
          CLEAR t14.
          LOOP AT me->relations->items INTO t13.
            DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t15.
            CLEAR t14.
            IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t15 ?= t13.
              DATA t16 TYPE REF TO object.
              CLEAR t16.
              t16 = t15->as_ref( ).
              t14 ?= t16.
            ELSE.
              t14 ?= t13.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `relations`.
      WHEN `tree`.
        CLEAR me->tree.
        IF p1 IS BOUND.
          DATA t17 TYPE REF TO object.
          CLEAR t17.
          t17 = p1->as_ref( ).
          me->tree ?= t17.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tree`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t18 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
