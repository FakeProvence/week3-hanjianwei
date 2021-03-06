function G = plot_hamster(n)
% G = plot_hamster(n) 计算前n个月仓鼠的G(n) = H(n+1) / H(n)，并用绿色实线画出G(n)的变化图
% 其中n为需要计算的月份，返回值是一个包含n个元素的向量，每个值表示该月G(n)

H = hamster(n+1);
G = H(2:n+1) ./ H(1:n);

plot(G, 'g-');
xlabel('月');
ylabel('变化率');
axis([1, n, 0, 2]);