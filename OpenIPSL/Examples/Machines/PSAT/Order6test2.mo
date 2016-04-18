within OpenIPSL.Examples.Machines.PSAT;
model Order6test2
<<<<<<< HEAD
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Loads.PSAT.LOADPQ pwLoadPQ2(
    P_0=0.08,
    Q_0=0.06,
    V_0=1,
    angle_0=0) annotation (Placement(visible=true, transformation(
        origin={18.2834,10},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Branches.PwLinewithOpeningReceiving pwLinewithOpening1(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1,
    t1=12,
    t2=12.1) annotation (Placement(visible=true, transformation(
        origin={-25,0},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Branches.PwLine pwLine4(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={-25,15},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Branches.PwLine pwLine3(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={-20,-35},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Loads.PSAT.LOADPQ pwLoadPQ1(
    P_0=0.08,
    Q_0=0.06,
    V_0=1,
    angle_0=0) annotation (Placement(visible=true, transformation(
        origin={20,-35},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Branches.PwLine pwLine2(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={-60,10},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Branches.PwLine pwLine1(
    B=0.001/2,
    G=0,
    R=0.01,
    X=0.1) annotation (Placement(visible=true, transformation(
        origin={-60,-20},
        extent={{-10.0,-10.0},{10.0,10.0}},
        rotation=0)));
  OpenIPSL.Electrical.Events.PwFault pwFault(
    X=0.001,
    t1=3,
    t2=3.1,
    R=10) annotation (Placement(transformation(extent={{25,-70},{45,-50}})));
=======
  import OpenIPSL;
  extends OpenIPSL.Examples.BaseTest;
>>>>>>> 6658c692febc6156d620cda78989ccdb3475fa9b
  OpenIPSL.Electrical.Machines.PSAT.SixthOrder.Order6 order6Type2_1(
    Sn=100,
    V_0=1,
    angle_0=0,
    ra=0.001,
    xd1=0.302,
    M=10,
    D=0,
    V_b=400,
    Vn=20,
    xd=1.9,
    xq=1.7,
    xq1=0.5,
    xd2=0.204,
    xq2=0.3,
    Td10=8,
    Tq10=0.8,
    Td20=0.04,
    Tq20=0.02,
    Taa=2e-3,
    P_0=16.0352698692006,
    Q_0=11.859436505981)
         annotation (Placement(transformation(extent={{-61,-20},{-21,20}})));
equation
<<<<<<< HEAD
  connect(pwLine4.n, pwLoadPQ2.p) annotation (Line(
      visible=true,
      origin={-2.7875,13},
      points={{-10.5458,2},{3.0708,2},{3.0708,8},{21.0709,8}}));
  connect(pwLinewithOpening1.n, pwLine4.n) annotation (Line(
      visible=true,
      origin={-18,7.5},
      points={{0,-7.5},{0,7.5}}));
  connect(pwLine4.p, pwLinewithOpening1.p) annotation (Line(
      visible=true,
      origin={-32,7.5},
      points={{0,7.5},{0,-7.5}}));
  connect(pwLine3.n, pwLoadPQ1.p) annotation (Line(
      visible=true,
      origin={3.5,-34.5},
      points={{-11.8333,-0.5},{3.5,-0.5},{3.5,10.5},{16.5,10.5}}));
  connect(pwLine2.n, pwLine4.p) annotation (Line(
      points={{-48.3333,10},{-40,10},{-40,15},{-36.6667,15}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(pwLine1.n, pwLine3.p) annotation (Line(
      points={{-48.3333,-20},{-40,-20},{-40,-35},{-31.6667,-35}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(pwFault.p, pwLine3.n) annotation (Line(
      points={{23.3333,-60},{23.3333,-44.5},{-8.33333,-44.5},{-8.33333,-35}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(order6Type2_1.p, pwLine2.p) annotation (Line(
      points={{-98,10.0993},{-94.5,10.0993},{-94.5,10},{-71.6667,10}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(pwLine2.p, pwLine1.p) annotation (Line(
      points={{-71.6667,10},{-71.6667,-20},{-71.6667,-20}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(pwLine2.n, pwLine1.n) annotation (Line(
      points={{-48.3333,10},{-48.3333,-20},{-48.3333,-20}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(order6Type2_1.vf0, order6Type2_1.vf) annotation (Line(points={{-136,32},
          {-136,35},{-150,35},{-150,20},{-140,20}},                                                                         color={0,0,127}));
  connect(order6Type2_1.pm, order6Type2_1.pm0) annotation (Line(points={{-140,0},{-150,0},{-150,-15},{-136,-15},{-136,-12}}, color={0,0,127}));
=======
  connect(order6Type2_1.vf0, order6Type2_1.vf) annotation (Line(points={{-57,22},
          {-57,25},{-71,25},{-71,10},{-61,10}},                                                                             color={0,0,127}));
  connect(order6Type2_1.pm, order6Type2_1.pm0) annotation (Line(points={{-61,-10},
          {-71,-10},{-71,-25},{-57,-25},{-57,-22}},                                                                          color={0,0,127}));
  connect(order6Type2_1.p, bus.p) annotation (Line(points={{-19,0.09928},{-10,
          0.09928},{-10,0},{0,0}}, color={0,0,255}));
>>>>>>> 6658c692febc6156d620cda78989ccdb3475fa9b
  annotation (
    Diagram(coordinateSystem(
        extent={{-100,-100},{100,100}},
        preserveAspectRatio=false,
        initialScale=0.1,
        grid={1,1})),
    experiment(StopTime=20),
    __Dymola_experimentSetupOutput,
    Documentation(revisions="<html>
<!--DISCLAIMER-->
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>"),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        grid={1,1},
        initialScale=0.1)));
end Order6test2;
