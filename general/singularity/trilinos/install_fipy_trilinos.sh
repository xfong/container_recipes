#!/bin/bash
SRCDIR=${TRILINOS_SRC}
ARCHDIR="/usr/local/trilinos/12.18.1"
FLAGS="-O3 -fPIC"
cmake \
-G "Unix Makefiles" \
-DCMAKE_C_COMPILER="$CC" \
-DCMAKE_CXX_COMPILER="$CXX" \
-DCMAKE_Fortran_COMPILER="$F77" \
-DCMAKE_CXX_FLAGS="-fPIC -g" \
-DCMAKE_C_FLAGS="$FLAGS" \
-DCMAKE_Fortran_FLAGS="$FLAGS" \
-DCMAKE_INSTALL_PREFIX="$ARCHDIR" \
-DCMAKE_MAKE_PROGRAM="make" \
-DTrilinos_ENABLE_OpenMP=OFF \
-DTrilinos_ENABLE_FLOAT=ON \
-DTrilinos_ENABLE_COMPLEX=ON \
-DTrilinos_ENABLE_CXX11=ON \
-DTPL_ENABLE_Pthread=ON \
-DTPL_Pthread_LIBRARIES="/usr/lib/x86_64-linux-gnu/libpthread.so" \
-DTPL_Pthread_INCLUDE_DIRS="/usr/include" \
-DTPL_DLlib_ENABLE=ON \
-DTPL_DLlib_LIBRARIES="/usr/lib/x86_64-linux-gnu/libdl.so" \
-DTPL_ENABLE_AMD=ON \
-DAMD_LIBRARY_DIRS="${SUITESPARSE_ROOT}/lib" \
-DTPL_AMD_INCLUDE_DIRS="${SUITESPARSE_ROOT}/include" \
-DTPL_ENABLE_UMFPACK=ON \
-DUMFPACK_LIBRARY_DIRS="${SUITESPARSE_ROOT}/lib" \
-DTPL_UMFPACK_INCLUDE_DIRS="${SUITESPARSE_ROOT}/include" \
-DTPL_ENABLE_MKL=ON \
-DMKL_LIBRARY_DIRS="${MKLROOT}/lib/intel64_lin" \
-DTPL_MKL_INCLUDE_DIRS="${MKLROOT}/include" \
-DTPL_ENABLE_TBB=OFF \
-DTPL_ENABLE_BLAS=ON \
-DTPL_BLAS_LIBRARIES="${MKLROOT}/lib/intel64/libmkl_rt.so" \
-DTPL_ENABLE_LAPACK=ON \
-DTPL_LAPACK_LIBRARIES="${MKLROOT}/lib/intel64/libmkl_rt.so" \
-DTPL_ENABLE_ParMETIS=ON \
-DParMETIS_INCLUDE_DIRS="${PARMETIS_ROOT}/include" \
-DTPL_ParMETIS_LIBRARIES="${PARMETIS_ROOT}/lib/libparmetis.so" \
-DTPL_ENABLE_MPI=ON \
-DMPI_BASE_DIR="$MPI_ROOT" \
-DMPI_EXEC="$MPI_ROOT/bin/mpiexec" \
-DTPL_ENABLE_CUDA=OFF \
-DTPL_ENABLE_Zlib=ON \
-DZlib_LIBRARY_DIRS="/usr/lib/x86_64-linux-gnu" \
-DTPL_Zlib_INCLUDE_DIRS="/usr/include" \
-DTPL_ENABLE_Boost=ON \
-DTPL_Boost_INCLUDE_DIRS="${LIBBOOST_ROOT}/include" \
-DBoost_LIBRARY_DIRS="${LIBBOOST_ROOT}/lib" \
-DTPL_ENABLE_BoostLib=ON \
-DTPL_BoostLib_INCLUDE_DIRS="${LIBBOOST_ROOT}/include" \
-DBoostLib_LIBRARY_DIRS="${LIBBOOST_ROOT}/lib" \
-DTPL_ENABLE_HDF5=ON \
-DTPL_HDF5_INCLUDE_DIRS="${LIBHDF5_ROOT}/include" \
-DHDF5_LIBRARY_DIRS="${LIBHDF5_ROOT}/lib" \
-DTPL_ENABLE_Netcdf=ON \
-DNetcdf_LIBRARY_DIRS="${NETCDF_ROOT}/lib" \
-DTPL_Netcdf_INCLUDE_DIRS="${NETCDF_ROOT}/include/" \
-DTPL_ENABLE_Pnetcdf=ON \
-DPnetcdf_LIBRARY_DIRS="${LIBPNETCDF_ROOT}/lib" \
-DTPL_Pnetcdf_INCLUDE_DIRS="${LIBPNETCDF_ROOT}/include" \
-DTPL_ENABLE_yaml-cpp=OFF \
-DTPL_ENABLE_GLPK=ON \
-DGLPK_INCLUDE_DIRS="${GLPK_ROOT}/include" \
-DGLPK_LIBRARY_DIRS="${GLPK_ROOT}/lib" \
-DTPL_ENABLE_Matio=OFF \
-DTPL_ENABLE_Scotch=OFF \
-DTPL_ENABLE_PETSC=ON \
-DPETSC_INCLUDE_DIRS="${PETSC_ROOT}/include" \
-DPETSC_LIBRARY_DIRS="${PETSC_ROOT}/lib" \
-DPYTHON_EXECUTABLE="/opt/conda/bin/python" \
-DSWIG_EXECUTABLE="/opt/conda/bin/swig" \
-DBUILD_SHARED_LIBS=ON \
-DTrilinos_ENABLE_ALL_PACKAGES=OFF \
-DTrilinos_ENABLE_ALL_OPTIONAL_PACKAGES=OFF \
-DTrilinos_ENABLE_ALL_FORWARD_DEP_PACKAGES=OFF \
-DTrilinos_ENABLE_TESTS=OFF \
-DTrilinos_ENABLE_EXAMPLES=OFF \
-DTrilinos_ENABLE_OpenMP=ON \
-DTrilinos_ENABLE_Amesos=ON \
-DAmesos_ENABLE_KLU=ON \
-DAmesos_ENABLE_UMFPACK=ON \
-DTrilinos_ENABLE_Anasazi=ON \
-DTrilinos_ENABLE_AztecOO=ON \
-DTrilinos_ENABLE_Domi=ON \
-DTrilinos_ENABLE_Epetra=ON \
-DTrilinos_ENABLE_EpetraExt=ON \
-DEpetraExt_USING_PETSC=OFF \
-DEpetraExt_BUILD_BTF=ON \
-DEpetraExt_BUILD_EXPERIMENTAL=ON \
-DEpetraExt_BUILD_GRAPH_REORDERINGS=ON \
-DEpetraExt_ENABLE_HDF5=ON \
-DTrilinos_ENABLE_Galeri=ON \
-DTrilinos_ENABLE_Ifpack=ON \
-DTrilinos_ENABLE_Isorropia=ON \
-DTrilinos_ENABLE_Komplex=ON \
-DTrilinos_ENABLE_LOCA=ON \
-DTrilinos_ENABLE_ML=ON \
-DTrilinos_ENABLE_NOX=ON \
-DNOX_ENABLE_ABSTRACT_IMPLEMENTATION_EPETRA=ON \
-DNOX_ENABLE_ABSTRACT_IMPLEMENTATION_PETSC=ON \
-DNOX_ENABLE_PETSC=ON \
-DNOX_ENABLE_LOCA=ON \
-DNOX_ENABLE_Epetra=ON \
-DTrilinos_ENABLE_Pliris=ON \
-DTrilinos_ENABLE_PyTrilinos=ON \
-DTrilinos_ENABLE_Teuchos=ON \
-DTrilinos_ENABLE_Tpetra=ON \
-DTpetra_INST_SERIAL=ON \
-DTpetra_INST_OPENMP=ON \
-DTpetra_INST_THREADS=ON \
-DTpetra_INST_Cuda=OFF \
-DTrilinos_ENABLE_Triutils=ON \
-DPyTrilinos_ENABLE_TESTS=OFF \
-DPyTrilinos_ENABLE_EXAMPLES=OFF \
-DPyTrilinos_INSTALL_PREFIX="/opt/conda" \
$SRCDIR && \
make -j$(nproc) all && \
make install