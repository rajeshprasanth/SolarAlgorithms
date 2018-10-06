MODULE constants
	USE kinds, ONLY : DPF
	IMPLICIT NONE
	!
	SAVE
	!
	! ... Mathematical constants
	! 
	REAL(DPF), PARAMETER :: pi     = 3.14159265358979323846_DPF
	REAL(DPF), PARAMETER :: tpi    = 2.0_DPF * pi

END MODULE
