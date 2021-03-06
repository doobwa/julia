## CHOLMOD

const _jl_CHOLMOD_TRUE  = int32(1)
const _jl_CHOLMOD_FALSE = int32(0)

# Types of systems to solve
const _jl_CHOLMOD_A    = int32(0)          # solve Ax=b 
const _jl_CHOLMOD_LDLt = int32(1)          # solve LDL'x=b 
const _jl_CHOLMOD_LD   = int32(2)          # solve LDx=b 
const _jl_CHOLMOD_DLt  = int32(3)          # solve DL'x=b 
const _jl_CHOLMOD_L    = int32(4)          # solve Lx=b 
const _jl_CHOLMOD_Lt   = int32(5)          # solve L'x=b 
const _jl_CHOLMOD_D    = int32(6)          # solve Dx=b 
const _jl_CHOLMOD_P    = int32(7)          # permute x=Px 
const _jl_CHOLMOD_Pt   = int32(8)          # permute x=P'x 

# itype defines the types of integer used:
const _jl_CHOLMOD_INT  = int32(0)  # all integer arrays are int 
const _jl_CHOLMOD_LONG = int32(2)  # all integer arrays are UF_long 

# dtype defines what the numerical type is (double or float):
const _jl_CHOLMOD_DOUBLE = int32(0)        # all numerical values are double 
const _jl_CHOLMOD_SINGLE = int32(1)        # all numerical values are float 

# xtype defines the kind of numerical values used:
const _jl_CHOLMOD_PATTERN = int32(0)       # pattern only, no numerical values 
const _jl_CHOLMOD_REAL    = int32(1)       # a real matrix 
const _jl_CHOLMOD_COMPLEX = int32(2)       # a complex matrix (ANSI C99 compatible) 
const _jl_CHOLMOD_ZOMPLEX = int32(3)       # a complex matrix (MATLAB compatible) 

# Definitions for cholmod_common: 
const _jl_CHOLMOD_MAXMETHODS = int32(9)    # maximum number of different methods that 
                                    # cholmod_analyze can try. Must be >= 9. 

# Common->status values.  zero means success, negative means a fatal error, positive is a warning. 
const _jl_CHOLMOD_OK            = int32(0)    # success 
const _jl_CHOLMOD_NOT_INSTALLED = int32(-1)   # failure: method not installed 
const _jl_CHOLMOD_OUT_OF_MEMORY = int32(-2)   # failure: out of memory 
const _jl_CHOLMOD_TOO_LARGE     = int32(-3)   # failure: integer overflow occured 
const _jl_CHOLMOD_INVALID       = int32(-4)   # failure: invalid input 
const _jl_CHOLMOD_NOT_POSDEF    = int32(1)    # warning: matrix not pos. def. 
const _jl_CHOLMOD_DSMALL        = int32(2)    # warning: D for LDL'  or diag(L) or LL' has tiny absolute value 

# ordering method (also used for L->ordering) 
const _jl_CHOLMOD_NATURAL = int32(0)     # use natural ordering 
const _jl_CHOLMOD_GIVEN   = int32(1)     # use given permutation 
const _jl_CHOLMOD_AMD     = int32(2)     # use minimum degree (AMD) 
const _jl_CHOLMOD_METIS   = int32(3)     # use METIS' nested dissection 
const _jl_CHOLMOD_NESDIS  = int32(4)     # use _jl_CHOLMOD's version of nested dissection:
                                         # node bisector applied recursively, followed
                                         # by constrained minimum degree (CSYMAMD or CCOLAMD) 
const _jl_CHOLMOD_COLAMD  = int32(5)     # use AMD for A, COLAMD for A*A' 

# POSTORDERED is not a method, but a result of natural ordering followed by a
# weighted postorder.  It is used for L->ordering, not method [ ].ordering. 
const _jl_CHOLMOD_POSTORDERED  = int32(6)   # natural ordering, postordered. 

# supernodal strategy (for Common->supernodal) 
const _jl_CHOLMOD_SIMPLICIAL = int32(0)    # always do simplicial 
const _jl_CHOLMOD_AUTO       = int32(1)    # select simpl/super depending on matrix 
const _jl_CHOLMOD_SUPERNODAL = int32(2)    # always do supernodal 

## UMFPACK

## Type of solve
const _jl_UMFPACK_A     =  0     # Ax=b
const _jl_UMFPACK_At    =  1     # A'x=b
const _jl_UMFPACK_Aat   =  2     # A.'x=b
const _jl_UMFPACK_Pt_L  =  3     # P'Lx=b
const _jl_UMFPACK_L     =  4     # Lx=b
const _jl_UMFPACK_Lt_P  =  5     # L'Px=b
const _jl_UMFPACK_Lat_P =  6     # L.'Px=b
const _jl_UMFPACK_Lt    =  7     # L'x=b
const _jl_UMFPACK_Lat   =  8     # L.'x=b
const _jl_UMFPACK_U_Qt  =  9     # UQ'x=b
const _jl_UMFPACK_U     =  10    # Ux=b
const _jl_UMFPACK_Q_Ut  =  11    # QU'x=b
const _jl_UMFPACK_Q_Uat =  12    # QU.'x=b
const _jl_UMFPACK_Ut    =  13    # U'x=b
const _jl_UMFPACK_Uat   =  14    # U.'x=b

## Sizes of Control and Info arrays for returning information from solver
const _jl_UMFPACK_INFO = 90
const _jl_UMFPACK_CONTROL = 20
const _jl_UMFPACK_PRL = 1

## Status codes
const _jl_UMFPACK_OK = 0
const _jl_UMFPACK_WARNING_singular_matrix       = 1
const _jl_UMFPACK_WARNING_determinant_underflow = 2
const _jl_UMFPACK_WARNING_determinant_overflow  = 3
const _jl_UMFPACK_ERROR_out_of_memory           = -1
const _jl_UMFPACK_ERROR_invalid_Numeric_object  = -3
const _jl_UMFPACK_ERROR_invalid_Symbolic_object = -4
const _jl_UMFPACK_ERROR_argument_missing        = -5
const _jl_UMFPACK_ERROR_n_nonpositive           = -6
const _jl_UMFPACK_ERROR_invalid_matrix          = -8
const _jl_UMFPACK_ERROR_different_pattern       = -11
const _jl_UMFPACK_ERROR_invalid_system          = -13
const _jl_UMFPACK_ERROR_invalid_permutation     = -15
const _jl_UMFPACK_ERROR_internal_error          = -911
const _jl_UMFPACK_ERROR_file_IO                 = -17
const _jl_UMFPACK_ERROR_ordering_failed         = -18
