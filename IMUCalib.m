% Create a mobiledev object
m = mobiledev;

% Enable sensors
m.AccelerationSensorEnabled = 1; 
m.AngularVelocitySensorEnabled = 1;
m.SampleRate = 100;
% Start logging
m.Logging = 1;
pause(180);  % Collect data for 30 seconds
m.Logging = 0;

% Retrieve data
accelData = accellog(m);
gyroData = angvellog(m);


% Calibration of accelerometer
accelBias = mean(accelData); 

% Calibration of gyroscope
gyroBias = mean(gyroData);

% Display calibration results
disp('Accelerometer Bias:');
disp(accelBias);

disp('Gyroscope Bias:');
disp(gyroBias);

