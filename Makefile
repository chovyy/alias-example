all: build run

build: 
	gfortran m_some.f90 alias.f90 -o alias

run: 
	./alias

clean: 
	rm alias *.mod
	
kgen: 
	../KGen/bin/kgen m_some.f90 --cmd-clean='make clean' --cmd-build='make build' --cmd-run='make run'
	cd kernel && make
	
kgenclean:
	rm -Rf kernel state *.sh *.log *.ini *.kgen_org