#CODE Book
Code book describes the experiment where data was collected, the variables, the data,
and transformations or work in cleaning up the data and answering certain questions.

##THE EXPERIMENT
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded
accelerometer and gyroscope, we captured 3-axial linear acceleration and 
3-axial angular velocity at a constant rate of 50Hz. The experiments have 
been video-recorded to label the data manually. The obtained dataset has 
been randomly partitioned into two sets, where 70% of the volunteers was 
selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by 
applying noise filters and then sampled in fixed-width sliding windows of
2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal,
which has gravitational and body motion components, was separated using a 
Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time and 
frequency domain. See 'features_info.txt' for more details. 

##Data set download link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


##The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions 
are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the 
activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from 
the smartphone accelerometer X axis in standard gravity units 'g'. Every row 
shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' 
and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained 
by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured 
by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

##QUESTIONS

 Create one R script called run_analysis.R that does the following:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average
 of each variable for each activity and each subject.


##Tidy data excerpt:

$tBodyAcc.mean...X
                           1         2         3         4         5         6         7
WALKING            0.2773308 0.2764266 0.2755675 0.2785820 0.2778423 0.2836589 0.2755930
WALKING_UPSTAIRS   0.2554617 0.2471648 0.2608199 0.2708767 0.2684595 0.2682294 0.2487069
WALKING_DOWNSTAIRS 0.2891883 0.2776153 0.2924235 0.2799653 0.2935439 0.2770453 0.2803071
SITTING            0.2612376 0.2770874 0.2571976 0.2715383 0.2736941 0.2767785 0.2846746
STANDING           0.2789176 0.2779115 0.2800465 0.2804997 0.2825444 0.2803462 0.2827235
LAYING             0.2215982 0.2813734 0.2755169 0.2635592 0.2783343 0.2486565 0.2501767
                           8         9        10        11        12        13        14
WALKING            0.2746863 0.2785028 0.2785741 0.2718219 0.2771287 0.2758831 0.2719596
WALKING_UPSTAIRS   0.2588802 0.2624365 0.2671219 0.2637759 0.2729703 0.2582039 0.2624211
WALKING_DOWNSTAIRS 0.2834841 0.2959234 0.2904016 0.2916056 0.2815211 0.2949076 0.2934221
SITTING            0.2674915 0.2483267 0.2706121 0.2765902 0.2750072 0.2743285 0.2799906
STANDING           0.2796210 0.2823101 0.2766503 0.2777156 0.2774058 0.2777584 0.2805456
LAYING             0.2612543 0.2591955 0.2802306 0.2805930 0.2601134 0.2767164 0.2332754
                          15        16        17        18        19        20        21
WALKING            0.2738992 0.2760236 0.2723419 0.2738878 0.2739312 0.2725893 0.2791835
WALKING_UPSTAIRS   0.2701876 0.2559861 0.2526048 0.2654012 0.2421188 0.2520983 0.2651945
WALKING_DOWNSTAIRS 0.2801989 0.2955868 0.2939183 0.2884395 0.2626881 0.2961444 0.3014610
SITTING            0.2729034 0.2807686 0.2773570 0.2772700 0.2738303 0.2780454 0.2775396
STANDING           0.2789158 0.2834974 0.2779425 0.2784588 0.2781723 0.2780769 0.2769522
LAYING             0.2894757 0.2742272 0.2697801 0.2746916 0.2726537 0.2395079 0.2713255
                          22        23        24        25        26        27        28
WALKING            0.2788646 0.2732119 0.2769808 0.2789928 0.2792644 0.2768495 0.2812282
WALKING_UPSTAIRS   0.2483915 0.2499952 0.2698811 0.2779954 0.2726914 0.2657703 0.2620058
WALKING_DOWNSTAIRS 0.2844590 0.2898974 0.2886312 0.2913297 0.2792846 0.2975442 0.2936421
SITTING            0.2735838 0.2733513 0.2734757 0.2785415 0.2582435 0.2739413 0.2769776
STANDING           0.2790539 0.2778993 0.2803489 0.2780137 0.2811270 0.2795669 0.2777951
LAYING             0.2799597 0.2740380 0.2728505 0.2507918 0.2716459 0.2741025 0.2759135
                          29        30
WALKING            0.2719999 0.2764068
WALKING_UPSTAIRS   0.2654231 0.2714156
WALKING_DOWNSTAIRS 0.2931404 0.2831906
SITTING            0.2771800 0.2683361
STANDING           0.2779651 0.2771127
LAYING             0.2872952 0.2810339

$tBodyAcc.mean...Y....
                              1           2            3            4            5
LAYING             -0.93865658 -0.94541894 -0.9467680 -0.9713603 -0.9867556 -0.9586925
                           13         14         15         16         17         18
