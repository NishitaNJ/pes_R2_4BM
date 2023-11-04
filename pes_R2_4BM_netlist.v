/* Generated by Yosys 0.34+43 (git sha1 d21c464ae, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

module pes_R2_4BM(clk, load, reset, M, Q, P);
  wire [3:0] _000_;
  wire [7:0] _001_;
  wire [2:0] _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire [3:0] A;
  wire [2:0] Count;
  input [3:0] M;
  wire [3:0] M;
  wire [3:0] M_temp;
  output [7:0] P;
  wire [7:0] P;
  input [3:0] Q;
  wire [3:0] Q;
  wire Q_minus_one;
  wire [3:0] Q_temp;
  input clk;
  wire clk;
  input load;
  wire load;
  input reset;
  wire reset;
  sky130_fd_sc_hd__clkinv_1 _230_ (
    .A(_112_),
    .Y(_162_)
  );
  sky130_fd_sc_hd__clkinv_1 _231_ (
    .A(_106_),
    .Y(_163_)
  );
  sky130_fd_sc_hd__clkinv_1 _232_ (
    .A(_108_),
    .Y(_164_)
  );
  sky130_fd_sc_hd__clkinv_1 _233_ (
    .A(_109_),
    .Y(_165_)
  );
  sky130_fd_sc_hd__nor3_1 _234_ (
    .A(_112_),
    .B(_111_),
    .C(_110_),
    .Y(_166_)
  );
  sky130_fd_sc_hd__nor2b_1 _235_ (
    .A(_166_),
    .B_N(_127_),
    .Y(_167_)
  );
  sky130_fd_sc_hd__a211oi_1 _236_ (
    .A1(_126_),
    .A2(_166_),
    .B1(_167_),
    .C1(_138_),
    .Y(_168_)
  );
  sky130_fd_sc_hd__nor2b_1 _237_ (
    .A(_121_),
    .B_N(_138_),
    .Y(_169_)
  );
  sky130_fd_sc_hd__nor3_1 _238_ (
    .A(_213_),
    .B(_168_),
    .C(_169_),
    .Y(_102_)
  );
  sky130_fd_sc_hd__nor2b_1 _239_ (
    .A(_166_),
    .B_N(_128_),
    .Y(_170_)
  );
  sky130_fd_sc_hd__a211oi_1 _240_ (
    .A1(_127_),
    .A2(_166_),
    .B1(_170_),
    .C1(_138_),
    .Y(_171_)
  );
  sky130_fd_sc_hd__nor2b_1 _241_ (
    .A(_122_),
    .B_N(_138_),
    .Y(_172_)
  );
  sky130_fd_sc_hd__nor3_1 _242_ (
    .A(_213_),
    .B(_171_),
    .C(_172_),
    .Y(_103_)
  );
  sky130_fd_sc_hd__nor2b_1 _243_ (
    .A(_166_),
    .B_N(_129_),
    .Y(_173_)
  );
  sky130_fd_sc_hd__a211oi_1 _244_ (
    .A1(_128_),
    .A2(_166_),
    .B1(_173_),
    .C1(_138_),
    .Y(_174_)
  );
  sky130_fd_sc_hd__nor2b_1 _245_ (
    .A(_123_),
    .B_N(_138_),
    .Y(_175_)
  );
  sky130_fd_sc_hd__nor3_1 _246_ (
    .A(_213_),
    .B(_174_),
    .C(_175_),
    .Y(_104_)
  );
  sky130_fd_sc_hd__xor2_1 _247_ (
    .A(_125_),
    .B(_126_),
    .X(_176_)
  );
  sky130_fd_sc_hd__nor2_1 _248_ (
    .A(_166_),
    .B(_176_),
    .Y(_177_)
  );
  sky130_fd_sc_hd__a21oi_1 _249_ (
    .A1(_117_),
    .A2(_106_),
    .B1(_166_),
    .Y(_178_)
  );
  sky130_fd_sc_hd__nand2b_1 _250_ (
    .A_N(_106_),
    .B(_117_),
    .Y(_179_)
  );
  sky130_fd_sc_hd__o21ai_0 _251_ (
    .A1(_117_),
    .A2(_106_),
    .B1(_178_),
    .Y(_180_)
  );
  sky130_fd_sc_hd__nand2_1 _252_ (
    .A(_129_),
    .B(_166_),
    .Y(_181_)
  );
  sky130_fd_sc_hd__a21oi_1 _253_ (
    .A1(_180_),
    .A2(_181_),
    .B1(_177_),
    .Y(_182_)
  );
  sky130_fd_sc_hd__a211oi_1 _254_ (
    .A1(_106_),
    .A2(_177_),
    .B1(_182_),
    .C1(_138_),
    .Y(_183_)
  );
  sky130_fd_sc_hd__nor2b_1 _255_ (
    .A(_124_),
    .B_N(_138_),
    .Y(_184_)
  );
  sky130_fd_sc_hd__nor3_1 _256_ (
    .A(_213_),
    .B(_183_),
    .C(_184_),
    .Y(_105_)
  );
  sky130_fd_sc_hd__nand2_1 _257_ (
    .A(_118_),
    .B(_107_),
    .Y(_185_)
  );
  sky130_fd_sc_hd__xor2_1 _258_ (
    .A(_118_),
    .B(_107_),
    .X(_186_)
  );
  sky130_fd_sc_hd__xnor2_1 _259_ (
    .A(_118_),
    .B(_107_),
    .Y(_187_)
  );
  sky130_fd_sc_hd__a21oi_1 _260_ (
    .A1(_117_),
    .A2(_106_),
    .B1(_186_),
    .Y(_188_)
  );
  sky130_fd_sc_hd__nand2_1 _261_ (
    .A(_117_),
    .B(_186_),
    .Y(_189_)
  );
  sky130_fd_sc_hd__nand3_1 _262_ (
    .A(_117_),
    .B(_106_),
    .C(_186_),
    .Y(_190_)
  );
  sky130_fd_sc_hd__or3b_1 _263_ (
    .A(_126_),
    .B(_166_),
    .C_N(_125_),
    .X(_191_)
  );
  sky130_fd_sc_hd__nor2_1 _264_ (
    .A(_188_),
    .B(_191_),
    .Y(_192_)
  );
  sky130_fd_sc_hd__nor3b_1 _265_ (
    .A(_125_),
    .B(_166_),
    .C_N(_126_),
    .Y(_193_)
  );
  sky130_fd_sc_hd__a21oi_1 _266_ (
    .A1(_189_),
    .A2(_193_),
    .B1(_106_),
    .Y(_194_)
  );
  sky130_fd_sc_hd__a31oi_1 _267_ (
    .A1(_179_),
    .A2(_187_),
    .A3(_193_),
    .B1(_194_),
    .Y(_195_)
  );
  sky130_fd_sc_hd__a22o_1 _268_ (
    .A1(_190_),
    .A2(_192_),
    .B1(_195_),
    .B2(_191_),
    .X(_196_)
  );
  sky130_fd_sc_hd__o21ai_0 _269_ (
    .A1(_166_),
    .A2(_176_),
    .B1(_196_),
    .Y(_197_)
  );
  sky130_fd_sc_hd__a21oi_1 _270_ (
    .A1(_107_),
    .A2(_177_),
    .B1(_138_),
    .Y(_198_)
  );
  sky130_fd_sc_hd__a221oi_1 _271_ (
    .A1(_138_),
    .A2(_163_),
    .B1(_197_),
    .B2(_198_),
    .C1(_213_),
    .Y(_098_)
  );
  sky130_fd_sc_hd__nand2_1 _272_ (
    .A(_119_),
    .B(_108_),
    .Y(_199_)
  );
  sky130_fd_sc_hd__xnor2_1 _273_ (
    .A(_119_),
    .B(_108_),
    .Y(_200_)
  );
  sky130_fd_sc_hd__nor2b_1 _274_ (
    .A(_118_),
    .B_N(_107_),
    .Y(_201_)
  );
  sky130_fd_sc_hd__a21oi_1 _275_ (
    .A1(_179_),
    .A2(_187_),
    .B1(_201_),
    .Y(_202_)
  );
  sky130_fd_sc_hd__xor2_1 _276_ (
    .A(_200_),
    .B(_202_),
    .X(_203_)
  );
  sky130_fd_sc_hd__o21ai_0 _277_ (
    .A1(_107_),
    .A2(_193_),
    .B1(_191_),
    .Y(_204_)
  );
  sky130_fd_sc_hd__a21oi_1 _278_ (
    .A1(_193_),
    .A2(_203_),
    .B1(_204_),
    .Y(_205_)
  );
  sky130_fd_sc_hd__a21o_1 _279_ (
    .A1(_185_),
    .A2(_190_),
    .B1(_200_),
    .X(_206_)
  );
  sky130_fd_sc_hd__a31oi_1 _280_ (
    .A1(_185_),
    .A2(_190_),
    .A3(_200_),
    .B1(_191_),
    .Y(_207_)
  );
  sky130_fd_sc_hd__a21oi_1 _281_ (
    .A1(_206_),
    .A2(_207_),
    .B1(_205_),
    .Y(_208_)
  );
  sky130_fd_sc_hd__a21oi_1 _282_ (
    .A1(_108_),
    .A2(_177_),
    .B1(_138_),
    .Y(_209_)
  );
  sky130_fd_sc_hd__o21a_1 _283_ (
    .A1(_177_),
    .A2(_208_),
    .B1(_209_),
    .X(_210_)
  );
  sky130_fd_sc_hd__nor2b_1 _284_ (
    .A(_107_),
    .B_N(_138_),
    .Y(_211_)
  );
  sky130_fd_sc_hd__nor3_1 _285_ (
    .A(_213_),
    .B(_210_),
    .C(_211_),
    .Y(_099_)
  );
  sky130_fd_sc_hd__maj3_1 _286_ (
    .A(_119_),
    .B(_164_),
    .C(_202_),
    .X(_212_)
  );
  sky130_fd_sc_hd__xor2_1 _287_ (
    .A(_120_),
    .B(_109_),
    .X(_139_)
  );
  sky130_fd_sc_hd__xor2_1 _288_ (
    .A(_212_),
    .B(_139_),
    .X(_140_)
  );
  sky130_fd_sc_hd__mux2i_1 _289_ (
    .A0(_108_),
    .A1(_140_),
    .S(_193_),
    .Y(_141_)
  );
  sky130_fd_sc_hd__and3_1 _290_ (
    .A(_199_),
    .B(_206_),
    .C(_139_),
    .X(_142_)
  );
  sky130_fd_sc_hd__a21oi_1 _291_ (
    .A1(_199_),
    .A2(_206_),
    .B1(_139_),
    .Y(_143_)
  );
  sky130_fd_sc_hd__nor3_1 _292_ (
    .A(_191_),
    .B(_142_),
    .C(_143_),
    .Y(_144_)
  );
  sky130_fd_sc_hd__a211o_1 _293_ (
    .A1(_191_),
    .A2(_141_),
    .B1(_144_),
    .C1(_177_),
    .X(_145_)
  );
  sky130_fd_sc_hd__a21oi_1 _294_ (
    .A1(_109_),
    .A2(_177_),
    .B1(_138_),
    .Y(_146_)
  );
  sky130_fd_sc_hd__a221oi_1 _295_ (
    .A1(_138_),
    .A2(_164_),
    .B1(_145_),
    .B2(_146_),
    .C1(_213_),
    .Y(_100_)
  );
  sky130_fd_sc_hd__mux2i_1 _296_ (
    .A0(_109_),
    .A1(_140_),
    .S(_193_),
    .Y(_147_)
  );
  sky130_fd_sc_hd__a21oi_1 _297_ (
    .A1(_191_),
    .A2(_147_),
    .B1(_144_),
    .Y(_148_)
  );
  sky130_fd_sc_hd__a21oi_1 _298_ (
    .A1(_138_),
    .A2(_165_),
    .B1(_213_),
    .Y(_149_)
  );
  sky130_fd_sc_hd__o21a_1 _299_ (
    .A1(_138_),
    .A2(_148_),
    .B1(_149_),
    .X(_101_)
  );
  sky130_fd_sc_hd__nor2_1 _300_ (
    .A(_138_),
    .B(_166_),
    .Y(_150_)
  );
  sky130_fd_sc_hd__nor3_1 _301_ (
    .A(_138_),
    .B(_126_),
    .C(_166_),
    .Y(_151_)
  );
  sky130_fd_sc_hd__nor2_1 _302_ (
    .A(_125_),
    .B(_150_),
    .Y(_152_)
  );
  sky130_fd_sc_hd__nor3_1 _303_ (
    .A(_213_),
    .B(_151_),
    .C(_152_),
    .Y(_130_)
  );
  sky130_fd_sc_hd__mux2i_1 _304_ (
    .A0(_117_),
    .A1(_113_),
    .S(_138_),
    .Y(_153_)
  );
  sky130_fd_sc_hd__nor2_1 _305_ (
    .A(_213_),
    .B(_153_),
    .Y(_131_)
  );
  sky130_fd_sc_hd__mux2i_1 _306_ (
    .A0(_118_),
    .A1(_114_),
    .S(_138_),
    .Y(_154_)
  );
  sky130_fd_sc_hd__nor2_1 _307_ (
    .A(_213_),
    .B(_154_),
    .Y(_132_)
  );
  sky130_fd_sc_hd__mux2i_1 _308_ (
    .A0(_119_),
    .A1(_115_),
    .S(_138_),
    .Y(_155_)
  );
  sky130_fd_sc_hd__nor2_1 _309_ (
    .A(_213_),
    .B(_155_),
    .Y(_133_)
  );
  sky130_fd_sc_hd__mux2i_1 _310_ (
    .A0(_120_),
    .A1(_116_),
    .S(_138_),
    .Y(_156_)
  );
  sky130_fd_sc_hd__nor2_1 _311_ (
    .A(_213_),
    .B(_156_),
    .Y(_134_)
  );
  sky130_fd_sc_hd__nor3_1 _312_ (
    .A(_138_),
    .B(_110_),
    .C(_166_),
    .Y(_157_)
  );
  sky130_fd_sc_hd__a21oi_1 _313_ (
    .A1(_138_),
    .A2(_110_),
    .B1(_157_),
    .Y(_158_)
  );
  sky130_fd_sc_hd__nor2_1 _314_ (
    .A(_213_),
    .B(_158_),
    .Y(_135_)
  );
  sky130_fd_sc_hd__nor3_1 _315_ (
    .A(_138_),
    .B(_111_),
    .C(_110_),
    .Y(_159_)
  );
  sky130_fd_sc_hd__nand2_1 _316_ (
    .A(_112_),
    .B(_159_),
    .Y(_160_)
  );
  sky130_fd_sc_hd__o21ai_0 _317_ (
    .A1(_138_),
    .A2(_110_),
    .B1(_111_),
    .Y(_161_)
  );
  sky130_fd_sc_hd__a21oi_1 _318_ (
    .A1(_160_),
    .A2(_161_),
    .B1(_213_),
    .Y(_136_)
  );
  sky130_fd_sc_hd__o21bai_1 _319_ (
    .A1(_162_),
    .A2(_159_),
    .B1_N(_213_),
    .Y(_137_)
  );
  sky130_fd_sc_hd__dfxtp_1 _320_ (
    .CLK(clk),
    .D(_000_[0]),
    .Q(A[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _321_ (
    .CLK(clk),
    .D(_000_[1]),
    .Q(A[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _322_ (
    .CLK(clk),
    .D(_000_[2]),
    .Q(A[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _323_ (
    .CLK(clk),
    .D(_000_[3]),
    .Q(A[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _324_ (
    .CLK(clk),
    .D(_001_[0]),
    .Q(P[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _325_ (
    .CLK(clk),
    .D(_001_[1]),
    .Q(P[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _326_ (
    .CLK(clk),
    .D(_001_[2]),
    .Q(P[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _327_ (
    .CLK(clk),
    .D(_001_[3]),
    .Q(P[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _328_ (
    .CLK(clk),
    .D(_000_[0]),
    .Q(P[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _329_ (
    .CLK(clk),
    .D(_000_[1]),
    .Q(P[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _330_ (
    .CLK(clk),
    .D(_000_[2]),
    .Q(P[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _331_ (
    .CLK(clk),
    .D(_000_[3]),
    .Q(P[7])
  );
  sky130_fd_sc_hd__dfxtp_1 _332_ (
    .CLK(clk),
    .D(_215_),
    .Q(Q_minus_one)
  );
  sky130_fd_sc_hd__dfxtp_1 _333_ (
    .CLK(clk),
    .D(_001_[0]),
    .Q(Q_temp[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _334_ (
    .CLK(clk),
    .D(_001_[1]),
    .Q(Q_temp[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _335_ (
    .CLK(clk),
    .D(_001_[2]),
    .Q(Q_temp[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _336_ (
    .CLK(clk),
    .D(_001_[3]),
    .Q(Q_temp[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _337_ (
    .CLK(clk),
    .D(_217_),
    .Q(M_temp[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _338_ (
    .CLK(clk),
    .D(_219_),
    .Q(M_temp[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _339_ (
    .CLK(clk),
    .D(_221_),
    .Q(M_temp[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _340_ (
    .CLK(clk),
    .D(_223_),
    .Q(M_temp[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _341_ (
    .CLK(clk),
    .D(_225_),
    .Q(Count[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _342_ (
    .CLK(clk),
    .D(_227_),
    .Q(Count[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _343_ (
    .CLK(clk),
    .D(_229_),
    .Q(Count[2])
  );
  assign _001_[7:4] = _000_;
  assign _112_ = Count[2];
  assign _138_ = load;
  assign _111_ = Count[1];
  assign _110_ = Count[0];
  assign _120_ = M_temp[3];
  assign _116_ = M[3];
  assign _119_ = M_temp[2];
  assign _115_ = M[2];
  assign _118_ = M_temp[1];
  assign _114_ = M[1];
  assign _117_ = M_temp[0];
  assign _113_ = M[0];
  assign _125_ = Q_minus_one;
  assign _126_ = Q_temp[0];
  assign _213_ = reset;
  assign _121_ = Q[0];
  assign _127_ = Q_temp[1];
  assign _001_[0] = _102_;
  assign _122_ = Q[1];
  assign _128_ = Q_temp[2];
  assign _001_[1] = _103_;
  assign _123_ = Q[2];
  assign _129_ = Q_temp[3];
  assign _001_[2] = _104_;
  assign _124_ = Q[3];
  assign _106_ = A[0];
  assign _001_[3] = _105_;
  assign _107_ = A[1];
  assign _000_[0] = _098_;
  assign _108_ = A[2];
  assign _000_[1] = _099_;
  assign _109_ = A[3];
  assign _000_[2] = _100_;
  assign _000_[3] = _101_;
  assign _215_ = _130_;
  assign _217_ = _131_;
  assign _219_ = _132_;
  assign _221_ = _133_;
  assign _223_ = _134_;
  assign _225_ = _135_;
  assign _227_ = _136_;
  assign _229_ = _137_;
endmodule