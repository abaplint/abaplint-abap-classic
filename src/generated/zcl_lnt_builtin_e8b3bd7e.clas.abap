CLASS zcl_lnt_builtin_e8b3bd7e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA message_25cb TYPE string.
    METHODS constructor IMPORTING i_message_26cb TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_builtin_e8b3bd7e IMPLEMENTATION.
  METHOD constructor.
    IF i_message_26cb IS BOUND.
      message_25cb = i_message_26cb->value.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = zlnt_runtime_desc_b425d82119de=>zlnt_member_d4_13543b5ca4726d.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.
ENDCLASS.
