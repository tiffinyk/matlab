function varargout = tul(varargin)
% TUL MATLAB code for tul.fig
%      TUL, by itself, creates a new TUL or raises the existing
%      singleton*.
%
%      H = TUL returns the handle to a new TUL or the handle to
%      the existing singleton*.
%
%      TUL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUL.M with the given input arguments.
%
%      TUL('Property','Value',...) creates a new TUL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tul_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tul_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tul

% Last Modified by GUIDE v2.5 09-Dec-2020 15:03:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tul_OpeningFcn, ...
                   'gui_OutputFcn',  @tul_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before tul is made visible.
function tul_OpeningFcn(h, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tul (see VARARGIN)

% Choose default command line output for tul
handles.output = h;

% Update handles structure
guidata(h, handles);

% UIWAIT makes tul wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tul_OutputFcn(h, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5346*n)+sin(0.9273*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'1'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton2.
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5346*n)+sin(1.0247*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'2'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton3.
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5346*n)+sin(1.1328*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'3'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton4.
function varargout = pushbutton4_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5906*n)+sin(0.9273*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'4'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音

% --- Executes on button press in pushbutton5.
function varargout = pushbutton5_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5906*n)+sin(1.0247*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'5'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton6.
function varargout = pushbutton6_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.5906*n)+sin(1.1328*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'6'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton7.
function varargout = pushbutton7_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.6535*n)+sin(0.9273*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'7'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton8.
function varargout = pushbutton8_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.6535*n)+sin(1.0247*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'8'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% --- Executes on button press in pushbutton9.
function varargout = pushbutton9_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.6535*n)+sin(1.1328*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'9'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音


% 删除键的响应函数 
function varargout = pushbuttonback_Callback(h, eventdata, handles, varargin) 
n=[1:1000]; 
num=get(handles.edit1,'string'); 
l=length(num); 
n11=strrep(num,num,num(1:l-1)); %去掉末尾号码在面板上的显示 
d11=sin(0.7217*n)+sin(0.9273*n); 
set(handles.edit1,'string',n11); 
global NUM 
L=length(NUM); 
NUM=NUM(1:L-1100); %删除末尾号码在拨号音信号中的存储 
sound(d11,8192);


% 按键 0 的响应函数 
function varargout = pushbutton0_Callback(h, eventdata, handles, varargin) 
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.7217*n)+sin(1.0247*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'0'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号 
global NUM 
phone=[NUM,d0]; 
NUM=[phone,space]; % 存储连续的拨号音信号 
sound(d0,8192); % 产生拨号音



% 按键 # 的响应函数
function pushbuttonNUM_Callback(h, eventdata, handles, varargin)
n=[1:1000]; % 每个数字 1000 个采样点表示 
d0=sin(0.7217*n)+sin(1.1328*n); % 对应行频列频叠加 
n0=strcat(get(handles.edit1,'string'),'#'); % 获取数字号码 
set(handles.edit1,'string',n0); % 显示号码 
space=zeros(1,100); %100 个 0 模拟静音信号
sound(d0,8192); % 产生拨号音
global NUM
sound(NUM,8192); 
L=length(NUM); 
n=L/1100;
number=''; 
for i=1:n 
    j=(i-1)*1100+1; 
    d=NUM(j:j+999); % 截取出每个数字 
    f=fft(d,2048); % 以 N=2048 作 FFT 变换 
    a=abs(f); 
    p=a.*a/10000; % 计算功率谱
    num(1)=find(p(1:250)==max(p(1:250))); % 找行频 
    num(2)=300+find(p(300:380)==max(p(300:380))); % 找列频
    q=(0:2047)*4;
    axes(handles.axes1);
    plot(q,a,'b');
    axis([0,2000,0,800]);
    xlabel('频率','fontsize',12);
    ylabel('幅度');
    if (num(1) < 180)
        row=1; % 确定行数
    elseif (num(1) < 200)
        row=2;
    elseif (num(1) < 220)
        row=3;
    else
        row=4;
    end
    if (num(2) < 320)
        column=1; % 确定列数
    elseif (num(2) < 340)
        column=2;
    else
        column=3;
    end
    z=[row,column]; % 确定数字
    if z==[4,2]
        tel=0;
    elseif z==[1,1]
        tel=1;
    elseif z==[1,2]
        tel=2;
    elseif z==[1,3]
        tel=3;
    elseif z==[2,1]
        tel=4;
    elseif z==[2,2]
        tel=5;
    elseif z==[2,3]
        tel=6;
    elseif z==[3,1]
        tel=7;
    elseif z==[3,2]
        tel=8;
    elseif z==[3,3]
        tel=9;
    end
    t(i)=tel;
    c=strcat(number,int2str(tel));
    number=c;
    i=i+1;
end 
set(handles.edit2,'string',number);
%预存储程序
global BOOK;            %定义全局电话簿
BOOK{1}='10086';        %预存移动、电信、联通的号码
BOOK{2}='China Mobile';
BOOK{3}='10000';
BOOK{4}='China Telecom';
BOOK{5}='10010';
BOOK{6}='China Union';
sum=length(BOOK);
temp=number;            %识别出的号码
for j=1:sum-1
    if(strcmp(BOOK{j},number))  %与电话簿中的号码匹配
        temp=BOOK{j+1};
    end
    j=j+2;
end
set(handles.edit2,'string',temp);


function pushbuttonStore_Callback(h, eventdata, handles, varargin)
num=get(handles.edit1,'string');
name=get(handles.edit2,'string');
global BOOK;
sum=length(BOOK);
BOOK{sum+1}=num;
BOOK{sum+2}=name;

% --- Executes on button press in pushbuttonReset.
function pushbuttonReset_Callback(h, eventdata, handles, varargin)
set(handles.edit1,'string','');
set(handles.edit2,'string','');
global NUM;
NUM=[];


function edit1_Callback(h, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(h, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(h,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(h,'BackgroundColor','white');
end


function edit2_Callback(h, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(h, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(h,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(h,'BackgroundColor','white');
end
