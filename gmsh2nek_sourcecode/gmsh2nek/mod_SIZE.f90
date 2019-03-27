module SIZE
!
!
! Gmsh msh file related variables:
!
      character(32)  mshname     ! MXSTLN=32 max string length in an exodus file
 
      integer totalNode,totalLine,totalQuad,totalHex,totalElem
      integer num_dim,num_elem
 
      real*8,save,allocatable,dimension(:,:)    ::node_xyz ! real data in msh binary file is 8 byte
      integer,save,allocatable,dimension(:,:)   ::node_quad,node_hex
      integer,save,allocatable,dimension(:,:)   ::quad_array,hex_array,hex_face_array
      integer,save,allocatable,dimension(:,:)   ::node_line
	  integer,save,allocatable,dimension(:,:)   ::line_array,quad_line_array
      integer,save,allocatable,dimension(:)     ::r_or_l ! for 2d msh quad elements, right-hand or left-hand 

!
!
! NEK CORE variables:
!
      real,save,allocatable,dimension(:,:,:)   ::  bc, curve
      real,save,allocatable,dimension(:,:,:,:) ::  xm1, ym1, zm1

      character(1),save,allocatable,dimension(:,:) :: ccurve
      character(3),save,allocatable,dimension(:,:) :: cbc

!
! .RE2 file related variables
!
      character*80   re2name

end module SIZE