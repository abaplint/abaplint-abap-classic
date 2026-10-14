* TS: src/objects/_iobject.ts:18:1 IParseResult
CLASS zcl_lnt_iparse_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA updated TYPE abap_bool.
    DATA runtime TYPE int8.
    DATA runtime_extra TYPE REF TO zcl_lnt_shape_8fc6df03.
    METHODS constructor IMPORTING i_updated TYPE abap_bool i_runtime TYPE int8 i_runtime_extra TYPE REF TO zcl_lnt_shape_8fc6df03 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iparse_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_updated.
    DATA(t2) = i_runtime.
    DATA(t3) = i_runtime_extra.
    DATA(t4) = t1.
    me->updated = t4.
    DATA(t5) = t2.
    me->runtime = t5.
    DATA(t6) = t3.
    me->runtime_extra = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1088_7215c406d22f.
  ENDMETHOD.
ENDCLASS.
