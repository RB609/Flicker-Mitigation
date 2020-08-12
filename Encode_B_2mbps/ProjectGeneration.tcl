# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {HDL Netlist}
	set CompilationFlow {STANDARD}
	set DSPDevice {xc7a35t}
	set DSPFamily {artix7}
	set DSPPackage {csg324}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {C:/Users/admin/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set ImplStrategyName {Vivado Implementation Defaults}
	set Project {encode_b}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{encode_b_entity_declarations.v}}
		{{encode_b.v}}
		{{encode_b_clock.xdc}}
		{{encode_b.xdc}}
	}
	set SimPeriod 8.33333e-08
	set SimTime inf
	set SimulationTime {inf ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/admin/Desktop/5b6b/B_2mbps}
	set TopLevelModule {encode_b}
	set TopLevelSimulinkHandle 107
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface gateway_in Name {gateway_in}
	dict set TopLevelPortInterface gateway_in Type UFix_1_0
	dict set TopLevelPortInterface gateway_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_in BinaryPoint 0
	dict set TopLevelPortInterface gateway_in Width 1
	dict set TopLevelPortInterface gateway_in DatFile {encode_b_gateway_in.dat}
	dict set TopLevelPortInterface gateway_in IconText {Gateway In}
	dict set TopLevelPortInterface gateway_in Direction in
	dict set TopLevelPortInterface gateway_in Period 6
	dict set TopLevelPortInterface gateway_in Interface 0
	dict set TopLevelPortInterface gateway_in InterfaceName {}
	dict set TopLevelPortInterface gateway_in InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_in ClockDomain {encode_b}
	dict set TopLevelPortInterface gateway_in Locs {}
	dict set TopLevelPortInterface gateway_in IOStandard {}
	dict set TopLevelPortInterface gateway_out Name {gateway_out}
	dict set TopLevelPortInterface gateway_out Type UFix_1_0
	dict set TopLevelPortInterface gateway_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_out BinaryPoint 0
	dict set TopLevelPortInterface gateway_out Width 1
	dict set TopLevelPortInterface gateway_out DatFile {encode_b_gateway_out.dat}
	dict set TopLevelPortInterface gateway_out IconText {Gateway Out}
	dict set TopLevelPortInterface gateway_out Direction out
	dict set TopLevelPortInterface gateway_out Period 5
	dict set TopLevelPortInterface gateway_out Interface 0
	dict set TopLevelPortInterface gateway_out InterfaceName {}
	dict set TopLevelPortInterface gateway_out InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out ClockDomain {encode_b}
	dict set TopLevelPortInterface gateway_out Locs {}
	dict set TopLevelPortInterface gateway_out IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {encode_b}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project