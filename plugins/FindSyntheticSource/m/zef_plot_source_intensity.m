%This function plot intensity as curves or histograms depending on is the
%ground truth setted or not.
function zef_plot_source_intensity

%Get needed variables
if str2num(evalin('base','zef.find_synth_source.h_plot_switch.Value')) == 1
    name_label = evalin('base','zef.find_synth_source.h_source_list.Data(zef.find_synth_source.selected_source)');
    if size(evalin('base','zef.time_sequence'),1) > length(evalin('base','zef.find_synth_source.selected_source'))
    y_vals = evalin('base','zef.time_sequence(zef.find_synth_source.selected_source,:)');
    else
    y_vals = evalin('base','zef.time_sequence');
    end
else
    name_label = evalin('base','zef.find_synth_source.h_source_list.Data');
    y_vals = evalin('base','zef.time_sequence');
end
s_amp = evalin('base','zef.inv_synth_source(:,7)');
t_vals = evalin('base','zef.time_variable');
%representation of intensity:
if evalin('base','zef.find_synth_source.intensity_direction')
    y_vals = s_amp.*y_vals;
else
    y_vals = abs(s_amp.*y_vals);
end

axes(evalin('base','zef.h_axes1'));
cla(evalin('base','zef.h_axes1'));
hold(evalin('base','zef.h_axes1'),'off');

%Available colors
colors = [1,0,0;0,1,0;0,0,1;1,0,1;0.4,0.8,0.4;0.4,0.4,1;1,0.4,0.7;1,0.5,0];
colors = [colors;0.5*colors];
%Available line styles
line_style_cell = {'-','--','-.',':','o-','o--','o-.','o:','s-','s--','s-.','s:','d-','d--','d-.','d:','*-','*--','*-.','*:'};
line_style_ind = 0;
%Check if ground truth is setted and then do a plot loop that plot
%line/bars for every color and then change line style to another if there 
%is more sources than colors.
if isempty(evalin('base','zef.fss_time_val'))
for i = 1 : length(s_amp)
    if mod(i,size(colors,1)) == 1
        line_style_ind = line_style_ind + 1;
    end
    h_plot = plot(t_vals,y_vals(i,:),line_style_cell{line_style_ind});
    set(h_plot, 'color',colors(mod(i-1,size(colors,1)-1)+1,:),'linewidth',2);
if i == 1
hold(evalin('base','zef.h_axes1'),'on');
end
end

set(evalin('base','zef.h_axes1'),'ticklength',[0 0]);
set(evalin('base','zef.h_axes1'),'xlim',[t_vals(1) t_vals(end)]);
if evalin('base','zef.find_synth_source.intensity_direction')
    set(evalin('base','zef.h_axes1'),'ylim',[(1-0.05*sign(min(y_vals(:))))*min(y_vals(:)), 1.05*max(y_vals(:))]);
else
    set(evalin('base','zef.h_axes1'),'ylim',[0 1.05*max(y_vals(:))]);
end
set(evalin('base','zef.h_axes1'),'ygrid','on');
legend(name_label,'location','eastoutside')
hold(evalin('base','zef.h_axes1'),'off');
else
    y_vals = y_vals(:,length(t_vals(t_vals<=evalin('base','zef.fss_time_val'))));
for i = 1 : length(s_amp)
    if mod(i,size(colors,1)) == 1
        line_style_ind = line_style_ind + 1;
    end
    bar(i,y_vals(i),0.7,'facecolor',colors(mod(i-1,size(colors,1)-1)+1,:));
    if i == 1
        hold(evalin('base','zef.h_axes1'),'on');
    end
end
%Set source names from UItable to labels of x axis
set(evalin('base','zef.h_axes1'),'xticklabel',name_label);
%Set a tick for every source
xticks(evalin('base','zef.h_axes1'),1:length(s_amp));
if evalin('base','zef.find_synth_source.intensity_direction')
    set(evalin('base','zef.h_axes1'),'ylim',[(1-0.05*sign(min(y_vals(:))))*min(y_vals(:)), 1.05*max(y_vals(:))]);
else
    set(evalin('base','zef.h_axes1'),'ylim',[0 1.05*max(y_vals(:))]);
end
set(evalin('base','zef.h_axes1'),'ygrid','on');
%Angle of source names on x axis
xtickangle(evalin('base','zef.h_axes1'),0);
legend(name_label,'location','eastoutside')
hold(evalin('base','zef.h_axes1'),'off');
end


end