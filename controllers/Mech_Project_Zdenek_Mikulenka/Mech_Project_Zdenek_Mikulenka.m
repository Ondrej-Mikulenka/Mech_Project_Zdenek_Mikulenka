

TIME_STEP = 64;
  Max_S = 1;

% offset Base f, m, r [rad] = 0.6, 0, -0.6 
% offset Shdr u, d [rad] = 1, 0.8  
% offset Knee u, d [rad] = -2.35, -2.4   
  

Legs = [wb_robot_get_device('RPC'), wb_robot_get_device('RPF'), wb_robot_get_device('RPT');...
       wb_robot_get_device('LMC'), wb_robot_get_device('LMF'), wb_robot_get_device('LMT');...
       wb_robot_get_device('RAC'), wb_robot_get_device('RAF'), wb_robot_get_device('RAT');...
       wb_robot_get_device('LPC'), wb_robot_get_device('LPF'), wb_robot_get_device('LPT');...                                                                                    ];
       wb_robot_get_device('RMC'), wb_robot_get_device('RMF'), wb_robot_get_device('RMT');...
       wb_robot_get_device('LAC'), wb_robot_get_device('LAF'), wb_robot_get_device('LAT');];

      Move_Forward2(Legs, Max_S);



while wb_robot_step(TIME_STEP) ~= -1
  
  drawnow;
  
end


