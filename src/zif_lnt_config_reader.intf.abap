INTERFACE zif_lnt_config_reader PUBLIC.
  TYPES:
    BEGIN OF ty_syntax,
      version         TYPE string,
      error_namespace TYPE string,
    END OF ty_syntax.

  "! Reads the syntax settings for an object, initial fields keep the default
  METHODS read
    IMPORTING
      iv_object_type   TYPE csequence
      iv_object_name   TYPE csequence
    RETURNING
      VALUE(rs_syntax) TYPE ty_syntax.
ENDINTERFACE.
