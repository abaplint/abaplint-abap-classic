* TS: src/objects/message_class.ts:5:1 parsedMessageClass
CLASS zcl_lnt_parsed_message_class DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA top_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA parsed_messages TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_top_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_parsed_messages TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL
    i_texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsed_message_class IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_top_name ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_parsed_messages ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_texts_translations ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->top_name = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->description = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->parsed_messages = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->texts_translations = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1798_9e92ea464af3.
  ENDMETHOD.
ENDCLASS.
