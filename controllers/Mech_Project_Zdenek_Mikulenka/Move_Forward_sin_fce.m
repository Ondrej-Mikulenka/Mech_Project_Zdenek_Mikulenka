function  Move_Forward_sin_fce(Legs, Max_S)
  % frequency [Hz]
  f = 0.5;

  % amplitude [rad]
  aC = 0.25;  % Amplitude for the "base" motors.
  aF = 0.2;   % Amplitude for the "shoulder" motors.
  aT = 0.05;  % Amplitude for the "knee" motors.
  a = [aC, aF, -aT; -aC, -aF, aT; aC, aF, -aT; aC, -aF, aT; -aC, aF, -aT; aC, -aF, aT];

  % phase [s]
  pC = 0.0;  % Phase for the "base" motors.
  pF = 2.0;  % Phase for the "shoulder" motors.
  pT = 2.5;  % Phase for the "knee" motors.
  p = [pC, pF, pT; pC, pF, pT; pC, pF, pT; pC, pF, pT; pC, pF, pT; pC, pF, pT];

  % offset [rad]
  dC = 0.6;   % Offset for the "base" motors.
  dF = 0.8;   % Offset for the "shoulder" motors.
  dT = -2.4;  % Offset for the "knee" motors.
  d = [-dC, dF, dT; 0, dF, dT; dC, dF, dT; dC, dF, dT; 0, dF, dT; -dC, dF, dT];

  while true 
  time = wb_robot_get_time();
  for i = 1:6 % Apply a sinuosidal function for each motor.
    for j = 1:3
      wb_motor_set_position(Legs(i,j), a(i,j) * sin(2 * pi * f * time + p(i,j)) + d(i,j));
    end
  end
  end
end
