* TS: src/objects/message_class.ts:9:22 shape.6be70910bc78606319e3c0d3635b9fa2886522706a55e71f3817baf856ac3f60
CLASS zcl_lnt_shape_227b5226 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA number TYPE string.
    DATA text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_language TYPE string i_number TYPE string i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_227b5226 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = i_number.
    DATA(t3) = i_text.
    DATA(t4) = t1.
    me->language = t4.
    DATA(t5) = t2.
    me->number = t5.
    DATA(t6) = t3.
    me->text = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1797_9dbe8effd32f.
  ENDMETHOD.
ENDCLASS.
