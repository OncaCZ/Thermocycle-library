within ThermoCycle.Components.Units.ExpansionAndCompressionMachines.Reciprocating.BaseClasses;
partial record BaseGeometryObj
  "Base class to define the geometry of a reciprocating machine"
  extends Modelica.Icons.Record;
  parameter Boolean use_angle_in=true "Enable input connector";
  parameter Modelica.SIunits.AngularVelocity rpm=
      Modelica.SIunits.Conversions.from_rpm(60)
    annotation (Evaluate = true,
                Dialog(enable = not use_angle_in));

  parameter Modelica.SIunits.Length l_conrod(displayUnit="mm")
    "Length of connection rod";
  parameter Modelica.SIunits.Length d_ppin(displayUnit="mm")
    "piston pin offset";
  parameter Modelica.SIunits.Length r_crank(displayUnit="mm")
    "Radius of crank shaft";
  parameter Modelica.SIunits.Length r_piston(displayUnit="mm")
    "Outer radius of piston";
  parameter Modelica.SIunits.Volume V_tdc(displayUnit="ml")
    "ml=cm^3 - clearance volume";
  parameter Modelica.SIunits.Length h_piston(displayUnit="mm")
    "Height of piston";
  parameter Modelica.SIunits.Length d_inlet(displayUnit="mm")
    "Hydraulic diameter of inlet port";
  parameter Modelica.SIunits.Length d_outlet(displayUnit="mm")
    "Hydraulic diameter of outlet port";
  parameter Real zeta_inout "friction coefficient valve ports";
  parameter Modelica.SIunits.Length d_leak(displayUnit="mm")
    "Hydraulic diameter of leakage gap";
  parameter Real zeta_leak "friction coefficient leakage";

  InputObject piston
    annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
  InputObject conrod
    annotation (Placement(transformation(extent={{20,60},{40,80}})));
  InputObject crankArm
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  InputObject crankShaft
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  annotation (Documentation(info="<html>
<p><h4><font color=\"#008000\">Partial Geometry</font></h4></p>
<p>Definition of basic geometry for reciprocating machines. All lengths and volumes are calculated</p>
</html>"));
end BaseGeometryObj;