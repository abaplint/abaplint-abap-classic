* TS: src/utils/include_graph.ts:28:1 IVertex
CLASS zcl_lnt_ivertex DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA filename TYPE string.
    DATA include_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA include_3f11 TYPE abap_bool.
    METHODS constructor IMPORTING i_filename TYPE string i_include_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_include_cc4a TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ivertex IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_include_name ).
    DATA(t3) = i_include_cc4a.
    DATA(t4) = t1.
    me->filename = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->include_name = t5.
    DATA(t6) = t3.
    me->include_3f11 = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1691_2ce8767a6721.
  ENDMETHOD.
ENDCLASS.
