%Copyright © 2020- Joonas Lahtinen, Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
function [meas_data] = zef_find_source
source_positions = evalin('base','zef.source_positions');
noise_level = evalin('base','zef.inv_synth_source(1,8)');
s_p = evalin('base','zef.inv_synth_source(:,1:3)');
s_o = evalin('base','zef.inv_synth_source(:,4:6)');
s_o = s_o./repmat(sqrt(sum(s_o.^2,2)),1,3);
if ~evalin('base','isfield(zef,''time_sequence'')')
    s_a = evalin('base','zef.inv_synth_source(:,7)');
    s_f = 1e-3*repmat(s_a,1,3).*s_o;
    L = evalin('base','zef.L');
    meas_data = zeros(size(L(:,1),1),1);
    for i = 1 : size(s_p,1)
    [s_min,s_ind] = min(sqrt(sum((source_positions - repmat(s_p(i,:),size(source_positions,1),1)).^2,2)));
    meas_data = meas_data + s_f(i,1)*L(:,3*(s_ind-1)+1) + s_f(i,2)*L(:,3*(s_ind-1)+2) + s_f(i,3)*L(:,3*(s_ind-1)+3);
    end
    n_val = max(abs(meas_data));
    meas_data = meas_data + noise_level*max(abs(meas_data)).*randn(size(meas_data));
else
    if isempty(evalin('base','zef.fss_time_val'))
    time_seq = evalin('base','zef.time_sequence');
    else
        time_seq = evalin('base','zef.time_sequence(:,length(zef.time_variable(zef.time_variable<=zef.fss_time_val)))');
    end
    s_a = bsxfun(@times,evalin('base','zef.inv_synth_source(:,7)'),time_seq);
    aux_f = repmat(s_a,3,1);
    aux_f = reshape(aux_f, size(aux_f,1)/3,size(aux_f,2)*3);
    s_f = 1e-3*aux_f.*repmat(s_o,1,size(time_seq,2));
    L = evalin('base','zef.L');
    meas_data = zeros(size(L(:,1),1),size(time_seq,2));
    for i = 1 : size(s_p,1)
        [s_min,s_ind] = min(sqrt(sum((source_positions - repmat(s_p(i,:),size(source_positions,1),1)).^2,2)));
        for j = 1:size(time_seq,2)
        meas_data(:,j) = meas_data(:,j) + s_f(i,1+(j-1)*3)*L(:,3*(s_ind-1)+1) + s_f(i,2+(j-1)*3)*L(:,3*(s_ind-1)+2) + s_f(i,3+(j-1)*3)*L(:,3*(s_ind-1)+3);
        end
    end
    n_val = max(abs(meas_data));
    meas_data = meas_data + noise_level*max(abs(meas_data)).*randn(size(meas_data));
end

end