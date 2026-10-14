* TS: src/abap/types/_type_definitions.ts:5:1 TypeDefinitionsEntry
CLASS zcl_lnt_type_definitions_entry DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE REF TO zcl_lnt_typed_identifier.
    DATA visibility TYPE int8.
    METHODS constructor IMPORTING i_type_9913 TYPE REF TO zcl_lnt_typed_identifier i_visibility_5c1f TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_definitions_entry IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = CAST zcl_lnt_typed_identifier( t1 ).
    me->type_cba0 = t3.
    DATA(t4) = t2.
    me->visibility = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1729_0f0eeef52efb.
  ENDMETHOD.
ENDCLASS.
