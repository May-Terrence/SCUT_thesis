% 创建数据和图形
x = 0:0.1:10;
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);

% 创建图形和子图
figure;
subplot(1,3,1);
plot(x, y1, x, y2, x, y3);
legend('正弦函数', '余弦函数', '正切函数');
title('第一个子图');

subplot(1,3,2);
plot(x, y1, x, y2, x, y3);
legend('正弦函数', '余弦函数', '正切函数');
title('第二个子图');

subplot(1,3,3);
plot(x, y1, x, y2, x, y3);
legend('正弦函数', '余弦函数', '正切函数');
title('第三个子图');

% 获取图形窗口的位置和大小
fig = gcf;
figPosition = get(fig, 'Position');
figWidth = figPosition(3);
figHeight = figPosition(4);

% 设置图例的绝对位置和大小
legendWidth = 100;
legendHeight = 50;
legendX = figWidth - legendWidth - 10; % 距离右边 10 像素
legendY = figHeight - legendHeight - 10; % 距离上边 10 像素

% 获取当前图例对象并设置位置和大小
lgd = findobj(gcf, 'Type', 'Legend');
set(lgd, 'Position', [legendX, legendY, legendWidth, legendHeight]);