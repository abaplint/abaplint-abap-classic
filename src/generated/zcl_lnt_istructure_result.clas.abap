* TS: src/abap/3_structures/structure_result.ts:4:1 IStructureResult
CLASS zcl_lnt_istructure_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA node TYPE REF TO zcl_lnt_structure_node.
    METHODS constructor IMPORTING i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_node TYPE REF TO zcl_lnt_structure_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_istructure_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_issues.
    DATA(t2) = i_node.
    DATA(t3) = t1.
    me->issues = t3.
    DATA(t4) = t2.
    me->node = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d671_886b1b61ddf9.
  ENDMETHOD.
ENDCLASS.
