function  Move_Forward(Legs, Max_S)
% % Right Rear Shoulder Move Forward
% wb_motor_set_position(Legs(1, 2), 1);
% wb_motor_set_velocity(Legs(1, 2), Max_S);
% % Right Rear Base Move Forvard
% wb_motor_set_position(Legs(1, 1), 0.55);
% wb_motor_set_velocity(Legs(1, 1), Max_S);
% % Right Rear Knee Move Up
% wb_motor_set_position(Legs(1, 3), -2);
% wb_motor_set_velocity(Legs(1, 3), Max_S);
% 
% % Right Front Shoulder Move Forward
% wb_motor_set_position(Legs(3, 2), 1);
% wb_motor_set_velocity(Legs(3, 2), Max_S);
% % Right Front Base Move Forward
% wb_motor_set_position(Legs(3, 1), 0.55);
% wb_motor_set_velocity(Legs(3, 1), Max_S);
% % Right Front Knee Move Up
% wb_motor_set_position(Legs(3, 3), -2);
% wb_motor_set_velocity(Legs(3, 3), Max_S);
% 
% % Left Middle Shoulder Move Forward
% wb_motor_set_position(Legs(5, 2), 1);
% wb_motor_set_velocity(Legs(5, 2), Max_S);
% % Left Middle Base Move Forward
% wb_motor_set_position(Legs(5, 1), -0.55);
% wb_motor_set_velocity(Legs(5, 1), Max_S);
% % Left Middle Knee Move Forward
% wb_motor_set_position(Legs(5, 3), -2);
% wb_motor_set_velocity(Legs(5, 3), Max_S);
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

