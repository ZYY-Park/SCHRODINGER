%% Comments
%> <start.m> is the starting file for the Schrodinger program.
%> This is a set of files which gives access to some rough and ready MATLAB
%> routines for solving various problems in elementary quantum mechanics.
%> CHOOSE YOUR DEFAULTS in your startup.m file, or right here, to get a
%> window of a suitable size and position, and text of suitable size, eg
%> rect = [70 215 565 573];
%> set(0,'defaultfigureposition',rect);
%> set(0,'defaultaxesfontsize',12);
%> set(0,'defaulttextfontsize',12);
%> You may also have to set the fontsize in <text0.m>, and in the buttons.
%> 
%>
%> ?Goran Lindblad - gli@theophys.kth.se
%>   Revised by Rareson Pollard - g1114128525@gmail.com, March 28,2014
%% Welcome
clear all;
close all;
global Q1;

figure('Color',[0.313725490196078 0.313725490196078 0.313725490196078]);
axis('off'); axis([0 1 0 1]);
t1=title('Welcome to Schrodinger!');
set(t1,'FontSize',24,'Color',[0.870588235294118 0.92156862745098 0.980392156862745]); 
ww = {' This set of MATLAB programs solves the Schroedinger equation, '
' in 1D, for a choice of potentials and boundary conditions. '
' The methods used are: numerical integration and adaption to boundary  '
' conditions, solving the time-dependent equation by iteration, matrix '
' approximation using a discrete basis, expansion in special functions.'
'               '
' There are a number of nonstandard routines for finding eigenvalues '
' from the numerical integrations. Read the manual and the m-files to '
' learn the basics and the technical tricks. In many of the examples '
' you must know the relevant energy scales in order to set values of '
' the parameters which will give interesting results. '};%Introduction text
xy=[.15 .45 .75 .45];
f=uicontrol('Style','text','Units','normalized','FontSize',9,...
'String',ww, 'HorizontalAlignment','left','Position',xy,...
'BackgroundColor',[.9 .9 .9]);
%% buttons
%bbutt is a user-defined function designed for blue boxes.
bbutt([.15  .38  .35  .06],'Numerical integration','close;integrat')
bbutt([.15  .31  .35  .06],'Particle in a box','close; inbox;')
bbutt([.15  .24  .35  .06],'Wave packets','close;wavepac')
bbutt([.15  .17  .35  .06],'Bound states','close;boundst')
bbutt([.15  .1   .35  .06],'Periodic potentials','close;per1d')
bbutt([.55  .38  .35  .06],'Scattering in 1D','close;scatt')
bbutt([.55  .31  .35  .06],'Scattering in 2D and 3D','close;scatt3d')
bbutt([.55  .24  .35  .06],'Special functions','close;special')
bbutt([.55  .17  .35  .06],'Hydrogen atom','close;hatom')
%qbutt is a user-defined function designed for quit boxes.
qbutt([.55  .1   .35  .06],'QUIT','close')