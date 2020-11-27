function [] = Move_Forward()
pause(2);
wb_motor_set_position(Right_Rear_Shdr, 1);
wb_motor_set_velocity(Right_Rear_Shdr, Max_S);

wb_motor_set_position(Right_Rear_Base, 0.55);
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
end

