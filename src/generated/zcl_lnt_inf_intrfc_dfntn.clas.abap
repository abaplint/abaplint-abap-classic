* TS: src/abap/4_file_information/_abap_file_information.ts:53:1 InfoInterfaceDefinition
CLASS zcl_lnt_inf_intrfc_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zif_lnt_union_eff0d09a.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA is_local TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA is_global TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_is_local TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_is_global TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_interfaces
    TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_aliases_acc1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_attributes TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inf_intrfc_dfntn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = i_is_local.
    DATA(t4) = i_is_global.
    DATA(t5) = i_interfaces.
    DATA(t6) = i_methods.
    DATA(t7) = i_aliases_acc1.
    DATA(t8) = i_constants.
    DATA(t9) = i_attributes.
    DATA(t10) = t1.
    me->name = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t11 ).
    ENDIF.
    DATA(t12) = |name|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = t2.
    me->identifier = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `identifier`.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `identifier` p1 = t15 ).
    ENDIF.
    DATA(t16) = |identifier|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = t3.
    me->is_local = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isLocal`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isLocal` p1 = t19 ).
    ENDIF.
    DATA(t20) = |isLocal|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    DATA(t22) = t4.
    me->is_global = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobal`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isGlobal` p1 = t23 ).
    ENDIF.
    DATA(t24) = |isGlobal|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = t5.
    me->interfaces = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaces`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t27 ).
    ENDIF.
    DATA(t28) = |interfaces|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = t6.
    me->methods = t30.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methods`.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `methods` p1 = t31 ).
    ENDIF.
    DATA(t32) = |methods|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = t7.
    me->aliases_62bb = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `aliases` p1 = t35 ).
    ENDIF.
    DATA(t36) = |aliases|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = t8.
    me->constants = t38.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `constants` p1 = t39 ).
    ENDIF.
    DATA(t40) = |constants|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = t9.
    me->attributes = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `attributes` p1 = t43 ).
    ENDIF.
    DATA(t44) = |attributes|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d758_f1cb57e59f66.
  ENDMETHOD.

  METHOD zif_lnt_union_eff0d09a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
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
      WHEN `isLocal`.
        CLEAR me->is_local.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `isGlobal`.
        CLEAR me->is_global.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `interfaces`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `methods`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `aliases`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `constants`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `attributes`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/4_file_information/_abap_file_information.ts.InfoInterfaceDefinition: structural own-key metadata absent`.
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
      WHEN `isLocal`.
        CLEAR result.
        IF me->is_local IS BOUND AND me->is_local->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->is_local->value.
        ENDIF.
      WHEN `isGlobal`.
        CLEAR result.
        IF me->is_global IS BOUND AND me->is_global->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->is_global->value.
        ENDIF.
      WHEN `interfaces`.
        CLEAR result.
        IF me->interfaces IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->interfaces.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->interfaces.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->interfaces.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `methods`.
        CLEAR result.
        IF me->methods IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->methods.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->methods.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->methods.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `aliases`.
        CLEAR result.
        IF me->aliases_62bb IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->aliases_62bb.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->aliases_62bb.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->aliases_62bb.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `constants`.
        CLEAR result.
        IF me->constants IS BOUND.
          DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t9.
          DATA t10 TYPE REF TO object.
          CLEAR t10.
          CLEAR t9.
          t10 = me->constants.
          TRY.
              result ?= t10.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t9 ?= me->constants.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t9 IS BOUND.
              result = t9->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->constants.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `attributes`.
        CLEAR result.
        IF me->attributes IS BOUND.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t11.
          DATA t12 TYPE REF TO object.
          CLEAR t12.
          CLEAR t11.
          t12 = me->attributes.
          TRY.
              result ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t11 ?= me->attributes.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t11 IS BOUND.
              result = t11->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->attributes.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/4_file_information/_abap_file_information.ts.InfoInterfaceDefinition: structural own-key metadata absent`.
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
      WHEN `isLocal`.
        CLEAR me->is_local.
        IF p1 IS BOUND.
          me->is_local = NEW #( ).
          me->is_local->has = abap_true.
          me->is_local->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isLocal`.
      WHEN `isGlobal`.
        CLEAR me->is_global.
        IF p1 IS BOUND.
          me->is_global = NEW #( ).
          me->is_global->has = abap_true.
          me->is_global->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isGlobal`.
      WHEN `interfaces`.
        CLEAR me->interfaces.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->interfaces ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->interfaces.
            me->interfaces->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->interfaces->load( ).
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          DATA t3 TYPE REF TO zcl_lnt_info_implementing.
          CLEAR t3.
          LOOP AT me->interfaces->items INTO t2.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaces`.
      WHEN `methods`.
        CLEAR me->methods.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->methods ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->methods.
            me->methods->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->methods->load( ).
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          DATA t7 TYPE REF TO zcl_lnt_info_method_definition.
          CLEAR t7.
          LOOP AT me->methods->items INTO t6.
            DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t8.
            CLEAR t7.
            IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t8 ?= t6.
              DATA t9 TYPE REF TO object.
              CLEAR t9.
              t9 = t8->as_ref( ).
              t7 ?= t9.
            ELSE.
              t7 ?= t6.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methods`.
      WHEN `aliases`.
        CLEAR me->aliases_62bb.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->aliases_62bb ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->aliases_62bb.
            me->aliases_62bb->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->aliases_62bb->load( ).
          DATA t10 TYPE REF TO object.
          CLEAR t10.
          DATA t11 TYPE REF TO zcl_lnt_info_alias.
          CLEAR t11.
          LOOP AT me->aliases_62bb->items INTO t10.
            DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t12.
            CLEAR t11.
            IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t12 ?= t10.
              DATA t13 TYPE REF TO object.
              CLEAR t13.
              t13 = t12->as_ref( ).
              t11 ?= t13.
            ELSE.
              t11 ?= t10.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
      WHEN `constants`.
        CLEAR me->constants.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->constants ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->constants.
            me->constants->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->constants->load( ).
          DATA t14 TYPE REF TO object.
          CLEAR t14.
          DATA t15 TYPE REF TO zcl_lnt_info_constant.
          CLEAR t15.
          LOOP AT me->constants->items INTO t14.
            DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t16.
            CLEAR t15.
            IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t16 ?= t14.
              DATA t17 TYPE REF TO object.
              CLEAR t17.
              t17 = t16->as_ref( ).
              t15 ?= t17.
            ELSE.
              t15 ?= t14.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
      WHEN `attributes`.
        CLEAR me->attributes.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->attributes ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->attributes.
            me->attributes->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->attributes->load( ).
          DATA t18 TYPE REF TO object.
          CLEAR t18.
          DATA t19 TYPE REF TO zcl_lnt_info_attribute.
          CLEAR t19.
          LOOP AT me->attributes->items INTO t18.
            DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t20.
            CLEAR t19.
            IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t20 ?= t18.
              DATA t21 TYPE REF TO object.
              CLEAR t21.
              t21 = t20->as_ref( ).
              t19 ?= t21.
            ELSE.
              t19 ?= t18.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
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
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t22 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
