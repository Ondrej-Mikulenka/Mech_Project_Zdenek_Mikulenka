

TIME_STEP = 64;
  Max_S = 1;
% offset Base f, m, r [rad] = 0.6, 0, -0.6 
% offset Shdr u, d [rad] = 1, 0.8  
% offset Knee u, d [rad] = -2.4, 0.4   
  
%Right Rear Leg Indexing
Right_Rear_Base = wb_robot_get_device('RPC');
Right_Rear_Shdr = wb_robot_get_device('RPF');
Right_Rear_Knee = wb_robot_get_device('RPT');

%Right Middle Leg Indexing
Right_Mid_Base = wb_robot_get_device('RMC');
Right_Mid_Shdr = wb_robot_get_device('RMF');
Right_Mid_Knee = wb_robot_get_device('RMT');
%Right Front Leg Indexing
Right_Front_Base = wb_robot_get_device('RAC');
Right_Front_Shdr = wb_robot_get_device('RAF');
Right_Front_Knee = wb_robot_get_device('RAT');
%Left Rear Leg Indexing
Left_Rear_Base = wb_robot_get_device('LPC');
Left_Rear_Shdr = wb_robot_get_device('LPF');
Left_Rear_Knee = wb_robot_get_device('LPT');
%Left Middle Leg Indexing
Left_Mid_Base = wb_robot_get_device('LMC');
Left_Mid_Shdr = wb_robot_get_device('LMF');
Left_Mid_Knee = wb_robot_get_device('LMT');
%Left Front Leg Indexing
Left_Front_Base = wb_robot_get_device('LAC');
Left_Front_Shdr = wb_robot_get_device('LAF');
Left_Front_Knee = wb_robot_get_device('LAT');

% Legs = [wb_robot_get_device('RPC'), wb_robot_get_device('RPF'), wb_robot_get_device('RPT');...
%        wb_robot_get_device('RMC'), wb_robot_get_device('RMF'), wb_robot_get_device('RMT');...
%        wb_robot_get_device('RAC'), wb_robot_get_device('RAF'), wb_robot_get_device('RAT');...
%        wb_robot_get_device('LPC'), wb_robot_get_device('LPF'), wb_robot_get_device('LPT');...                                                                                       ];
%        wb_robot_get_device('LMC'), wb_robot_get_device('LMF'), wb_robot_get_device('LMT');...
%        wb_robot_get_device('LAC'), wb_robot_get_device('LAF'), wb_robot_get_device('LAT')];
% Move_Forward(Legs) %Momentalne neplatny pokus. Funkci kdyztak najdes ve slozce
pause(2);
wb_motor_set_position(Right_Rear_Shdr, 1);
wb_motor_set_velocity(Right_Rear_Shdr, Max_S);

wb_motor_set_position(Right_Rear_Base, 0.35);
wb_motor_set_velocity(Right_Rear_Base, Max_S);

wb_motor_set_position(Right_Rear_Knee, -2);
wb_motor_set_velocity(Right_Rear_Knee, Max_S);

pause(2);
wb_motor_set_position(Right_Front_Shdr, 1);
wb_motor_set_velocity(Right_Front_Shdr, Max_S);

wb_motor_set_position(Right_Front_Base, 0.55);
wb_motor_set_velocity(Right_Front_Base, Max_S);

wb_motor_set_position(Right_Front_Knee, -2);
wb_motor_set_velocity(Right_Front_Knee, Max_S);

pause(2);
wb_motor_set_position(Left_Mid_Shdr, 1);
wb_motor_set_velocity(Left_Mid_Shdr, Max_S);

wb_motor_set_position(Left_Mid_Base, -0.55);
wb_motor_set_velocity(Left_Mid_Base, Max_S);

wb_motor_set_position(Left_Mid_Knee, -2);
wb_motor_set_velocity(Left_Mid_Knee, Max_S);


while wb_robot_step(TIME_STEP) ~= -1

  drawnow;
  
end


