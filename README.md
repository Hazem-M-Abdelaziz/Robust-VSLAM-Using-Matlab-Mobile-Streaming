# 📱 Robust VSLAM Using Mobile Data Streaming (#213)

**Submitted by:** Hazem Mohsen Abdelaziz

**Under Supervision of Prof:** Mohamed Ibrahim Awad

[Mechatronics Department - Faculty of Engineering, Ain Shams University]

<img src="https://github.com/user-attachments/assets/39d4eb35-5b0e-4d5a-8d1f-d0b830a58ea2" width="100%" />

---

## 🛠️ Project Overview

"Robust VSLAM Using Mobile Data Streaming" is a MATLAB-based solution for visual simultaneous localization and mapping (VSLAM) and pose estimation using mobile device data. This project utilizes MATLAB's App Designer tool to create an interactive user interface, allowing users to seamlessly switch between multiple modes designed for both indoor and outdoor VSLAM operations. The application combines camera and IMU data for indoor localization, while GPS data enhances outdoor pose estimation.
The project includes three modes:

1. 🏠 **Indoor VSLAM**: Fuses camera and IMU data for localization and mapping in indoor environments with relatively low speed of motion to pose estimation modes.
2. 🌐 **Outdoor Pose Estimation Using Streaming**: Provides outdoor pose estimation by streaming GPS data from a mobile device and live processing.
3. 📂 **Outdoor Pose Estimation Using Logged Data**: Enables pose estimation using pre-recorded GPS data for outdoor scenarios.

## ⚙️ Application Modes of Operation

### 🏠 Mode 1: Indoor VSLAM
- **Description**: Uses visual-inertial fusion for indoor SLAM.
- **Data Sources**: Mobile camera snaps and IMU data.
- **Output**: Indoor features map and pose estimation based on fused data.

### 🌐 Mode 2: Outdoor Pose Estimation Using Streaming
- **Description**: Real-time outdoor pose estimation with live-streamed GPS data.
- **Data Sources**: Streamed GPS data from a mobile device.
- **Output**: Real-time outdoor pose estimation using GPS.

### 📂 Mode 3: Outdoor Pose Estimation Using Logged Data
- **Description**: Uses logged GPS data for outdoor pose estimation.
- **Data Sources**: Pre-recorded GPS data files.
- **Output**: Playback-based outdoor pose estimation, useful for testing and analysis.

## 📂 Project Hierarchy
----------------------

The following is the folder structure of the project, highlighting key files and directories:

```plaintext
Project_Root/
├── application/                                        # App Designer files for the user interface
│   ├── SLAM_PoseEstimation_Application.mlapp        # Main app file developed in MATLAB's App Designer
│   └── SLAM_PoseEstimation_Application.mlappinstall # Generated installation file for the application
│   └── SLAM_PoseEstimation_Application.prj          # Generated project file that organizes, manages dependencies, packaging, etc...
├── calibration/                                        # Directory for calibration parameters and scripts
│   ├── cameraCalib.mlx                              # Script that is used to calibrate and store mobile camera parameters
│   └── imuCalib.m                                   # Script used to calibrate IMU externally
│   └── imu_params.mat                               # File that includes personal IMU parameters as an example
│   └── mobile_camera_params.mat                     # File that includes personal mobile camera parameters as an example
├── individualScripts/                                 # Trial scripts for application modes separately
│   ├── monoVSlamCapturing.mlx                       # Trial script for indoor VSLAM operations and features visualization
│   └── GPSUpdate.mlx                                # Trial Script for outdoor map update using logged GPS data
├── README.md                                        # Project documentation
└── refFrame.jpeg                                    # Display reference frame for mobile camera and features map
```

## 🖥️ User Interface

The project’s user interface is built with MATLAB's App Designer, providing an organized and user-friendly experience. Through this interface, users can:

* **Switch Between Modes**: Easily select the desired mode of operation, with each mode offering specific options and data visualizations.
* **View Real-Time Data**: Visualize GPS, camera, and IMU data in real-time.
* **Control Mode Operations**: Adjust settings for each mode and view results directly within the app with availability to save output of each mode locally.



## 💻 System Requirements

- **MATLAB** with:
  - Computer Vision Toolbox
  - Navigation Toolbox

- **Mobile Device** with MATLAB Mobile for logging and streaming data

## 📚 Project References

This project builds on various tools, libraries, and resources. Below are the key references and resources used in the development:

- **MATLAB App Designer**: Used for creating the interactive user interface.
  - [MATLAB App Designer Documentation](https://www.mathworks.com/help/matlab/app-designer.html)
  
- **MATLAB Mobile**: Used for logging and streaming data from mobile devices.
  - [MATLAB Mobile Documentation](https://www.mathworks.com/products/matlab-mobile.html)
  
- **Simultaneous Localization and Mapping (SLAM)**: The core concept used for mapping and localization.
  - [SLAM Wikipedia](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)
  
- **Computer Vision Toolbox**: Provides functions for image processing and computer vision algorithms used in the project.
  - [MATLAB Computer Vision Toolbox Documentation](https://www.mathworks.com/products/computer-vision.html)
  
- **Navigation Toolbox**: Used for GPS-based outdoor localization and pose estimation.
  - [MATLAB Navigation Toolbox Documentation](https://www.mathworks.com/products/navigation.html)

Feel free to explore these references for more in-depth understanding and background of the technologies and concepts used.


## Contacts 📧

- **Hazem Mohsen**:
  - [![LinkedIn](https://img.shields.io/badge/LinkedIn-informational?style=flat&logo=linkedin&logoColor=white&color=0077B5)](https://www.linkedin.com/in/hazem-m-abdelaziz)
  - [![Outlook](https://img.shields.io/badge/Outlook-red?style=flat&logo=microsoft-outlook&logoColor=white)](mailto:1900973@eng.asu.edu.eg)

