% MATLAB program to find the IDFT of a random sequence
N = input('enter the sequence');	% Length of the sequence
X = randn(1, N) + 1i * randn(1, N); % Random sequence in frequency domain
% Calculate the inverse discrete Fourier transform
x = ifft(X);	% Reconstructing the original sequence
% Creating a time axis
t = 0 : N-1;
% Plot the real part of the reconstructed sequence in time domain
subplot(2, 1, 1);
stem(t, real(x));	% Plotting the real part of sequence
title('Real Part of Reconstructed Signal');
xlabel('Time');
ylabel('Amplitude');
% Plot the imaginary part of the reconstructed sequence in time domain
subplot(2, 1, 2);
stem(t, imag(x));	% Plotting the imaginary part of sequence
title('Imaginary Part of Reconstructed Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Debajyoti Roy')