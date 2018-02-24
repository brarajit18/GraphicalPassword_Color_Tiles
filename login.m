function varargout = login(varargin)
% LOGIN MATLAB code for login.fig
%      LOGIN, by itself, creates a new LOGIN or raises the existing
%      singleton*.
%
%      H = LOGIN returns the handle to a new LOGIN or the handle to
%      the existing singleton*.
%
%      LOGIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOGIN.M with the given input arguments.
%
%      LOGIN('Property','Value',...) creates a new LOGIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before login_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to login_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help login

% Last Modified by GUIDE v2.5 24-Feb-2018 13:42:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @login_OpeningFcn, ...
                   'gui_OutputFcn',  @login_OutputFcn, ...
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


% --- Executes just before login is made visible.
function login_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to login (see VARARGIN)

[a,map]=imread('1.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton1,'CData',g);

[a,map]=imread('2.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton2,'CData',g);

[a,map]=imread('3.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton3,'CData',g);

[a,map]=imread('4.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton4,'CData',g);

[a,map]=imread('5.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton5,'CData',g);

[a,map]=imread('6.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton6,'CData',g);

[a,map]=imread('7.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton7,'CData',g);

[a,map]=imread('8.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton8,'CData',g);

[a,map]=imread('9.png');
[r,c,d]=size(a); 
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.pushbutton9,'CData',g);

global arr;
arr=[1,2,3,4;0,0,0,0;0,0,0,0];
arr=arr';
assignin('base','arr',arr);
% Choose default command line output for login
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes login wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = login_OutputFcn(hObject, eventdata, handles) 
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
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=1;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end
        

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=2;
        ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=3;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=4;
        ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=5;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return

    end
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=6;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return

    end
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=7;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=8;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr
for i=1:4
    if arr(i,2)==1
        % do nothing
    else
        arr(i,2)=1;
        arr(i,3)=9;
ids=arr(:,3);
axes(handles.axes1);
if ids(1) == 0
    %do nothing
else
    fname=strcat(num2str(ids(1)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes2);
if ids(2) == 0
    %do nothing
else
    fname=strcat(num2str(ids(2)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes3);
if ids(3) == 0
    %do nothing
else
    fname=strcat(num2str(ids(3)),'.png');
    im=imread(fname);
    imshow(im);
end
axes(handles.axes4);
if ids(4) == 0
    %do nothing
else
    fname=strcat(num2str(ids(4)),'.png');
    im=imread(fname);
    imshow(im);
end
assignin('base','arr',arr);
        return
    end
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr;
load pattern.mat
if pattern'==arr(:,3)
    msg=sprintf('Pattern Match Successful');
    set(handles.edit1,'String',msg);
else
    msg=sprintf('Pattern Match Fialed. Try Again');
    set(handles.edit1,'String',msg);
axes(handles.axes1);
cla reset
axes(handles.axes2);
cla reset
axes(handles.axes3);
cla reset
axes(handles.axes4);
cla reset
arr(:,2)=[0,0,0,0];
arr(:,3)=[0,0,0,0];
assignin('base','arr',arr);
end
    

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global arr;
axes(handles.axes1);
cla reset
axes(handles.axes2);
cla reset
axes(handles.axes3);
cla reset
axes(handles.axes4);
cla reset
arr(:,2)=[0,0,0,0];
arr(:,3)=[0,0,0,0];
assignin('base','arr',arr);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
