* Reads objects as abapGit style files. The class serialization is ported from
* ZCL_ABAPGIT_OO_SERIALIZER, https://github.com/abapGit/abapGit, MIT License
CLASS zcl_lnt_source_reader DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_source_reader.

  PRIVATE SECTION.
    CONSTANTS:
      BEGIN OF c_include,
        locals_def  TYPE c LENGTH 5 VALUE 'CCDEF',
        locals_imp  TYPE c LENGTH 5 VALUE 'CCIMP',
        macros      TYPE c LENGTH 5 VALUE 'CCMAC',
        testclasses TYPE c LENGTH 5 VALUE 'CCAU',
        public      TYPE c LENGTH 5 VALUE 'CU',
        protected   TYPE c LENGTH 5 VALUE 'CO',
        private     TYPE c LENGTH 5 VALUE 'CI',
        interface   TYPE c LENGTH 5 VALUE 'IU',
      END OF c_include.

    METHODS read_prog
      IMPORTING
        iv_name     TYPE csequence
      CHANGING
        ct_files    TYPE zif_lnt_source_reader=>ty_files
        ct_line_map TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS read_clas
      IMPORTING
        iv_name     TYPE csequence
      CHANGING
        ct_files    TYPE zif_lnt_source_reader=>ty_files
        ct_line_map TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS read_intf
      IMPORTING
        iv_name     TYPE csequence
      CHANGING
        ct_files    TYPE zif_lnt_source_reader=>ty_files
        ct_line_map TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS read_fugr
      IMPORTING
        iv_name     TYPE csequence
      CHANGING
        ct_files    TYPE zif_lnt_source_reader=>ty_files
        ct_line_map TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS read_clif_source
      IMPORTING
        iv_name          TYPE csequence
      RETURNING
        VALUE(rt_source) TYPE string_table.

    "! Returns the source, empty if the program does not exist
    METHODS read_report
      IMPORTING
        iv_program TYPE csequence
      EXPORTING
        et_source  TYPE string_table
        ev_found   TYPE abap_bool.

    METHODS read_class_include
      IMPORTING
        iv_class_name    TYPE csequence
        iv_suffix        TYPE csequence
      RETURNING
        VALUE(rt_source) TYPE string_table.

    "! Adds a file that maps 1:1 to one include
    METHODS add_file
      IMPORTING
        iv_filename TYPE string
        iv_include  TYPE csequence
        it_source   TYPE string_table
      CHANGING
        ct_files    TYPE zif_lnt_source_reader=>ty_files
        ct_line_map TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS map_clif_source
      IMPORTING
        iv_filename        TYPE string
        iv_class_name      TYPE csequence
        it_source          TYPE string_table
      RETURNING
        VALUE(rt_line_map) TYPE zif_lnt_source_reader=>ty_line_maps.

    METHODS find_includes
      IMPORTING
        it_source          TYPE string_table
        iv_prefix          TYPE csequence
      RETURNING
        VALUE(rt_includes) TYPE string_table.

    CLASS-METHODS to_filename
      IMPORTING
        iv_name            TYPE csequence
        iv_extension       TYPE csequence
      RETURNING
        VALUE(rv_filename) TYPE string.

    CLASS-METHODS class_include
      IMPORTING
        iv_class_name     TYPE csequence
        iv_suffix         TYPE csequence
      RETURNING
        VALUE(rv_include) TYPE progname.

    CLASS-METHODS reduce
      CHANGING
        ct_source TYPE string_table.

    CLASS-METHODS calculate_skip_testclass
      IMPORTING
        it_source                TYPE string_table
      RETURNING
        VALUE(rv_skip_testclass) TYPE abap_bool.
ENDCLASS.

CLASS zcl_lnt_source_reader IMPLEMENTATION.
  METHOD zif_lnt_source_reader~read.
    CLEAR et_files.
    CLEAR et_line_map.

    CASE iv_object_type.
      WHEN 'PROG'.
        read_prog(
          EXPORTING
            iv_name     = iv_object_name
          CHANGING
            ct_files    = et_files
            ct_line_map = et_line_map ).
      WHEN 'CLAS'.
        read_clas(
          EXPORTING
            iv_name     = iv_object_name
          CHANGING
            ct_files    = et_files
            ct_line_map = et_line_map ).
      WHEN 'INTF'.
        read_intf(
          EXPORTING
            iv_name     = iv_object_name
          CHANGING
            ct_files    = et_files
            ct_line_map = et_line_map ).
      WHEN 'FUGR'.
        read_fugr(
          EXPORTING
            iv_name     = iv_object_name
          CHANGING
            ct_files    = et_files
            ct_line_map = et_line_map ).
    ENDCASE.
  ENDMETHOD.

  METHOD read_prog.
    DATA lt_source TYPE string_table.
    DATA lv_found TYPE abap_bool.

    read_report(
      EXPORTING
        iv_program = iv_name
      IMPORTING
        et_source  = lt_source
        ev_found   = lv_found ).
    IF lv_found = abap_false.
      RETURN.
    ENDIF.

    add_file(
      EXPORTING
        iv_filename = to_filename( iv_name = iv_name iv_extension = 'prog.abap' )
        iv_include  = to_upper( iv_name )
        it_source   = lt_source
      CHANGING
        ct_files    = ct_files
        ct_line_map = ct_line_map ).
  ENDMETHOD.

  METHOD read_clas.
    DATA lt_source TYPE string_table.

    lt_source = read_clif_source( iv_name ).
    IF lt_source IS INITIAL.
      RETURN.
    ENDIF.

    DATA(lv_filename) = to_filename( iv_name = iv_name iv_extension = 'clas.abap' ).
    INSERT VALUE #( filename = lv_filename source = lt_source ) INTO TABLE ct_files.
    INSERT LINES OF map_clif_source(
      iv_filename   = lv_filename
      iv_class_name = iv_name
      it_source     = lt_source ) INTO TABLE ct_line_map.

    lt_source = read_class_include( iv_class_name = iv_name iv_suffix = c_include-locals_def ).
    reduce( CHANGING ct_source = lt_source ).
    IF lt_source IS NOT INITIAL.
      add_file(
        EXPORTING
          iv_filename = to_filename( iv_name = iv_name iv_extension = 'clas.locals_def.abap' )
          iv_include  = class_include( iv_class_name = iv_name iv_suffix = c_include-locals_def )
          it_source   = lt_source
        CHANGING
          ct_files    = ct_files
          ct_line_map = ct_line_map ).
    ENDIF.

    lt_source = read_class_include( iv_class_name = iv_name iv_suffix = c_include-locals_imp ).
    reduce( CHANGING ct_source = lt_source ).
    IF lt_source IS NOT INITIAL.
      add_file(
        EXPORTING
          iv_filename = to_filename( iv_name = iv_name iv_extension = 'clas.locals_imp.abap' )
          iv_include  = class_include( iv_class_name = iv_name iv_suffix = c_include-locals_imp )
          it_source   = lt_source
        CHANGING
          ct_files    = ct_files
          ct_line_map = ct_line_map ).
    ENDIF.

    lt_source = read_class_include( iv_class_name = iv_name iv_suffix = c_include-macros ).
    reduce( CHANGING ct_source = lt_source ).
    IF lt_source IS NOT INITIAL.
      add_file(
        EXPORTING
          iv_filename = to_filename( iv_name = iv_name iv_extension = 'clas.macros.abap' )
          iv_include  = class_include( iv_class_name = iv_name iv_suffix = c_include-macros )
          it_source   = lt_source
        CHANGING
          ct_files    = ct_files
          ct_line_map = ct_line_map ).
    ENDIF.

* abapGit first checks WITH_UNIT_TESTS via SEO_CLIF_GET, here a missing include is skipped instead
    lt_source = read_class_include( iv_class_name = iv_name iv_suffix = c_include-testclasses ).
    IF calculate_skip_testclass( lt_source ) = abap_false.
      add_file(
        EXPORTING
          iv_filename = to_filename( iv_name = iv_name iv_extension = 'clas.testclasses.abap' )
          iv_include  = class_include( iv_class_name = iv_name iv_suffix = c_include-testclasses )
          it_source   = lt_source
        CHANGING
          ct_files    = ct_files
          ct_line_map = ct_line_map ).
    ENDIF.
  ENDMETHOD.

  METHOD read_intf.
    DATA(lt_source) = read_clif_source( iv_name ).
    IF lt_source IS INITIAL.
      RETURN.
    ENDIF.

    add_file(
      EXPORTING
        iv_filename = to_filename( iv_name = iv_name iv_extension = 'intf.abap' )
        iv_include  = class_include( iv_class_name = iv_name iv_suffix = c_include-interface )
        it_source   = lt_source
      CHANGING
        ct_files    = ct_files
        ct_line_map = ct_line_map ).
  ENDMETHOD.

  METHOD read_fugr.
    DATA lt_source TYPE string_table.
    DATA lt_queue TYPE string_table.
    DATA lv_found TYPE abap_bool.
    DATA lv_namespace TYPE string.
    DATA lv_group TYPE string.
    DATA lv_index TYPE i.

    lv_group = to_upper( iv_name ).
    IF lv_group CP '/*/*'.
      FIND REGEX '^(/[^/]+/)(.+)$' IN lv_group SUBMATCHES lv_namespace lv_group.
    ENDIF.

    DATA(lv_prefix) = |{ lv_namespace }L{ lv_group }|.
    INSERT |{ lv_namespace }SAPL{ lv_group }| INTO TABLE lt_queue.

* the main program includes the TOP and UXX includes, which include the rest,
* so follow the INCLUDE statements instead of calling RS_GET_ALL_INCLUDES
    WHILE lv_index < lines( lt_queue ).
      lv_index = lv_index + 1.
      READ TABLE lt_queue INDEX lv_index INTO DATA(lv_include).
      read_report(
        EXPORTING
          iv_program = lv_include
        IMPORTING
          et_source  = lt_source
          ev_found   = lv_found ).
      IF lv_found = abap_false.
        CONTINUE.
      ENDIF.

      add_file(
        EXPORTING
          iv_filename = to_filename( iv_name = iv_name iv_extension = |fugr.{ to_filename( iv_name = lv_include iv_extension = 'abap' ) }| )
          iv_include  = lv_include
          it_source   = lt_source
        CHANGING
          ct_files    = ct_files
          ct_line_map = ct_line_map ).

      LOOP AT find_includes( it_source = lt_source iv_prefix = lv_prefix ) INTO DATA(lv_found_include).
        READ TABLE lt_queue WITH KEY table_line = lv_found_include TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          INSERT lv_found_include INTO TABLE lt_queue.
        ENDIF.
      ENDLOOP.
    ENDWHILE.
  ENDMETHOD.

  METHOD find_includes.
    DATA lv_first TYPE string.
    DATA lv_second TYPE string.
    DATA lv_rest TYPE string.

    LOOP AT it_source INTO DATA(lv_line).
      DATA(lv_upper) = to_upper( condense( lv_line ) ).
      SPLIT lv_upper AT space INTO lv_first lv_second lv_rest.
      IF lv_first <> 'INCLUDE' OR lv_second = 'STRUCTURE' OR lv_second = 'TYPE'.
        CONTINUE.
      ENDIF.

      lv_second = replace( val = lv_second regex = '[.,]$' with = `` ).
      IF lv_second CP |{ iv_prefix }*|.
        INSERT lv_second INTO TABLE rt_includes.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD read_clif_source.
    DATA lv_name TYPE c LENGTH 30.

    lv_name = to_upper( iv_name ).
    TRY.
* abapGit also passes VERSION = 'A', it is not available in open-abap
        cl_oo_factory=>create_instance( )->create_clif_source( lv_name )->get_source( IMPORTING source = rt_source ).
      CATCH cx_oo_clif_not_exists.
        CLEAR rt_source.
    ENDTRY.
  ENDMETHOD.

  METHOD read_report.
    DATA lv_program TYPE progname.

    lv_program = to_upper( iv_program ).
    READ REPORT lv_program INTO et_source.
    ev_found = xsdbool( sy-subrc = 0 ).
    IF ev_found = abap_false.
      CLEAR et_source.
    ENDIF.
  ENDMETHOD.

  METHOD read_class_include.
* a missing include is not an error, sometimes the CCDEF include does not exist
    read_report(
      EXPORTING
        iv_program = class_include( iv_class_name = iv_class_name iv_suffix = iv_suffix )
      IMPORTING
        et_source  = rt_source ).
  ENDMETHOD.

  METHOD add_file.
    INSERT VALUE #(
      filename = iv_filename
      source   = it_source ) INTO TABLE ct_files.
    INSERT VALUE #(
      filename  = iv_filename
      from_row  = 1
      to_row    = lines( it_source )
      include   = iv_include
      first_row = 1 ) INTO TABLE ct_line_map.
  ENDMETHOD.

  METHOD map_clif_source.
* the definition maps to the CU, CO and CI includes by section. The rest, including
* the method implementations, is left unmapped and reported on the CU include
    DATA lv_first TYPE string.
    DATA lv_second TYPE string.
    DATA lv_rest TYPE string.
    DATA ls_map TYPE zif_lnt_source_reader=>ty_line_map.
    DATA lv_in_definition TYPE abap_bool.

    LOOP AT it_source INTO DATA(lv_line).
      DATA(lv_row) = sy-tabix.
      DATA(lv_upper) = to_upper( condense( lv_line ) ).
      SPLIT lv_upper AT space INTO lv_first lv_second lv_rest.

      IF lv_in_definition = abap_true.
        IF ( lv_first = 'PROTECTED' OR lv_first = 'PRIVATE' ) AND lv_second CP 'SECTION*'.
          ls_map-to_row = lv_row - 1.
          INSERT ls_map INTO TABLE rt_line_map.
          ls_map-from_row = lv_row.
          IF lv_first = 'PROTECTED'.
            ls_map-include = class_include( iv_class_name = iv_class_name iv_suffix = c_include-protected ).
          ELSE.
            ls_map-include = class_include( iv_class_name = iv_class_name iv_suffix = c_include-private ).
          ENDIF.
        ELSEIF lv_first CP 'ENDCLASS*'.
          ls_map-to_row = lv_row.
          INSERT ls_map INTO TABLE rt_line_map.
          RETURN.
        ENDIF.
      ELSEIF lv_first = 'CLASS' AND lv_upper NS ' IMPLEMENTATION'.
        lv_in_definition = abap_true.
        ls_map-filename = iv_filename.
        ls_map-from_row = lv_row.
        ls_map-first_row = 1.
        ls_map-include = class_include( iv_class_name = iv_class_name iv_suffix = c_include-public ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD to_filename.
    rv_filename = replace(
      val  = to_lower( iv_name )
      sub  = '/'
      with = '#'
      occ  = 0 ).
    rv_filename = |{ rv_filename }.{ iv_extension }|.
  ENDMETHOD.

  METHOD class_include.
    DATA lv_root TYPE c LENGTH 30.

    lv_root = to_upper( iv_class_name ).
    TRANSLATE lv_root USING ' ='.
    rv_include = |{ lv_root }{ iv_suffix }|.
  ENDMETHOD.

  METHOD reduce.
    DATA lv_found TYPE abap_bool.

* skip files that only contain the standard comments
    LOOP AT ct_source INTO DATA(lv_source).
      IF strlen( lv_source ) >= 3 AND lv_source(3) <> '*"*'.
        lv_found = abap_true.
      ENDIF.
    ENDLOOP.
    IF lv_found = abap_false.
      CLEAR ct_source.
    ENDIF.
  ENDMETHOD.

  METHOD calculate_skip_testclass.
    DATA lv_line1 TYPE string.
    DATA lv_line2 TYPE string.

* when creating classes in Eclipse it automatically generates the
* testclass include, but it is not needed
    rv_skip_testclass = abap_false.
    IF lines( it_source ) = 2.
      READ TABLE it_source INDEX 1 INTO lv_line1.
      READ TABLE it_source INDEX 2 INTO lv_line2.
      IF strlen( lv_line1 ) >= 3 AND lv_line1(3) = '*"*' AND lv_line2 IS INITIAL.
        rv_skip_testclass = abap_true.
      ENDIF.
    ELSEIF lines( it_source ) = 1.
      READ TABLE it_source INDEX 1 INTO lv_line1.
      IF lv_line1 IS INITIAL
          OR ( strlen( lv_line1 ) >= 3 AND lv_line1(3) = '*"*' )
          OR ( strlen( lv_line1 ) = 1 AND lv_line1(1) = '*' ).
        rv_skip_testclass = abap_true.
      ENDIF.
    ELSEIF lines( it_source ) = 0.
      rv_skip_testclass = abap_true.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
