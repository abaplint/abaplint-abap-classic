* TS: src/objects/rename/_object_renamer.ts:5:63 shape.94d83f699efa916383bff2627d6d760898715387ddbdf8085f08bc6088b76b2d
CLASS zcl_lnt_shape_99da29a3 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_73ba783d.
    DATA edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_73ba783d OPTIONAL i_edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_99da29a3 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_text_document.
    DATA(t2) = i_edits.
    DATA t3 TYPE REF TO zcl_lnt_shape_73ba783d.
    DATA(t4) = t1.
    t3 = t4.
    me->text_document = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t2.
    t5 = t6.
    me->edits = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1739_4a6499e40548.
  ENDMETHOD.
ENDCLASS.
