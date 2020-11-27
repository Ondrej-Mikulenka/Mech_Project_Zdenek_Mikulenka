function [] = Move_Forward(Legs)
pause(2);
wb_motor_set_position(Legs(1, 2), 1);
wb_motor_set_velocity(Legs(1, 2), Max_S);

wb_motor_set_position(Legs(1, 1), 0.55);
wb_motor_set_velocity(Legs(1, 1), Max_S);

wb_motor_set_position(Legs(1, 3), -2);
wb_motor_set_velocity(Legs(1, 3), Max_S);

pause(2);
wb_motor_set_position(Legs(3, 2), 1);
wb_motor_set_velocity(Legs(3, 2), Max_S);

wb_motor_set_position(Legs(3, 1), 0.55);
wb_motor_set_velocity(Legs(3, 1), Max_S);

wb_motor_set_position(Legs(3, 3), -2);
wb_motor_set_velocity(Legs(3, 3), Max_S);

pause(2);
wb_motor_set_position(Legs(5, 2), 1);
wb_motor_set_velocity(Legs(5, 2), Max_S);

wb_motor_set_position(Legs(5, 1), -0.55);
wb_motor_set_velocity(Legs(5, 1), Max_S);

wb_motor_set_position(Legs(5, 3), -2);
wb_motor_set_velocity(Legs(5, 3), Max_S);
end

