function  Move_Forward2(Legs, Max_S)
for i = 1:18
  wb_motor_set_velocity(Legs(i), Max_S);
end

offset = [-0.6,0,0.6];
shdr_up = 1;
shdr_down =0.8; 
knee_up = -2.35;
knee_down =-2.4; 

for n = 1:6
  switch n
      case 1
        for i = 1:3
          wb_motor_set_position(Legs(i, 2), shdr_up);
          wb_motor_set_position(Legs(i, 3), knee_up);
          pause(0.1)
          drawnow;
        end

      case 2
        for i = 1:3  
          wb_motor_set_position(Legs(i, 1), offset(i)+(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)+(-1)^(i+1)*0.25);
          pause(0.1)
          drawnow;
        end
        %wb_motor_set_position(Legs(1, 1), -0.6+0.25); %zadní
        %wb_motor_set_position(Legs(2, 1), 0-0.25); %prostřední
        %wb_motor_set_position(Legs(3, 1), 0.6+0.25); %přední
        %wb_motor_set_position(Legs(4, 1), 0.6+0.25); %zadní
        %wb_motor_set_position(Legs(5, 1), 0-0.25); %prostřední
        %wb_motor_set_position(Legs(6, 1), -0.6+0.25); %přední
        
      case 3    
        for i = 1:3
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
          pause(0.1)
          drawnow;
        end

      case 4
        for i = 4:6
          wb_motor_set_position(Legs(i, 2), shdr_up);
          wb_motor_set_position(Legs(i, 3), knee_up);
          pause(0.1)
          drawnow;
        end

      case 5
        for i = 1:3
          wb_motor_set_position(Legs(i, 1), offset(4-i)+(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(i)+(-1)^(i+1)*0.25);
          pause(0.1)
          drawnow;
        end

      case 6
        for i = 4:6
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
          pause(0.1)
          drawnow; 
        end

  end
end
end
