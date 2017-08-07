# siemens
The following files contain source code used to analyze the effects of emissions from the Kilauea volcano.

executeVogCode.r uses a combination of ground-based solar measurements and vog forecast model data to isolate vog vs. non-vog incidents. Outputs include date, time, and radiance. A vog and non-vog file are created for each station. This script is programmed in R.

vogRadius.m analyzes satellite data downloaded from the NASA CERES project. Monthly values are averaged over the course of six years to yield cloud radii means which are plotted on a latitude vs. longitude grid, creating a heat map. The same code is used to analyze other cloud properties as well. This script is programmed in MATLAB.
