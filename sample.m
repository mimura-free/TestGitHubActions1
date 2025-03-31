clear,clc,close all

% サンプルデータの生成
x = raylrnd(2, 10000, 1); % σ = 2 のRayleigh分布からサンプルを生成

% histfitによるフィッティング
a = histfit(x, 50, 'rayleigh');
pd = fitdist(x, 'rayleigh');% fitdistでパラメータの推定値を取得
sigma_estimated = pd.B;
xlabel('x');
ylabel('関数 histfit によるフィッティング');

% パラメータの推定値をPDFに代入してフィッティング
x_values = linspace(min(x), max(x), 100);
pdf_values = (x_values / sigma_estimated^2) .* exp(-x_values.^2 / (2*sigma_estimated^2));
yyaxis right
plot(x_values, pdf_values, 'g--', 'LineWidth', 2);
ylabel('PDFによるフィッティング');
legend('Rayleigh distribution(σ = 2)', 'histfit', 'PDF');