
#ifndef TENSOR_H_
#define TENSOR_H_

#define W_CONV1_LEN  6*1*1
#define W_CONV2_LEN  16*6*5*5
#define W_FC1_LEN    400*120
#define W_FC2_LEN    120*84
#define W_FC3_LEN    84*10

#define B_CONV1_LEN  6
#define B_CONV2_LEN  16
#define B_FC1_LEN    120
#define B_FC2_LEN    84
#define B_FC3_LEN    10

#define DATASET_LEN  10000*28*28
#define LABEL_LEN    1
#define N_CLASS      10

typedef struct _float5D {
  
  float *conv1, *conv2, *fc1, *fc2, *fc3;
} float5D;


#endif  
