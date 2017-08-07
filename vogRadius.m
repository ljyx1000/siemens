file='CERES_CldTypHist-MOND_GEO-MODIS_Ed4A_Subset_20100101-2016111.nc';
lat=ncread(file,'lat');
lon=ncread(file,'lon');
lon2=lon-360;
rad=ncread(file,'cldtyp_cldwatrad_tot_day_mon');
avgRad=(rad(:,:,1)+rad(:,:,2)+rad(:,:,3)+rad(:,:,4)+rad(:,:,5)+rad(:,:,6)+rad(:,:,7)+rad(:,:,8)+rad(:,:,9)+rad(:,:,10)+rad(:,:,11)+rad(:,:,12)+rad(:,:,13)+rad(:,:,14)+rad(:,:,15)+rad(:,:,16)+rad(:,:,17)+rad(:,:,18)+rad(:,:,19)+rad(:,:,20)+rad(:,:,21)+rad(:,:,22)+rad(:,:,23)+rad(:,:,24)+rad(:,:,25)+rad(:,:,26)+rad(:,:,27)+rad(:,:,28)+rad(:,:,29)+rad(:,:,30)+rad(:,:,31)+rad(:,:,32)+rad(:,:,33)+rad(:,:,34)+rad(:,:,35)+rad(:,:,36)+rad(:,:,37)+rad(:,:,38)+rad(:,:,39)+rad(:,:,40)+rad(:,:,41)+rad(:,:,42)+rad(:,:,43)+rad(:,:,44)+rad(:,:,45)+rad(:,:,46)+rad(:,:,47)+rad(:,:,48)+rad(:,:,49)+rad(:,:,50)+rad(:,:,51)+rad(:,:,52)+rad(:,:,53)+rad(:,:,54)+rad(:,:,55)+rad(:,:,56)+rad(:,:,57)+rad(:,:,58)+rad(:,:,59)+rad(:,:,60)+rad(:,:,61)+rad(:,:,62)+rad(:,:,63)+rad(:,:,64)+rad(:,:,65)+rad(:,:,66)+rad(:,:,67)+rad(:,:,68)+rad(:,:,69)+rad(:,:,70)+rad(:,:,71)+rad(:,:,72)+rad(:,:,73)+rad(:,:,74)+rad(:,:,75)+rad(:,:,76)+rad(:,:,77)+rad(:,:,78)+rad(:,:,79)+rad(:,:,80)+rad(:,:,81)+rad(:,:,82)+rad(:,:,83))/83;
avgRad2=avgRad';
pcolor(lon2,lat,avgRad2);