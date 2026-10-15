* TS: src/objects/table_type.ts:11:22 shape.6072eacdbbc84732418a717b02d69bd9a6ede60cfa1c8b5291804c9e554a5455
CLASS zcl_lnt_shape_01ff58f8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA rowtype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA rowkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_e82a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA accessmode TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keykind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddtext_d4ae TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keydef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dd42v TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA dd43v TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_rowtype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_rowkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_b7d5
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_accessmode TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keykind TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddtext_5aef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keydef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_dd42v TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_dd43v
    TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_01ff58f8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_rowtype.
    DATA(t2) = i_rowkind.
    DATA(t3) = i_datatype_9e1e.
    DATA(t4) = i_leng_b7d5.
    DATA(t5) = i_decimals_2eed.
    DATA(t6) = i_accessmode.
    DATA(t7) = i_keykind.
    DATA(t8) = i_ddtext_5aef.
    DATA(t9) = i_keydef.
    DATA(t10) = i_dd42v.
    DATA(t11) = i_dd43v.
    DATA(t12) = t1.
    me->rowtype = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowtype`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rowtype` p1 = t13 ).
    ENDIF.
    DATA(t14) = |rowtype|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = t2.
    me->rowkind = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowkind`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rowkind` p1 = t17 ).
    ENDIF.
    DATA(t18) = |rowkind|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = t3.
    me->datatype_2b0f = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t21 ).
    ENDIF.
    DATA(t22) = |datatype|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = t4.
    me->leng_e82a = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `leng`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t25 ).
    ENDIF.
    DATA(t26) = |leng|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = t5.
    me->decimals_29bf = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t29 ).
    ENDIF.
    DATA(t30) = |decimals|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = t6.
    me->accessmode = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `accessmode`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `accessmode` p1 = t33 ).
    ENDIF.
    DATA(t34) = |accessmode|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = t7.
    me->keykind = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keykind`.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keykind` p1 = t37 ).
    ENDIF.
    DATA(t38) = |keykind|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = t8.
    me->ddtext_d4ae = t40.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddtext`.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddtext` p1 = t41 ).
    ENDIF.
    DATA(t42) = |ddtext|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = t9.
    me->keydef = t44.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keydef`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keydef` p1 = t45 ).
    ENDIF.
    DATA(t46) = |keydef|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t49) = t10.
    t48 = t49.
    me->dd42v = t48.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dd42v`.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dd42v` p1 = t50 ).
    ENDIF.
    DATA(t51) = |dd42v|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t54) = t11.
    t53 = t54.
    me->dd43v = t53.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dd43v`.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dd43v` p1 = t55 ).
    ENDIF.
    DATA(t56) = |dd43v|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1900_448c7d370ea4.
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
      WHEN `rowtype`.
        CLEAR me->rowtype.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `rowkind`.
        CLEAR me->rowkind.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `datatype`.
        CLEAR me->datatype_2b0f.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `leng`.
        CLEAR me->leng_e82a.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `accessmode`.
        CLEAR me->accessmode.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `keykind`.
        CLEAR me->keykind.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ddtext`.
        CLEAR me->ddtext_d4ae.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `keydef`.
        CLEAR me->keydef.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `dd42v`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `dd43v`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.6072eacdbbc84732418a717b02d69bd9a6ede60cfa1c8b5291804c9e554a5455: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `rowtype`.
        CLEAR result.
        IF me->rowtype IS BOUND AND me->rowtype->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->rowtype->value.
        ENDIF.
      WHEN `rowkind`.
        CLEAR result.
        IF me->rowkind IS BOUND AND me->rowkind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->rowkind->value.
        ENDIF.
      WHEN `datatype`.
        CLEAR result.
        IF me->datatype_2b0f IS BOUND AND me->datatype_2b0f->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->datatype_2b0f->value.
        ENDIF.
      WHEN `leng`.
        CLEAR result.
        IF me->leng_e82a IS BOUND AND me->leng_e82a->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->leng_e82a->value.
        ENDIF.
      WHEN `decimals`.
        CLEAR result.
        IF me->decimals_29bf IS BOUND AND me->decimals_29bf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->decimals_29bf->value.
        ENDIF.
      WHEN `accessmode`.
        CLEAR result.
        IF me->accessmode IS BOUND AND me->accessmode->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->accessmode->value.
        ENDIF.
      WHEN `keykind`.
        CLEAR result.
        IF me->keykind IS BOUND AND me->keykind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->keykind->value.
        ENDIF.
      WHEN `ddtext`.
        CLEAR result.
        IF me->ddtext_d4ae IS BOUND AND me->ddtext_d4ae->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->ddtext_d4ae->value.
        ENDIF.
      WHEN `keydef`.
        CLEAR result.
        IF me->keydef IS BOUND AND me->keydef->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->keydef->value.
        ENDIF.
      WHEN `dd42v`.
        CLEAR result.
        IF me->dd42v IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->dd42v.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->dd42v.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->dd42v.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `dd43v`.
        CLEAR result.
        IF me->dd43v IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->dd43v.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->dd43v.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->dd43v.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.6072eacdbbc84732418a717b02d69bd9a6ede60cfa1c8b5291804c9e554a5455: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `rowtype`.
        CLEAR me->rowtype.
        IF p1 IS BOUND.
          me->rowtype = NEW #( ).
          me->rowtype->has = abap_true.
          me->rowtype->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowtype`.
      WHEN `rowkind`.
        CLEAR me->rowkind.
        IF p1 IS BOUND.
          me->rowkind = NEW #( ).
          me->rowkind->has = abap_true.
          me->rowkind->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowkind`.
      WHEN `datatype`.
        CLEAR me->datatype_2b0f.
        IF p1 IS BOUND.
          me->datatype_2b0f = NEW #( ).
          me->datatype_2b0f->has = abap_true.
          me->datatype_2b0f->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
      WHEN `leng`.
        CLEAR me->leng_e82a.
        IF p1 IS BOUND.
          me->leng_e82a = NEW #( ).
          me->leng_e82a->has = abap_true.
          me->leng_e82a->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `leng`.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        IF p1 IS BOUND.
          me->decimals_29bf = NEW #( ).
          me->decimals_29bf->has = abap_true.
          me->decimals_29bf->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
      WHEN `accessmode`.
        CLEAR me->accessmode.
        IF p1 IS BOUND.
          me->accessmode = NEW #( ).
          me->accessmode->has = abap_true.
          me->accessmode->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `accessmode`.
      WHEN `keykind`.
        CLEAR me->keykind.
        IF p1 IS BOUND.
          me->keykind = NEW #( ).
          me->keykind->has = abap_true.
          me->keykind->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keykind`.
      WHEN `ddtext`.
        CLEAR me->ddtext_d4ae.
        IF p1 IS BOUND.
          me->ddtext_d4ae = NEW #( ).
          me->ddtext_d4ae->has = abap_true.
          me->ddtext_d4ae->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddtext`.
      WHEN `keydef`.
        CLEAR me->keydef.
        IF p1 IS BOUND.
          me->keydef = NEW #( ).
          me->keydef->has = abap_true.
          me->keydef->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keydef`.
      WHEN `dd42v`.
        CLEAR me->dd42v.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->dd42v ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->dd42v.
            me->dd42v->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->dd42v->load( ).
          DATA t1 TYPE REF TO object.
          CLEAR t1.
          DATA t2 TYPE REF TO zcl_lnt_shape_93ca86e8.
          CLEAR t2.
          LOOP AT me->dd42v->items INTO t1.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dd42v`.
      WHEN `dd43v`.
        CLEAR me->dd43v.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->dd43v ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->dd43v.
            me->dd43v->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->dd43v->load( ).
          DATA t5 TYPE REF TO object.
          CLEAR t5.
          DATA t6 TYPE REF TO zcl_lnt_shape_96faa29e.
          CLEAR t6.
          LOOP AT me->dd43v->items INTO t5.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dd43v`.
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
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t9 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
