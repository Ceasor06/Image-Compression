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

***In this project, Huffman and DCT were implemented on MATLAB and encoder on colab.***

Huffman algorithm matlab file is given [here](https://github.com/Ceasor06/Image-Compression/tree/main/Huffman-algorithm), 
and DCT matlab file is [here](https://github.com/Ceasor06/Image-Compression/tree/main/DCT).


<hr>
  
## Dataset

For Autoencoder dataset used was Fashion-MNIST which is on [kaggle](https://www.kaggle.com/datasets/zalando-research/fashionmnist)
 - Fashion-MNIST is a dataset of Zalando's article images—consisting of a training set of 60,000 examples and a test set of 10,000 examples. Each example is a 28x28 grayscale image, associated with a label from 10 classes.
 
**This dataset consists of 785 columns, in which I created a class size of 10*10, this is what the dataset looks like :**

<img width="852" alt="image" src="https://user-images.githubusercontent.com/105945382/211193297-28f55220-7da7-4aa1-b48c-46bed18d898d.png">
<hr>
For Huffman and DCT, 3 images were used that are given [here]().


