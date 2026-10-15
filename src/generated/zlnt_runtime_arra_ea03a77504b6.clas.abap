CLASS zlnt_runtime_arra_ea03a77504b6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_runtime_arra_6c31174d6e02.
    DATA source TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS load.
    METHODS save.
    INTERFACES zlnt_view_storage_74017ca272ac.
    TYPES missing_type TYPE SORTED TABLE OF i WITH UNIQUE KEY table_line.
    DATA missing TYPE missing_type.
    METHODS has IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE abap_bool.
    METHODS delete IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE abap_bool.
    METHODS put IMPORTING p0 TYPE i p1 TYPE REF TO zcl_lnt_issue.
    METHODS allocate IMPORTING p0 TYPE i.
    METHODS dense.

    TYPES items_type TYPE STANDARD TABLE OF REF TO zcl_lnt_issue WITH DEFAULT KEY.
    DATA items TYPE items_type.
    METHODS reverse RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS push IMPORTING p0 TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE i.
    METHODS unshift IMPORTING p0 TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE i.
    METHODS length RETURNING VALUE(result) TYPE i.
    METHODS concat IMPORTING p0 TYPE REF TO zlnt_runtime_arra_ea03a77504b6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS slice0 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS slice1 IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS slice2 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS splice1 IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS splice1_view IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS splice2 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS splice3 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_ea03a77504b6.
    METHODS pop RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS shift RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS indexof IMPORTING p0 TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE i.
    METHODS includes IMPORTING p0 TYPE REF TO zcl_lnt_issue RETURNING VALUE(result) TYPE abap_bool.
    METHODS get IMPORTING p0 TYPE i RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_arra_ea03a77504b6 IMPLEMENTATION.
  METHOD has.
    load( ).
    IF p0 < 0 OR p0 >= lines( items ).
      RETURN.
    ENDIF.
    DATA idx TYPE i.
    idx = p0 + 1.
    READ TABLE missing WITH TABLE KEY table_line = idx TRANSPORTING NO FIELDS.
    result = xsdbool( sy-subrc <> 0 ).
  ENDMETHOD.

  METHOD delete.
    load( ).
    DATA idx TYPE i.
    DATA empty TYPE REF TO zcl_lnt_issue.
    IF p0 >= 0 AND p0 < lines( items ).
      idx = p0 + 1.
      INSERT idx INTO TABLE missing.
      MODIFY items FROM empty INDEX idx.
    ENDIF.
    result = abap_true.
    save( ).
  ENDMETHOD.

  METHOD put.
    load( ).
    IF p0 < 0 OR p0 >= 2147483647.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA idx TYPE i.
    DATA empty TYPE REF TO zcl_lnt_issue.
    DATA hole TYPE i.
    idx = p0 + 1.
    WHILE lines( items ) < idx.
      APPEND empty TO items.
      hole = lines( items ).
      INSERT hole INTO TABLE missing.
    ENDWHILE.
    DELETE missing WHERE table_line = idx.
    MODIFY items FROM p1 INDEX idx.
    save( ).
  ENDMETHOD.

  METHOD allocate.
    load( ).
    IF p0 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA empty TYPE REF TO zcl_lnt_issue.
    DATA hole TYPE i.
    WHILE lines( items ) < p0.
      APPEND empty TO items.
      hole = lines( items ).
      INSERT hole INTO TABLE missing.
    ENDWHILE.
    save( ).
  ENDMETHOD.

  METHOD dense.
    load( ).
    IF missing IS NOT INITIAL.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
  ENDMETHOD.

  METHOD reverse.
    load( ).
    DATA holes TYPE missing_type.
    DATA hole TYPE i.
    DATA moved TYPE i.
    LOOP AT missing INTO hole.
      moved = lines( items ) + 1 - hole.
      INSERT moved INTO TABLE holes.
    ENDLOOP.
    missing = holes.
    DATA low TYPE REF TO zcl_lnt_issue.
    DATA high TYPE REF TO zcl_lnt_issue.
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
    save( ).
  ENDMETHOD.

  METHOD push.
    load( ).
    APPEND p0 TO items.
    result = lines( items ).
    save( ).
  ENDMETHOD.

  METHOD unshift.
    load( ).
    dense( ).
    INSERT p0 INTO items INDEX 1.
    result = lines( items ).
    save( ).
  ENDMETHOD.

  METHOD length.
    load( ).
    result = lines( items ).
  ENDMETHOD.

  METHOD concat.
    load( ).
    p0->load( ).
    dense( ).
    p0->dense( ).
    CREATE OBJECT result.
    APPEND LINES OF items TO result->items.
    APPEND LINES OF p0->items TO result->items.
  ENDMETHOD.

  METHOD slice0.
    load( ).
    CREATE OBJECT result.
    result->missing = missing.
    APPEND LINES OF items TO result->items.
  ENDMETHOD.

  METHOD slice1.
    load( ).
    dense( ).
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
    load( ).
    dense( ).
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
    load( ).
    dense( ).
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
      save( ).
      RETURN.
    ENDIF.
    IF from * 2 > lines( items ).
      APPEND LINES OF items FROM from + 1 TO result->items.
      DELETE items FROM from + 1.
      save( ).
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
    save( ).
  ENDMETHOD.

  METHOD splice1_view.
    load( ).
    dense( ).
    result = splice1( p0 ).
    save( ).
  ENDMETHOD.

  METHOD splice2.
    load( ).
    dense( ).
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
    save( ).
  ENDMETHOD.

  METHOD splice3.
    load( ).
    dense( ).
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
    save( ).
  ENDMETHOD.

  METHOD pop.
    load( ).
    DATA hole TYPE i.
    hole = lines( items ).
    IF has( hole - 1 ) = abap_false AND hole > 0.
      DELETE items INDEX hole.
      DELETE missing WHERE table_line = hole.
      save( ).
      RETURN.
    ENDIF.
    IF lines( items ) > 0.
      READ TABLE items INDEX lines( items ) INTO result.
      DELETE items INDEX lines( items ).
    ENDIF.
    save( ).
  ENDMETHOD.

  METHOD shift.
    load( ).
    dense( ).
    IF lines( items ) > 0.
      READ TABLE items INDEX 1 INTO result.
      DELETE items INDEX 1.
    ENDIF.
    save( ).
  ENDMETHOD.

  METHOD indexof.
    load( ).
    dense( ).
    DATA row TYPE REF TO zcl_lnt_issue.
    result = -1.
    LOOP AT items INTO row.
      IF row = p0.
        result = sy-tabix - 1.
        EXIT.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD includes.
    load( ).
    dense( ).
    READ TABLE items WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD get.
    load( ).
    IF has( p0 ) = abap_false.
      RETURN.
    ENDIF.
    IF p0 < 0.
      RETURN.
    ENDIF.
    DATA(idx) = p0 + 1.
    READ TABLE items INDEX idx INTO DATA(val).
    IF sy-subrc = 0.
      result = val.
    ENDIF.
  ENDMETHOD.

  METHOD load.
    IF source IS NOT BOUND.
      RETURN.
    ENDIF.
    CLEAR items.
    missing = source->missing.
    DATA(t1) = VALUE i( ).
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_issue.
    CLEAR t3.
    LOOP AT source->items INTO t2.
      t1 = sy-tabix.
      CLEAR t3.
      READ TABLE missing WITH TABLE KEY table_line = t1 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        IF t2 IS BOUND.
          CLEAR t3.
          IF t2 IS BOUND.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            t4 = t2->as_ref( ).
            t3 ?= t4.
          ENDIF.
        ELSE.
        ENDIF.
      ENDIF.
      APPEND t3 TO items.
    ENDLOOP.
  ENDMETHOD.

  METHOD save.
    IF source IS NOT BOUND.
      RETURN.
    ENDIF.
    CLEAR source->items.
    source->missing = missing.
    DATA t1 TYPE REF TO zcl_lnt_issue.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    LOOP AT items INTO t1.
      CLEAR t2.
      CLEAR t2.
      IF t1 IS BOUND.
        CLEAR t2.
        IF t1 IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = t1.
          TRY.
              t2 ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2 IS NOT BOUND.
            TRY.
                t3 ?= t1.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              t2 = t3->source( ).
            ENDIF.
            IF t2 IS NOT BOUND.
              CREATE OBJECT t2.
              t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t2->oval = t1.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      APPEND t2 TO source->items.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
    result = source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: has: live-array key presence unavailable`.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: delete: live-array key deletion unavailable`.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    DATA(t1) = VALUE i( ).
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_issue.
    CLEAR t3.
    load( ).
    IF p0 = `length`.
      CREATE OBJECT result.
      result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      result->nval = lines( items ).
      RETURN.
    ENDIF.
    CREATE OBJECT t2.
    t1 = t2->array_index( p0 ).
    IF has( t1 ) = abap_false.
      RETURN.
    ENDIF.
    READ TABLE items INDEX t1 + 1 INTO t3.
    CLEAR result.
    IF t3 IS BOUND.
      CLEAR result.
      IF t3 IS BOUND.
        DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t4.
        DATA t5 TYPE REF TO object.
        CLEAR t5.
        CLEAR t4.
        t5 = t3.
        TRY.
            result ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF result IS NOT BOUND.
          TRY.
              t4 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t4 IS BOUND.
            result = t4->source( ).
          ENDIF.
          IF result IS NOT BOUND.
            CREATE OBJECT result.
            result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            result->oval = t3.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    DATA(t1) = VALUE i( ).
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_issue.
    CLEAR t3.
    CREATE OBJECT t2.
    t1 = t2->array_index( p0 ).
    IF p1 IS BOUND.
      CLEAR t3.
      IF p1 IS BOUND.
        DATA t4 TYPE REF TO object.
        CLEAR t4.
        t4 = p1->as_ref( ).
        t3 ?= t4.
      ENDIF.
    ELSE.
    ENDIF.
    put( p0 = t1 p1 = t3 ).
  ENDMETHOD.
ENDCLASS.
