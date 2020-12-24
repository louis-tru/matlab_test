clear;
clc;

M = 4; % 行
N = 5; % 列
X = round(rand(M, N) * 100) / 100;   %产生随机矩阵
Y = zeros(M, N);

c_u_1 = sqrt(1 / N);
c_u_2 = sqrt(2 / N);
c_v_1 = sqrt(1 / M);
c_v_2 = sqrt(2 / M);


for u = 0: M - 1
	for v = 0: N - 1
		
		y = 0;

		for i = 0: M - 1
			for j = 0: N - 1
				x = X(i + 1, j + 1);
				a = cos(pi * (i + 0.5) * u / M);
				b = cos(pi * (j + 0.5) * v / N);
				y = y + x * a * b;
			end
		end

		if u == 0
			c_u = c_u_1;
		else
			c_u = c_u_2;
		end

		if v == 0
			c_v = c_v_1;
		else
			c_v = c_v_2;
		end

		Y(u + 1, v + 1) = c_u * c_v * y;
	end
end

X
Y
YY = dct2(X)    % Matlab自带的dct变换
