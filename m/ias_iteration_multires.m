%Copyright © 2018, Sampsa Pursiainen
function [z] = ias_iteration_multires(void)

[s_ind_1] = unique(evalin('base','zef.source_interpolation_ind{1}'));
n_interp = length(s_ind_1);

beta = evalin('base','zef.inv_beta');
theta0 = evalin('base','zef.inv_theta0');
eta = beta - 1.5;
kappa = beta + 1.5;
std_lhood = evalin('base','zef.inv_likelihood_std');
sampling_freq = evalin('base','zef.inv_sampling_frequency');
high_pass = evalin('base','zef.inv_low_cut_frequency');
low_pass = evalin('base','zef.inv_high_cut_frequency');
number_of_frames = evalin('base','zef.number_of_frames');
time_step = evalin('base','zef.inv_time_3');
source_direction_mode = evalin('base','zef.source_direction_mode');
source_directions = evalin('base','zef.source_directions');
n_decompositions = evalin('base','zef.inv_multires_n_decompositions');
n_multires = evalin('base','zef.inv_multires_n_levels');
sparsity_factor = evalin('base','zef.inv_multires_sparsity');
weight_vec_aux = sum(sparsity_factor.^[0:n_multires-1]');

if source_direction_mode == 2

[s_ind_3] = evalin('base','zef.source_interpolation_ind{3}'); 

i = 0;
length_reuna = 0;
sigma_vec = [];
priority_vec = [];
visible_vec = [];
color_cell = cell(0);
aux_brain_ind = [];
aux_dir_mode = [];
for k = 1 : 27
switch k
    case 1
        var_0 = 'zef.d1_on';
        var_1 = 'zef.d1_sigma';
        var_2 = 'zef.d1_priority';
        var_3 = 'zef.d1_visible';
    color_str = evalin('base','zef.d1_color');
     case 2
        var_0 = 'zef.d2_on';
        var_1 = 'zef.d2_sigma';   
        var_2 = 'zef.d2_priority';
        var_3 = 'zef.d2_visible';
        color_str = evalin('base','zef.d2_color');
     case 3
        var_0 = 'zef.d3_on';
        var_1 = 'zef.d3_sigma';   
        var_2 = 'zef.d3_priority';
        var_3 = 'zef.d3_visible';
        color_str = evalin('base','zef.d3_color');
     case 4
        var_0 = 'zef.d4_on';
        var_1 = 'zef.d4_sigma';   
        var_2 = 'zef.d4_priority';
        var_3 = 'zef.d4_visible';
        color_str = evalin('base','zef.d4_color');
     case 5
        var_0 = 'zef.d5_on';
        var_1 = 'zef.d5_sigma';
        var_2 = 'zef.d5_priority';
        var_3 = 'zef.d5_visible';
    color_str = evalin('base','zef.d5_color');
     case 6
        var_0 = 'zef.d6_on';
        var_1 = 'zef.d6_sigma';   
        var_2 = 'zef.d6_priority';
        var_3 = 'zef.d6_visible';
        color_str = evalin('base','zef.d6_color');
     case 7
        var_0 = 'zef.d7_on';
        var_1 = 'zef.d7_sigma';   
        var_2 = 'zef.d7_priority';
        var_3 = 'zef.d7_visible';
        color_str = evalin('base','zef.d7_color');
     case 8
        var_0 = 'zef.d8_on';
        var_1 = 'zef.d8_sigma';   
        var_2 = 'zef.d8_priority';
        var_3 = 'zef.d8_visible';
        color_str = evalin('base','zef.d8_color');
    case 9
        var_0 = 'zef.d9_on';
        var_1 = 'zef.d9_sigma';   
        var_2 = 'zef.d9_priority';
        var_3 = 'zef.d9_visible';
        color_str = evalin('base','zef.d9_color');
     case 10
        var_0 = 'zef.d10_on';
        var_1 = 'zef.d10_sigma';   
        var_2 = 'zef.d10_priority';
        var_3 = 'zef.d10_visible';
        color_str = evalin('base','zef.d10_color');
     case 11
        var_0 = 'zef.d11_on';
        var_1 = 'zef.d11_sigma';   
        var_2 = 'zef.d11_priority';
        var_3 = 'zef.d11_visible';
        color_str = evalin('base','zef.d11_color');
     case 12
        var_0 = 'zef.d12_on';
        var_1 = 'zef.d12_sigma';   
        var_2 = 'zef.d12_priority';
        var_3 = 'zef.d12_visible';
        color_str = evalin('base','zef.d12_color');
     case 13
        var_0 = 'zef.d13_on';
        var_1 = 'zef.d13_sigma';   
        var_2 = 'zef.d13_priority';
        var_3 = 'zef.d13_visible';
        color_str = evalin('base','zef.d13_color');
  case 14
        var_0 = 'zef.d14_on';
        var_1 = 'zef.d14_sigma';
        var_2 = 'zef.d14_priority';
        var_3 = 'zef.d14_visible';
    color_str = evalin('base','zef.d14_color');
  case 15
        var_0 = 'zef.d15_on';
        var_1 = 'zef.d15_sigma';   
        var_2 = 'zef.d15_priority';
        var_3 = 'zef.d15_visible';
        color_str = evalin('base','zef.d15_color');
     case 16
        var_0 = 'zef.d16_on';
        var_1 = 'zef.d16_sigma';   
        var_2 = 'zef.d16_priority';
        var_3 = 'zef.d16_visible';
        color_str = evalin('base','zef.d16_color');
     case 17
        var_0 = 'zef.d17_on';
        var_1 = 'zef.d17_sigma';   
        var_2 = 'zef.d17_priority';
        var_3 = 'zef.d17_visible';
        color_str = evalin('base','zef.d17_color');
    case 18
        var_0 = 'zef.d18_on';
        var_1 = 'zef.d18_sigma';   
        var_2 = 'zef.d18_priority';
        var_3 = 'zef.d18_visible';
        color_str = evalin('base','zef.d18_color');
     case 19
        var_0 = 'zef.d19_on';
        var_1 = 'zef.d19_sigma';   
        var_2 = 'zef.d19_priority';
        var_3 = 'zef.d19_visible';
        color_str = evalin('base','zef.d19_color');
     case 20
        var_0 = 'zef.d20_on';
        var_1 = 'zef.d20_sigma';   
        var_2 = 'zef.d20_priority';
        var_3 = 'zef.d20_visible';
        color_str = evalin('base','zef.d20_color');
     case 21
        var_0 = 'zef.d21_on';
        var_1 = 'zef.d21_sigma';   
        var_2 = 'zef.d21_priority';
        var_3 = 'zef.d21_visible';
        color_str = evalin('base','zef.d21_color');
     case 22
        var_0 = 'zef.d22_on';
        var_1 = 'zef.d22_sigma';   
        var_2 = 'zef.d22_priority';
        var_3 = 'zef.d22_visible';
        color_str = evalin('base','zef.d22_color');
    case 23
        var_0 = 'zef.w_on';
        var_1 = 'zef.w_sigma';    
        var_2 = 'zef.w_priority';
        var_3 = 'zef.w_visible';
        color_str = evalin('base','zef.w_color');
    case 24
        var_0 = 'zef.g_on';
        var_1 = 'zef.g_sigma';
        var_2 = 'zef.g_priority';
        var_3 = 'zef.g_visible';
        color_str = evalin('base','zef.g_color');
    case 25
        var_0 = 'zef.c_on';
        var_1 = 'zef.c_sigma';
        var_2 = 'zef.c_priority';
        var_3 = 'zef.c_visible';
        color_str = evalin('base','zef.c_color');
     case 26
        var_0 = 'zef.sk_on';
        var_1 = 'zef.sk_sigma';
        var_2 = 'zef.sk_priority';
        var_3 = 'zef.sk_visible';
        color_str = evalin('base','zef.sk_color');
     case 27
        var_0 = 'zef.sc_on';
        var_1 = 'zef.sc_sigma';
        var_2 = 'zef.sc_priority';
        var_3 = 'zef.sc_visible';
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
if k == 1 && evalin('base','zef.d1_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d1_sources')-1];
end
if k == 2 && evalin('base','zef.d2_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d2_sources')-1];
end
if k == 3 && evalin('base','zef.d3_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d3_sources')-1];
end
if k == 4 && evalin('base','zef.d4_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d4_sources')-1];
end
if k == 5 && evalin('base','zef.d5_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d5_sources')-1];
end
if k == 6 && evalin('base','zef.d6_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d6_sources')-1];
end
if k == 7 && evalin('base','zef.d7_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d7_sources')-1];
end
if k == 8 && evalin('base','zef.d8_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d8_sources')-1];
end
if k == 9 && evalin('base','zef.d9_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d9_sources')-1];
end
if k == 10 && evalin('base','zef.d10_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d10_sources')-1];
end
if k == 11 && evalin('base','zef.d11_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d11_sources')-1];
end
if k == 12 && evalin('base','zef.d12_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d12_sources')-1];
end
if k == 13 && evalin('base','zef.d13_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d13_sources')-1];
end
if k == 14 && evalin('base','zef.d14_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d14_sources')-1];
end
if k == 15 && evalin('base','zef.d15_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d15_sources')-1];
end
if k == 16 && evalin('base','zef.d16_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d16_sources')-1];
end
if k == 17 && evalin('base','zef.d17_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d17_sources')-1];
end
if k == 18 && evalin('base','zef.d18_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d18_sources')-1];
end
if k == 19 && evalin('base','zef.d19_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d19_sources')-1];
end
if k == 20 && evalin('base','zef.d20_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d20_sources')-1];
end
if k == 21 && evalin('base','zef.d21_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d21_sources')-1];
end
if k == 22 && evalin('base','zef.d22_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.d22_sources')-1];
end
if k == 23 && evalin('base','zef.w_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.w_sources')-1];
end
if k == 24 && evalin('base','zef.g_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.g_sources')-1];
end
if k == 25 && evalin('base','zef.c_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.c_sources')-1];
end
if k == 26 && evalin('base','zef.sk_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.sk_sources')-1];
end
if k == 27 && evalin('base','zef.sc_sources');
    aux_brain_ind = [aux_brain_ind i];
    aux_dir_mode = [aux_dir_mode evalin('base','zef.sc_sources')-1];
end
end
end

a_d_i_vec = [];
aux_p = [];
aux_t = [];

for ab_ind = 1 : length(aux_brain_ind)

aux_t = [aux_t ; size(aux_p,1) + evalin('base',['zef.reuna_t{' int2str(aux_brain_ind(ab_ind)) '}'])];
aux_p = [aux_p ; evalin('base',['zef.reuna_p{' int2str(aux_brain_ind(ab_ind)) '}'])];
a_d_i_vec = [a_d_i_vec ; aux_dir_mode(ab_ind)*ones(size(evalin('base',['zef.reuna_p{' int2str(aux_brain_ind(ab_ind)) '}']),1),1)];

end

a_d_i_vec = a_d_i_vec(aux_t(:,1));
n_vec_aux = cross(aux_p(aux_t(:,2),:)' - aux_p(aux_t(:,1),:)', aux_p(aux_t(:,3),:)' - aux_p(aux_t(:,1),:)')';
n_vec_aux = n_vec_aux./repmat(sqrt(sum(n_vec_aux.^2,2)),1,3);

n_vec_aux(:,1) = smooth_field(aux_t, n_vec_aux(:,1), size(aux_p(:,1),1),7);
n_vec_aux(:,2) = smooth_field(aux_t, n_vec_aux(:,2), size(aux_p(:,1),1),7);
n_vec_aux(:,3) = smooth_field(aux_t, n_vec_aux(:,3), size(aux_p(:,1),1),7);

n_vec_aux =  - n_vec_aux./repmat(sqrt(sum(n_vec_aux.^2,2)),1,3);

s_ind_4 = find(not(a_d_i_vec(s_ind_3)));
source_directions = n_vec_aux(s_ind_3,:);

end

if source_direction_mode == 3
source_directions = source_directions(s_ind_1,:);
end

if source_direction_mode == 1  || source_direction_mode == 2
s_ind_1 = [3*s_ind_1-2 ; 3*s_ind_1-1 ; 3*s_ind_1];
end
if  source_direction_mode == 3
s_ind_2 = [3*s_ind_1-2 ; 3*s_ind_1-1 ; 3*s_ind_1];
end

s_ind_1 = s_ind_1(:);

L = evalin('base','zef.L');
L = L(:,s_ind_1);

if source_direction_mode == 2

L_1 = L(:,1:n_interp);
L_2 = L(:,n_interp+1:2*n_interp);
L_3 = L(:,2*n_interp+1:3*n_interp);
s_1 = source_directions(:,1)';
s_2 = source_directions(:,2)';
s_3 = source_directions(:,3)';
ones_vec = ones(size(L,1),1);
L_0 = L_1(:,s_ind_4).*s_1(ones_vec,s_ind_4) + L_2(:,s_ind_4).*s_2(ones_vec,s_ind_4) + L_3(:,s_ind_4).*s_3(ones_vec,s_ind_4);
L(:,s_ind_4) = L_0;
L(:,n_interp+s_ind_4) = L_0;
L(:,2*n_interp+s_ind_4) = L_0;
clear L_0 L_1 L_2 L_3 s_1 s_2 s_3;

end

if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
L = gpuArray(L);
end
L_aux = L;
S_mat = std_lhood^2*eye(size(L,1));
if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
S_mat = gpuArray(S_mat);
end

if number_of_frames > 1
z = cell(number_of_frames,1);
else
number_of_frames = 1;
end

tic;
for f_ind = 1 : number_of_frames
time_val = toc; 
if f_ind > 1; 
date_str = datestr(datevec(now+(number_of_frames/(f_ind-1) - 1)*time_val/86400));
end;

if iscell(evalin('base','zef.measurements'));
f = evalin('base',['zef.measurements{' int2str(evalin('base','zef.inv_data_segment')) '}']);
else
f = evalin('base','zef.measurements');
end

data_norm = 1;
if evalin('base','zef.normalize_data')==1;
data_norm = max(abs(f(:)).^2); 
%std_lhood = std_lhood^2;
elseif evalin('base','zef.normalize_data')==2;
data_norm = max((sum(abs(f).^2)));
%std_lhood = std_lhood^2;
elseif evalin('base','zef.normalize_data')==3;
data_norm = sum((sum(abs(f).^2)))/size(f,2);
%std_lhood = std_lhood^2;
end;
f = f/data_norm;

filter_order = 3;
if size(f,2) > 0 && low_pass > 0
[lp_f_1,lp_f_2] = ellip(filter_order,3,60,low_pass/(sampling_freq/2));
f = filter(lp_f_1,lp_f_2,f')';
end
if size(f,2) > 0 && high_pass > 0
[hp_f_1,hp_f_2] = ellip(filter_order,3,60,high_pass/(sampling_freq/2),'high');
f = filter(hp_f_1,hp_f_2,f')';
end

if source_direction_mode == 1 || source_direction_mode == 2
z_aux = zeros(size(L_aux,2),1); 
end
if source_direction_mode == 3
z_aux = zeros(3*size(L_aux,2),1);
end
z_vec = ones(size(L_aux,2),1); 
theta = theta0*ones(length(z_vec),1);
%aux_norm = (sum(L.^2))';
%aux_norm = aux_norm./max(aux_norm(:));
%theta = theta0*aux_norm;

if size(f,2) > 1  
if evalin('base','zef.inv_time_2') >=0 0 && evalin('base','zef.inv_time_1') >= 0 & 1 + sampling_freq*evalin('base','zef.inv_time_1') <= size(f,2);
f = f(:, max(1, 1 + floor(sampling_freq*evalin('base','zef.inv_time_1')+sampling_freq*(f_ind - 1)*evalin('base','zef.inv_time_3'))) : min(size(f,2), 1 + floor(sampling_freq*(evalin('base','zef.inv_time_1') + evalin('base','zef.inv_time_2'))+sampling_freq*(f_ind - 1)*evalin('base','zef.inv_time_3'))));
end
end
if size(f,2) > 1
t = [1:size(f,2)];
gaussian_window = blackmanharris(length(t))';
f = f.*gaussian_window;
f = mean(f,2);
end
if f_ind == 1
h = waitbar(0,['IAS MAP iteration. Time step ' int2str(f_ind) ' of ' int2str(number_of_frames) '.']);
end
n_ias_map_iter = evalin('base','zef.inv_n_map_iterations');

if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
f = gpuArray(f);
end 

multires_dec =  evalin('base','zef.inv_multires_dec');
multires_ind =  evalin('base','zef.inv_multires_ind');
n_iter = evalin('base','zef.inv_multires_n_iter');
mr_sparsity = evalin('base','zef.inv_multires_sparsity');

z_vec_aux = zeros(size(L_aux,2),1);
theta_vec_aux = zeros(size(L_aux,2),1);

for n_rep = 1 : n_decompositions

if evalin('base','zef.inv_init_guess_mode') == 2
theta = theta0*ones(size(L_aux,2),1);
end 

for j = 1 : n_multires

n_mr_dec = length(multires_dec{n_rep}{j});

if source_direction_mode == 1 || source_direction_mode == 2
mr_dec = [multires_dec{n_rep}{j}; multires_dec{n_rep}{j}+n_interp ; multires_dec{n_rep}{j} + 2*n_interp];
mr_dec = mr_dec(:);
mr_ind = [multires_ind{n_rep}{j} ; multires_ind{n_rep}{j} + n_mr_dec ; multires_ind{n_rep}{j} + 2*n_mr_dec];
mr_ind = mr_ind(:);
end

if source_direction_mode == 3 
mr_dec = multires_dec{n_rep}{j}; 
mr_dec = mr_dec(:);
mr_ind = multires_ind{n_rep}{j}; 
mr_ind = mr_ind(:);
end

if n_iter(j) > 0
L_aux_2 = L_aux(:,mr_dec);
theta = theta(mr_dec);
end

for i = 1 : n_iter(j)
if f_ind > 1;    
waitbar(i/n_iter(j),h,['Dec. ' int2str(n_rep) ' of ' int2str(n_decompositions) ', Step ' int2str(f_ind) ' of ' int2str(number_of_frames) '. Ready: ' date_str '.' ]);
else
waitbar(i/n_iter(j),h,['IAS MAP iteration. Dec. ' int2str(n_rep) ' of ' int2str(n_decompositions) ', Time step ' int2str(f_ind) ' of ' int2str(number_of_frames) '.' ]);   
end;
d_sqrt = sqrt(theta);
if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
d_sqrt = gpuArray(d_sqrt);
end
L = L_aux_2.*repmat(d_sqrt',size(L,1),1); 
z_vec = d_sqrt.*(L'*((L*L' + S_mat)\f));

if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
z_vec = gather(z_vec);
end
if evalin('base','zef.inv_hyperprior') == 1;
theta = theta0*(eta + sqrt((1/(2*theta0))*z_vec.^2 + eta^2)); 
else
theta = (theta0+0.5*z_vec.^2)./kappa;
end;

end;

%if n_iter(j) > 0
%theta_aux = sqrt(sum(reshape(theta.^2, length(theta)/3, 3),2));
%theta = repmat(theta_aux, 3, 1);

% theta_aux_2 = sqrt(theta(1:length(z_vec)/3).^2 + theta(length(z_vec)/3 +1 :2*length(z_vec)/3).^2 + theta(2*length(z_vec)/3 +1 :3*length(z_vec)/3).^2);
% theta(1:length(z_vec)/3) = theta_aux_2;
% theta(length(z_vec)/3+1 : 2*length(z_vec)/3) = theta_aux_2;
% theta(2*length(z_vec)/3+1 : 3*length(z_vec)/3) = theta_aux_2;

if n_iter(j) > 0
theta = theta(mr_ind);
z_vec = z_vec(mr_ind);
end
%end

%theta_aux(:,j) = theta_aux(:,j) + theta*mr_sparsity.^(j-n_multires);
%z_vec_aux(:,j) = z_vec_aux(:,j) + z_vec*mr_sparsity.^(j-n_multires);

%theta_aux(:,j) = theta;%*mr_sparsity.^(j-n_multires);
%z_vec_aux(:,j) = z_vec_aux(:,j) + z_vec;%*mr_sparsity.^(j-n_multires);
%w_vec_aux(:,j) = 1;%mr_sparsity.^(j-n_multires);

%theta = sum(theta_aux(:,1:j),2)/sum(w_vec_aux(1:j),2);
%z_vec = sum(z_vec_aux(:,1:j),2)/sum(w_vec_aux(1:j),2);



%theta_aux(:,j) = theta;
%z_vec_aux(:,j) = z_vec;

% theta_aux = sqrt(theta(1:length(z_vec_aux)/3).^2 + theta(length(z_vec_aux)/3 +1 :2*length(z_vec_aux)/3).^2 + theta(2*length(z_vec_aux)/3 +1 :3*length(z_vec)/3).^2);
% theta(1:length(z_vec)/3) = theta_aux;
% theta(length(z_vec)/3+1 : 2*length(z_vec)/3) = theta_aux;
% theta(2*length(z_vec)/3+1 : 3*length(z_vec)/3) = theta_aux;
% theta = z_vec_aux;

z_vec_aux = z_vec_aux + z_vec;
theta_vec_aux = theta_vec_aux + theta;
end

theta = theta_vec_aux/n_multires;

end

z_vec = z_vec_aux/(n_multires*n_decompositions*weight_vec_aux);


%assignin('base','reconstruction_aux',z_vec);

%theta = mean(theta_aux,2);
%z_vec = mean(z_vec_aux,2);

if source_direction_mode == 2
z_vec_aux = (z_vec(s_ind_4) + z_vec(n_interp+s_ind_4) + z_vec(2*n_interp+s_ind_4))/3;
z_vec(s_ind_4) = z_vec_aux.*source_directions(s_ind_4,1); 
z_vec(n_interp+s_ind_4) = z_vec_aux.*source_directions(s_ind_4,2); 
z_vec(2*n_interp+s_ind_4) = z_vec_aux.*source_directions(s_ind_4,3); 
%z_vec = z_vec(:);
end

if source_direction_mode == 3 
z_vec = [z_vec.*source_directions(:,1) ; z_vec.*source_directions(:,2) ;  z_vec.*source_directions(:,3)]';
%z_vec = z_vec(:);
end


if source_direction_mode == 1 || source_direction_mode == 2
z_aux(s_ind_1) = z_vec;
end
if source_direction_mode == 3
z_aux(s_ind_2) = z_vec;
end

if number_of_frames > 1;
z{f_ind} = z_aux;
else
z = z_aux;
end;
end;
if number_of_frames > 1;
aux_norm_vec = 0;
for f_ind = 1 : number_of_frames;
aux_norm_vec = max(sqrt(sum(reshape(z{f_ind}, 3, length(z{f_ind})/3).^2)),aux_norm_vec);
end;
for f_ind = 1 : number_of_frames;
z{f_ind} = z{f_ind}./max(aux_norm_vec);
end;
else
aux_norm_vec = sqrt(sum(reshape(z, 3, length(z)/3).^2)); 
z = z./max(aux_norm_vec);
end;
close(h);
