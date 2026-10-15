* TS: src/objects/data_element.ts:14:22 shape.81fc422265245cd157dbf3e1430de53953cd35f8ef1ba3a88e7a2696cf081c01
CLASS zcl_lnt_shape_50142cbd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA refkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA domname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_e82a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA texts TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA text_max_lengths TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dtelmaster TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA aff_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_refkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_domname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_b7d5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_texts TYPE REF TO zcl_lnt_shape_66add1d1 OPTIONAL i_text_max_lengths TYPE REF TO zcl_lnt_shape_66add1d1 OPTIONAL
    i_texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_dtelmaster TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_aff_category TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_50142cbd IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_description.
    DATA(t2) = i_refkind.
    DATA(t3) = i_domname.
    DATA(t4) = i_datatype_9e1e.
    DATA(t5) = i_leng_b7d5.
    DATA(t6) = i_texts.
    DATA(t7) = i_text_max_lengths.
    DATA(t8) = i_texts_translations.
    DATA(t9) = i_decimals_2eed.
    DATA(t10) = i_dtelmaster.
    DATA(t11) = i_aff_category.
    DATA(t12) = t1.
    me->description = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t13 ).
    ENDIF.
    DATA(t14) = |description|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = t2.
    me->refkind = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refkind`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `refkind` p1 = t17 ).
    ENDIF.
    DATA(t18) = |refkind|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = t3.
    me->domname = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `domname`.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `domname` p1 = t21 ).
    ENDIF.
    DATA(t22) = |domname|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = t4.
    me->datatype_2b0f = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t25 ).
    ENDIF.
    DATA(t26) = |datatype|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = t5.
    me->leng_e82a = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `leng`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `leng` p1 = t29 ).
    ENDIF.
    DATA(t30) = |leng|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = t6.
    me->texts = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `texts` p1 = t33 ).
    ENDIF.
    DATA(t34) = |texts|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = t7.
    me->text_max_lengths = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textMaxLengths`.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textMaxLengths` p1 = t37 ).
    ENDIF.
    DATA(t38) = |textMaxLengths|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = t8.
    me->texts_translations = t40.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textsTranslations` p1 = t41 ).
    ENDIF.
    DATA(t42) = |textsTranslations|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = t9.
    me->decimals_29bf = t44.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t45 ).
    ENDIF.
    DATA(t46) = |decimals|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = t10.
    me->dtelmaster = t48.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dtelmaster`.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dtelmaster` p1 = t49 ).
    ENDIF.
    DATA(t50) = |dtelmaster|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = t11.
    me->aff_category = t52.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `affCategory`.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `affCategory` p1 = t53 ).
    ENDIF.
    DATA(t54) = |affCategory|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1879_e50c54e9b4e7.
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
      WHEN `description`.
        CLEAR me->description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `refkind`.
        CLEAR me->refkind.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `domname`.
        CLEAR me->domname.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `datatype`.
        CLEAR me->datatype_2b0f.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `leng`.
        CLEAR me->leng_e82a.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `texts`.
        CLEAR me->texts.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `textMaxLengths`.
        CLEAR me->text_max_lengths.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `textsTranslations`.
        CLEAR me->texts_translations.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `dtelmaster`.
        CLEAR me->dtelmaster.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `affCategory`.
        CLEAR me->aff_category.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.81fc422265245cd157dbf3e1430de53953cd35f8ef1ba3a88e7a2696cf081c01: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `description`.
        CLEAR result.
        IF me->description IS BOUND AND me->description->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->description->value.
        ENDIF.
      WHEN `refkind`.
        CLEAR result.
        IF me->refkind IS BOUND AND me->refkind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->refkind->value.
        ENDIF.
      WHEN `domname`.
        CLEAR result.
        IF me->domname IS BOUND AND me->domname->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->domname->value.
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
      WHEN `texts`.
        CLEAR result.
        IF me->texts IS BOUND.
          CLEAR result.
          IF me->texts IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->texts.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->texts.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->texts.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `textMaxLengths`.
        CLEAR result.
        IF me->text_max_lengths IS BOUND.
          CLEAR result.
          IF me->text_max_lengths IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->text_max_lengths.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->text_max_lengths.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->text_max_lengths.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `textsTranslations`.
        CLEAR result.
        IF me->texts_translations IS BOUND.
          CLEAR result.
          IF me->texts_translations IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->texts_translations.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->texts_translations.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->texts_translations.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `decimals`.
        CLEAR result.
        IF me->decimals_29bf IS BOUND AND me->decimals_29bf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->decimals_29bf->value.
        ENDIF.
      WHEN `dtelmaster`.
        CLEAR result.
        IF me->dtelmaster IS BOUND AND me->dtelmaster->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->dtelmaster->value.
        ENDIF.
      WHEN `affCategory`.
        CLEAR result.
        IF me->aff_category IS BOUND AND me->aff_category->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->aff_category->value.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.81fc422265245cd157dbf3e1430de53953cd35f8ef1ba3a88e7a2696cf081c01: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `description`.
        CLEAR me->description.
        IF p1 IS BOUND.
          me->description = NEW #( ).
          me->description->has = abap_true.
          me->description->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      WHEN `refkind`.
        CLEAR me->refkind.
        IF p1 IS BOUND.
          me->refkind = NEW #( ).
          me->refkind->has = abap_true.
          me->refkind->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refkind`.
      WHEN `domname`.
        CLEAR me->domname.
        IF p1 IS BOUND.
          me->domname = NEW #( ).
          me->domname->has = abap_true.
          me->domname->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `domname`.
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
      WHEN `texts`.
        CLEAR me->texts.
        IF p1 IS BOUND.
          DATA t1 TYPE REF TO object.
          CLEAR t1.
          t1 = p1->as_ref( ).
          me->texts ?= t1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
      WHEN `textMaxLengths`.
        CLEAR me->text_max_lengths.
        IF p1 IS BOUND.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          t2 = p1->as_ref( ).
          me->text_max_lengths ?= t2.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textMaxLengths`.
      WHEN `textsTranslations`.
        CLEAR me->texts_translations.
        IF p1 IS BOUND.
          CLEAR me->texts_translations.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->texts_translations ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->texts_translations.
              me->texts_translations->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->texts_translations->load( ).
            DATA t3 TYPE REF TO object.
            CLEAR t3.
            DATA t4 TYPE REF TO zcl_lnt_shape_0802eb0f.
            CLEAR t4.
            LOOP AT me->texts_translations->items INTO t3.
              DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t5.
              CLEAR t4.
              IF t3 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t5 ?= t3.
                DATA t6 TYPE REF TO object.
                CLEAR t6.
                t6 = t5->as_ref( ).
                t4 ?= t6.
              ELSE.
                t4 ?= t3.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        IF p1 IS BOUND.
          me->decimals_29bf = NEW #( ).
          me->decimals_29bf->has = abap_true.
          me->decimals_29bf->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
      WHEN `dtelmaster`.
        CLEAR me->dtelmaster.
        IF p1 IS BOUND.
          me->dtelmaster = NEW #( ).
          me->dtelmaster->has = abap_true.
          me->dtelmaster->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dtelmaster`.
      WHEN `affCategory`.
        CLEAR me->aff_category.
        IF p1 IS BOUND.
          me->aff_category = NEW #( ).
          me->aff_category->has = abap_true.
          me->aff_category->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `affCategory`.
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
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t7 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
