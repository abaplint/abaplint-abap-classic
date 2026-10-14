* TS: src/objects/mime_object.ts:5:22 shape.0806b5a722c1d9c810ac44b600735b5798d57f9069e880b4bcb897f995413bce
CLASS zcl_lnt_shape_c0acc5f0 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA url_a050 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA class_be97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA folder_6de9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_url_de75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_class_e01a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_folder_0010 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c0acc5f0 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_url_de75 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_class_e01a ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_folder_0010 ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->url_a050 = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->class_be97 = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->folder_6de9 = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1799_ee0244e96652.
  ENDMETHOD.
ENDCLASS.
