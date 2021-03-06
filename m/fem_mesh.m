%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
function [nodes,nodes_b,tetra,johtavuus_ind,surface_triangles] = fem_mesh(void)

h = waitbar(0,'Initial mesh.');

mesh_res = evalin('base','zef.mesh_resolution');
reuna_p = evalin('base','zef.reuna_p');
reuna_t = evalin('base','zef.reuna_t');
sensors = evalin('base','zef.sensors');

i = 0;
sigma_vec = [];
priority_vec = [];
submesh_cell = cell(0);
for k = 1 : 27   
switch k
    case 1
        var_0 = 'zef.d1_on';
        var_1 = 'zef.d1_sigma';
        var_2 = 'zef.d1_priority';
        var_3 = 'zef.d1_submesh_ind';
     case 2
        var_0 = 'zef.d2_on';
        var_1 = 'zef.d2_sigma';   
        var_2 = 'zef.d2_priority';
        var_3 = 'zef.d2_submesh_ind';
     case 3
        var_0 = 'zef.d3_on';
        var_1 = 'zef.d3_sigma';   
        var_2 = 'zef.d3_priority';
        var_3 = 'zef.d3_submesh_ind';
     case 4
        var_0 = 'zef.d4_on';
        var_1 = 'zef.d4_sigma';   
        var_2 = 'zef.d4_priority';
        var_3 = 'zef.d4_submesh_ind';
   case 5
        var_0 = 'zef.d5_on';
        var_1 = 'zef.d5_sigma';
        var_2 = 'zef.d5_priority';
        var_3 = 'zef.d5_submesh_ind';
     case 6
        var_0 = 'zef.d6_on';
        var_1 = 'zef.d6_sigma';   
        var_2 = 'zef.d6_priority';
        var_3 = 'zef.d6_submesh_ind';
     case 7
        var_0 = 'zef.d7_on';
        var_1 = 'zef.d7_sigma';   
        var_2 = 'zef.d7_priority';
        var_3 = 'zef.d7_submesh_ind';
     case 8
        var_0 = 'zef.d8_on';
        var_1 = 'zef.d8_sigma';   
        var_2 = 'zef.d8_priority';
        var_3 = 'zef.d8_submesh_ind';
   case 9
        var_0 = 'zef.d9_on';
        var_1 = 'zef.d9_sigma';
        var_2 = 'zef.d9_priority';
        var_3 = 'zef.d9_submesh_ind';
     case 10
        var_0 = 'zef.d10_on';
        var_1 = 'zef.d10_sigma';   
        var_2 = 'zef.d10_priority';
        var_3 = 'zef.d10_submesh_ind';
     case 11
        var_0 = 'zef.d11_on';
        var_1 = 'zef.d11_sigma';   
        var_2 = 'zef.d11_priority';
        var_3 = 'zef.d11_submesh_ind';
     case 12
        var_0 = 'zef.d12_on';
        var_1 = 'zef.d12_sigma';   
        var_2 = 'zef.d12_priority';
        var_3 = 'zef.d12_submesh_ind';
     case 13
        var_0 = 'zef.d13_on';
        var_1 = 'zef.d13_sigma';   
        var_2 = 'zef.d13_priority';
        var_3 = 'zef.d13_submesh_ind';
     case 14
        var_0 = 'zef.d14_on';
        var_1 = 'zef.d14_sigma';
        var_2 = 'zef.d14_priority';
        var_3 = 'zef.d14_submesh_ind';
     case 15
        var_0 = 'zef.d15_on';
        var_1 = 'zef.d15_sigma';   
        var_2 = 'zef.d15_priority';
        var_3 = 'zef.d15_submesh_ind';
     case 16
        var_0 = 'zef.d16_on';
        var_1 = 'zef.d16_sigma';   
        var_2 = 'zef.d16_priority';
        var_3 = 'zef.d16_submesh_ind';
     case 17
        var_0 = 'zef.d17_on';
        var_1 = 'zef.d17_sigma';   
        var_2 = 'zef.d17_priority';
        var_3 = 'zef.d17_submesh_ind';
   case 18
        var_0 = 'zef.d18_on';
        var_1 = 'zef.d18_sigma';
        var_2 = 'zef.d18_priority';
        var_3 = 'zef.d18_submesh_ind';
     case 19
        var_0 = 'zef.d19_on';
        var_1 = 'zef.d19_sigma';   
        var_2 = 'zef.d19_priority';
        var_3 = 'zef.d19_submesh_ind';
     case 20
        var_0 = 'zef.d20_on';
        var_1 = 'zef.d20_sigma';   
        var_2 = 'zef.d20_priority';
        var_3 = 'zef.d20_submesh_ind';
     case 21
        var_0 = 'zef.d21_on';
        var_1 = 'zef.d21_sigma';   
        var_2 = 'zef.d21_priority';
        var_3 = 'zef.d21_submesh_ind';
     case 22
        var_0 = 'zef.d22_on';
        var_1 = 'zef.d22_sigma';   
        var_2 = 'zef.d22_priority';
        var_3 = 'zef.d22_submesh_ind';
     case 23
        var_0 = 'zef.w_on';
        var_1 = 'zef.w_sigma';    
        var_2 = 'zef.w_priority';
        var_3 = 'zef.w_submesh_ind';
     case 24
        var_0 = 'zef.g_on';
        var_1 = 'zef.g_sigma';
        var_2 = 'zef.g_priority';
        var_3 = 'zef.g_submesh_ind';
    case 25
        var_0 = 'zef.c_on';
        var_1 = 'zef.c_sigma';
        var_2 = 'zef.c_priority';
        var_3 = 'zef.c_submesh_ind';
     case 26
        var_0 = 'zef.sk_on';
        var_1 = 'zef.sk_sigma';
        var_2 = 'zef.sk_priority';
        var_3 = 'zef.sk_submesh_ind';
     case 27
        var_0 = 'zef.sc_on';
        var_1 = 'zef.sc_sigma';
        var_2 = 'zef.sc_priority';
        var_3 = 'zef.sc_submesh_ind';
     end
on_val = evalin('base',var_0);      
sigma_val = evalin('base',var_1);  
priority_val = evalin('base',var_2);  
if on_val
i = i + 1;
sigma_vec(i,1) = sigma_val;
priority_vec(i,1) = priority_val;
submesh_cell{i} = evalin('base',var_3);
if k == 6;
    aux_brain_ind = i;
end
end
end

n_compartments = 0;
for k = 1 : length(reuna_p)
n_compartments = n_compartments + max(1,length(submesh_cell{k}));
end


x_lim = [min(reuna_p{end}(:,1)) max(reuna_p{end}(:,1))];
y_lim = [min(reuna_p{end}(:,2)) max(reuna_p{end}(:,2))];
z_lim = [min(reuna_p{end}(:,3)) max(reuna_p{end}(:,3))];

x_vec = [x_lim(1):mesh_res:x_lim(2)];
y_vec = [y_lim(1):mesh_res:y_lim(2)];
z_vec = [z_lim(1):mesh_res:z_lim(2)];

[X, Y, Z] = meshgrid(x_vec,y_vec,z_vec);

size_xyz = size(X);

n_cubes = (length(x_vec)-1)*(length(y_vec)-1)*(length(z_vec)-1);

cubes = zeros(n_cubes,8);

ind_mat_1 = [     3     4     1     7 ;
                  2     3     1     7 ;
                  1     2     7     6 ;
                  7     1     6     5 ; 
                  7     4     1     8 ;
                  7     8     1     5  ];

tetra = zeros(6*n_cubes,4);             
johtavuus_ind = zeros(6*n_cubes,8);
i = 1;              


for i_x = 1 : length(x_vec) - 1
waitbar(i_x/(length(x_vec)-1),h,'Initial mesh.');    
for i_y = 1 : length(y_vec) - 1
for i_z = 1 : length(z_vec) - 1

x_ind = [i_x i_x+1 i_x+1 i_x i_x i_x+1 i_x+1 i_x]';  
y_ind = [i_y i_y i_y+1 i_y+1 i_y i_y i_y+1 i_y+1]';    
z_ind = [i_z i_z i_z i_z i_z+1 i_z+1 i_z+1 i_z+1]';    
ind_mat_2 = sub2ind(size_xyz,y_ind,x_ind,z_ind);   

tetra(i:i+5,:) = ind_mat_2(ind_mat_1);
johtavuus_ind(i:i+5,:) = ind_mat_2(:,ones(6,1))'; 
i = i + 6;
        
end
end
end    
    

johtavuus_ind = uint32(johtavuus_ind);
nodes = [X(:) Y(:) Z(:)];
clear X Y Z;

I = zeros(size(nodes,1), 1);
I_2 = [1 : length(I)]';

compartment_counter = 0;
for i = 1 : length(reuna_p)

for k = 1 : max(1,length(submesh_cell{i}))
    
compartment_counter = compartment_counter + 1;

if isempty(submesh_cell{i}) 
reuna_t_aux = reuna_t{i};   
else
if k == 1
reuna_t_aux = reuna_t{i}(1:submesh_cell{i},:);     
else
reuna_t_aux = reuna_t{i}(submesh_cell{i}(k-1)+1: submesh_cell{i}(k),:);
end
end

I_1 = tetra_in_compartment(reuna_p{i},reuna_t_aux,nodes(I_2,:),[compartment_counter n_compartments]);

I(I_2(I_1)) = compartment_counter;
I_2 = find(I==0);

end

end

I_1 = find(sum(sign(I(johtavuus_ind)),2)==8);
tetra = tetra(I_1,:);
johtavuus_ind = johtavuus_ind(I_1,:);
johtavuus_ind = I(johtavuus_ind);

I_1 = unique(tetra);
nodes = nodes(I_1,:);
I_2 = zeros(size(nodes,1),1);
I_2(I_1) = [1 : length(I_1)];
tetra = I_2(tetra);

 ind_m = [ 2 4 3 ;
           1 3 4 ;
           1 4 2 ; 
           1 2 3 ];


tetra_sort = [tetra(:,[2 4 3]) ones(size(tetra,1),1) [1:size(tetra,1)]'; 
              tetra(:,[1 3 4]) 2*ones(size(tetra,1),1) [1:size(tetra,1)]'; 
              tetra(:,[1 4 2]) 3*ones(size(tetra,1),1) [1:size(tetra,1)]'; 
              tetra(:,[1 2 3]) 4*ones(size(tetra,1),1) [1:size(tetra,1)]';];
tetra_sort(:,1:3) = sort(tetra_sort(:,1:3),2);
tetra_sort = sortrows(tetra_sort,[1 2 3]);
tetra_ind = zeros(size(tetra_sort,1),1);
I = find(sum(abs(tetra_sort(2:end,1:3)-tetra_sort(1:end-1,1:3)),2)==0);
tetra_ind(I) = 1;
tetra_ind(I+1) = 1;
I = find(tetra_ind == 0);
tetra_ind = sub2ind(size(tetra),repmat(tetra_sort(I,5),1,3),ind_m(tetra_sort(I,4),:));
surface_triangles = tetra(tetra_ind);

nodes_b = nodes;

close(h);

end


