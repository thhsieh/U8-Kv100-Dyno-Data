close all
clc


figure(1)
rpm36 = readmatrix('avg_rpm36.csv');
trq36 = readmatrix('avg_trqNm36.csv');
eff36 = readmatrix('motor_eff36.csv')*100;
eff_max36 = max(eff36,[],"all");
contourf(rpm36,trq36,eff36,[0 5 12 18 24 31 37 43 49 55 60 65],"ShowText",true,"LabelFormat","%0.2f");
colormap(jet);
xlim([0 1700]);
ylim([0 3.5]);
xticks([0:100:1700]);
yticks([0:0.25:3.25, round(max(trq36,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c36 = colorbar;
clim([0 round(eff_max36,2)])
c36.Ticks = [0:10:60, eff_max36];
c36.Label.String = 'Motor Efficiency (%)';
grid on

figure(2)
loss36 = readmatrix('loss_map36.csv');
loss_max36 = max(loss36,[],"all");
rpm36reduced = rpm36(2:end, 2:end);
trq36reduced = trq36(2:end, 2:end);
contourf(rpm36reduced,trq36reduced,loss36,[0 50 100 160 215 270 370 450],"ShowText",true,"LabelFormat","%0.2f");
xlim([100 1600]);
ylim([0.2 3.3]);
xticks(100:100:1700);
yticks([0.2:0.2:3, round(max(trq36reduced,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c_loss = colorbar;
clim([0 round(loss_max36,2)])
c_loss.Ticks = [0:100:400, round(loss_max36,2)];
c_loss.Label.String = 'P_{loss} (W)';
grid on

figure(3)
driver_eff36 = readmatrix('driver_eff36.csv')*100;
driver_eff_max36 = max(driver_eff36,[],"all");
contourf(rpm36reduced,trq36reduced,driver_eff36,[50 69 80 85 88 91 93 94 95 97],"ShowText",true,"LabelFormat","%0.2f");
xlim([100 1600]);
ylim([0.2 3.3]);
xticks(100:100:1700);
yticks([0.2:0.2:3, round(max(trq36reduced,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c_drv = colorbar;
clim([0 round(driver_eff_max36,2)])
c_drv.Ticks = [0:10:90, round(driver_eff_max36,2)];
c_drv.Label.String = 'Driver Efficiency (%)';
grid on

figure(4)
temp36 = readmatrix('max_termperature36.csv');
curr36 = readmatrix('curr_setpoints36.csv');
temp_max36 = max(temp36,[],"all");
contourf(rpm36,curr36,temp36,[20 22 24 25 26 29 32 36 40 43 46 50 56],"ShowText",true,"LabelFormat","%0.2f");
colormap(jet);
xlim([0 1700]);
ylim([0 50]);
xticks(0:100:1700);
yticks(0:10:50);
xlabel('Speed (RPM)');
ylabel('Current setpoint (A)');
ctemp = colorbar;
clim([0 temp_max36]);
ctemp.Ticks = [0:10:50, round(temp_max36,2)];
ctemp.Label.String = 'Motor Temperature (°C)';
grid on


figure(5)
rpm24 = readmatrix('avg_rpm24.csv');
trq24 = readmatrix('avg_trqNm24.csv');
eff24 = readmatrix('motor_eff24.csv')*100;
eff_max24 = max(eff24,[],"all");
contourf(rpm24,trq24,eff24,[0 5 12 18 24 31 37 43 49 55 60 65],"ShowText",true,"LabelFormat","%0.2f");
colormap(jet);
xlim([0 1500]);
ylim([0 3.2]);
xticks([0:100:1500]);
yticks([0:0.25:3.00, round(max(trq24,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c24 = colorbar;
clim([0 round(eff_max24,2)])

c24.Label.String = 'Motor Efficiency (%)';
c24.Ticks = [0:10:60, eff_max24];
grid on

figure(6)
loss24 = readmatrix('loss_map24.csv');
loss_max24 = max(loss24,[],"all");
rpm24reduced = rpm24(2:end, 2:end);
trq24reduced = trq24(2:end, 2:end);
contourf(rpm24reduced,trq24reduced,loss24,"ShowText",true,"LabelFormat","%0.2f");
xlim([100 1400]);
ylim([0.2 3.2]);
xticks(100:100:1400);
yticks([0.2:0.2:3, round(max(trq24reduced,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c_loss = colorbar;
clim([0 round(loss_max24,2)])
c_loss.Ticks = [0:100:300, 350, round(loss_max24,2)];
c_loss.Label.String = 'P_{loss} (W)';
grid on

figure(7)
driver_eff24 = readmatrix('driver_eff24.csv')*100;
driver_eff_max24 = max(driver_eff24,[],"all");
contourf(rpm24reduced,trq24reduced,driver_eff24,[50 69 80 85 88 91 93 94 95 97],"ShowText",true,"LabelFormat","%0.2f");
xlim([100 1500]);
ylim([0.2 3.2]);
xticks(100:100:1500);
yticks([0.2:0.2:2.8, round(max(trq24reduced,[],"all"),2)]);
xlabel('Speed (RPM)');
ylabel('Torque (N-m)');
c_drv = colorbar;
clim([0 round(driver_eff_max24,2)])
c_drv.Ticks = [0:10:90, round(driver_eff_max24,2)];
c_drv.Label.String = 'Driver Efficiency (%)';
grid on

figure(8)
temp24 = readmatrix('max_termperature24.csv');
curr24 = readmatrix('curr_setpoints24.csv');
temp_max24 = max(temp24,[],"all");
contourf(rpm24,curr24,temp24,[22 24 25 26 29 32 36 38 40 42 45 47],"ShowText",true,"LabelFormat","%0.2f");
colormap(jet);
xlim([0 1500]);
ylim([0 50]);
xticks(0:100:1500);
yticks(0:10:50);
xlabel('Speed (RPM)');
ylabel('Current setpoint (A)');
ctemp = colorbar;
clim([0 temp_max24]);
ctemp.Ticks = [0:10:40, round(temp_max24,2)];
ctemp.Label.String = 'Motor Temperature (°C)';
grid on