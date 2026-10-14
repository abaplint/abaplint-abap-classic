* TS: src/objects/rename/_object_renamer.ts:5:63 shape.c5ef13dec902530484f5681e58cac0bae382e3593ad5bfe5a8e3bc0447dfe1d8
CLASS zcl_lnt_shape_fd0479b1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA changes TYPE REF TO zlnt_runtime_map__d22a98cdf7f9.
    DATA document_changes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA change_annotations TYPE REF TO zlnt_runtime_map__617ff131b0f3.
    METHODS constructor IMPORTING i_changes TYPE REF TO zlnt_runtime_map__d22a98cdf7f9 OPTIONAL i_document_changes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_change_annotations TYPE REF TO zlnt_runtime_map__617ff131b0f3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_fd0479b1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_map__d22a98cdf7f9( i_changes ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_document_changes ).
    DATA(t3) = CAST zlnt_runtime_map__617ff131b0f3( i_change_annotations ).
    DATA(t4) = CAST zlnt_runtime_map__d22a98cdf7f9( t1 ).
    me->changes = t4.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->document_changes = t5.
    DATA(t6) = CAST zlnt_runtime_map__617ff131b0f3( t3 ).
    me->change_annotations = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1741_511c41f5be73.
  ENDMETHOD.
ENDCLASS.
