function  Move_Forward(Legs, Max_S)
for i = 1:18
  wb_motor_set_velocity(Legs(i), Max_S);
end
number = 20;
shoulder_vec = linspace(1, 1.8, number);
base_vec = linspace(-0.6, 0.6, number);
knee_vec = linspace(-2.4, -2, number);
for i = 1 : number
%     wb_motor_set_velocity(Legs, Max_S);
    
    wb_motor_set_position(Legs(1, 2), shoulder_vec(i));
    wb_motor_set_position(Legs(2, 2), shoulder_vec(i));
    wb_motor_set_position(Legs(3, 2), shoulder_vec(i));
    
    wb_motor_set_position(Legs(1, 1), base_vec(i));
    wb_motor_set_position(Legs(2, 1), -base_vec(i));
    wb_motor_set_position(Legs(3, 1), base_vec(i));
    
    wb_motor_set_position(Legs(1, 3), knee_vec(i));
    wb_motor_set_position(Legs(2, 3), knee_vec(i));
    wb_motor_set_position(Legs(3, 3), knee_vec(i));
%     
%     wb_motor_set_position(Legs((4:6), 2), shoulder_vec(i));
%     wb_motor_set_position(Legs((4:6), 1), base_vec(i));
%     wb_motor_set_position(Legs((4:6), 3), knee_vec(i));
    pause(1)
end
end

