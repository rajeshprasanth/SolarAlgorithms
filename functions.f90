FUNCTION daynum(month,day) result (daynumber)
	INTEGER, INTENT(IN) :: month,day
	INTEGER :: daynumber,temp=0
	!---------------------------------------------------------
	! JAN 01 31 0
	! FEB 02 28 31
	! MAR 03 31 59
	! APR 04 30 90
	! MAY 05 31 120
	! JUN 06 30 151
	! JUL 07 31 181
	! AUG 08 31 212
	! SEP 09 30 243
	! OCT 10 31 273
	! NOV 11 30 304
	! DEC 12 31 334
	!----------------------------------------------------------
	
	!==============!
	! January (31) !
	!==============!
	write(*,*)day,month
	
	IF ( month .eq. 1 ) THEN
		temp = day
		
	!===============!
	! Feburary (28) !
	!===============!
	
	ELSE IF ( month .eq. 2 ) THEN
		temp = 31 + day
		
	!============!
	! March (31) !
	!============!
		
	ELSE IF ( month .eq. 3 ) THEN
		temp = 59 + day
		
	!============!
	! April (30) !
	!============!
	
	
	ELSE IF ( month .eq. 4 ) THEN
		temp = 90 + day
		
	!==========!
	! May (31) !
	!==========!
	
	ELSE IF ( month .eq. 5 ) THEN
		temp = 120 + day
		
	!===========!
	! June (30) !
	!===========!
	
	ELSE IF ( month .eq. 6 ) THEN
		temp = 151 + day
		
	!===========!
	! July (31) !
	!===========!
	
	ELSE IF ( month .eq. 7 ) THEN
		temp = 181 + day
		
	!=============!
	! August (31) !
	!=============!
	
	ELSE IF ( month .eq. 8 ) THEN
		temp = 212 + day
		
	!================!
	! September (30) !
	!================!
	
	ELSE IF ( month .eq. 9 ) THEN
		temp =  243 + day
		
	!==============!
	! October (31) !
	!==============!
	
	ELSE IF ( month .eq. 10 ) THEN
		temp = 273 + day

	!===============!
	! November (30) !
	!===============!
	
	ELSE IF ( month .eq. 11 ) THEN
		temp = 304 + day
		
	!===============!
	! December (31) !
	!===============!
	ELSE 
		temp = 334 + day
		
	END IF
	daynumber = temp
	write(*,*)'------------------'
	write(*,*) daynumber
	write(*,*)'------------------'
	
END FUNCTION daynum


FUNCTION dayang(daynum) result (dayangle)

	USE constants
	
	INTEGER, INTENT(IN) :: daynum
	
	dayangle = (tpi/365)*(daynum -1)
	

END FUNCTION dayang
