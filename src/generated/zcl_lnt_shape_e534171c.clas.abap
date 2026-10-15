* TS: src/objects/table.ts:36:23 shape.7cfb34bb58fff73a209095f615c8e7d62c0c88ff583672fe0f9b7dc8d76f1080
CLASS zcl_lnt_shape_e534171c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA fieldname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA rollname_a788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA comptype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA precfield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_0540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA intlen TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2bc5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_0f26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keyflag TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA groupname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA checktable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reftable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reffield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reftype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddtext_87ee TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_fieldname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_rollname_e353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_comptype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_precfield
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_f9b0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_intlen TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_73ff TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    OPTIONAL i_decimals_c159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keyflag TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_groupname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_checktable TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reftable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reffield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reftype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_ddtext_4f13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e534171c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_fieldname.
    DATA(t2) = i_rollname_e353.
    DATA(t3) = i_comptype.
    DATA(t4) = i_precfield.
    DATA(t5) = i_leng_f9b0.
    DATA(t6) = i_intlen.
    DATA(t7) = i_datatype_73ff.
    DATA(t8) = i_decimals_c159.
    DATA(t9) = i_keyflag.
    DATA(t10) = i_groupname.
    DATA(t11) = i_checktable.
    DATA(t12) = i_reftable.
    DATA(t13) = i_reffield.
    DATA(t14) = i_reftype.
    DATA(t15) = i_ddtext_4f13.
    DATA(t16) = t1.
    me->fieldname = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FIELDNAME`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `FIELDNAME` p1 = t17 ).
    ENDIF.
    DATA(t18) = |FIELDNAME|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = t2.
    me->rollname_a788 = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ROLLNAME`.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ROLLNAME` p1 = t21 ).
    ENDIF.
    DATA(t22) = |ROLLNAME|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = t3.
    me->comptype = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `COMPTYPE`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `COMPTYPE` p1 = t25 ).
    ENDIF.
    DATA(t26) = |COMPTYPE|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = t4.
    me->precfield = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `PRECFIELD`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `PRECFIELD` p1 = t29 ).
    ENDIF.
    DATA(t30) = |PRECFIELD|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = t5.
    me->leng_0540 = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LENG`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `LENG` p1 = t33 ).
    ENDIF.
    DATA(t34) = |LENG|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = t6.
    me->intlen = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `INTLEN`.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `INTLEN` p1 = t37 ).
    ENDIF.
    DATA(t38) = |INTLEN|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = t7.
    me->datatype_2bc5 = t40.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DATATYPE`.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DATATYPE` p1 = t41 ).
    ENDIF.
    DATA(t42) = |DATATYPE|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = t8.
    me->decimals_0f26 = t44.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DECIMALS`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DECIMALS` p1 = t45 ).
    ENDIF.
    DATA(t46) = |DECIMALS|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = t9.
    me->keyflag = t48.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `KEYFLAG`.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `KEYFLAG` p1 = t49 ).
    ENDIF.
    DATA(t50) = |KEYFLAG|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = t10.
    me->groupname = t52.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GROUPNAME`.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `GROUPNAME` p1 = t53 ).
    ENDIF.
    DATA(t54) = |GROUPNAME|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = t11.
    me->checktable = t56.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CHECKTABLE`.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `CHECKTABLE` p1 = t57 ).
    ENDIF.
    DATA(t58) = |CHECKTABLE|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    DATA(t60) = t12.
    me->reftable = t60.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFTABLE`.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFTABLE` p1 = t61 ).
    ENDIF.
    DATA(t62) = |REFTABLE|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = t13.
    me->reffield = t64.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFFIELD`.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFFIELD` p1 = t65 ).
    ENDIF.
    DATA(t66) = |REFFIELD|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    DATA(t68) = t14.
    me->reftype = t68.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFTYPE`.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `REFTYPE` p1 = t69 ).
    ENDIF.
    DATA(t70) = |REFTYPE|.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
    ENDIF.
    DATA(t72) = t15.
    me->ddtext_87ee = t72.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DDTEXT`.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `DDTEXT` p1 = t73 ).
    ENDIF.
    DATA(t74) = |DDTEXT|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t74 p1 = t75 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1896_8b9496db1d30.
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
      WHEN `FIELDNAME`.
        CLEAR me->fieldname.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ROLLNAME`.
        CLEAR me->rollname_a788.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `COMPTYPE`.
        CLEAR me->comptype.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `PRECFIELD`.
        CLEAR me->precfield.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `LENG`.
        CLEAR me->leng_0540.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `INTLEN`.
        CLEAR me->intlen.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `DATATYPE`.
        CLEAR me->datatype_2bc5.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `DECIMALS`.
        CLEAR me->decimals_0f26.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `KEYFLAG`.
        CLEAR me->keyflag.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `GROUPNAME`.
        CLEAR me->groupname.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `CHECKTABLE`.
        CLEAR me->checktable.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `REFTABLE`.
        CLEAR me->reftable.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `REFFIELD`.
        CLEAR me->reffield.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `REFTYPE`.
        CLEAR me->reftype.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `DDTEXT`.
        CLEAR me->ddtext_87ee.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.7cfb34bb58fff73a209095f615c8e7d62c0c88ff583672fe0f9b7dc8d76f1080: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `FIELDNAME`.
        CLEAR result.
        IF me->fieldname IS BOUND AND me->fieldname->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->fieldname->value.
        ENDIF.
      WHEN `ROLLNAME`.
        CLEAR result.
        IF me->rollname_a788 IS BOUND AND me->rollname_a788->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->rollname_a788->value.
        ENDIF.
      WHEN `COMPTYPE`.
        CLEAR result.
        IF me->comptype IS BOUND AND me->comptype->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->comptype->value.
        ENDIF.
      WHEN `PRECFIELD`.
        CLEAR result.
        IF me->precfield IS BOUND AND me->precfield->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->precfield->value.
        ENDIF.
      WHEN `LENG`.
        CLEAR result.
        IF me->leng_0540 IS BOUND AND me->leng_0540->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->leng_0540->value.
        ENDIF.
      WHEN `INTLEN`.
        CLEAR result.
        IF me->intlen IS BOUND AND me->intlen->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->intlen->value.
        ENDIF.
      WHEN `DATATYPE`.
        CLEAR result.
        IF me->datatype_2bc5 IS BOUND AND me->datatype_2bc5->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->datatype_2bc5->value.
        ENDIF.
      WHEN `DECIMALS`.
        CLEAR result.
        IF me->decimals_0f26 IS BOUND AND me->decimals_0f26->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->decimals_0f26->value.
        ENDIF.
      WHEN `KEYFLAG`.
        CLEAR result.
        IF me->keyflag IS BOUND AND me->keyflag->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->keyflag->value.
        ENDIF.
      WHEN `GROUPNAME`.
        CLEAR result.
        IF me->groupname IS BOUND AND me->groupname->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->groupname->value.
        ENDIF.
      WHEN `CHECKTABLE`.
        CLEAR result.
        IF me->checktable IS BOUND AND me->checktable->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->checktable->value.
        ENDIF.
      WHEN `REFTABLE`.
        CLEAR result.
        IF me->reftable IS BOUND AND me->reftable->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->reftable->value.
        ENDIF.
      WHEN `REFFIELD`.
        CLEAR result.
        IF me->reffield IS BOUND AND me->reffield->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->reffield->value.
        ENDIF.
      WHEN `REFTYPE`.
        CLEAR result.
        IF me->reftype IS BOUND AND me->reftype->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->reftype->value.
        ENDIF.
      WHEN `DDTEXT`.
        CLEAR result.
        IF me->ddtext_87ee IS BOUND AND me->ddtext_87ee->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->ddtext_87ee->value.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.7cfb34bb58fff73a209095f615c8e7d62c0c88ff583672fe0f9b7dc8d76f1080: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `FIELDNAME`.
        CLEAR me->fieldname.
        IF p1 IS BOUND.
          me->fieldname = NEW #( ).
          me->fieldname->has = abap_true.
          me->fieldname->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `FIELDNAME`.
      WHEN `ROLLNAME`.
        CLEAR me->rollname_a788.
        IF p1 IS BOUND.
          me->rollname_a788 = NEW #( ).
          me->rollname_a788->has = abap_true.
          me->rollname_a788->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ROLLNAME`.
      WHEN `COMPTYPE`.
        CLEAR me->comptype.
        IF p1 IS BOUND.
          me->comptype = NEW #( ).
          me->comptype->has = abap_true.
          me->comptype->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `COMPTYPE`.
      WHEN `PRECFIELD`.
        CLEAR me->precfield.
        IF p1 IS BOUND.
          me->precfield = NEW #( ).
          me->precfield->has = abap_true.
          me->precfield->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `PRECFIELD`.
      WHEN `LENG`.
        CLEAR me->leng_0540.
        IF p1 IS BOUND.
          me->leng_0540 = NEW #( ).
          me->leng_0540->has = abap_true.
          me->leng_0540->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `LENG`.
      WHEN `INTLEN`.
        CLEAR me->intlen.
        IF p1 IS BOUND.
          me->intlen = NEW #( ).
          me->intlen->has = abap_true.
          me->intlen->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `INTLEN`.
      WHEN `DATATYPE`.
        CLEAR me->datatype_2bc5.
        IF p1 IS BOUND.
          me->datatype_2bc5 = NEW #( ).
          me->datatype_2bc5->has = abap_true.
          me->datatype_2bc5->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DATATYPE`.
      WHEN `DECIMALS`.
        CLEAR me->decimals_0f26.
        IF p1 IS BOUND.
          me->decimals_0f26 = NEW #( ).
          me->decimals_0f26->has = abap_true.
          me->decimals_0f26->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DECIMALS`.
      WHEN `KEYFLAG`.
        CLEAR me->keyflag.
        IF p1 IS BOUND.
          me->keyflag = NEW #( ).
          me->keyflag->has = abap_true.
          me->keyflag->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `KEYFLAG`.
      WHEN `GROUPNAME`.
        CLEAR me->groupname.
        IF p1 IS BOUND.
          me->groupname = NEW #( ).
          me->groupname->has = abap_true.
          me->groupname->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `GROUPNAME`.
      WHEN `CHECKTABLE`.
        CLEAR me->checktable.
        IF p1 IS BOUND.
          me->checktable = NEW #( ).
          me->checktable->has = abap_true.
          me->checktable->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `CHECKTABLE`.
      WHEN `REFTABLE`.
        CLEAR me->reftable.
        IF p1 IS BOUND.
          me->reftable = NEW #( ).
          me->reftable->has = abap_true.
          me->reftable->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFTABLE`.
      WHEN `REFFIELD`.
        CLEAR me->reffield.
        IF p1 IS BOUND.
          me->reffield = NEW #( ).
          me->reffield->has = abap_true.
          me->reffield->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFFIELD`.
      WHEN `REFTYPE`.
        CLEAR me->reftype.
        IF p1 IS BOUND.
          me->reftype = NEW #( ).
          me->reftype->has = abap_true.
          me->reftype->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `REFTYPE`.
      WHEN `DDTEXT`.
        CLEAR me->ddtext_87ee.
        IF p1 IS BOUND.
          me->ddtext_87ee = NEW #( ).
          me->ddtext_87ee->has = abap_true.
          me->ddtext_87ee->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `DDTEXT`.
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
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
