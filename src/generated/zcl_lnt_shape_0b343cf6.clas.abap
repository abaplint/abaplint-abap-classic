* TS: src/objects/extension_index.ts:4:22 shape.67ee59cfecab81de2a870969b1a90077b6cfa185c2e55cfead6c507576e300db
CLASS zcl_lnt_shape_0b343cf6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA sqltab TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddtext_d4ae TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_sqltab TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddtext_5aef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_0b343cf6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_sqltab ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddtext_5aef ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->sqltab = t3.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->ddtext_d4ae = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1788_e68bc2dcfb59.
  ENDMETHOD.
ENDCLASS.
