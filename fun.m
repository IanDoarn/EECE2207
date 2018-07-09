function varargout = fun(varargin)
% FUN MATLAB code for fun.fig
%      FUN, by itself, creates a new FUN or raises the existing
%      singleton*.
%
%      H = FUN returns the handle to a new FUN or the handle to
%      the existing singleton*.
%
%      FUN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUN.M with the given input arguments.
%
%      FUN('Property','Value',...) creates a new FUN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fun_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fun_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fun

% Last Modified by GUIDE v2.5 21-Nov-2017 09:05:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fun_OpeningFcn, ...
                   'gui_OutputFcn',  @fun_OutputFcn, ...
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


% --- Executes just before fun is made visible.
function fun_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fun (see VARARGIN)

% Choose default command line output for fun
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fun wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axes1);


% --- Outputs from this function are returned to the command line.
function varargout = fun_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
theta = 0:0.01:2*pi;
v = get(handles.slider1, 'Value')*10;
switch get(handles.popupmenu1, 'Value')
    case 1                
        r = sin(v*theta);
        polarplot(theta,r);
    case 2
        r = cos(v*theta);
        polarplot(theta,r);
    case 3
        r = tan(v*theta);
        polarplot(theta,r);
    case 4
        r = sin(v.^theta);
        polarplot(theta,r);
    case 5
        r = sin(v*theta) + cos(v*theta);
        polarplot(theta,r);
    otherwise
end

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
