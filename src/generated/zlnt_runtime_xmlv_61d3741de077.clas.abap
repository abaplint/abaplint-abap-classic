CLASS zlnt_runtime_xmlv_61d3741de077 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS validate IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: BEGIN OF open_tag, name TYPE string, pos TYPE i, END OF open_tag.
    TYPES tags_type TYPE STANDARD TABLE OF open_tag WITH DEFAULT KEY.
    CLASS-DATA converter TYPE REF TO cl_abap_conv_out_ce.
    DATA input TYPE string.
    DATA cursor TYPE i.
    DATA problem TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS at IMPORTING idx TYPE i RETURNING VALUE(result) TYPE i.
    METHODS white IMPORTING c TYPE i RETURNING VALUE(result) TYPE abap_bool.
    METHODS jswhite IMPORTING c TYPE i RETURNING VALUE(result) TYPE abap_bool.
    METHODS name_start IMPORTING c TYPE i RETURNING VALUE(result) TYPE abap_bool.
    METHODS valid_name IMPORTING text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS cut IMPORTING start TYPE i finish TYPE i RETURNING VALUE(result) TYPE string.
    METHODS trimmed IMPORTING text TYPE string RETURNING VALUE(result) TYPE string.
    METHODS position IMPORTING idx TYPE i EXPORTING ln TYPE i col TYPE i.
    METHODS failure IMPORTING code TYPE string msg TYPE string idx TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS error IMPORTING code TYPE string msg TYPE string ln TYPE i col TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS pi.
    METHODS comment.
    METHODS amp RETURNING VALUE(result) TYPE i.
    METHODS attrs IMPORTING text TYPE string offset TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS scan RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_runtime_xmlv_61d3741de077 IMPLEMENTATION.
  METHOD validate.
    DATA parser TYPE REF TO zlnt_runtime_xmlv_61d3741de077.
    CREATE OBJECT parser.
    parser->input = p0.
    IF parser->at( 0 ) = 65279.
      parser->input = parser->cut( start = 1 finish = strlen( p0 ) ).
    ENDIF.
    result = parser->scan( ).
  ENDMETHOD.

  METHOD at.
    DATA ch TYPE c LENGTH 1.
    DATA bytes TYPE xstring.
    DATA low TYPE x LENGTH 1.
    DATA high TYPE x LENGTH 1.
    DATA high_int TYPE i.
    result = -1.
    IF idx >= 0 AND idx < strlen( input ).
      ch = input+idx(1).
      result = cl_abap_conv_out_ce=>uccpi( ch ).
      IF result >= 255.
        IF converter IS NOT BOUND.
          converter = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        converter->convert( EXPORTING data = ch IMPORTING buffer = bytes ).
        low = bytes(1).
        high = bytes+1(1).
        result = low.
        high_int = high.
        result = result + high_int * 256.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD white.
    IF c = 32 OR c = 9 OR c = 10 OR c = 13.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD jswhite.
    result = white( c ).
    IF c = 11 OR c = 12 OR c = 160 OR c = 5760 OR ( c >= 8192 AND c <= 8202 )
    OR c = 8232 OR c = 8233 OR c = 8239 OR c = 8287 OR c = 12288 OR c = 65279.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD name_start.
    IF c = 58 OR c = 95 OR ( c >= 65 AND c <= 90 ) OR ( c >= 97 AND c <= 122 )
    OR ( c >= 192 AND c <= 214 ) OR ( c >= 216 AND c <= 246 ) OR ( c >= 248 AND c <= 767 )
    OR ( c >= 880 AND c <= 893 ) OR ( c >= 895 AND c <= 8191 ) OR ( c >= 8204 AND c <= 8205 )
    OR ( c >= 8304 AND c <= 8591 ) OR ( c >= 11264 AND c <= 12271 ) OR ( c >= 12289 AND c <= 55295 )
    OR ( c >= 63744 AND c <= 64975 ) OR ( c >= 65008 AND c <= 65533 ).
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD valid_name.
    DATA parser TYPE REF TO zlnt_runtime_xmlv_61d3741de077.
    DATA i TYPE i.
    DATA c TYPE i.
    CREATE OBJECT parser.
    parser->input = text.
    IF name_start( parser->at( 0 ) ) = abap_false.
      RETURN.
    ENDIF.
    i = 1.
    WHILE i < strlen( text ).
      c = parser->at( i ).
      IF name_start( c ) = abap_false AND c <> 45 AND c <> 46 AND c <> 183
      AND NOT ( c >= 48 AND c <= 57 ) AND NOT ( c >= 768 AND c <= 879 ) AND NOT ( c >= 8255 AND c <= 8256 ).
        RETURN.
      ENDIF.
      i = i + 1.
    ENDWHILE.
    result = abap_true.
  ENDMETHOD.

  METHOD cut.
    DATA count TYPE i.
    count = finish - start.
    IF count > 0.
      result = input+start(count).
    ENDIF.
  ENDMETHOD.

  METHOD trimmed.
    DATA parser TYPE REF TO zlnt_runtime_xmlv_61d3741de077.
    DATA first TYPE i.
    DATA last TYPE i.
    CREATE OBJECT parser.
    parser->input = text.
    last = strlen( text ).
    WHILE first < last AND jswhite( parser->at( first ) ) = abap_true.
      first = first + 1.
    ENDWHILE.
    WHILE last > first.
      IF jswhite( parser->at( last - 1 ) ) = abap_false.
        EXIT.
      ENDIF.
      last = last - 1.
    ENDWHILE.
    result = parser->cut( start = first finish = last ).
  ENDMETHOD.

  METHOD position.
    DATA i TYPE i.
    ln = 1.
    col = 1.
    WHILE i < idx AND i < strlen( input ).
      IF at( i ) = 10.
        ln = ln + 1.
        col = 1.
      ELSE.
        col = col + 1.
      ENDIF.
      i = i + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD error.
    DATA details TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA value TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT result.
    CREATE OBJECT details.
    result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    details->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT value.
    value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    value->sval = code.
    details->put( p0 = 'code' p1 = value ).
    CREATE OBJECT value.
    value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    value->sval = msg.
    details->put( p0 = 'msg' p1 = value ).
    CREATE OBJECT value.
    value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    value->nval = ln.
    details->put( p0 = 'line' p1 = value ).
    CLEAR value.
    IF col > 0.
      CREATE OBJECT value.
      value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      value->nval = col.
    ENDIF.
    details->put( p0 = 'col' p1 = value ).
    result->put( p0 = 'err' p1 = details ).
  ENDMETHOD.

  METHOD failure.
    DATA ln TYPE i.
    DATA col TYPE i.
    position( EXPORTING idx = idx IMPORTING ln = ln col = col ).
    result = error( code = code msg = msg ln = ln col = col ).
  ENDMETHOD.

  METHOD pi.
    DATA start TYPE i.
    DATA name TYPE string.
    start = cursor.
    WHILE cursor < strlen( input ).
      IF at( cursor ) = 63 OR at( cursor ) = 32.
        name = cut( start = start finish = cursor ).
        IF cursor > 5 AND name = 'xml'.
          problem = failure( code = 'InvalidXml' msg = 'XML declaration allowed only at the start of the document.' idx = cursor ).
          RETURN.
        ENDIF.
        IF at( cursor ) = 63 AND at( cursor + 1 ) = 62.
          cursor = cursor + 1.
          RETURN.
        ENDIF.
      ENDIF.
      cursor = cursor + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD comment.
    DATA depth TYPE i.
    DATA word TYPE string.
    IF strlen( input ) > cursor + 5 AND at( cursor + 1 ) = 45 AND at( cursor + 2 ) = 45.
      cursor = cursor + 3.
      WHILE cursor < strlen( input ).
        IF at( cursor ) = 45 AND at( cursor + 1 ) = 45 AND at( cursor + 2 ) = 62.
          cursor = cursor + 2.
          RETURN.
        ENDIF.
        cursor = cursor + 1.
      ENDWHILE.
    ELSE.
      IF strlen( input ) > cursor + 8.
        word = cut( start = cursor + 1 finish = cursor + 8 ).
      ENDIF.
      IF strlen( input ) > cursor + 8 AND word = 'DOCTYPE'.
        depth = 1.
        cursor = cursor + 8.
        WHILE cursor < strlen( input ).
          IF at( cursor ) = 60.
            depth = depth + 1.
          ELSEIF at( cursor ) = 62.
            depth = depth - 1.
            IF depth = 0.
              RETURN.
            ENDIF.
          ENDIF.
          cursor = cursor + 1.
        ENDWHILE.
      ELSEIF strlen( input ) > cursor + 9 AND word = '[CDATA['.
        cursor = cursor + 8.
        WHILE cursor < strlen( input ).
          IF at( cursor ) = 93 AND at( cursor + 1 ) = 93 AND at( cursor + 2 ) = 62.
            cursor = cursor + 2.
            RETURN.
          ENDIF.
          cursor = cursor + 1.
        ENDWHILE.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD amp.
    DATA hex TYPE abap_bool.
    DATA count TYPE i.
    DATA c TYPE i.
    result = -1.
    cursor = cursor + 1.
    IF at( cursor ) = 59.
      RETURN.
    ENDIF.
    IF at( cursor ) = 35.
      cursor = cursor + 1.
      IF at( cursor ) = 120.
        hex = abap_true.
        cursor = cursor + 1.
      ENDIF.
      WHILE cursor < strlen( input ).
        c = at( cursor ).
        IF c = 59.
          result = cursor.
          RETURN.
        ENDIF.
        IF NOT ( c >= 48 AND c <= 57 ) AND NOT ( hex = abap_true AND ( ( c >= 97 AND c <= 102 ) OR ( c >= 65 AND c <= 70 ) ) ).
          RETURN.
        ENDIF.
        cursor = cursor + 1.
      ENDWHILE.
      RETURN.
    ENDIF.
    WHILE cursor < strlen( input ).
      c = at( cursor ).
      IF ( ( c >= 48 AND c <= 57 ) OR ( c >= 65 AND c <= 90 ) OR ( c >= 97 AND c <= 122 ) OR c = 95 ) AND count < 20.
        count = count + 1.
        cursor = cursor + 1.
        CONTINUE.
      ENDIF.
      IF c = 59.
        EXIT.
      ENDIF.
      RETURN.
    ENDWHILE.
    result = cursor.
  ENDMETHOD.

  METHOD attrs.
    DATA parser TYPE REF TO zlnt_runtime_xmlv_61d3741de077.
    DATA names TYPE SORTED TABLE OF string WITH UNIQUE KEY table_line.
    DATA i TYPE i.
    DATA j TYPE i.
    DATA start TYPE i.
    DATA spaces TYPE i.
    DATA name_start_pos TYPE i.
    DATA after_name TYPE i.
    DATA after_equal TYPE i.
    DATA equal TYPE abap_bool.
    DATA value TYPE abap_bool.
    DATA quote TYPE i.
    DATA name TYPE string.
    DATA msg TYPE string.
    CREATE OBJECT parser.
    parser->input = text.
    WHILE i < strlen( text ).
      start = i.
      WHILE jswhite( parser->at( i ) ) = abap_true.
        i = i + 1.
      ENDWHILE.
      spaces = i - start.
      IF i >= strlen( text ).
        EXIT.
      ENDIF.
      IF parser->at( i ) = 61.
        i = i + 1.
        CONTINUE.
      ENDIF.
      name_start_pos = i.
      WHILE i < strlen( text ) AND jswhite( parser->at( i ) ) = abap_false AND parser->at( i ) <> 61.
        i = i + 1.
      ENDWHILE.
      name = parser->cut( start = name_start_pos finish = i ).
      after_name = i.
      WHILE jswhite( parser->at( i ) ) = abap_true.
        i = i + 1.
      ENDWHILE.
      equal = abap_false.
      IF parser->at( i ) = 61.
        equal = abap_true.
        i = i + 1.
      ELSE.
        i = after_name.
      ENDIF.
      after_equal = i.
      WHILE jswhite( parser->at( i ) ) = abap_true.
        i = i + 1.
      ENDWHILE.
      quote = parser->at( i ).
      value = abap_false.
      IF quote = 34 OR quote = 39.
        j = i + 1.
        WHILE j < strlen( text ) AND parser->at( j ) <> quote.
          j = j + 1.
        ENDWHILE.
        IF j < strlen( text ).
          value = abap_true.
          i = j + 1.
        ELSE.
          i = after_equal.
        ENDIF.
      ELSE.
        i = after_equal.
      ENDIF.
      CLEAR msg.
      IF spaces = 0.
        CONCATENATE 'Attribute ''' name ''' has no space in starting.' INTO msg.
      ELSEIF equal = abap_true AND value = abap_false.
        CONCATENATE 'Attribute ''' name ''' is without value.' INTO msg.
      ELSEIF equal = abap_false.
        CONCATENATE 'boolean attribute ''' name ''' is not allowed.' INTO msg.
      ELSEIF valid_name( name ) = abap_false.
        CONCATENATE 'Attribute ''' name ''' is an invalid name.' INTO msg.
      ELSE.
        READ TABLE names WITH TABLE KEY table_line = name TRANSPORTING NO FIELDS.
        IF sy-subrc = 0.
          CONCATENATE 'Attribute ''' name ''' is repeated.' INTO msg.
        ENDIF.
      ENDIF.
      IF msg IS NOT INITIAL.
        result = failure( code = 'InvalidAttr' msg = msg idx = offset + name_start_pos ).
        RETURN.
      ENDIF.
      INSERT name INTO TABLE names.
    ENDWHILE.
  ENDMETHOD.

  METHOD scan.
    DATA tags TYPE tags_type.
    DATA opened TYPE open_tag.
    DATA found TYPE abap_bool.
    DATA root TYPE abap_bool.
    DATA closing TYPE abap_bool.
    DATA closed TYPE abap_bool.
    DATA tag_start TYPE i.
    DATA start TYPE i.
    DATA attr_start TYPE i.
    DATA quote TYPE i.
    DATA c TYPE i.
    DATA last TYPE i.
    DATA saved TYPE i.
    DATA after TYPE i.
    DATA ln TYPE i.
    DATA col TYPE i.
    DATA ln_text TYPE string.
    DATA col_text TYPE string.
    DATA name TYPE string.
    DATA attributes TYPE string.
    DATA msg TYPE string.
    DATA names TYPE string.
    DATA escaped TYPE string.
    DATA ch TYPE string.
    WHILE cursor < strlen( input ).
      IF at( cursor ) = 60 AND at( cursor + 1 ) = 63.
        cursor = cursor + 2.
        pi( ).
        IF problem IS BOUND.
          result = problem.
          RETURN.
        ENDIF.
      ELSEIF at( cursor ) = 60.
        tag_start = cursor.
        cursor = cursor + 1.
        IF at( cursor ) = 33.
          comment( ).
          cursor = cursor + 1.
          CONTINUE.
        ENDIF.
        closing = abap_false.
        IF at( cursor ) = 47.
          closing = abap_true.
          cursor = cursor + 1.
        ENDIF.
        start = cursor.
        WHILE cursor < strlen( input ) AND at( cursor ) <> 62 AND white( at( cursor ) ) = abap_false.
          cursor = cursor + 1.
        ENDWHILE.
        name = trimmed( cut( start = start finish = cursor ) ).
        last = strlen( name ) - 1.
        IF last >= 0 AND name+last(1) = '/'.
          name = name(last).
          cursor = cursor - 1.
        ENDIF.
        IF valid_name( name ) = abap_false.
          CONCATENATE 'Tag ''' name ''' is an invalid name.' INTO msg.
          IF trimmed( name ) IS INITIAL.
            msg = 'Invalid space after ''<''.'.
          ENDIF.
          result = failure( code = 'InvalidTag' msg = msg idx = cursor ).
          RETURN.
        ENDIF.
        attr_start = cursor.
        quote = 0.
        closed = abap_false.
        WHILE cursor < strlen( input ).
          c = at( cursor ).
          IF c = 34 OR c = 39.
            IF quote = 0.
              quote = c.
            ELSEIF quote = c.
              quote = 0.
            ENDIF.
          ELSEIF c = 62 AND quote = 0.
            closed = abap_true.
            EXIT.
          ENDIF.
          cursor = cursor + 1.
        ENDWHILE.
        IF quote <> 0.
          CONCATENATE 'Attributes for ''' name ''' have open quote.' INTO msg.
          result = failure( code = 'InvalidAttr' msg = msg idx = attr_start ).
          RETURN.
        ENDIF.
        attributes = cut( start = attr_start finish = cursor ).
        last = strlen( attributes ) - 1.
        IF last >= 0 AND attributes+last(1) = '/'.
          attributes = attributes(last).
          result = attrs( text = attributes offset = attr_start ).
          IF result IS BOUND.
            RETURN.
          ENDIF.
          found = abap_true.
        ELSEIF closing = abap_true.
          IF closed = abap_false.
            CONCATENATE 'Closing tag ''' name ''' doesn''t have proper closing.' INTO msg.
            result = failure( code = 'InvalidTag' msg = msg idx = cursor ).
            RETURN.
          ENDIF.
          IF trimmed( attributes ) IS NOT INITIAL.
            CONCATENATE 'Closing tag ''' name ''' can''t have attributes or invalid starting.' INTO msg.
            result = failure( code = 'InvalidTag' msg = msg idx = tag_start ).
            RETURN.
          ENDIF.
          last = lines( tags ).
          IF last = 0.
            CONCATENATE 'Closing tag ''' name ''' has not been opened.' INTO msg.
            result = failure( code = 'InvalidTag' msg = msg idx = tag_start ).
            RETURN.
          ENDIF.
          READ TABLE tags INDEX last INTO opened.
          DELETE tags INDEX last.
          IF name <> opened-name.
            position( EXPORTING idx = opened-pos IMPORTING ln = ln col = col ).
            ln_text = ln.
            col_text = col.
            CONDENSE ln_text.
            CONDENSE col_text.
            CONCATENATE 'Expected closing tag ''' opened-name ''' (opened in line ' ln_text ', col ' col_text
            ') instead of closing tag ''' name '''.' INTO msg RESPECTING BLANKS.
            result = failure( code = 'InvalidTag' msg = msg idx = tag_start ).
            RETURN.
          ENDIF.
          IF lines( tags ) = 0.
            root = abap_true.
          ENDIF.
        ELSE.
          result = attrs( text = attributes offset = attr_start ).
          IF result IS BOUND.
            RETURN.
          ENDIF.
          IF root = abap_true.
            result = failure( code = 'InvalidXml' msg = 'Multiple possible root nodes found.' idx = cursor ).
            RETURN.
          ENDIF.
          opened-name = name.
          opened-pos = tag_start.
          APPEND opened TO tags.
          found = abap_true.
        ENDIF.
        cursor = cursor + 1.
        WHILE cursor < strlen( input ).
          IF at( cursor ) = 60.
            IF at( cursor + 1 ) = 33.
              cursor = cursor + 1.
              comment( ).
              cursor = cursor + 1.
              CONTINUE.
            ELSEIF at( cursor + 1 ) = 63.
              cursor = cursor + 1.
              pi( ).
              IF problem IS BOUND.
                result = problem.
                RETURN.
              ENDIF.
            ELSE.
              EXIT.
            ENDIF.
          ELSEIF at( cursor ) = 38.
            saved = cursor.
            after = amp( ).
            IF after = -1.
              result = failure( code = 'InvalidChar' msg = 'char ''&'' is not expected.' idx = saved ).
              RETURN.
            ENDIF.
            cursor = after.
          ELSEIF root = abap_true AND white( at( cursor ) ) = abap_false.
            result = failure( code = 'InvalidXml' msg = 'Extra text at the end' idx = cursor ).
            RETURN.
          ENDIF.
          cursor = cursor + 1.
        ENDWHILE.
        IF at( cursor ) = 60.
          cursor = cursor - 1.
        ENDIF.
      ELSEIF white( at( cursor ) ) = abap_false.
        ch = input+cursor(1).
        CONCATENATE 'char ''' ch ''' is not expected.' INTO msg RESPECTING BLANKS.
        result = failure( code = 'InvalidChar' msg = msg idx = cursor ).
        RETURN.
      ENDIF.
      cursor = cursor + 1.
    ENDWHILE.
    IF found = abap_false.
      result = error( code = 'InvalidXml' msg = 'Start tag expected.' ln = 1 col = 0 ).
      RETURN.
    ENDIF.
    IF lines( tags ) = 1.
      READ TABLE tags INDEX 1 INTO opened.
      CONCATENATE 'Unclosed tag ''' opened-name '''.' INTO msg.
      result = failure( code = 'InvalidTag' msg = msg idx = opened-pos ).
      RETURN.
    ENDIF.
    IF lines( tags ) > 0.
      LOOP AT tags INTO opened.
        escaped = opened-name.
        REPLACE ALL OCCURRENCES OF '\' IN escaped WITH '\\'.
        REPLACE ALL OCCURRENCES OF '"' IN escaped WITH '\"'.
        IF names IS NOT INITIAL.
          CONCATENATE names ',' INTO names RESPECTING BLANKS.
        ENDIF.
        CONCATENATE names '    "' escaped '"' INTO names RESPECTING BLANKS.
      ENDLOOP.
      CONCATENATE 'Invalid ''[' names ']'' found.' INTO msg RESPECTING BLANKS.
      result = error( code = 'InvalidXml' msg = msg ln = 1 col = 1 ).
      RETURN.
    ENDIF.
    CREATE OBJECT result.
    result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
    result->bval = abap_true.
  ENDMETHOD.
ENDCLASS.
