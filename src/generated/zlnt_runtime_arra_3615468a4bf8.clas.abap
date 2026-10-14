CLASS zlnt_runtime_arra_3615468a4bf8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_runtime_arra_6c31174d6e02.
    TYPES items_type TYPE STANDARD TABLE OF REF TO zcl_lnt_expression_node WITH DEFAULT KEY.
    DATA items TYPE items_type.
    METHODS reverse RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS push IMPORTING p0 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE i.
    METHODS unshift IMPORTING p0 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE i.
    METHODS length RETURNING VALUE(result) TYPE i.
    METHODS concat IMPORTING p0 TYPE REF TO zlnt_runtime_arra_3615468a4bf8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS slice0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS slice1 IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS slice2 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS splice1 IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS splice1_view IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS splice2 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS splice3 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
    METHODS pop RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS shift RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS indexOf IMPORTING p0 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE i.
    METHODS includes IMPORTING p0 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_arra_3615468a4bf8 IMPLEMENTATION.
  METHOD reverse.
    DATA low TYPE REF TO zcl_lnt_expression_node.
    DATA high TYPE REF TO zcl_lnt_expression_node.
    DATA i TYPE i.
    DATA j TYPE i.
    result = me.
    i = 1.
    j = lines( items ).
    WHILE i < j.
      READ TABLE items INDEX i INTO low.
      READ TABLE items INDEX j INTO high.
      MODIFY items FROM high INDEX i.
      MODIFY items FROM low INDEX j.
      i = i + 1.
      j = j - 1.
    ENDWHILE.
  ENDMETHOD.
  METHOD push.
    APPEND p0 TO items.
    result = lines( items ).
  ENDMETHOD.
  METHOD unshift.
    INSERT p0 INTO items INDEX 1.
    result = lines( items ).
  ENDMETHOD.
  METHOD length.
    result = lines( items ).
  ENDMETHOD.
  METHOD concat.
    CREATE OBJECT result.
    APPEND LINES OF items TO result->items.
    APPEND LINES OF p0->items TO result->items.
  ENDMETHOD.
  METHOD slice0.
    CREATE OBJECT result.
    APPEND LINES OF items TO result->items.
  ENDMETHOD.
  METHOD slice1.
    DATA from TYPE i.
    from = p0.
    IF from < 0.
      from = lines( items ) + from.
    ENDIF.
    IF from < 0.
      from = 0.
    ENDIF.
    CREATE OBJECT result.
    IF from < lines( items ).
      APPEND LINES OF items FROM from + 1 TO result->items.
    ENDIF.
  ENDMETHOD.
  METHOD slice2.
    DATA from TYPE i.
    DATA upto TYPE i.
    from = p0.
    upto = p1.
    IF from < 0.
      from = lines( items ) + from.
    ENDIF.
    IF upto < 0.
      upto = lines( items ) + upto.
    ENDIF.
    IF from < 0.
      from = 0.
    ENDIF.
    IF upto > lines( items ).
      upto = lines( items ).
    ENDIF.
    CREATE OBJECT result.
    IF from < upto.
      APPEND LINES OF items FROM from + 1 TO upto TO result->items.
    ENDIF.
  ENDMETHOD.
  METHOD splice1.
    DATA from TYPE i.
    DATA head TYPE items_type.
    from = p0.
    IF from < 0.
      from = lines( items ) + from.
    ENDIF.
    IF from < 0.
      from = 0.
    ENDIF.
    CREATE OBJECT result.
    IF from >= lines( items ).
      RETURN.
    ENDIF.
    IF from * 2 > lines( items ).
      APPEND LINES OF items FROM from + 1 TO result->items.
      DELETE items FROM from + 1.
      RETURN.
    ENDIF.
    IF from > 0.
      APPEND LINES OF items FROM 1 TO from TO head.
    ENDIF.
    result = NEW #( ).
    result->items = items.
    CLEAR items.
    IF from > 0.
      DELETE result->items FROM 1 TO from.
    ENDIF.
    items = head.
  ENDMETHOD.
  METHOD splice1_view.
    result = splice1( p0 ).
  ENDMETHOD.
  METHOD splice2.
    DATA from TYPE i.
    DATA cnt TYPE i.
    DATA last TYPE i.
    from = p0.
    IF from < 0.
      from = lines( items ) + from.
    ENDIF.
    IF from < 0.
      from = 0.
    ENDIF.
    IF from > lines( items ).
      from = lines( items ).
    ENDIF.
    from = from + 1.
    cnt = p1.
    IF cnt < 0.
      cnt = 0.
    ENDIF.
    IF from + cnt - 1 > lines( items ).
      cnt = lines( items ) - from + 1.
    ENDIF.
    IF cnt < 0.
      cnt = 0.
    ENDIF.
    CREATE OBJECT result.
    IF cnt > 0.
      last = from + cnt - 1.
      APPEND LINES OF items FROM from TO last TO result->items.
      DELETE items FROM from TO last.
    ENDIF.
  ENDMETHOD.
  METHOD splice3.
    DATA from TYPE i.
    DATA cnt TYPE i.
    from = p0.
    IF from < 0.
      from = lines( items ) + from.
    ENDIF.
    IF from < 0.
      from = 0.
    ENDIF.
    IF from > lines( items ).
      from = lines( items ).
    ENDIF.
    from = from + 1.
    cnt = p1.
    IF cnt < 0.
      cnt = 0.
    ENDIF.
    IF from + cnt - 1 > lines( items ).
      cnt = lines( items ) - from + 1.
    ENDIF.
    IF cnt < 0.
      cnt = 0.
    ENDIF.
    CREATE OBJECT result.
    IF cnt > 0.
      APPEND LINES OF items FROM from TO from + cnt - 1 TO result->items.
      DELETE items FROM from TO from + cnt - 1.
    ENDIF.
    INSERT p2 INTO items INDEX from.
  ENDMETHOD.
  METHOD pop.
    IF lines( items ) > 0.
      READ TABLE items INDEX lines( items ) INTO result.
      DELETE items INDEX lines( items ).
    ENDIF.
  ENDMETHOD.
  METHOD shift.
    IF lines( items ) > 0.
      READ TABLE items INDEX 1 INTO result.
      DELETE items INDEX 1.
    ENDIF.
  ENDMETHOD.
  METHOD indexOf.
    DATA row TYPE REF TO zcl_lnt_expression_node.
    result = -1.
    LOOP AT items INTO row.
      IF row = p0.
        result = sy-tabix - 1.
        EXIT.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD includes.
    READ TABLE items WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.
  METHOD get.
    IF p0 < 0.
      RETURN.
    ENDIF.
    DATA(idx) = p0 + 1.
    READ TABLE items INDEX idx INTO DATA(val).
    IF sy-subrc = 0.
      result = val.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
