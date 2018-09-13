MODULE kinds
	IMPLICIT NONE
	SAVE
	INTEGER, PARAMETER :: DPF = selected_real_kind(14,200)
      	INTEGER, PARAMETER :: PIN = selected_int_kind(9)

	PRIVATE
	PUBLIC :: DPF,PIN

END MODULE kinds
