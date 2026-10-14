* TS: src/objects/cds_metadata_extension.ts:6:1 ParsedMetadataExtension
CLASS zcl_lnt_prsd_mtdt_extnsn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA tree TYPE REF TO zcl_lnt_expression_node.
    METHODS constructor IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prsd_mtdt_extnsn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA(t2) = CAST zcl_lnt_expression_node( t1 ).
    me->tree = t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1778_b2d3aee25f3a.
  ENDMETHOD.
ENDCLASS.
