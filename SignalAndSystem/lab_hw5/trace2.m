function varargout = trace2(varargin)
% TRACE2 MATLAB code for trace2.fig
%      TRACE2, by itself, creates a new TRACE2 or raises the existing
%      singleton*.
%
%      H = TRACE2 returns the handle to a new TRACE2 or the handle to
%      the existing singleton*.
%
%      TRACE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRACE2.M with the given input arguments.
%
%      TRACE2('Property','Value',...) creates a new TRACE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trace2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trace2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trace2

% Last Modified by GUIDE v2.5 21-Dec-2020 20:41:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trace2_OpeningFcn, ...
                   'gui_OutputFcn',  @trace2_OutputFcn, ...
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


% --- Executes just before trace2 is made visible.
function trace2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trace2 (see VARARGIN)

% Choose default command line output for trace2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trace2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trace2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t = 0:0.1:10;
a=[-1 0;0 -2];
b=[1;1];
c=[1 0;0 1];
d=[0];
sys=ss(a,b,c,d);
Response = impulse(sys,t); %求系统的冲激响应
axes(handles.axes1); 
plot(t,Response(:,1),'b-','linewidth',3);
ylabel('x1(t)','fontsize',14)
axes(handles.axes2); 
plot(t,Response(:,2),'r-','linewidth',3); %显示v
ylabel('x2(t)','fontsize',14) 
axes(handles.axes3);
plot(Response(:,2),Response(:,1),'linewidth',3); %显示状态轨迹 
xlabel('x2(t)','fontsize',14) 
ylabel('x1(t)','fontsize',14)
