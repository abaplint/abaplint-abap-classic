* TS: src/_imsag_references.ts:9:37 shape.26075853820ac3c29e636045eff99267436001784ab55247f897ecb68d257014
CLASS zcl_lnt_shape_08db6d95 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA message_class TYPE string.
    DATA number TYPE string.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token OPTIONAL i_message_class TYPE string i_number TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_08db6d95 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_message_class.
    DATA(t3) = i_number.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = CAST zcl_lnt_abstract_token( t1 ).
    t4 = t5.
    me->token = t4.
    DATA(t6) = t2.
    me->message_class = t6.
    DATA(t7) = t3.
    me->number = t7.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1726_219608ca0d7a.
  ENDMETHOD.
ENDCLASS.
