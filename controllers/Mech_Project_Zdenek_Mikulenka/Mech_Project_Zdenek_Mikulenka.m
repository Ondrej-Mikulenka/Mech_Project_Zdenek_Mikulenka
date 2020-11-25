

TIME_STEP = 64;
  Max_S = 8;
Left_M = wb_robot_get_device('Left_Motor');
while wb_robot_step(TIME_STEP) ~= -1
wb_motor_set_position(Left_M, inf);
wb_motor_set_velocity(Left_M, Max_S);
  drawnow;
  
end


