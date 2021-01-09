%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface

zef_data.font_size = zef.font_size;
zef_data.matlab_release = version('-release');
zef_data.matlab_release = str2num(zef_data.matlab_release(1:4)) + double(zef_data.matlab_release(5))/128;
zef_data.code_path = zef.code_path;
zef_data.program_path = zef.program_path;
zef_data.save_file_path = zef.save_file_path;
zef_data.save_file = zef.save_file;
zef_data.video_codec = zef.video_codec;
zef_data.use_gpu = zef.use_gpu;
zef_data.gpu_num = zef.gpu_num;
zef_data.parallel_vectors = zef.parallel_vectors;
zef_data.snapshot_vertical_resolution = zef.snapshot_vertical_resolution;
zef_data.snapshot_horizontal_resolution = zef.snapshot_horizontal_resolution;
zef_data.movie_fps = zef.movie_fps;
zef_data.mlapp = zef.mlapp;

zef_data.noise_data = [];
zef_data.top_reconstruction = [];
          zef_data.multi_lead_field = 0;
          zef_data.imaging_method_cell = {'EEG'; 'MEG magnetometers'; 'MEG gradiometers'; 'EIT'; 'tES';}; 
          zef_data.colortune_param = 1;
          zef_data.submesh_num = 0;
          zef_data.parcellation_plot_type = 1;
          zef_data.parcellation_time_series = [];
          zef_data.parcellation_colormap = [];
          zef_data.parcellation_interp_ind = cell(0);
          zef_data.parcellation_name = '';
          zef_data.parcellation_colortable = cell(0);
          zef_data.use_parcellation = 0;
          zef_data.parcellation_merge = 1;
          zef_data.parcellation_points = cell(0);
          zef_data.parcellation_segment = 'LH';
          zef_data.parcellation_tolerance = 5;
          zef_data.parcellation_selected = [];
          zef_data.parcellation_type = [1];
          zef_data.parcellation_quantile = [0.98];
          zef_data.s_name = 'Sensors';
          zef_data.w_name = 'White matter';
          zef_data.g_name = 'Grey matter';
          zef_data.c_name = 'Cerebrospinal fluid';
          zef_data.sk_name = 'Skull';
          zef_data.sc_name = 'Scalp';
          zef_data.d1_name = 'Detail 1';
          zef_data.d2_name = 'Detail 2';
          zef_data.d3_name = 'Detail 3';
          zef_data.d4_name = 'Detail 4';
          zef_data.d5_name = 'Detail 5';
          zef_data.d6_name = 'Detail 6';
          zef_data.d7_name = 'Detail 7';
          zef_data.d8_name = 'Detail 8';
          zef_data.d9_name = 'Detail 9';
          zef_data.d10_name = 'Detail 10';
          zef_data.d11_name = 'Detail 11';
          zef_data.d12_name = 'Detail 12';
          zef_data.d13_name = 'Detail 13';
          
          zef_data.d14_name = 'Detail 14';
          zef_data.d15_name = 'Detail 15';
          zef_data.d16_name = 'Detail 16';
          zef_data.d17_name = 'Detail 17';
          zef_data.d18_name = 'Detail 18';
          zef_data.d19_name = 'Detail 19';
          zef_data.d20_name = 'Detail 20';
          zef_data.d21_name = 'Detail 21';
          zef_data.d22_name = 'Detail 22';
          
            zef_data.submesh_ind = [];
            zef_data.w_submesh_ind = [];
            zef_data.g_submesh_ind = [];
            zef_data.c_submesh_ind = [];
           zef_data.sk_submesh_ind = [];
           zef_data.sc_submesh_ind = [];
           zef_data.d1_submesh_ind = [];
           zef_data.d2_submesh_ind = [];
           zef_data.d3_submesh_ind = [];
           zef_data.d4_submesh_ind = [];
           zef_data.d5_submesh_ind = [];
           zef_data.d6_submesh_ind = [];
           zef_data.d7_submesh_ind = [];
           zef_data.d8_submesh_ind = [];
           zef_data.d9_submesh_ind = [];
          zef_data.d10_submesh_ind = [];
          zef_data.d11_submesh_ind = [];
          zef_data.d12_submesh_ind = [];
          zef_data.d13_submesh_ind = [];
          zef_data.d14_submesh_ind = [];
          zef_data.d15_submesh_ind = [];
          zef_data.d16_submesh_ind = [];
          zef_data.d17_submesh_ind = [];
          zef_data.d18_submesh_ind = [];
          zef_data.d19_submesh_ind = [];
          zef_data.d20_submesh_ind = [];
          zef_data.d21_submesh_ind = [];
          zef_data.d22_submesh_ind = [];
          
          zef_data.s_merge = 1;
          zef_data.w_merge = 1;
          zef_data.g_merge = 1;
          zef_data.c_merge = 1;
          zef_data.sk_merge = 1;
          zef_data.sc_merge = 1;
          zef_data.d1_merge = 1;
          zef_data.d2_merge = 1;
          zef_data.d3_merge = 1;
          zef_data.d4_merge = 1;
          zef_data.d5_merge = 1;
          zef_data.d6_merge = 1;
          zef_data.d7_merge = 1;
          zef_data.d8_merge = 1;
          zef_data.d9_merge = 1;
          zef_data.d10_merge = 1;
          zef_data.d11_merge = 1;
          zef_data.d12_merge = 1;
          zef_data.d13_merge = 1;
          
          zef_data.d14_merge = 1;
          zef_data.d15_merge = 1;
          zef_data.d16_merge = 1;
          zef_data.d17_merge = 1;
          zef_data.d18_merge = 1;
          zef_data.d19_merge = 1;
          zef_data.d20_merge = 1;
          zef_data.d21_merge = 1;
          zef_data.d22_merge = 1;
          
          zef_data.s_invert = 0;
          zef_data.w_invert = 0;
          zef_data.g_invert = 0;
          zef_data.c_invert = 0;
          zef_data.sk_invert = 0;
          zef_data.sc_invert = 0;
          zef_data.d1_invert = 0;
          zef_data.d2_invert = 0;
          zef_data.d3_invert = 0;
          zef_data.d4_invert = 0;
          zef_data.d5_invert = 0;
          zef_data.d6_invert = 0;
          zef_data.d7_invert = 0;
          zef_data.d8_invert = 0;
          zef_data.d9_invert = 0;
          zef_data.d10_invert = 0;
          zef_data.d11_invert = 0;
          zef_data.d12_invert = 0;
          zef_data.d13_invert = 0;
          
          zef_data.d14_invert = 0;
          zef_data.d15_invert = 0;
          zef_data.d16_invert = 0;
          zef_data.d17_invert = 0;
          zef_data.d18_invert = 0;
          zef_data.d19_invert = 0;
          zef_data.d20_invert = 0;
          zef_data.d21_invert = 0;
          zef_data.d22_invert = 0;
          
          zef_data.loop_movie = [0];
          zef_data.stop_movie = [0];
          zef_data.inv_init_guess_mode = [1];
          zef_data.inv_eit_noise = 0;
          zef_data.inv_bg_data = [];
          zef_data.inv_roi_perturbation = 0.1;
          zef_data.current_pattern = [];
          zef_data.background_data = [];
          zef_data.inv_multires_n_decompositions = [20];
          zef_data.inv_multires_dec = []; 
          zef_data.inv_multires_ind = []; 
          zef_data.inv_multires_count = [];
          zef_data.inv_multires_n_levels = [3];
          zef_data.inv_multires_sparsity = 8;
          zef_data.inv_multires_n_iter = [10 10 10];
          zef_data.h_rec_source = [];
          zef_data.h_synth_source = [];
          zef_data.h_roi_sphere = [];
          zef_data.inv_rec_source = [0 0 0 1 0 0 0 3 1];
          zef_data.inv_synth_source = [0 0 0 1 0 0 10 0 3 1];
          zef_data.inv_roi_mode = 3;
          zef_data.inv_roi_threshold = 0.5;
          zef_data.inv_roi_sphere = [0 0 0 15];
          zef_data.inv_n_sampler = 100; 
          zef_data.inv_n_burn_in = 10; 
          zef_data.reconstruction_type = 7;
          zef_data.h_colorbar   = [];
          zef_data.location_unit= 1;
              zef_data.elevation= 0;
                zef_data.azimuth= 0;
           zef_data.axes_visible= 0;
              zef_data.n_sources= 10000;
               zef_data.sc_sigma= 0.43;
               zef_data.sk_sigma= 0.0064;
                zef_data.c_sigma= 1.79;
                zef_data.g_sigma= 0.33;
                zef_data.w_sigma= 0.14;
               zef_data.d1_sigma= 0.33;
               zef_data.d2_sigma= 0.33;
               zef_data.d3_sigma= 0.33;
               zef_data.d4_sigma= 0.33;
               zef_data.d5_sigma= 0.33;
               zef_data.d6_sigma= 0.33;
               zef_data.d7_sigma= 0.33;
               zef_data.d8_sigma= 0.33;
               zef_data.d9_sigma= 0.33;
               zef_data.d10_sigma= 0.33;
               zef_data.d11_sigma= 0.33;
               zef_data.d12_sigma= 0.33;
               zef_data.d13_sigma= 0.33;
               
               zef_data.d14_sigma= 0.33;
               zef_data.d15_sigma= 0.33;
               zef_data.d16_sigma= 0.33;
               zef_data.d17_sigma= 0.33;
               zef_data.d18_sigma= 0.33;
               zef_data.d19_sigma= 0.33;
               zef_data.d20_sigma= 0.33;
               zef_data.d21_sigma= 0.33;
               zef_data.d22_sigma= 0.33;
               
        zef_data.mesh_resolution= 2;
      zef_data.attach_electrodes= 1;
              zef_data.s_visible= 1;
               zef_data.s_points= [];
           zef_data.s_directions= [];
           zef_data.s_directions_g = [];
           zef_data.d1_triangles=[];
              zef_data.d1_points=[];
            zef_data.d2_triangles= [];
               zef_data.d2_points= [];
            zef_data.d3_triangles= [];
               zef_data.d3_points= [];
            zef_data.d4_triangles= [];
               zef_data.d4_points= []; 
              zef_data.d5_triangles=[];
              zef_data.d5_points=[];
            zef_data.d6_triangles= [];
               zef_data.d6_points= [];
            zef_data.d7_triangles= [];
               zef_data.d7_points= [];
            zef_data.d8_triangles= [];
               zef_data.d8_points= []; 
               zef_data.d9_triangles= [];
               zef_data.d9_points= []; 
              zef_data.d10_triangles=[];
              zef_data.d10_points=[];
            zef_data.d11_triangles= [];
               zef_data.d11_points= [];
            zef_data.d12_triangles= [];
               zef_data.d12_points= [];
            zef_data.d13_triangles= [];
               zef_data.d13_points= []; 
               
               zef_data.d14_triangles=[];
              zef_data.d14_points=[];
            zef_data.d15_triangles= [];
               zef_data.d15_points= [];
            zef_data.d16_triangles= [];
               zef_data.d16_points= [];
            zef_data.d17_triangles= [];
               zef_data.d17_points= []; 
               zef_data.d18_triangles= [];
               zef_data.d18_points= []; 
              zef_data.d19_triangles=[];
              zef_data.d19_points=[];
            zef_data.d20_triangles= [];
               zef_data.d20_points= [];
            zef_data.d21_triangles= [];
               zef_data.d21_points= [];
            zef_data.d22_triangles= [];
               zef_data.d22_points= []; 
               
            zef_data.w_triangles= [];
               zef_data.w_points= [];
 zef_data.source_direction_mode = 2;
             zef_data.sc_visible= 1;
             zef_data.sk_visible= 1;
              zef_data.c_visible= 1;
              zef_data.g_visible= 1;
              zef_data.w_visible= 1;
             zef_data.d1_visible= 1;
               zef_data.d2_visible=1;
               zef_data.d3_visible=1;
               zef_data.d4_visible=1;
               zef_data.d5_visible= 1;
               zef_data.d6_visible=1;
               zef_data.d7_visible=1;
               zef_data.d8_visible=1;
               zef_data.d9_visible=1;
               zef_data.d10_visible= 1;
               zef_data.d11_visible=1;
               zef_data.d12_visible=1;
               zef_data.d13_visible=1;
               
               zef_data.d14_visible= 1;
               zef_data.d15_visible=1;
               zef_data.d16_visible=1;
               zef_data.d17_visible=1;
               zef_data.d18_visible=1;
               zef_data.d19_visible= 1;
               zef_data.d20_visible=1;
               zef_data.d21_visible=1;
               zef_data.d22_visible=1;
               
               zef_data.d1_scaling=1.0;
               zef_data.d2_scaling=1.0;
               zef_data.d3_scaling=1.0;
               zef_data.d4_scaling=1.0;
               zef_data.d5_scaling=1.0;
               zef_data.d6_scaling=1.0;
               zef_data.d7_scaling=1.0;
               zef_data.d8_scaling=1.0;
               zef_data.d9_scaling=1.0;
               zef_data.d10_scaling=1.0;
               zef_data.d11_scaling=1.0;
               zef_data.d12_scaling=1.0;
               zef_data.d13_scaling=1.0;
               
               zef_data.d14_scaling=1.0;
               zef_data.d15_scaling=1.0;
               zef_data.d16_scaling=1.0;
               zef_data.d17_scaling=1.0;
               zef_data.d18_scaling=1.0;
               zef_data.d19_scaling=1.0;
               zef_data.d20_scaling=1.0;
               zef_data.d21_scaling=1.0;
               zef_data.d22_scaling=1.0;
               
             zef_data.sc_scaling= 1.0;
             zef_data.sk_scaling= 1.0;
              zef_data.c_scaling= 1.0;
              zef_data.g_scaling= 1.0;
              zef_data.w_scaling= 1.0;
              zef_data.s_scaling= 1.0;
          zef_data.s_zx_rotation= 0;
          zef_data.s_yz_rotation= 0;
          zef_data.s_xy_rotation= 0;
         zef_data.s_z_correction= 0;
         zef_data.s_y_correction= 0;
         zef_data.s_x_correction= 0;
         zef_data.imaging_method= 1;
                  zef_data.d1_on= 0;
                  zef_data.d2_on= 0;
                  zef_data.d3_on= 0; 
                  zef_data.d4_on= 0;
                  zef_data.d5_on= 0;
                  zef_data.d6_on= 0;
                  zef_data.d7_on= 0; 
                  zef_data.d8_on= 0;
                  zef_data.d9_on= 0;
                  zef_data.d10_on= 0;
                  zef_data.d11_on= 0;
                  zef_data.d12_on= 0; 
                  zef_data.d13_on= 0;
                  
                  zef_data.d14_on= 0;
                  zef_data.d15_on= 0;
                  zef_data.d16_on= 0; 
                  zef_data.d17_on= 0;
                  zef_data.d18_on= 0;
                  zef_data.d19_on= 0;
                  zef_data.d20_on= 0;
                  zef_data.d21_on= 0; 
                  zef_data.d22_on= 0;
                  
                  zef_data.sc_on= 0;
                  zef_data.sk_on= 0;
                   zef_data.c_on= 0;
                   zef_data.g_on= 0;
           zef_data.sc_triangles= [];
              zef_data.sc_points= [];
           zef_data.sk_triangles= [];
              zef_data.sk_points= [];
            zef_data.c_triangles= [];
               zef_data.c_points= [];
            zef_data.g_triangles= [];
               zef_data.g_points= [];
               zef_data.sensors = [];
               zef_data.reuna_p = cell(0);
               zef_data.reuna_t = cell(0);
               zef_data.nodes   = [];
                zef_data.tetra  = [];
                zef_data.save_file_path = './data/';
                zef_data.save_file = 'default_project.mat';
                zef_data.tetra_aux = [];
                zef_data.nodes_b = [];
                   zef_data.w_on = 0;
                 zef_data.cam_va = 10;
         zef_data.preconditioner = 1;
      zef_data.solver_tolerance = 1e-6;
zef_data.preconditioner_tolerance= 0.001;
               zef_data.sigma_ind=[];
               zef_data.sigma=[];
               zef_data.sigma_vec=[];
               zef_data.sigma_mod=0;
zef_data.sensors_attached_volume = [];
      zef_data.surface_triangles = [];
      zef_data.n_sources_mod     = 0; 
      zef_data.n_sources_old     = 10000;
 zef_data.location_unit_current = 1;
                      zef_data.L = [];
       zef_data.source_positions = [];
       zef_data.source_directions = [];
              zef_data.brain_ind = [];
             zef_data.source_ind = [];
             zef_data.w_priority = 5;
             zef_data.g_priority = 4;
             zef_data.c_priority = 3;
            zef_data.sk_priority = 2;
            zef_data.sc_priority = 1;
            zef_data.d1_priority = 6;
            zef_data.d2_priority = 7;
            zef_data.d3_priority = 8;
            zef_data.d4_priority = 9;
            zef_data.d5_priority = 10;
            zef_data.d6_priority = 11;
            zef_data.d7_priority = 12;
            zef_data.d8_priority = 13;
            zef_data.d9_priority = 14;
            zef_data.d10_priority = 15;
            zef_data.d11_priority = 16;
            zef_data.d12_priority = 17;
            zef_data.d13_priority = 18;
            
            zef_data.d14_priority = 19;
            zef_data.d15_priority = 20;
            zef_data.d16_priority = 21;
            zef_data.d17_priority = 22;
            zef_data.d18_priority = 23;
            zef_data.d19_priority = 24;
            zef_data.d20_priority = 25;
            zef_data.d21_priority = 26;
            zef_data.d22_priority = 27;
            
            zef_data.cp_on       = 0;
            zef_data.cp_a        = 1;
            zef_data.cp_b        = 0;
            zef_data.cp_c        = 0;
            zef_data.cp_d        = 0;
       zef_data.meshing_accuracy = 0.3;
       zef_data.on_screen        = 0;
       zef_data.import_mode      = 0;
       zef_data.s_color = [0.1 0.1 0.1];
       zef_data.d1_color = [0.7 0.7 1];
       zef_data.d2_color = [1 0 1];
       zef_data.d3_color = [0 0.5 0.5];
       zef_data.d4_color = [1 0.5 0.2];
       zef_data.d5_color = [0.5000 0 1.0000];
       zef_data.d6_color = [0.4000 0.6000 0.1000];
       zef_data.d7_color = [0 1 0];
       zef_data.d8_color = [1 0 0];
       zef_data.d9_color = [0 0.3 1];
       zef_data.d10_color = [0.35 0.75 1];
       zef_data.d11_color =  [0 1 0.8];
       zef_data.d12_color = [1 0.85 0];
       zef_data.d13_color = [0.8 0.3 0.6];
       
       zef_data.d14_color = [0.5000 0 1.0000];
       zef_data.d15_color = [0.4000 0.6000 0.1000];
       zef_data.d16_color = [0 1 0];
       zef_data.d17_color = [1 0 0];
       zef_data.d18_color = [0 0.3 1];
       zef_data.d19_color = [0.35 0.75 1];
       zef_data.d20_color =  [0 1 0.8];
       zef_data.d21_color = [1 0.85 0];
       zef_data.d22_color = [0.8 0.3 0.6];
       
       zef_data.w_color = [0.8 0.8 0.8];
       zef_data.g_color = [0.35 0.35 0.35];
       zef_data.c_color = 0.6*[0.7 0.8 0.7];
       zef_data.sk_color = [0.7 0.7 0.6];
       zef_data.sc_color = 0.7*[0.83 0.67 0.49];
       zef_data.mesh_smoothing_on = 0;
       zef_data.w_sources = 3;
       zef_data.d1_sources = 0;
       zef_data.d2_sources = 0;
       zef_data.d3_sources = 0;
       zef_data.d4_sources = 0;
       zef_data.d5_sources = 0;
       zef_data.d6_sources = 0;
       zef_data.d7_sources = 0;
       zef_data.d8_sources = 0;
       zef_data.d9_sources = 0;
       zef_data.d10_sources = 0;
       zef_data.d11_sources = 0;
       zef_data.d12_sources = 0;
       zef_data.d13_sources = 0;
       
       
       zef_data.d14_sources = 0;
       zef_data.d15_sources = 0;
       zef_data.d16_sources = 0;
       zef_data.d17_sources = 0;
       zef_data.d18_sources = 0;
       zef_data.d19_sources = 0;
       zef_data.d20_sources = 0;
       zef_data.d21_sources = 0;
       zef_data.d22_sources = 0;
       
       zef_data.g_sources = 1;
       zef_data.c_sources = 0;
       zef_data.sk_sources = 0;
       zef_data.sc_sources = 0;
       zef_data.w_sources_old = -1;
       zef_data.d1_sources_old = -1;
       zef_data.d2_sources_old = -1;
       zef_data.d3_sources_old = -1;
       zef_data.d4_sources_old = -1;
       zef_data.d5_sources_old = -1;
       zef_data.d6_sources_old = -1;
       zef_data.d7_sources_old = -1;
       zef_data.d8_sources_old = -1;
       zef_data.d9_sources_old = -1;
       zef_data.d10_sources_old = -1;
       zef_data.d11_sources_old = -1;
       zef_data.d12_sources_old = -1;
       zef_data.d13_sources_old = -1;
       
       zef_data.d14_sources_old = -1;
       zef_data.d15_sources_old = -1;
       zef_data.d16_sources_old = -1;
       zef_data.d17_sources_old = -1;
       zef_data.d18_sources_old = -1;
       zef_data.d19_sources_old = -1;
       zef_data.d20_sources_old = -1;
       zef_data.d21_sources_old = -1;
       zef_data.d22_sources_old = -1;
       
       zef_data.g_sources_old = -1;
       zef_data.c_sources_old = -1;
       zef_data.sk_sources_old = -1;
       zef_data.sc_sources_old = -1;
       zef_data.prism_layers = 0;
       zef_data.n_prism_layers = 2;
       zef_data.prism_size = 0.01;
       zef_data.prisms = [];
       zef_data.sigma_prisms = [];
       zef_data.refinement_on = 0;
       zef_data.smoothing_strength = 0.25;
       zef_data.smoothing_steps_surf = 15;
       zef_data.smoothing_steps_vol = 5;
       zef_data.refinement_type = 1;
       zef_data.surface_sources = 0; 
       zef_data.visualization_type = 1;
       zef_data.source_interpolation_on = 0;
       zef_data.measurements = [];
       zef_data.reconstruction = [];
       zef_data.inv_hyperprior = [1]; 
       zef_data.inv_hyperprior_weight = [1]; 
       zef_data.inv_beta = [1.5];
       zef_data.inv_theta0 = [1e-12];
       zef_data.inv_likelihood_std = 0.03;
       zef_data.inv_n_map_iterations = [1];
       zef_data.inv_pcg_tol = [1e-6];
       zef_data.inv_sampling_frequency = [20000];
       zef_data.inv_low_cut_frequency = [20];
       zef_data.inv_high_cut_frequency = [250];
       zef_data.inv_data_segment = [1];
       zef_data.source_interpolation_ind = [];
       zef_data.cp2_on = 0;
       zef_data.cp2_a = 1;
       zef_data.cp2_b = 0;
       zef_data.cp2_c = 0;
       zef_data.cp2_d = 0;
       zef_data.cp3_on = 0;
       zef_data.cp3_a = 1;
       zef_data.cp3_b = 0;
       zef_data.cp3_c = 0;
       zef_data.cp3_d = 0;
       zef_data.inv_dynamic_range = 1e2; 
       zef_data.inv_scale = 2;
       zef_data.inv_colormap = 5;
       zef_data.brain_transparency = 1;
       zef_data.layer_transparency = 1;
       zef_data.meshing_threshold = 0.5;
       zef_data.clear_axes1 = 1;
       zef_data.normalize_data = 1;
       zef_data.cp_mode = 1;
       zef_data.inv_time_1 = 0;
       zef_data.inv_time_2 = 0.002;
       zef_data.inv_time_3 = 0.001;
       zef_data.number_of_frames = 1;
       zef_data.frame_start = 0;
       zef_data.frame_stop = 0;
       zef_data.frame_step = 1;
       zef_data.orbit_1 = 0;
       zef_data.orbit_2 = 0;
       zef_data.non_source_ind = [];
       zef_data.source_model = 2;
       zef_data.use_depth_electrodes = 0;
       zef_data.inv_hyperprior_tail_length_db = 10;
       
       zef.fieldnames = fieldnames(zef);
       zef.fieldnames = zef.fieldnames(find(startsWith(zef.fieldnames, 'h_')));
 for zef_i = 1:length(zef.fieldnames)
 zef_data.(zef.fieldnames{zef_i}) = zef.(zef.fieldnames{zef_i});
 end        
 zef = zef_data;
 clear zef_i zef_data;
