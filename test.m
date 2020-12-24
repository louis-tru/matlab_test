clear;
clc;

M = 4
N = 4
X = round(rand(M, N) * 100) / 100   %产生随机矩阵
A = zeros(M, N);

for i = 0: M - 1
	for j = 0: N - 1
		if i == 0
			a = sqrt(1 / M);
		else
			a = sqrt(2 / M);
		end
			A(i + 1, j + 1) = a * cos(pi * (j + 0.5) * i / M);
	end
end

Y = A * X * A'    % DCT变换
YY = dct2(X)      % Matlab自带的dct变换
