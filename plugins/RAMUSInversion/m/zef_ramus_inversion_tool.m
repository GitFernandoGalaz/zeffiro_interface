%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
if  ismac
zef.h_ramus_ias_map_estimation = open('zeffiro_interface_ramus_inversion_tool.fig');
elseif ispc 
zef.h_ramus_ias_map_estimation = open('zeffiro_interface_ramus_inversion_tool.fig');
else
zef.h_ramus_ias_map_estimation = open('zeffiro_interface_ramus_inversion_tool.fig');
end
set(zef.h_ramus_ias_map_estimation,'Name','ZEFFIRO Interface: RAMUS Inversion');
set(findobj(zef.h_ramus_ias_map_estimation.Children,'-property','FontUnits'),'FontUnits','pixels')
set(findobj(zef.h_ramus_ias_map_estimation.Children,'-property','FontSize'),'FontSize',zef.font_size);

zef_init_ramus_inversion_tool;
uistack(flipud([zef.h_ramus_multires_n_levels; zef.h_ramus_multires_sparsity; zef.h_ramus_make_multires_dec; zef.h_ramus_hyperprior; zef.h_ramus_snr ; zef.h_ramus_multires_n_iter ; 
    zef.h_ramus_sampling_frequency; zef.h_ramus_low_cut_frequency; 
    zef.h_ramus_high_cut_frequency; zef.h_ramus_time_1 ; zef.h_ramus_time_2; zef.h_ramus_number_of_frames; zef.h_ramus_time_3; zef.h_ramus_normalize_data; zef.h_ramus_init_guess_mode; zef.h_ramus_cancel ; 
    zef.h_ramus_apply; zef.h_ramus_start  ]),'top'); 
