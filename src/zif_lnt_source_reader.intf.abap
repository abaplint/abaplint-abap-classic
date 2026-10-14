INTERFACE zif_lnt_source_reader PUBLIC.
  TYPES:
    BEGIN OF ty_file,
      filename TYPE string,
      source   TYPE string_table,
    END OF ty_file,
    ty_files TYPE STANDARD TABLE OF ty_file WITH EMPTY KEY,
    BEGIN OF ty_line_map,
      filename  TYPE string,
      from_row  TYPE i,
      to_row    TYPE i,
      include   TYPE progname,
      first_row TYPE i,
    END OF ty_line_map,
    ty_line_maps TYPE STANDARD TABLE OF ty_line_map WITH EMPTY KEY.

  "! Reads the source of an object as abapGit style files, plus a map from file rows to include rows
  METHODS read
    IMPORTING
      iv_object_type TYPE csequence
      iv_object_name TYPE csequence
    EXPORTING
      et_files       TYPE ty_files
      et_line_map    TYPE ty_line_maps.
ENDINTERFACE.
