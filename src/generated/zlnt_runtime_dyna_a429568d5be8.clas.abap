CLASS zlnt_runtime_dyna_a429568d5be8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CONSTANTS: tag_string TYPE i VALUE 1, tag_class TYPE i VALUE 2, tag_ref TYPE i VALUE 3, tag_number TYPE i VALUE 4.
    DATA tag TYPE i.
    DATA sval TYPE string.
    DATA nval TYPE f.
    DATA number_special TYPE i.
    DATA cval TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA oval TYPE REF TO object.

    CONSTANTS: tag_object TYPE i VALUE 5, tag_array TYPE i VALUE 6, tag_boolean TYPE i VALUE 7, tag_null TYPE i VALUE 8.
    TYPES: BEGIN OF entry, k TYPE string, v TYPE REF TO zlnt_runtime_dyna_a429568d5be8, END OF entry.
    TYPES entries_type TYPE STANDARD TABLE OF entry WITH DEFAULT KEY.
    TYPES items_type TYPE STANDARD TABLE OF REF TO zlnt_runtime_dyna_a429568d5be8 WITH DEFAULT KEY.
    DATA entries TYPE entries_type.
    DATA items TYPE items_type.
    TYPES missing_type TYPE SORTED TABLE OF i WITH UNIQUE KEY table_line.
    DATA missing TYPE missing_type.
    METHODS array_index IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE i.
    DATA bval TYPE abap_bool.
    METHODS has IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS delete IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS put IMPORTING p0 TYPE string p1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS append IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS add_xml IMPORTING p0 TYPE string p1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS truth RETURNING VALUE(result) TYPE abap_bool.
    METHODS as_boolean RETURNING VALUE(result) TYPE abap_bool.
    METHODS strict_equals IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.

    METHODS is_number RETURNING VALUE(result) TYPE abap_bool.
    METHODS as_number RETURNING VALUE(result) TYPE f.
    METHODS type_of RETURNING VALUE(result) TYPE string.
    METHODS to_string RETURNING VALUE(result) TYPE string.
    METHODS is_string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_function RETURNING VALUE(result) TYPE abap_bool.
    METHODS as_string RETURNING VALUE(result) TYPE string.
    METHODS as_classvalue RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS as_ref RETURNING VALUE(result) TYPE REF TO object.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_dyna_a429568d5be8 IMPLEMENTATION.
  METHOD is_number.
    result = xsdbool( tag = tag_number ).
  ENDMETHOD.

  METHOD as_number.
    IF tag <> tag_number.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    IF number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    result = nval.
  ENDMETHOD.

  METHOD type_of.
    CASE tag.
      WHEN tag_string.
        result = `string`.
      WHEN tag_number.
        result = `number`.
      WHEN tag_class.
        result = `function`.
      WHEN tag_boolean.
        result = `boolean`.
      WHEN tag_ref OR tag_object OR tag_array OR tag_null.
        result = `object`.
      WHEN OTHERS.
        result = `undefined`.
    ENDCASE.
  ENDMETHOD.

  METHOD to_string.
    DATA integer TYPE int8.
    IF tag = tag_string.
      result = sval.
    ELSEIF tag = tag_boolean.
      IF bval = abap_true.
        result = `true`.
      ELSE.
        result = `false`.
      ENDIF.
    ELSEIF tag = tag_null.
      result = `null`.
    ELSEIF tag = tag_number.
      CASE number_special.
        WHEN 1.
          result = 'NaN'.
          RETURN.
        WHEN 2.
          result = 'Infinity'.
          RETURN.
        WHEN 3.
          result = '-Infinity'.
          RETURN.
      ENDCASE.
      IF nval <> trunc( nval ) OR nval > '9007199254740991' OR nval < '-9007199254740991'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      integer = nval.
      result = |{ integer }|.
    ELSE.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
  ENDMETHOD.

  METHOD is_string.
    IF tag = tag_string.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD is_function.
    IF tag = tag_class.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD as_string.
    IF tag <> tag_string.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    result = sval.
  ENDMETHOD.

  METHOD as_classvalue.
    IF tag <> tag_class.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    result = cval.
  ENDMETHOD.

  METHOD as_ref.
    IF tag = tag_object OR tag = tag_array.
      result = me.
      RETURN.
    ENDIF.
    IF tag <> tag_ref.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    result = oval.
  ENDMETHOD.

  METHOD get.
    IF tag = tag_ref AND p0 = `constructor`.
      result = zlnt_runtime_dyna_1ad87e6a776f=>get( me ).
      RETURN.
    ENDIF.
    IF tag = tag_class AND p0 = `name`.
      CREATE OBJECT result.
      result->tag = tag_string.
      result->sval = zlnt_runtime_dyna_1ad87e6a776f=>name( cval ).
      RETURN.
    ENDIF.
    IF tag = tag_ref.
      DATA adapter TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          adapter ?= oval.
        CATCH cx_sy_move_cast_error.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: dynamic.get: reference does not implement view storage`.
      ENDTRY.
      result = adapter->get( p0 ).
      RETURN.
    ENDIF.
    IF tag = tag_object.
      READ TABLE entries WITH KEY k = p0 INTO DATA(row).
      IF sy-subrc = 0.
        result = row-v.
      ENDIF.
    ELSEIF tag = tag_array.
      IF p0 = 'length'.
        CREATE OBJECT result.
        result->tag = tag_number.
        result->nval = lines( items ).
      ELSE.
        DATA index TYPE i.
        index = array_index( p0 ) + 1.
        READ TABLE items INDEX index INTO result.
      ENDIF.
    ELSEIF tag = tag_string.
      IF p0 = 'length'.
        CREATE OBJECT result.
        result->tag = tag_number.
        result->nval = strlen( sval ).
      ENDIF.
    ELSEIF tag = tag_number OR tag = tag_boolean.
      RETURN.
    ELSE.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
  ENDMETHOD.

  METHOD array_index.
    IF p0 CN '0123456789' OR p0 IS INITIAL OR strlen( p0 ) > 10 OR ( strlen( p0 ) > 1 AND p0+0(1) = '0' ).
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA number TYPE int8.
    number = p0.
    IF number >= 2147483647.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    result = number.
  ENDMETHOD.

  METHOD put.
    IF tag = tag_ref.
      DATA adapter TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          adapter ?= oval.
        CATCH cx_sy_move_cast_error.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: dynamic.put: reference does not implement view storage`.
      ENDTRY.
      adapter->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF tag = tag_array.
      DATA index TYPE i.
      DATA hole TYPE i.
      DATA empty TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      index = array_index( p0 ) + 1.
      WHILE lines( items ) < index.
        APPEND empty TO items.
        hole = lines( items ).
        INSERT hole INTO TABLE missing.
      ENDWHILE.
      MODIFY items FROM p1 INDEX index.
      DELETE missing WHERE table_line = index.
      RETURN.
    ENDIF.
    IF tag <> tag_object.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    READ TABLE entries WITH KEY k = p0 ASSIGNING FIELD-SYMBOL(<row>).
    IF sy-subrc = 0.
      <row>-v = p1.
    ELSE.
      APPEND VALUE #( k = p0 v = p1 ) TO entries.
    ENDIF.
  ENDMETHOD.

  METHOD append.
    IF tag <> tag_array.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    APPEND p0 TO items.
  ENDMETHOD.

  METHOD add_xml.
    DATA old TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA arr TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    old = get( p0 ).
    IF old IS NOT BOUND.
      put( p0 = p0 p1 = p1 ).
    ELSEIF old->tag = tag_array.
      old->append( p1 ).
    ELSE.
      CREATE OBJECT arr.
      arr->tag = tag_array.
      arr->append( old ).
      arr->append( p1 ).
      put( p0 = p0 p1 = arr ).
    ENDIF.
  ENDMETHOD.

  METHOD truth.
    CASE tag.
      WHEN tag_null.
        result = abap_false.
      WHEN tag_string.
        result = xsdbool( strlen( sval ) > 0 ).
      WHEN tag_number.
        IF number_special <> 0.
          result = xsdbool( number_special <> 1 ).
        ELSE.
          result = xsdbool( nval <> 0 ).
        ENDIF.
      WHEN tag_boolean.
        result = bval.
      WHEN OTHERS.
        result = abap_true.
    ENDCASE.
  ENDMETHOD.

  METHOD as_boolean.
    IF tag <> tag_boolean.
      RAISE EXCEPTION TYPE cx_sy_move_cast_error.
    ENDIF.
    result = bval.
  ENDMETHOD.

  METHOD strict_equals.
    IF p0 IS NOT BOUND OR tag <> p0->tag.
      RETURN.
    ENDIF.
    CASE tag.
      WHEN tag_string.
        result = xsdbool( sval = p0->sval ).
      WHEN tag_number.
        IF number_special <> 0 OR p0->number_special <> 0.
          result = xsdbool( number_special = p0->number_special AND number_special <> 1 ).
        ELSE.
          result = xsdbool( nval = p0->nval ).
        ENDIF.
      WHEN tag_boolean.
        result = xsdbool( bval = p0->bval ).
      WHEN tag_null.
        result = abap_true.
      WHEN tag_ref.
        result = xsdbool( oval = p0->oval ).
      WHEN tag_class.
        result = xsdbool( cval = p0->cval ).
      WHEN OTHERS.
        result = xsdbool( me = p0 ).
    ENDCASE.
  ENDMETHOD.

  METHOD has.
    IF tag = tag_object.
      READ TABLE entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      result = xsdbool( sy-subrc = 0 ).
    ELSEIF tag = tag_ref.
      DATA adapter TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          adapter ?= oval.
        CATCH cx_sy_move_cast_error.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'record_storage.go: dynamic.has: reference lacks view storage'.
      ENDTRY.
      result = adapter->has( p0 ).
    ELSE.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'record_storage.go: dynamic.has: source is not object or reference'.
    ENDIF.
  ENDMETHOD.

  METHOD delete.
    IF tag = tag_object.
      DELETE entries WHERE k = p0.
      result = abap_true.
    ELSEIF tag = tag_ref.
      DATA adapter TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          adapter ?= oval.
        CATCH cx_sy_move_cast_error.
          result = zlnt_runtime_nati_be494c0b072c=>run( p0 = oval key = p0 ).
          RETURN.
      ENDTRY.
      result = adapter->delete( p0 ).
    ELSE.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'record_storage.go: dynamic.delete: source is not object or reference'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
