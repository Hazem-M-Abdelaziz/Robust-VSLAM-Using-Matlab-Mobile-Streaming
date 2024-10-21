% Create a mobiledev object
m = mobiledev;

% Enable sensors
m.AccelerationSensorEnabled = 1; 
m.AngularVelocitySensorEnabled = 1;
m.SampleRate = 100;
% Start logging
m.Logging = 1;
pause(120);  %Period for data collection in seconds
m.Logging = 0;

accelData = accellog(m);
gyroData = angvellog(m);


%Getting Accelerometer parameters (Covariance and Noise Covariance)

accelBiasX = mean(accelData(:,1));
accelBiasY = mean(accelData(:,2));
accelBiasZ = mean(accelData(:,3,:));

accelNoiseX = accelData(:,1) - accelBiasX;
accelNoiseY = accelData(:,2) - accelBiasY;
accelNoiseZ = accelData(:,3) - accelBiasZ;
accelNoise = [accelNoiseX; accelNoiseY; accelNoiseZ]';

accelCovar = cov(accelData);
accelBiasCovar = cov(accelNoise);

%Getting Gyroscope parameters (Covariance and Noise Covariance)

gyroBiasX = mean(gyroData(:,1));
gyroBiasY = mean(gyroData(:,2));
gyroBiasZ = mean(gyroData(:,3));

gyroNoiseX = gyroData(1,:) - gyroBiasX;
gyroNoiseY = gyroData(2,:) - gyroBiasY;
gyroNoiseZ = gyroData(3,:) - gyroBiasZ;
gyroNoise = [gyroNoiseX; gyroNoiseY; gyroNoiseZ]';

gyroCovar = cov(gyroData);
gyroBiasCovar = cov(gyroNoise);


imuParams = factorIMUParameters;
imuParams.SampleRate = m.SampleRate;
imuParams.GyroscopeBiasNoise = gyroBiasCovar;
imuParams.AccelerometerBiasNoise = accelBiasCovar;
imuParams.GyroscopeNoise = gyroCovar;
imuParams.AccelerometerNoise = accelCovar;
imuParams.ReferenceFrame = "ENU";


%Save object locally
save('imu_params.mat', 'imuParams');