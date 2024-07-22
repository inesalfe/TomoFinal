all: seq seq_sparse omp_sparse omp_sparse_atomic tomo_stop

seq:
	make -f makefile.seq

seq_sparse:
	make -f makefile.seq_sparse

omp_sparse:
	make -f makefile.omp_sparse

omp_sparse_atomic:
	make -f makefile.omp_sparse_atomic

tomo_stop:
	make -f makefile.tomo_stop
	
clean:
	rm -fv bin/*.o bin/*.exe