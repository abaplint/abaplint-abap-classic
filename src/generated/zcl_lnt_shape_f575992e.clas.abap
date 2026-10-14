* TS: src/objects/view.ts:14:23 shape.2747f3cb6604729913a3f65b283412de22db494298addfb07ae01b9e038f7091
CLASS zcl_lnt_shape_f575992e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA viewclass TYPE string.
    DATA ddtext_87ee TYPE string.
    METHODS constructor IMPORTING i_viewclass TYPE string i_ddtext_4f13 TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_f575992e IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_viewclass.
    DATA(t2) = i_ddtext_4f13.
    DATA(t3) = t1.
    me->viewclass = t3.
    DATA(t4) = t2.
    me->ddtext_87ee = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1810_5457c57606cc.
  ENDMETHOD.
ENDCLASS.
