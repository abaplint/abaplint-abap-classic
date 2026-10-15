CLASS zlnt_runtime_ownk_4497b85e405d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS keys IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_ownk_4497b85e405d IMPLEMENTATION.
  METHOD keys.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'own_keys.go: keys: undefined receiver'.
    ENDIF.
    IF p0->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA storage TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA source TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      TRY.
          storage ?= p0->oval.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF storage IS BOUND.
        source = storage->source( ).
        IF source IS BOUND.
          result = keys( source ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA native TYPE REF TO zlnt_own_storage_4c72afe8366e.
      TRY.
          native ?= p0->oval.
        CATCH cx_sy_move_cast_error.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'own_keys.go: keys: reference lacks own-key adapter'.
      ENDTRY.
      result = native->keys( ).
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = 'own_keys.go: keys: primitive key enumeration unavailable'.
    ENDIF.
    TYPES: BEGIN OF ordered_key, k TYPE string, category TYPE i, number TYPE int8, position TYPE i, END OF ordered_key.
    DATA ordered TYPE STANDARD TABLE OF ordered_key WITH DEFAULT KEY.
    DATA item TYPE ordered_key.
    DATA row TYPE zlnt_runtime_dyna_a429568d5be8=>entry.
    DATA position TYPE i.
    LOOP AT p0->entries INTO row.
      CLEAR item.
      position = position + 1.
      item-k = row-k.
      item-position = position.
      item-category = 1.
      IF row-k IS NOT INITIAL AND strlen( row-k ) <= 10 AND row-k CO '0123456789'.
        IF strlen( row-k ) = 1 OR row-k+0(1) <> '0'.
          item-number = row-k.
          IF item-number < 4294967295.
            item-category = 0.
          ELSE.
            CLEAR item-number.
          ENDIF.
        ENDIF.
      ENDIF.
      APPEND item TO ordered.
    ENDLOOP.
    SORT ordered BY category number position.
    CREATE OBJECT result.
    LOOP AT ordered INTO item.
      APPEND item-k TO result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
