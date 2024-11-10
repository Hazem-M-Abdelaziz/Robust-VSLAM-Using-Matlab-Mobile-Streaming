# 📱 Robust VSLAM Using Mobile Data Streaming
**Project ID:** #213  

---

## 🛠️ Project Overview

"Robust VSLAM Using Mobile Data Streaming" is a solution for visual simultaneous localization and mapping (VSLAM) and pose estimation using mobile device data. This project enhances VSLAM using matlab monovslam object by fusing camera and IMU data for indoor VSLAM and utilizing GPS data for outdoor pose estimation.

The project includes three modes:

1. 🏠 **Indoor VSLAM**: Fuses camera and IMU data for localization and mapping in indoor environments with relatively low speed of motion to pose estimation modes.
2. 🌐 **Outdoor Pose Estimation Using Streaming**: Provides outdoor pose estimation by streaming GPS data from a mobile device and live processing.
3. 📂 **Outdoor Pose Estimation Using Logged Data**: Enables pose estimation using pre-recorded GPS data for outdoor scenarios.

## ⚙️ Modes of Operation

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

## 💻 System Requirements

- **MATLAB** with:
  - Computer Vision Toolbox
  - Navigation Toolbox

- **Mobile Device** with MATLAB Mobile for logging and streaming data


