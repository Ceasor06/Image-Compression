clc;
clear all;
close all;
a=imread('image3.jpeg'); % Read the input image
figure(1);
imshow(a);
title('The Original Image'); % display the input 
a_resize=imresize(a,[256,256]); % resize the input
[pixelCount,graylevel]=imhist(a_resize); 
figure(2);
imshow(a_resize);
title('Resized Image'); % display the resized image
sum=0;
for i=1:256
    sum=sum+pixelCount(i); % finding the total number of pixels 
end
probPixel=pixelCount./sum; 
for index = 1:length(probPixel)
 codewords{index} = [];
 set_contents{index} = index;
 set_probabilities(index) = probPixel(index);
end
disp('The sets of symbols and their probabilities are:');
for set_index = 1:length(set_probabilities)
    disp([num2str(set_probabilities(set_index)),' ', num2str(set_contents{set_index})]);
end
 
while length(set_contents) > 1
    
% Determine which sets have the lowest total probability
[temp, sorted_indices] = sort(set_probabilities);
% Get the set having the lowest probability
zero_set = set_contents{sorted_indices(1)};
% Get that probability
zero_probability = set_probabilities(sorted_indices(1));


for codeword_index = 1:length(zero_set) % ...append a zero
    codewords{zero_set(codeword_index)} = [codewords{zero_set(codeword_index)}, 0];
end
% Get the set having the second lowest probability
one_set = set_contents{sorted_indices(2)};
% Get that probability
one_probability = set_probabilities(sorted_indices(2));
% For each codeword in the set...
for codeword_index = 1:length(one_set)
    codewords{one_set(codeword_index)} = [codewords{one_set(codeword_index)}, 1];
end

set_contents(sorted_indices(1:2)) = [];
set_contents{length(set_contents)+1} = [zero_set, one_set];
set_probabilities(sorted_indices(1:2)) = [];

set_probabilities(length(set_probabilities)+1) = zero_probability + one_probability;
end
disp('The symbols, their probabilities and the allocated Huffman codewords are:');

for index = 1:length(codewords)%display bits in reverse order
    disp([num2str(index), ' ', num2str(probPixel(index)),' ',num2str(codewords{index}(length(codewords{index}):-1:1))]); 
end
% Calculate the symbol entropy
entropy = 0;
for i=1:256
    info=(-1)*log2(probPixel(i)); 
    pdt=probPixel(i)*info; 
    entropy=entropy+pdt;
end
% Calculate the average Huffman codeword length
av_length = 0;
for index = 1:length(codewords)
    av_length = av_length + probPixel(index)*length(codewords{index});
end
disp(['The symbol entropy is:',num2str(entropy)]); % Display entropy
disp(['The average Huffman codeword length is: ',num2str(av_length)]); % Display average code word length
disp(['The Huffman coding rate is: ',num2str(entropy/av_length)]); % Display coding efficiency