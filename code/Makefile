all: seq seq_sparse omp_sparse omp_sparse_atomic tomo_stop tomo_stop_avg tomo_stop_blocks

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

tomo_stop_avg:
	make -f makefile.tomo_stop_avg

tomo_stop_blocks:
	make -f makefile.tomo_stop_blocks
	
clean:
	rm -fv bin/*.o bin/*.exe