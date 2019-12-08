%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface

zef_i = length(zef.lf_bank_storage)+1;
zef.lf_bank_storage{zef_i}.source_interpolation_ind = zef.source_interpolation_ind;
zef.lf_bank_storage{zef_i}.parcellation_interp_ind = zef.parcellation_interp_ind;
zef.lf_bank_storage{zef_i}.source_positions = zef.source_positions;
zef.lf_bank_storage{zef_i}.source_directions = zef.source_directions;
zef.lf_bank_storage{zef_i}.L = zef.L;
zef.lf_bank_storage{zef_i}.imaging_method = int2str(zef.imaging_method);
zef.lf_bank_storage{zef_i}.measurements = zef.measurements;

if zef.imaging_method == 1
zef.lf_bank_storage{zef_i}.imaging_method = 'EEG';
elseif zef.imaging_method == 2
zef.lf_bank_storage{zef_i}.imaging_method = 'MEG magnetometers';
elseif zef.imaging_method == 2
zef.lf_bank_storage{zef_i}.imaging_method = 'MEG gradiometers';
elseif zef.imaging_method == 4
zef.lf_bank_storage{zef_i}.imaging_method = 'EIT';
end

zef.lf_bank_storage{zef_i}.lf_tag = zef.lf_tag;

clear zef_i;

zef_update_lf_bank_tool;
zef_update;
zef.lf_item_selected = zef.lf_item_list;
set(zef.h_lf_item_list,'Items',zef.lf_item_list,'Value',zef.lf_item_selected,'Multiselect','on');
