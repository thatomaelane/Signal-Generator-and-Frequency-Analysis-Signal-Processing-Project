function signal_generator_gui_221847989
% SIGNAL_GENERATOR_GUI_221847989
% Interactive GUI for SPR307B (Student Number 221847989)
% Frequencies: 9 Hz, 80 Hz, 900 Hz
% Square generated directly (0-5V). Sine obtained by filtering square (0-5V)

%% GUI
fig = uifigure('Name','Signal Generator GUI - 221847989','Position',[100 100 1200 900]);

% Dropdowns and input
uilabel(fig,'Text','Signal Type:','Position',[20 850 90 22]);
ddType = uidropdown(fig,'Items',{'Square','Sine'},'Position',[120 850 110 22]);

uilabel(fig,'Text','Frequency:','Position',[250 850 90 22]);
ddFreq = uidropdown(fig,'Items',{'9 Hz','80 Hz','900 Hz'},'Position',[350 850 110 22]);

uilabel(fig,'Text','SNR (dB):','Position',[480 850 70 22]);
edSNR = uieditfield(fig,'numeric','Value',30,'Position',[560 850 70 22]);

btn = uibutton(fig,'push','Text','Generate','Position',[650 845 120 32],...
    'ButtonPushedFcn',@(src,event)onGenerate());

%% Large 4 axes in 2x2 grid
plotWidth = 520; plotHeight = 300;
left1 = 25; left2 = 610; topRowY = 520; bottomRowY = 200;

tAxNoisy = uiaxes(fig,'Position',[left1 topRowY plotWidth plotHeight]);
title(tAxNoisy,'Time Domain - Noisy'); xlabel(tAxNoisy,'Time (s)'); ylabel(tAxNoisy,'Amplitude (V)'); grid(tAxNoisy,'on');

tAxFiltered = uiaxes(fig,'Position',[left2 topRowY plotWidth plotHeight]);
title(tAxFiltered,'Time Domain - Filtered'); xlabel(tAxFiltered,'Time (s)'); ylabel(tAxFiltered,'Amplitude (V)'); grid(tAxFiltered,'on');

fAxNoisy = uiaxes(fig,'Position',[left1 bottomRowY plotWidth plotHeight]);
title(fAxNoisy,'Frequency Domain - Noisy'); xlabel(fAxNoisy,'Frequency (Hz)'); ylabel(fAxNoisy,'Magnitude'); grid(fAxNoisy,'on');

fAxFiltered = uiaxes(fig,'Position',[left2 bottomRowY plotWidth plotHeight]);
title(fAxFiltered,'Frequency Domain - Filtered'); xlabel(fAxFiltered,'Frequency (Hz)'); ylabel(fAxFiltered,'Magnitude'); grid(fAxFiltered,'on');

%% Nested generate function
function onGenerate()
    % Read GUI inputs
    sigType = ddType.Value;
    freqStr = ddFreq.Value;
    freq = str2double(erase(freqStr,' Hz'));
    SNRdB = edSNR.Value;

    % Time vector
    Fs = 50000; tlen = 0.2; t = 0:1/Fs:tlen-1/Fs;
    A = 5;  % amplitude 0-5V

    % Generate square wave 0-5V
    period = 1/freq;
    sq = double(mod(t, period) < (0.5*period)) * A;

    % Compute filter normalized cutoff
    fc = 1.5 * freq; 
    Wn = fc / (Fs/2);

    % Generate base signal (square or filtered sine)
    if strcmp(sigType,'Square')
        base = sq;  % 0-5 V square
    else
        if Wn >= 1
            base = sq;  % no filtering needed
        else
            [b,a] = butter(6, min(0.999,Wn),'low');
            base = filter(b,a,sq);
            % normalize to 0-5V
            base = base - min(base);
            base = base / max(base) * A;
        end
    end

    %% AWGN noise
    sigP = mean(base.^2);
    noiseVar = sigP / (10^(SNRdB/10));
    noisy = base + sqrt(noiseVar) * randn(size(base));

    % Filter noisy signal only if Wn < 1
    if Wn >= 1
        filtered = noisy;
    else
        [b,a] = butter(6, min(0.999,Wn),'low');
        filtered = filter(b,a,noisy);
        % normalize to 0-5V
        filtered = filtered - min(filtered);
        filtered = filtered / max(filtered) * A;
    end

    %% TIME DOMAIN PLOTS (first 5 cycles)
    cyclesToShow = 5;
    showT = min(cyclesToShow*(1/freq), 0.05);
    idxShow = t <= showT;

    cla(tAxNoisy); plot(tAxNoisy, t(idxShow), noisy(idxShow), 'r'); grid(tAxNoisy,'on');
    title(tAxNoisy, sprintf('Time domain - Noisy (%d Hz, SNR=%d dB)', freq, SNRdB));

    cla(tAxFiltered); plot(tAxFiltered, t(idxShow), filtered(idxShow), 'b'); grid(tAxFiltered,'on');
    title(tAxFiltered, sprintf('Time domain - Filtered (%d Hz)', freq));

    %% FFT PLOTS
    Nfft = 2^nextpow2(length(noisy));
    Ynoisy = fft(noisy,Nfft)/length(noisy);
    Yfiltered = fft(filtered,Nfft)/length(filtered);
    faxis = (0:Nfft-1)*(Fs/Nfft);

    cla(fAxNoisy); plot(fAxNoisy, faxis(1:Nfft/2), abs(Ynoisy(1:Nfft/2)), 'r'); grid(fAxNoisy,'on');
    title(fAxNoisy, sprintf('FFT - Noisy (%d Hz)', freq));

    cla(fAxFiltered); plot(fAxFiltered, faxis(1:Nfft/2), abs(Yfiltered(1:Nfft/2)), 'b'); grid(fAxFiltered,'on');
    title(fAxFiltered, sprintf('FFT - Filtered (%d Hz)', freq));
end

end
