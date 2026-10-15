* TS: src/abap/4_file_information/_abap_file_information.ts:33:1 InfoMethodDefinition
CLASS zcl_lnt_info_method_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA is_redefinition TYPE abap_bool.
    DATA is_event_handler TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA is_for_testing TYPE abap_bool.
    DATA is_abstract TYPE abap_bool.
    DATA is_final TYPE abap_bool.
    DATA is_default_ignore TYPE abap_bool.
    DATA is_default_fail TYPE abap_bool.
    DATA visibility TYPE f.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_is_redefinition TYPE abap_bool i_is_event_handler TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_is_for_testing TYPE abap_bool
    i_is_abstract TYPE abap_bool i_is_final TYPE abap_bool i_is_default_ignore TYPE abap_bool i_is_default_fail TYPE abap_bool i_visibility_5c1f TYPE f i_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_exceptions TYPE REF TO
    zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_method_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = i_is_redefinition.
    DATA(t4) = i_is_event_handler.
    DATA(t5) = i_is_for_testing.
    DATA(t6) = i_is_abstract.
    DATA(t7) = i_is_final.
    DATA(t8) = i_is_default_ignore.
    DATA(t9) = i_is_default_fail.
    DATA(t10) = i_visibility_5c1f.
    DATA(t11) = i_parameters.
    DATA(t12) = i_exceptions.
    DATA(t13) = t1.
    me->name = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t14 ).
    ENDIF.
    DATA(t15) = |name|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = t2.
    me->identifier = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t18 ).
    ENDIF.
    DATA(t19) = |identifier|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = t3.
    me->is_redefinition = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isRedefinition`.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isRedefinition` p1 = t22 ).
    ENDIF.
    DATA(t23) = |isRedefinition|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = t4.
    me->is_event_handler = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isEventHandler`.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isEventHandler` p1 = t26 ).
    ENDIF.
    DATA(t27) = |isEventHandler|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = t5.
    me->is_for_testing = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isForTesting`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isForTesting` p1 = t30 ).
    ENDIF.
    DATA(t31) = |isForTesting|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = t6.
    me->is_abstract = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isAbstract`.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isAbstract` p1 = t34 ).
    ENDIF.
    DATA(t35) = |isAbstract|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = t7.
    me->is_final = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isFinal`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isFinal` p1 = t38 ).
    ENDIF.
    DATA(t39) = |isFinal|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = t8.
    me->is_default_ignore = t41.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isDefaultIgnore`.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isDefaultIgnore` p1 = t42 ).
    ENDIF.
    DATA(t43) = |isDefaultIgnore|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = t9.
    me->is_default_fail = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isDefaultFail`.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isDefaultFail` p1 = t46 ).
    ENDIF.
    DATA(t47) = |isDefaultFail|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = t10.
    me->visibility = t49.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `visibility` p1 = t50 ).
    ENDIF.
    DATA(t51) = |visibility|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = t11.
    me->parameters = t53.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `parameters` p1 = t54 ).
    ENDIF.
    DATA(t55) = |parameters|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = t12.
    me->exceptions = t57.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `exceptions` p1 = t58 ).
    ENDIF.
    DATA(t59) = |exceptions|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d757_84a97e15978e.
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
      WHEN `name`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `identifier`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isRedefinition`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isEventHandler`.
        CLEAR me->is_event_handler.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `isForTesting`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isAbstract`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isFinal`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isDefaultIgnore`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `isDefaultFail`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `visibility`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `parameters`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `exceptions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/4_file_information/_abap_file_information.ts.InfoMethodDefinition: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `name`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->name.
      WHEN `identifier`.
        CLEAR result.
        IF me->identifier IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->identifier.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->identifier.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->identifier.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `isRedefinition`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_redefinition.
      WHEN `isEventHandler`.
        CLEAR result.
        IF me->is_event_handler IS BOUND AND me->is_event_handler->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->is_event_handler->value.
        ENDIF.
      WHEN `isForTesting`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_for_testing.
      WHEN `isAbstract`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_abstract.
      WHEN `isFinal`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_final.
      WHEN `isDefaultIgnore`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_default_ignore.
      WHEN `isDefaultFail`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->is_default_fail.
      WHEN `visibility`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        result->nval = me->visibility.
      WHEN `parameters`.
        CLEAR result.
        IF me->parameters IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->parameters.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->parameters.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->parameters.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `exceptions`.
        CLEAR result.
        IF me->exceptions IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->exceptions.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->exceptions.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->exceptions.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/4_file_information/_abap_file_information.ts.InfoMethodDefinition: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `name`.
        me->name = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      WHEN `identifier`.
        DATA t1 TYPE REF TO object.
        CLEAR t1.
        t1 = p1->as_ref( ).
        me->identifier ?= t1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
      WHEN `isRedefinition`.
        me->is_redefinition = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isRedefinition`.
      WHEN `isEventHandler`.
        CLEAR me->is_event_handler.
        IF p1 IS BOUND.
          me->is_event_handler = NEW #( ).
          me->is_event_handler->has = abap_true.
          me->is_event_handler->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isEventHandler`.
      WHEN `isForTesting`.
        me->is_for_testing = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isForTesting`.
      WHEN `isAbstract`.
        me->is_abstract = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isAbstract`.
      WHEN `isFinal`.
        me->is_final = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isFinal`.
      WHEN `isDefaultIgnore`.
        me->is_default_ignore = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isDefaultIgnore`.
      WHEN `isDefaultFail`.
        me->is_default_fail = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isDefaultFail`.
      WHEN `visibility`.
        IF p1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        me->visibility = p1->as_number( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
      WHEN `parameters`.
        CLEAR me->parameters.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->parameters ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->parameters.
            me->parameters->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->parameters->load( ).
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          DATA t3 TYPE REF TO zcl_lnt_info_method_parameter.
          CLEAR t3.
          LOOP AT me->parameters->items INTO t2.
            DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t4.
            CLEAR t3.
            IF t2 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t4 ?= t2.
              DATA t5 TYPE REF TO object.
              CLEAR t5.
              t5 = t4->as_ref( ).
              t3 ?= t5.
            ELSE.
              t3 ?= t2.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
      WHEN `exceptions`.
        CLEAR me->exceptions.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->exceptions ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->exceptions.
            me->exceptions->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->exceptions->load( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t6 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
