* TS: src/edit_helper.ts:14:1 ITextEdit
CLASS zcl_lnt_itext_edit DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_irange.
    DATA new_text TYPE string.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_irange i_new_text TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itext_edit IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_range.
    DATA(t2) = i_new_text.
    DATA(t3) = t1.
    me->range = t3.
    DATA(t4) = t2.
    me->new_text = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1055_4f73490952e8.
  ENDMETHOD.
ENDCLASS.
