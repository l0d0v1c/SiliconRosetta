program silicon_rosetta
  implicit none
  integer :: n, i, d
  character(len=20) :: world
  integer, dimension(5) :: numbers = (/ 3, 1, 4, 1, 5 /)
  ! no native dictionary

  n = 5
  world = "World"

  ! 4. Output
  print *, "Hello, ", trim(world)

  ! 5. Condition
  if (n > 3) then
     print *, "big"
  else if (n == 3) then
     print *, "medium"
  else
     print *, "small"
  end if

  ! 6. For
  do i = 1, 5
     print *, numbers(i) * 2
  end do

  ! 7. While
  do while (n > 0)
     n = n - 1
  end do

  ! 8. Recursion
  print *, factorial(5)

  ! 9. Manual check
  d = 0
  if (d == 0) then
     print *, "cannot divide"
  end if

contains
  ! 2. Function (recursion must be declared explicitly)
  recursive function factorial(k) result(res)
    integer, intent(in) :: k
    integer :: res
    if (k <= 1) then
       res = 1
    else
       res = k * factorial(k - 1)
    end if
  end function factorial
end program silicon_rosetta
