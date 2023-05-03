GHDL=ghdl 
FLAGS="--std=08"

all:
	$(GHDL) -a $(GHDLFLAGS) and_tb.vhd and.vhd
	$(GHDL) -e $(GHDLFLAGS) Testbench
	$(GHDL) -r $(GHDLFLAGS) Testbench --stop-time=10fs --vcd=and.vcd