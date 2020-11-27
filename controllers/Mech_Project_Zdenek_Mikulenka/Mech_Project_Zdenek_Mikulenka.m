

TIME_STEP = 64;
  Max_S = -8;
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

while wb_robot_step(TIME_STEP) ~= -1
%wb_motor_set_position(Left_M, inf);
%wb_motor_set_velocity(Left_M, Max_S);
%wb_motor_set_position(Right_M, inf);
%wb_motor_set_velocity(Right_M, Max_S);
%wb_motor_set_position(Left_M_B, inf);
%wb_motor_set_velocity(Left_M_B, Max_S);
%wb_motor_set_position(Right_M_B, inf);
%wb_motor_set_velocity(Right_M_B, Max_S);
  drawnow;
  
end


