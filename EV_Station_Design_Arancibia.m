%% For Comprehensive Research Support, Including Codes, Scripts, Simulink Models,
%% Documentation, Assignments, Presentations, and Continuous Online Mentorship with
%% (UG/PG/PhD) Throughout Your Research Journey:
%% Confidentiality of your project is guaranteed, ensuring your work remains secure and private.
%% Contact:     SACHIN S. WAGH                Email:             ssw.aws.official@gmail.com
%% Phone:        (+91) 9403423640                Time Zone:     India
%% With over 20 years of expertise in Electrical Power Systems Engineering, I specialize in 
%% advanced applications of industry-standard software such as MATLAB, ETAP, and PSCAD. 
%% I offer personalized mentorship and guidance to help you excel in your research projects, 
%% ensuring you receive the highest quality of support, from conceptualization to final documentation.

%% PROJECT CODE: MODELING AND SIMULATION OF A FAST DC CHARGING ELECTRIC VEHICLE STATION
% Reference:
% Arnaldo Arancibia and Kai Strunz, 
% “Modeling of an electric vehicle charging station for fast DC charging,” 
%  in IEEE International Electric Vehicle Conference, 2012, pp. 1-6. 
%_____________________________________________________________________

clc
clear
close all

% Input Parameters

Vgrid   = 433    % Line to Line Secondary Voltage (V) of Transformer 
fgrid   = 50     % Supply frequency in Hz
fsw     = 5000   % Samping frequency
T       = 1/50   % Period of AC voltage waveform (Sec)
Kload   = 1.1    % Overload factor to cover overloading in transients 
mmin    = 0.125  % EV battery charger minimum modulation index
Vbatmin = 200    % Minimum voltage of EV battery (V)
cosphi  = 0.95   % Power factor
nslot   = 10     % Number of charging slots available for individual EVs
PEV     = 90000  % Maximum power rate of an individual EV (W)
delx    = 20     % Allowable DC bus voltage range of change, in percent, during transients
delr    = 10     % DC power range of change, in percent, during transients
n       = 0.5    % It is a multiple of T
ma      = 0.8    % Inverter modulation index
RAF     = 0.2     % Ripple Attenuation Factor, normally around 20 percent
THD     = 0.01   % Total Harmonic Distortion, considered 1 percent.

% Design Calculations
disp('Design Calculations')
disp('For complete code contact details are provided at the start of the script')

% Results
Srated_calculated = 1.0421e+06
Vdc_upper_limit = 1600
disp('Vdc should be less than or equal to this value in volts')
Cdc = 0.0044
Linv = 2.8413e-04
Cf_calculated = 8.9132e-04
disp('It should be less than or equal to this calculated value')
Lgrid = 4.2918e-05
fres_calculated = 873.6794
disp('It should be verified that resonance frequency should be in the range of less than half of the fsw and 10 times bigger than the grid frequency')
Rd = 0.0917
L = 3.2705e-04  