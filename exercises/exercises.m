function output = exercises()
% 完成下列Matlab练习，用正确答案替换掉 I___TODO___I
I___TODO___I = NaN;

% 1.1 生成一个由31和75之间所有的偶数组成的向量，按照降序排列
output.evens_between_31_and_75  = 74:-2:31;
% 1.2 生成数列1, 1/2, 1/3, ...的前100项
output.fraction_100 = 1 ./ (1:100);
% 1.3 生成数列0, 1/2, 2/3, 3/4, 4/5, ...的前100项
output.near_1 = (0:99) ./ (1:100);

% 2. x和y是两个列向量，其中
x = [3 2 6 8]';
y = [4 1 3 5]';
% 2.1 将x和y的对应元素相加得到一个新的列向量
output.x_add_y = x + y;
% 2.2 将x和y的对应元素相乘得到一个新的列向量
output.x_mul_y = x .* y;
% 2.3 将x和y中对应元素求乘方得到一个新的列向量
output.x_power_y = x .^ y;
% 2.4 将y中每个元素加上x中所有元素的和，得到一个新的列向量
output.y_add_sum_x = y + sum(x);
% 2.5 将x和y分别排序后再相加
output.sorted_x_add_sorted_y = sort(x) + sort(y);


% 3. A是一个魔方矩阵，完成下列计算
A = magic(100);
% 3.1 将A的第一行赋给左边的变量
output.first_row_A = A(1, :);
% 3.2 将A的对角线赋给左边的变量
output.dialog_A = diag(A);
% 3.3 将A的奇数行偶数列赋给左边的变量
output.odd_rows_even_cols_A = A(1:2:end, 2:2:end);
% 3.4 计算A每行的最大值、求和
output.row_max_A = max(A, [], 2);
output.row_sum_A = sum(A, 2);
% 3.5 计算A每个元素平方根的和
output.sum_sqrt_A = sum(sum(sqrt(A)));
% 3.6 交换A的奇数列和偶数列，如1、2列交换，3、4列交换，以此类推
output.swap_col_A = A(:, reshape([2:2:100; 1:2:100], 1, []));


% 4. 如果年份能够被4整除并且不能被100整除，或者能够被400整除，则该年是闰年，
%    在下面空格里写出判断闰年的条件，判断整除用mod，定义一个函数可以用
%    f = @(x) sin(x) + tan(x)
output.leap = @(year) ~mod(year, 400) || ~mod(year, 4) && mod(year, 100);


% 5. u和v是两个多项式，其中：
%    u = 2x^3 + 7x^2 + 4x + 9
%    v = x^2 + 1
output.u = [2 7 4 9];
output.v = [1 0 1];
% 5.1 计算u和v的乘积
output.u_times_v = conv(output.u, output.v);
% 5.2 计算u除以v, 商和余数分别放在q和r中（把deal那一部分替换成正确结果）
[output.q, output.r] = deal(deconv(output.u, output.v));
% 5.3 计算u的导数
output.derivative_of_u = polyder(output.u);
% 5.4 计算u和v乘积的导数
output.derivative_of_uv = polyder(output.u, output.v);
% 5.5 构建一个以1、3、5、7、9为根的多项式
output.poly = poly([1 3 5 7 9]);
