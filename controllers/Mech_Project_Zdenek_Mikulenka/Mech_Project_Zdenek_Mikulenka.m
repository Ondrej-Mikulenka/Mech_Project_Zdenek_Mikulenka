

TIME_STEP = 150;
  Max_S = 10;
% Zakladni offsety
% offset Base f, m, r [rad] = 0.6, 0, -0.6 
% offset Shdr u, d [rad] = 1, 0.8  
% offset Knee u, d [rad] = -2.35, -2.4   
  

Legs = [wb_robot_get_device('RPC'), wb_robot_get_device('RPF'), wb_robot_get_device('RPT');...
       wb_robot_get_device('LMC'), wb_robot_get_device('LMF'), wb_robot_get_device('LMT');...
       wb_robot_get_device('RAC'), wb_robot_get_device('RAF'), wb_robot_get_device('RAT');...
       wb_robot_get_device('LPC'), wb_robot_get_device('LPF'), wb_robot_get_device('LPT');...                                                                                    ];
       wb_robot_get_device('RMC'), wb_robot_get_device('RMF'), wb_robot_get_device('RMT');...
       wb_robot_get_device('LAC'), wb_robot_get_device('LAF'), wb_robot_get_device('LAT');];


for i = 1:18
  wb_motor_set_velocity(Legs(i), Max_S);
end
offset = [-0.6,0,0.6];
shdr_up = 1;
shdr_down =0.8; 
knee_up = -2.35;
knee_down =-2.4;
%offset hodnoty na zvednutí těla
%shdr_up = 0;
%shdr_down =-0.2; 
%knee_up = -0.95;
%knee_down =-1;
wb_keyboard_enable(wb_robot_get_basic_time_step());
n = 1;
p = 0;

while wb_robot_step(TIME_STEP) ~= -1
  key = wb_keyboard_get_key();
  if key > 0
  switch n
      case 1
        for i = 1:3
          wb_motor_set_position(Legs(i, 2), shdr_up);
          wb_motor_set_position(Legs(i, 3), knee_up);
        end
        n = 2;
        
      case 2
        for i = 1:3
        if key == 87
          wb_motor_set_position(Legs(i, 1), offset(i)+(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)+(-1)^(i+1)*0.25);
        elseif key == 83
          wb_motor_set_position(Legs(i, 1), offset(i)-(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)-(-1)^(i+1)*0.25);  
        elseif key == 68 
          wb_motor_set_position(Legs(i, 1), offset(i)+(-1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)+(+1)*0.25);
        elseif key == 65
          wb_motor_set_position(Legs(i, 1), offset(i)-(-1)*0.25);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)-(+1)*0.25);
        elseif key == 81
          wb_motor_set_position(Legs(i, 1), offset(i)+(-1)^(i+1)*0.25+0.2);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)+(-1)^(i+1)*0.25-0.2);
        elseif key == 69
          wb_motor_set_position(Legs(i, 1), offset(i)+(-1)^(i+1)*0.25-0.2);
          wb_motor_set_position(Legs(3+i, 1), offset(4-i)+(-1)^(i+1)*0.25+0.2);
        end
        end
        n = 3;
        % Pro orientaci pri pripadne uprave kodu
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
        end
        n = 4;
        
      case 4
        for i = 4:6
          wb_motor_set_position(Legs(i, 2), shdr_up);
          wb_motor_set_position(Legs(i, 3), knee_up);
        end
        n = 5;
        
      case 5
        for i = 4:6
        if key == 87
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)+(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(i, 1), offset(7-i)+(-1)^(i+1)*0.25);        
        elseif key == 83
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)-(-1)^(i+1)*0.25);
          wb_motor_set_position(Legs(i, 1), offset(7-i)-(-1)^(i+1)*0.25);
        elseif key == 68 
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)+(+1)*0.25);
          wb_motor_set_position(Legs(i, 1), offset(7-i)+(-1)*0.25);
        elseif key == 65 
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)-(+1)*0.25);
          wb_motor_set_position(Legs(i, 1), offset(7-i)-(-1)*0.25);
          elseif key == 81
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)+(-1)^(i+1)*0.25-0.2);
          wb_motor_set_position(Legs(i, 1), offset(7-i)+(-1)^(i+1)*0.25+0.2);
          elseif key == 69
          wb_motor_set_position(Legs(i-3, 1), offset(i-3)+(-1)^(i+1)*0.25+0.2);
          wb_motor_set_position(Legs(i, 1), offset(7-i)+(-1)^(i+1)*0.25-0.2);
        end  
        end
        n = 6;

      case 6
        for i = 4:6
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
        end
        n = 1;
      end
  else
    for i = 1:3
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
          wb_motor_set_position(Legs(3+i, 2), shdr_down);
          wb_motor_set_position(Legs(3+i, 3), knee_down);
          wb_motor_set_position(Legs(i, 1), offset(i));
          wb_motor_set_position(Legs(3+i, 1), offset(4-i));
    end
  end 
  if key == 32 && p == 0
    shdr_up = 0;
    shdr_down =-0.2; 
    knee_up = -0.95;
    knee_down =-1;
    p = 1;
    for i = 1:6
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
    end
  elseif key == 32 && p == 1
    shdr_up = 1;
    shdr_down =0.8; 
    knee_up = -2.35;
    knee_down =-2.4;
    p = 0;
    for i = 1:6
          wb_motor_set_position(Legs(i, 2), shdr_down);
          wb_motor_set_position(Legs(i, 3), knee_down);
    end      
  end
end


