CLASS zlnt_property_loo_01d5731631ca DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get IMPORTING p0 TYPE REF TO zcl_lnt_proxy_data_item key TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS own IMPORTING p0 TYPE REF TO zcl_lnt_proxy_data_item key TYPE string RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS has IMPORTING p0 TYPE REF TO zcl_lnt_proxy_data_item key TYPE string RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS initialize.
    CLASS-DATA initialized TYPE abap_bool.
    TYPES: BEGIN OF entry, key TYPE string, slot TYPE i, own TYPE abap_bool, END OF entry.
    CLASS-DATA entries TYPE HASHED TABLE OF entry WITH UNIQUE KEY key.
    CLASS-DATA token13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_property_loo_01d5731631ca IMPLEMENTATION.
  METHOD initialize.
    DATA row TYPE entry.
    IF initialized = abap_true.
      RETURN.
    ENDIF.
    initialized = abap_true.
    row-key = `OBJECT`.
    row-slot = 0.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJ_NAME`.
    row-slot = 1.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJECT1`.
    row-slot = 2.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJ_NAME1`.
    row-slot = 3.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJECT2`.
    row-slot = 4.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJ_NAME2`.
    row-slot = 5.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJECT_R`.
    row-slot = 6.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `OBJ_NAME_R`.
    row-slot = 7.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `R3_TYPE`.
    row-slot = 8.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `R3_NAME`.
    row-slot = 9.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `R3_TEXT`.
    row-slot = 10.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `IFR_TYPE`.
    row-slot = 11.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `IFR_NAME`.
    row-slot = 12.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `constructor`.
    row-slot = 13.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token13.
    token13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
    token13->cval = zlnt_runtime_desc_78196487750d=>zlnt_member_d1323_3dc9f979a3fd.
    row-key = `__proto__`.
    row-slot = 14.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token14.
    token14 = zlnt_property_tok_4b1aa8bed957=>get( ).
    row-key = `hasOwnProperty`.
    row-slot = 15.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token15.
    token15 = zlnt_property_tok_211649ca63bd=>get( ).
    row-key = `isPrototypeOf`.
    row-slot = 16.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token16.
    token16 = zlnt_property_tok_637616354ba2=>get( ).
    row-key = `propertyIsEnumerable`.
    row-slot = 17.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token17.
    token17 = zlnt_property_tok_eab6093325ec=>get( ).
    row-key = `toLocaleString`.
    row-slot = 18.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token18.
    token18 = zlnt_property_tok_016d4543a454=>get( ).
    row-key = `toString`.
    row-slot = 19.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token19.
    token19 = zlnt_property_tok_fcfea1cf7955=>get( ).
    row-key = `valueOf`.
    row-slot = 20.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token20.
    token20 = zlnt_property_tok_24bc4b0e1883=>get( ).
    row-key = `__defineGetter__`.
    row-slot = 21.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token21.
    token21 = zlnt_property_tok_67040dc5953b=>get( ).
    row-key = `__defineSetter__`.
    row-slot = 22.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token22.
    token22 = zlnt_property_tok_083e2d2fdb5a=>get( ).
    row-key = `__lookupGetter__`.
    row-slot = 23.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token23.
    token23 = zlnt_property_tok_5714b06f4586=>get( ).
    row-key = `__lookupSetter__`.
    row-slot = 24.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token24.
    token24 = zlnt_property_tok_d0ec64d8cfa1=>get( ).
  ENDMETHOD.

  METHOD get.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      IF p0->zlnt_view_source_36f3bf68b9b8->has( key ) = abap_false.
        CASE key.
          WHEN `constructor`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__proto__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `hasOwnProperty`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `isPrototypeOf`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `propertyIsEnumerable`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `toLocaleString`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `toString`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `valueOf`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__defineGetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__defineSetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__lookupGetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__lookupSetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
        ENDCASE.
      ENDIF.
      result = p0->zlnt_view_source_36f3bf68b9b8->get( key ).
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE row-slot.
      WHEN 0.
        CLEAR result.
        IF p0->object_1232 IS BOUND AND p0->object_1232->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->object_1232->value.
        ENDIF.
      WHEN 1.
        CLEAR result.
        IF p0->obj_name IS BOUND AND p0->obj_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->obj_name->value.
        ENDIF.
      WHEN 2.
        CLEAR result.
        IF p0->object1 IS BOUND AND p0->object1->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->object1->value.
        ENDIF.
      WHEN 3.
        CLEAR result.
        IF p0->obj_name1 IS BOUND AND p0->obj_name1->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->obj_name1->value.
        ENDIF.
      WHEN 4.
        CLEAR result.
        IF p0->object2 IS BOUND AND p0->object2->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->object2->value.
        ENDIF.
      WHEN 5.
        CLEAR result.
        IF p0->obj_name2 IS BOUND AND p0->obj_name2->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->obj_name2->value.
        ENDIF.
      WHEN 6.
        CLEAR result.
        IF p0->object_r IS BOUND AND p0->object_r->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->object_r->value.
        ENDIF.
      WHEN 7.
        CLEAR result.
        IF p0->obj_name_r IS BOUND AND p0->obj_name_r->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->obj_name_r->value.
        ENDIF.
      WHEN 8.
        CLEAR result.
        IF p0->r3_type IS BOUND AND p0->r3_type->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->r3_type->value.
        ENDIF.
      WHEN 9.
        CLEAR result.
        IF p0->r3_name IS BOUND AND p0->r3_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->r3_name->value.
        ENDIF.
      WHEN 10.
        CLEAR result.
        IF p0->r3_text IS BOUND AND p0->r3_text->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->r3_text->value.
        ENDIF.
      WHEN 11.
        CLEAR result.
        IF p0->ifr_type IS BOUND AND p0->ifr_type->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->ifr_type->value.
        ENDIF.
      WHEN 12.
        CLEAR result.
        IF p0->ifr_name IS BOUND AND p0->ifr_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->ifr_name->value.
        ENDIF.
      WHEN 13.
        result = token13.
      WHEN 14.
        result = token14.
      WHEN 15.
        result = token15.
      WHEN 16.
        result = token16.
      WHEN 17.
        result = token17.
      WHEN 18.
        result = token18.
      WHEN 19.
        result = token19.
      WHEN 20.
        result = token20.
      WHEN 21.
        result = token21.
      WHEN 22.
        result = token22.
      WHEN 23.
        result = token23.
      WHEN 24.
        result = token24.
    ENDCASE.
  ENDMETHOD.

  METHOD own.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = p0->zlnt_view_source_36f3bf68b9b8->has( key ).
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = row-own.
  ENDMETHOD.

  METHOD has.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = p0->zlnt_view_source_36f3bf68b9b8->has( key ).
      IF result = abap_false.
        CASE key.
          WHEN `constructor`.
            result = abap_true.
          WHEN `__proto__`.
            result = abap_true.
          WHEN `hasOwnProperty`.
            result = abap_true.
          WHEN `isPrototypeOf`.
            result = abap_true.
          WHEN `propertyIsEnumerable`.
            result = abap_true.
          WHEN `toLocaleString`.
            result = abap_true.
          WHEN `toString`.
            result = abap_true.
          WHEN `valueOf`.
            result = abap_true.
          WHEN `__defineGetter__`.
            result = abap_true.
          WHEN `__defineSetter__`.
            result = abap_true.
          WHEN `__lookupGetter__`.
            result = abap_true.
          WHEN `__lookupSetter__`.
            result = abap_true.
        ENDCASE.
      ENDIF.
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = abap_true.
  ENDMETHOD.
ENDCLASS.
