%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
function [parcellation_interpolation_ind] = zef_parcellation_interpolation(void)

sigma_ind_vec = evalin('base','zef.sigma(zef.brain_ind,2)');
submesh_ind_vec = evalin('base','zef.submesh_ind');

cortex_ind_aux = 0;
i = 0;
length_reuna = 0;
sigma_vec = [];
priority_vec = [];
visible_vec = [];
color_cell = cell(0);
aux_brain_ind = [];
aux_dir_mode = [];
submesh_cell = cell(0);
for k = 1 : 27
switch k
    case 1
        var_0 = 'zef.d1_on';
        var_1 = 'zef.d1_sigma';
        var_2 = 'zef.d1_priority';
        var_3 = 'zef.d1_visible';
        var_4 = 'zef.d1_submesh_ind';
    color_str = evalin('base','zef.d1_color');
     case 2
        var_0 = 'zef.d2_on';
        var_1 = 'zef.d2_sigma';   
        var_2 = 'zef.d2_priority';
        var_3 = 'zef.d2_visible';
        var_4 = 'zef.d2_submesh_ind';
        color_str = evalin('base','zef.d2_color');
     case 3
        var_0 = 'zef.d3_on';
        var_1 = 'zef.d3_sigma';   
        var_2 = 'zef.d3_priority';
        var_3 = 'zef.d3_visible';
        var_4 = 'zef.d3_submesh_ind';
        color_str = evalin('base','zef.d3_color');
     case 4
        var_0 = 'zef.d4_on';
        var_1 = 'zef.d4_sigma';   
        var_2 = 'zef.d4_priority';
        var_3 = 'zef.d4_visible';
        var_4 = 'zef.d4_submesh_ind';
        color_str = evalin('base','zef.d4_color');
     case 5
        var_0 = 'zef.d5_on';
        var_1 = 'zef.d5_sigma';
        var_2 = 'zef.d5_priority';
        var_3 = 'zef.d5_visible';
        var_4 = 'zef.d5_submesh_ind';
    color_str = evalin('base','zef.d5_color');
     case 6
        var_0 = 'zef.d6_on';
        var_1 = 'zef.d6_sigma';   
        var_2 = 'zef.d6_priority';
        var_3 = 'zef.d6_visible';
        var_4 = 'zef.d6_submesh_ind';
        color_str = evalin('base','zef.d6_color');
     case 7
        var_0 = 'zef.d7_on';
        var_1 = 'zef.d7_sigma';   
        var_2 = 'zef.d7_priority';
        var_3 = 'zef.d7_visible';
        var_4 = 'zef.d7_submesh_ind';
        color_str = evalin('base','zef.d7_color');
     case 8
        var_0 = 'zef.d8_on';
        var_1 = 'zef.d8_sigma';   
        var_2 = 'zef.d8_priority';
        var_3 = 'zef.d8_visible';
        var_4 = 'zef.d8_submesh_ind';
        color_str = evalin('base','zef.d8_color');
    case 9
        var_0 = 'zef.d9_on';
        var_1 = 'zef.d9_sigma';   
        var_2 = 'zef.d9_priority';
        var_3 = 'zef.d9_visible';
        var_4 = 'zef.d9_submesh_ind';
        color_str = evalin('base','zef.d9_color');
     case 10
        var_0 = 'zef.d10_on';
        var_1 = 'zef.d10_sigma';   
        var_2 = 'zef.d10_priority';
        var_3 = 'zef.d10_visible';
        var_4 = 'zef.d10_submesh_ind';
        color_str = evalin('base','zef.d10_color');
     case 11
        var_0 = 'zef.d11_on';
        var_1 = 'zef.d11_sigma';   
        var_2 = 'zef.d11_priority';
        var_3 = 'zef.d11_visible';
        var_4 = 'zef.d11_submesh_ind';
        color_str = evalin('base','zef.d11_color');
     case 12
        var_0 = 'zef.d12_on';
        var_1 = 'zef.d12_sigma';   
        var_2 = 'zef.d12_priority';
        var_3 = 'zef.d12_visible';
        var_4 = 'zef.d12_submesh_ind';
        color_str = evalin('base','zef.d12_color');
     case 13
        var_0 = 'zef.d13_on';
        var_1 = 'zef.d13_sigma';   
        var_2 = 'zef.d13_priority';
        var_3 = 'zef.d13_visible';
        var_4 = 'zef.d13_submesh_ind';
        color_str = evalin('base','zef.d13_color');
  case 14
        var_0 = 'zef.d14_on';
        var_1 = 'zef.d14_sigma';
        var_2 = 'zef.d14_priority';
        var_3 = 'zef.d14_visible';
        var_4 = 'zef.d14_submesh_ind';
    color_str = evalin('base','zef.d14_color');
  case 15
        var_0 = 'zef.d15_on';
        var_1 = 'zef.d15_sigma';   
        var_2 = 'zef.d15_priority';
        var_3 = 'zef.d15_visible';
        var_4 = 'zef.d15_submesh_ind';
        color_str = evalin('base','zef.d15_color');
     case 16
        var_0 = 'zef.d16_on';
        var_1 = 'zef.d16_sigma';   
        var_2 = 'zef.d16_priority';
        var_3 = 'zef.d16_visible';
        var_4 = 'zef.d16_submesh_ind';
        color_str = evalin('base','zef.d16_color');
     case 17
        var_0 = 'zef.d17_on';
        var_1 = 'zef.d17_sigma';   
        var_2 = 'zef.d17_priority';
        var_3 = 'zef.d17_visible';
        var_4 = 'zef.d17_submesh_ind';
        color_str = evalin('base','zef.d17_color');
    case 18
        var_0 = 'zef.d18_on';
        var_1 = 'zef.d18_sigma';   
        var_2 = 'zef.d18_priority';
        var_3 = 'zef.d18_visible';
        var_4 = 'zef.d18_submesh_ind';
        color_str = evalin('base','zef.d18_color');
     case 19
        var_0 = 'zef.d19_on';
        var_1 = 'zef.d19_sigma';   
        var_2 = 'zef.d19_priority';
        var_3 = 'zef.d19_visible';
        var_4 = 'zef.d19_submesh_ind';
        color_str = evalin('base','zef.d19_color');
     case 20
        var_0 = 'zef.d20_on';
        var_1 = 'zef.d20_sigma';   
        var_2 = 'zef.d20_priority';
        var_3 = 'zef.d20_visible';
        var_4 = 'zef.d20_submesh_ind';
        color_str = evalin('base','zef.d20_color');
     case 21
        var_0 = 'zef.d21_on';
        var_1 = 'zef.d21_sigma';   
        var_2 = 'zef.d21_priority';
        var_3 = 'zef.d21_visible';
        var_4 = 'zef.d21_submesh_ind';
        color_str = evalin('base','zef.d21_color');
     case 22
        var_0 = 'zef.d22_on';
        var_1 = 'zef.d22_sigma';   
        var_2 = 'zef.d22_priority';
        var_3 = 'zef.d22_visible';
        var_4 = 'zef.d22_submesh_ind';
        color_str = evalin('base','zef.d22_color');
    case 23
        var_0 = 'zef.w_on';
        var_1 = 'zef.w_sigma';    
        var_2 = 'zef.w_priority';
        var_3 = 'zef.w_visible';
        var_4 = 'zef.w_submesh_ind';
        color_str = evalin('base','zef.w_color');
    case 24
        var_0 = 'zef.g_on';
        var_1 = 'zef.g_sigma';
        var_2 = 'zef.g_priority';
        var_3 = 'zef.g_visible';
        var_4 = 'zef.g_submesh_ind';
        color_str = evalin('base','zef.g_color');
    case 25
        var_0 = 'zef.c_on';
        var_1 = 'zef.c_sigma';
        var_2 = 'zef.c_priority';
        var_3 = 'zef.c_visible';
        var_4 = 'zef.c_submesh_ind';
        color_str = evalin('base','zef.c_color');
     case 26
        var_0 = 'zef.sk_on';
        var_1 = 'zef.sk_sigma';
        var_2 = 'zef.sk_priority';
        var_3 = 'zef.sk_visible';
        var_4 = 'zef.sk_submesh_ind';
        color_str = evalin('base','zef.sk_color');
     case 27
        var_0 = 'zef.sc_on';
        var_1 = 'zef.sc_sigma';
        var_2 = 'zef.sc_priority';
        var_3 = 'zef.sc_visible';
        var_4 = 'zef.sc_submesh_ind';
        color_str = evalin('base','zef.sc_color');
     end
on_val = evalin('base',var_0);      
sigma_val = evalin('base',var_1);  
priority_val = evalin('base',var_2);
visible_val = evalin('base',var_3);
if on_val
i = i + 1;
sigma_vec(i,1) = sigma_val;
priority_vec(i,1) = priority_val;
color_cell{i} = color_str;
visible_vec(i,1) = i*visible_val;
submesh_cell{i} = evalin('base',var_4);
if k == 1 && evalin('base','zef.d1_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 2 && evalin('base','zef.d2_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 3 && evalin('base','zef.d3_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 4 && evalin('base','zef.d4_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 5 && evalin('base','zef.d5_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 6 && evalin('base','zef.d6_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 7 && evalin('base','zef.d7_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 8 && evalin('base','zef.d8_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 9 && evalin('base','zef.d9_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 10 && evalin('base','zef.d10_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 11 && evalin('base','zef.d11_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 12 && evalin('base','zef.d12_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 13 && evalin('base','zef.d13_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 14 && evalin('base','zef.d14_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 15 && evalin('base','zef.d15_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 16 && evalin('base','zef.d16_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 17 && evalin('base','zef.d17_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 18 && evalin('base','zef.d18_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 19 && evalin('base','zef.d19_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 20 && evalin('base','zef.d20_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 21 && evalin('base','zef.d21_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 22 && evalin('base','zef.d22_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 23 && evalin('base','zef.w_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 24 && evalin('base','zef.g_sources');
    aux_brain_ind = [aux_brain_ind i];
    cortex_ind_aux = i;
end
if k == 25 && evalin('base','zef.c_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 26 && evalin('base','zef.sk_sources');
    aux_brain_ind = [aux_brain_ind i];
end
if k == 27 && evalin('base','zef.sc_sources');
    aux_brain_ind = [aux_brain_ind i];
end
end
end

p_colortable = evalin('base','zef.parcellation_colortable');
p_points = evalin('base','zef.parcellation_points');
p_tolerance = evalin('base','zef.parcellation_tolerance');
p_selected = evalin('base','zef.parcellation_selected');

p_length = 0;
c_length = 1;
c_max = [];
p_colormap = [];
p_points_ind_aux = [];
parcellation_p = [];
p_compartment = [];
p_cortex = [];
for i = 1 : length(p_points)
    min_aux = min(p_colortable{i}{4});
    c_ind_aux_1 = [1: size(p_colortable{i}{3},1)]' + c_length;
    c_length = c_length + size(p_colortable{i}{3},1);
    c_ind_aux_2 = zeros(max(p_colortable{i}{4})+1,1);
    c_ind_aux_2(p_colortable{i}{3}(:,5)+1) = c_ind_aux_1;
    p_colortable_aux = c_ind_aux_2(p_colortable{i}{4}+1);
    p_points_ind_aux = [p_points_ind_aux ; p_colortable_aux(p_points{i}(:,1)+1)];
    parcellation_p = [parcellation_p ; p_points{i}(:,2:4)];
    if length(p_colortable{i}) > 4
        p_compartment= [p_compartment ; p_colortable{i}{5}];
        p_cortex = [p_cortex ; zeros(length(p_colortable{i}{3}(:,5)),1)];
    else
    p_compartment = [p_compartment ; [cortex_ind_aux*ones(length(p_colortable{i}{3}(:,5)),1) ones(length(p_colortable{i}{3}(:,5)),1)]];
    p_cortex = [p_cortex ; ones(length(p_colortable{i}{3}(:,5)),1)];
    end
end


brain_ind = evalin('base','zef.brain_ind');
nodes = evalin('base','zef.nodes');
tetra = evalin('base','zef.tetra');

if evalin('base','zef.location_unit_current') == 2 
parcellation_p = 10*parcellation_p;
end

if evalin('base','zef.location_unit_current') == 3
zef.parcellation_p = 1000*parcellation_p;
end

I_compartment = find(evalin('base','zef.sigma(:,2)')==cortex_ind_aux);
brain_cortex_ind = find(ismember(brain_ind,I_compartment));
cortex_ind = brain_ind(brain_cortex_ind);

[center_points I center_points_ind] = unique(tetra(cortex_ind,:));
source_interpolation_ind = zeros(length(center_points),1);
source_interpolation_aux = source_interpolation_ind;
center_points = nodes(center_points,:)';
size_center_points = size(center_points,2); 

h = waitbar(i/size_center_points,['Interp. 1.']); 
p_counter = 0;
for p_ind = p_selected + 1 
p_counter = p_counter + 1;    
source_positions = parcellation_p(find(p_points_ind_aux == p_ind),:);
parcellation_interpolation_ind{p_ind-1}{1} = [];

if not(p_cortex(p_ind-1) == 1)

sigma_ind = find(sigma_ind_vec==p_compartment(p_ind-1,1));
parcellation_interpolation_ind{p_ind-1}{1} = sigma_ind(find(submesh_ind_vec(sigma_ind)==p_compartment(p_ind-1,2))); 
    
else

if not(isempty(source_positions))

source_positions = source_positions';
ones_vec = ones(size(source_positions,2),1);

use_gpu  = evalin('base','zef.use_gpu');
gpu_num  = evalin('base','zef.gpu_num');

if use_gpu == 1 & gpuDeviceCount > 0
center_points = gpuArray(center_points);
source_positions = gpuArray(source_positions);
source_interpolation_aux = gpuArray(source_interpolation_aux);
end 

par_num = evalin('base','zef.parallel_vectors');
bar_ind = ceil(size_center_points/(50*par_num));
i_ind = 0;
    
tic;
for i = 1 : par_num : size_center_points

i_ind = i_ind + 1;
block_ind = [i: min(i+par_num-1,size_center_points)];
aux_vec = center_points(:,block_ind);
aux_vec = reshape(aux_vec,3,1,length(block_ind));
norm_vec = sum((source_positions(:,:,ones(1,length(block_ind))) - aux_vec(:,ones_vec,:)).^2);
[min_val min_ind] = min(norm_vec,[],2);
source_interpolation_aux(block_ind) = min_val(:);

time_val = toc;
if mod(i_ind,bar_ind)==0 
waitbar(i/size_center_points,h,['Interp. 1. ' num2str(p_counter) '/' num2str(length(p_selected))  '. Ready: ' datestr(datevec(now+(size_center_points/i - 1)*time_val/86400)) '.']);
end

end

source_interpolation_ind = (gather(source_interpolation_aux));

%if not(isempty(rand_perm_aux))
%source_interpolation_ind{1} = rand_perm_aux(source_interpolation_ind{1});
%end

parcellation_interpolation_ind{p_ind-1}{1} = find(mean(sqrt(reshape(source_interpolation_ind(center_points_ind), length(cortex_ind), 4)),2)<p_tolerance); 
parcellation_interpolation_ind{p_ind-1}{1} = brain_cortex_ind(parcellation_interpolation_ind{p_ind-1}{1});

end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for ab_ind = 1 : length(aux_brain_ind)
    
p_counter = 0;
for p_ind = p_selected + 1
p_counter = p_counter + 1;    

parcellation_interpolation_ind{p_ind-1}{2}{ab_ind} = []; 
triangles = evalin('base',['zef.reuna_t{' int2str(aux_brain_ind(ab_ind)) '}']);
if not(p_cortex(p_ind-1) == 1)
    if aux_brain_ind(ab_ind) == p_compartment(p_ind-1,1)
    if isempty(submesh_cell{aux_brain_ind(ab_ind)})
    submesh_ind_aux_1 = 0;
    submesh_ind_aux_2 = size(triangles,1);
    elseif p_compartment(p_ind-1,2) == 1
    submesh_ind_aux_1 = 0;
    submesh_ind_aux_2 = submesh_cell{aux_brain_ind(ab_ind)}(1);
    else
    submesh_ind_aux_1 = submesh_cell{aux_brain_ind(ab_ind)}(p_compartment(p_ind-2,2));
    submesh_ind_aux_2 = submesh_cell{aux_brain_ind(ab_ind)}(p_compartment(p_ind-1,2));
    end
    parcellation_interpolation_ind{p_ind-1}{2}{ab_ind} = [submesh_ind_aux_1+1:submesh_ind_aux_2]'; 
    end
    
else

if aux_brain_ind(ab_ind) == cortex_ind_aux
    
source_positions = parcellation_p(find(p_points_ind_aux == p_ind),:)';    

if not(isempty(source_positions))

%aux_point_ind = unique(gather(source_interpolation_ind{1}));
%source_positions = source_positions_aux(:,aux_point_ind);
ones_vec = ones(size(source_positions,2),1);

%s_ind_1{ab_ind} = aux_point_ind;

center_points = evalin('base',['zef.reuna_p{' int2str(aux_brain_ind(ab_ind)) '}']);
center_points = center_points';

source_interpolation_ind = zeros(length(center_points),1);
source_interpolation_aux = source_interpolation_ind;

size_center_points = size(center_points,2); 

use_gpu  = evalin('base','zef.use_gpu');
gpu_num  = evalin('base','zef.gpu_num');

if use_gpu == 1 & gpuDeviceCount > 0
center_points = gpuArray(center_points);
source_positions = gpuArray(source_positions);
source_interpolation_aux = gpuArray(source_interpolation_aux);
end 

par_num = evalin('base','zef.parallel_vectors');
bar_ind = ceil(size_center_points/(50*par_num)); 
i_ind = 0; 

tic;

for i = 1 : par_num : size_center_points

i_ind = i_ind + 1;
block_ind = [i: min(i+par_num-1,size_center_points)];
aux_vec = center_points(:,block_ind);
aux_vec = reshape(aux_vec,3,1,length(block_ind));
norm_vec = sum((source_positions(:,:,ones(1,length(block_ind))) - aux_vec(:,ones_vec,:)).^2);
[min_val min_ind] = min(norm_vec,[],2);
source_interpolation_aux(block_ind) = min_val(:);

time_val = toc;
if i == 1 && p_ind == p_selected(1) + 1
waitbar(i/size_center_points,h,['Interp. 2: ' num2str(ab_ind) '/' num2str(length(aux_brain_ind)) '.']);    
elseif mod(i_ind,bar_ind)==0 
waitbar(i/size_center_points,h,['Interp. 2: ' num2str(p_counter) '/' num2str(length(p_selected))  ', ' num2str(ab_ind) '/' num2str(length(aux_brain_ind)) '. Ready: ' datestr(datevec(now+(size_center_points/i - 1)*time_val/86400)) '.']);
end

end

source_interpolation_ind = gather(source_interpolation_aux);

%if not(isempty(rand_perm_aux))
%source_interpolation_ind{2}{ab_ind} = rand_perm_aux(source_interpolation_ind{2});
%end
parcellation_interpolation_ind{p_ind-1}{2}{ab_ind} = find(mean(sqrt(source_interpolation_ind(triangles)),2)<p_tolerance); 


waitbar(1,h,['Interp. 2: ' num2str(p_counter) '/' num2str(length(p_selected)) ', ' num2str(ab_ind) '/' num2str(length(aux_brain_ind)) '. Ready: ' datestr(datevec(now+(size_center_points/i - 1)*time_val/86400)) '.']);

end
end
end
end
end

close(h)

end



