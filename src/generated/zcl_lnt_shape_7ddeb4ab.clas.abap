* TS: src/rules/unknown_types.ts:142:56 shape.3252f9cd3004b6f12c96891bc849efffa3aab20a840206cfbd8235ce1862e1ba
CLASS zcl_lnt_shape_7ddeb4ab DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA id TYPE REF TO zcl_lnt_fi_identifier.
    DATA found TYPE string.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier OPTIONAL i_found TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_7ddeb4ab IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_id.
    DATA(t2) = i_found.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t4) = t1.
    t3 = t4.
    me->id = t3.
    DATA(t5) = t2.
    me->found = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1824_62567769f157.
  ENDMETHOD.
ENDCLASS.
