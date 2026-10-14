* TS: src/objects/_abap_object.ts:11:1 ITranslationTextElements
CLASS zcl_lnt_itrnsltn_txt_elmnts DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA text_elements TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    METHODS constructor IMPORTING i_language TYPE string i_text_elements TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itrnsltn_txt_elmnts IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = CAST zlnt_runtime_map__8bf596bf435b( i_text_elements ).
    DATA(t3) = t1.
    me->language = t3.
    DATA(t4) = CAST zlnt_runtime_map__8bf596bf435b( t2 ).
    me->text_elements = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
  ENDMETHOD.
ENDCLASS.
