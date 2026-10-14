* TS: src/abap/abap_parser.ts:13:1 IABAPParserResult
CLASS zcl_lnt_iabapparser_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA output TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA runtime TYPE int8.
    DATA runtime_extra TYPE REF TO zcl_lnt_shape_8fc6df03.
    METHODS constructor IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_output TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_runtime TYPE int8 i_runtime_extra TYPE REF TO zcl_lnt_shape_8fc6df03.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iabapparser_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_issues ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_output ).
    DATA(t3) = i_runtime.
    DATA(t4) = CAST zcl_lnt_shape_8fc6df03( i_runtime_extra ).
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->issues = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->output = t6.
    DATA(t7) = t3.
    me->runtime = t7.
    DATA(t8) = CAST zcl_lnt_shape_8fc6df03( t4 ).
    me->runtime_extra = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d977_c17389afda8f.
  ENDMETHOD.
ENDCLASS.
