

TIME_STEP = 64;
  Max_S = -8;

Left_M = wb_robot_get_device('Left_Motor');
Right_M = wb_robot_get_device('Right_Motor');
Left_M_B = wb_robot_get_device('Left_Motor_Back');
Right_M_B = wb_robot_get_device('Right_Motor_Back');
while wb_robot_step(TIME_STEP) ~= -1
wb_motor_set_position(Left_M, inf);
wb_motor_set_velocity(Left_M, Max_S);
wb_motor_set_position(Right_M, inf);
wb_motor_set_velocity(Right_M, Max_S);
wb_motor_set_position(Left_M_B, inf);
wb_motor_set_velocity(Left_M_B, Max_S);
wb_motor_set_position(Right_M_B, inf);
wb_motor_set_velocity(Right_M_B, Max_S);
  drawnow;
  
end


