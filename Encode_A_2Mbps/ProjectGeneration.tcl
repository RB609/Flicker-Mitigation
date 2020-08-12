# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {HDL Netlist}
	set CompilationFlow {STANDARD}
	set DSPDevice {xc7a35ti}
	set DSPFamily {artix7}
	set DSPPackage {csg324}
	set DSPSpeed {-1L}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {C:/Users/admin/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set ImplStrategyName {Vivado Implementation Defaults}
	set Project {func1}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{func1_entity_declarations.v}}
		{{func1.v}}
		{{func1_clock.xdc}}
		{{func1.xdc}}
	}
	set SimPeriod 8.33333e-08
	set SimTime 600
	set SimulationTime {72000000210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/admin/Desktop/5b6b/Encode_A_2Mbps}
	set TopLevelModule {func1}
	set TopLevelSimulinkHandle 2.00049
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface gateway_in Name {gateway_in}
	dict set TopLevelPortInterface gateway_in Type UFix_1_0
	dict set TopLevelPortInterface gateway_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_in BinaryPoint 0
	dict set TopLevelPortInterface gateway_in Width 1
	dict set TopLevelPortInterface gateway_in DatFile {func1_gateway_in.dat}
	dict set TopLevelPortInterface gateway_in IconText {Gateway In}
	dict set TopLevelPortInterface gateway_in Direction in
	dict set TopLevelPortInterface gateway_in Period 6
	dict set TopLevelPortInterface gateway_in Interface 0
	dict set TopLevelPortInterface gateway_in InterfaceName {}
	dict set TopLevelPortInterface gateway_in InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_in ClockDomain {func1}
	dict set TopLevelPortInterface gateway_in Locs {}
	dict set TopLevelPortInterface gateway_in IOStandard {}
	dict set TopLevelPortInterface gateway_out1 Name {gateway_out1}
	dict set TopLevelPortInterface gateway_out1 Type UFix_1_0
	dict set TopLevelPortInterface gateway_out1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_out1 BinaryPoint 0
	dict set TopLevelPortInterface gateway_out1 Width 1
	dict set TopLevelPortInterface gateway_out1 DatFile {func1_gateway_out1.dat}
	dict set TopLevelPortInterface gateway_out1 IconText {Gateway Out1}
	dict set TopLevelPortInterface gateway_out1 Direction out
	dict set TopLevelPortInterface gateway_out1 Period 5
	dict set TopLevelPortInterface gateway_out1 Interface 0
	dict set TopLevelPortInterface gateway_out1 InterfaceName {}
	dict set TopLevelPortInterface gateway_out1 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out1 ClockDomain {func1}
	dict set TopLevelPortInterface gateway_out1 Locs {}
	dict set TopLevelPortInterface gateway_out1 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {func1}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project