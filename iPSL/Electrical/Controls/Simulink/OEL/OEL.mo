within iPSL.Electrical.Controls.Simulink.OEL;


model OEL "OverExcitation Limiter"
  parameter Real ifd_lim "OEL parameter";
  parameter Real r "OEL parameter";
  parameter Real f "OEL parameter";
  parameter Real L1 "OEL parameter";
  parameter Real init_OEL_Timer=L1 "Initial output value";
  Modelica.Blocks.Sources.Constant ifd_lim_value(k=ifd_lim) "Limitation of filed current" annotation (Placement(transformation(extent={{-98,-28},{-80,-10}})));
  iPSL.NonElectrical.Nonlinear.SaturationBlockTan block_1_1(r=r, f=f) annotation (Placement(transformation(extent={{-42,-16},{18,38}})));
  Modelica.Blocks.Continuous.LimIntegrator Timer(
    k=1,
    y_start=init_OEL_Timer,
    outMax=10000.0,
    outMin=L1,
    initType=Modelica.Blocks.Types.Init.InitialOutput) annotation (Placement(transformation(extent={{10,8},{24,22}})));
  Modelica.Blocks.Math.Gain imGain(k=-1) annotation (Placement(transformation(extent={{10,28},{22,40}})));
  Modelica.Blocks.Interfaces.RealInput ifd "Field current" annotation (Placement(transformation(extent={{-94,-4},{-76,16}}), iconTransformation(extent={{-94,-4},{-76,16}})));
  Modelica.Blocks.Interfaces.RealInput VolContinput "Voltage control input" annotation (Placement(transformation(extent={{-94,-48},{-76,-28}}), iconTransformation(extent={{-94,-48},{-76,-28}})));
  Modelica.Blocks.Interfaces.RealOutput OEL_output annotation (Placement(transformation(extent={{74,-30},{94,-10}}), iconTransformation(extent={{74,-30},{94,-10}})));
  Modelica.Blocks.Math.Add add(k2=-1) annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
  Modelica.Blocks.Math.Min min annotation (Placement(transformation(extent={{68,6},{78,16}})));
  NonElectrical.Logical.Relay relay annotation (Placement(transformation(extent={{40,8},{52,20}})));
equation
  connect(ifd_lim_value.y, add.u2) annotation (Line(points={{-79.1,-19},{-68,-19},{-68,4},{-62,4}}, color={0,0,127}));
  connect(ifd, add.u1) annotation (Line(points={{-85,6},{-72,6},{-72,16},{-62,16}}, color={0,0,127}));
  connect(add.y, block_1_1.p1) annotation (Line(points={{-39,10},{-36,10},{-36,11.54},{-33,11.54}}, color={0,0,127}));
  connect(imGain.u, block_1_1.p1) annotation (Line(points={{8.8,34},{-36,34},{-36,11.54},{-33,11.54}}, color={0,0,127}));
  connect(block_1_1.n1, Timer.u) annotation (Line(points={{3,11.27},{5.5,11.27},{5.5,15},{8.6,15}}, color={0,0,127}));
  connect(min.y, OEL_output) annotation (Line(points={{78.5,11},{84,11},{84,-20}}, color={0,0,127}));
  connect(VolContinput, min.u2) annotation (Line(points={{-85,-38},{-12,-38},{60,-38},{60,8},{67,8}}, color={0,0,127}));
  connect(relay.y, min.u1) annotation (Line(points={{53.2,14},{67,14},{67,14}}, color={0,0,127}));
  connect(Timer.y, relay.u1) annotation (Line(points={{24.7,15},{30,15},{30,18.5},{38.5,18.5}}, color={0,0,127}));
  connect(imGain.y, relay.u2) annotation (Line(points={{22.6,34},{32,34},{32,14},{38.5,14}}, color={0,0,127}));
  connect(relay.u3, min.u2) annotation (Line(points={{38.5,9.5},{32,9.5},{32,-38},{60,-38},{60,8},{67,8}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={Rectangle(extent={{-74,26},{74,-62}}, lineColor={0,0,127}),Text(
          extent={{-84,6},{-36,-14}},
          lineColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="ifd"),Text(
          extent={{-86,-38},{-40,-54}},
          lineColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="V"),Text(
          extent={{-52,6},{58,-42}},
          lineColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="OEL")}),
    Documentation(info="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td>Over Excitation Limiter</td>
</tr>
<tr>
<td><p>Last update</p></td>
<td>2015-10-02</td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>Le Qi, SmarTS Lab, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p><a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p></td>
</tr>
</table>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">&LT;iPSL: iTesla Power System Library&GT;</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Copyright 2015 RTE (France), AIA (Spain), KTH (Sweden) and DTU (Denmark)</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">RTE: http://www.rte-france.com/ </span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">AIA: http://www.aia.es/en/energy/</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">KTH: https://www.kth.se/en</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">DTU:http://www.dtu.dk/english</span></li>
</ul>
<p><span style=\"font-family: MS Shell Dlg 2;\">The authors can be contacted by email: info at itesla-ipsl dot org</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This package is part of the iTesla Power System Library (&QUOT;iPSL&QUOT;) .</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The iPSL is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">You should have received a copy of the GNU Lesser General Public License along with the iPSL. If not, see &LT;http://www.gnu.org/licenses/&GT;.</span></p>
</html>"));
end OEL;
