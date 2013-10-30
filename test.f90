program saxpy

    !use m_papi_wrap

    implicit none

    interface
        subroutine test(n, s) &
            bind (c, name='test_ftn')
                use, intrinsic :: iso_c_binding
                integer(c_int), value, intent(in) :: n
                integer(c_int), intent(out)       :: s
        end subroutine test
    end interface

    ! variables
    integer :: output, input

    input = 50
    call test(input,output)

    print *, 'external : sum is', output

end program saxpy

