# Image-Compression

![image](https://user-images.githubusercontent.com/105945382/211190641-a356c190-6744-4edb-9a61-f50a7e9e102a.png)

Image compression is minimizing the size in bytes of a graphics file without degrading the quality of the image to an unacceptable level. The reduction in file size allows more images to be stored in a given amount of disk or memory space.
It also reduces the time required for images to be sent over the Internet or downloaded from Web pages.
There are numerous picture compression algorithms available . Among all of these algorithms, in this project I used 3 algorithms implemented on colab and matlab.

## Following algorithms were used in this project:

- Huffman Algorithm

  - Huffman coding is one of the most widely used algorithms for compression of text, images, videos, etc. It encodes based on the probability of symbols, assigning a greater number of bits to symbols with lower probability, and lower number of bits to symbols with higher probability.

* Discrete Cosine Transform (DCT)
  
  - The DCT can be used to convert the signal (spatial information) into numeric data ("frequency" or "spectral" information) so that the image's information exists in a quantitative form that can be manipulated for compression. The signal for a graphical image can be thought of as a three-dimensional signal.

+ Convolutional Autoencoder
  
  - An autoencoder neural network is an Unsupervised Machine learning algorithm that applies backpropagation, setting the target values to be equal to the inputs. Autoencoders are used to reduce the size of our inputs into a smaller representation. If anyone needs the original data, they can reconstruct it from the compressed data.
  - This model consists of two building blocks the encoder, and the decoder. The former encodes the input data as 1-D vectors, which are then to be decoded to reconstruct the original data.


***In this project, Huffman and DCT were implemented on MATLAB and encoder on colab.***

Huffman algorithm matlab file is given [here](https://github.com/Ceasor06/Image-Compression/tree/main/Huffman-algorithm), 
and DCT matlab file is [here](https://github.com/Ceasor06/Image-Compression/tree/main/DCT).


<hr>
  
## Dataset

For Autoencoder dataset used was Fashion-MNIST which is on [kaggle](https://www.kaggle.com/datasets/zalando-research/fashionmnist)
 - Fashion-MNIST is a dataset of Zalando's article images???consisting of a training set of 60,000 examples and a test set of 10,000 examples. Each example is a 28x28 grayscale image, associated with a label from 10 classes.
 
**This dataset consists of 785 columns, in which I created a class size of 10*10, this is what the dataset looks like :**

<img width="852" alt="image" src="https://user-images.githubusercontent.com/105945382/211193297-28f55220-7da7-4aa1-b48c-46bed18d898d.png">

For Huffman and DCT:

3 images were used that are given [here](https://github.com/Ceasor06/Image-Compression/tree/main/Images%20Used%20for%20Huffman%20and%20DCT).
<hr>

## Results

### HUFFMAN ALGORITHM :

***Image before compression :***

<img src="https://github.com/Ceasor06/Image-Compression/blob/main/Images%20Used%20for%20Huffman%20and%20DCT/image2.jpeg" width="490" height="330" />  <img align=right width="490" height="330" src="https://user-images.githubusercontent.com/105945382/211252102-a15431de-2179-451d-952e-5b816f1a82c3.png">




***Entropy, Average code word length and code efficiency of the Huffman Coding is given as :***

| Image | Entropy | Average Code Word Length | Coding Efficiency |
| :---: | :---: | :---: | :---: |
| Image 1 | 7.8224 | 7.892 | 99.623 |
| Image 2 | 7.8082 | 7.88423 | 99.562 |
| Image 3 | 7.8312 | 7.8487 | 99.777 |

_The average coding efficiency offered by this approach is 99.654%._
<hr>

### DISCRETE COSINE TRANSFORM

| Image | Input Image Size | Output Image Size | Percentage % |
| :---: | :---: | :---: | :---: |
| Image 1 | 291 KB | 209 KB | 28.17 |
| Image 2 | 426 KB | 147 KB | 65.5 |
| Image 3 | 934 KB | 213 KB | 77.2 |

_The average ccompression offered by this approach is 56.956%._
<hr>

### AUTO-ENCODER

The autoencoder successfully encode the image and decode the image with the accuracy of the 51% and with a cost of 0.28 This model can be used in secure communication of army and any other places where secure communication is needed . This autoencoder can help to reduce the noise from the image also and make the image noise free .

- The autoencoder successfully encoded the image with a loss of 0.280 and with an accuracy of 50. The encoder block successfully encoded the given image :



   - <img width="1022" alt="image" src="https://user-images.githubusercontent.com/105945382/211366389-f2bb9508-0835-421e-acfb-da20c61fe5d0.png">

* The decoder block successfully regenerated the image from the coded image as shown :




   - <img width="1022" alt="image" src="https://user-images.githubusercontent.com/105945382/211371313-7da506b6-4ba9-4a89-b554-4a203a2704dd.png">

<hr>

Thank you for reading ????.
