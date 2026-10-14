* TS: src/issue.ts:15:1 IIssueData
CLASS zcl_lnt_iissue_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA filename TYPE string.
    DATA message_25cb TYPE string.
    DATA key TYPE string.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    DATA severity TYPE string.
    DATA default_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_filename TYPE string i_message_26cb TYPE string i_key TYPE string i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position i_severity TYPE string i_default_fix TYPE REF TO
    zlnt_runtime_map__4fdf767b61ba OPTIONAL i_alternative_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iissue_data IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_key.
    DATA(t4) = i_start.
    DATA(t5) = i_end.
    DATA(t6) = i_severity.
    DATA(t7) = i_default_fix.
    DATA(t8) = i_alternative_fixes.
    DATA(t9) = t1.
    me->filename = t9.
    DATA(t10) = t2.
    me->message_25cb = t10.
    DATA(t11) = t3.
    me->key = t11.
    DATA(t12) = t4.
    me->start = t12.
    DATA(t13) = t5.
    me->end = t13.
    DATA(t14) = t6.
    me->severity = t14.
    DATA(t15) = t7.
    me->default_fix = t15.
    DATA(t16) = t8.
    me->alternative_fixes = t16.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1060_3f544f5e9b16.
  ENDMETHOD.
ENDCLASS.
