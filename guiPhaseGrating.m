function varargout = guiPhaseGrating(varargin)
% GUIPHASEGRATING MATLAB code for guiPhaseGrating.fig
%      GUIPHASEGRATING, by itself, creates a new GUIPHASEGRATING or raises the existing
%      singleton*.
%
%      H = GUIPHASEGRATING returns the handle to a new GUIPHASEGRATING or the handle to
%      the existing singleton*.
%
%      GUIPHASEGRATING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPHASEGRATING.M with the given input arguments.
%
%      GUIPHASEGRATING('Property','Value',...) creates a new GUIPHASEGRATING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiPhaseGrating_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiPhaseGrating_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiPhaseGrating

% Last Modified by GUIDE v2.5 24-Oct-2017 08:39:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiPhaseGrating_OpeningFcn, ...
                   'gui_OutputFcn',  @guiPhaseGrating_OutputFcn, ...
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


% --- Executes just before guiPhaseGrating is made visible.
function guiPhaseGrating_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiPhaseGrating (see VARARGIN)

% Choose default command line output for guiPhaseGrating
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiPhaseGrating wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiPhaseGrating_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in make.
function make_Callback(hObject, eventdata, handles)
% hObject    handle to make (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
window_size=str2double(get(handles.grating_lenth, 'string'));
window_start=str2num(get(handles.m, 'string'));
y_start=window_start;
dim=str2num(get(handles.x, 'string'));
base_image=zeros(dim);
pixel_value=100;

pixel_per_line=str2num(get(handles.pixel_per_line, 'string'));
grating_period=2*pixel_per_line;
white_line=ceil(window_size/grating_period);

for i=1:white_line
    base_image(y_start:y_start+window_size,(window_start:(window_start+pixel_per_line-1)))=pixel_value;
    window_start=window_start+2*pixel_per_line;
end
axes(handles.axes1);
imshow(base_image);

function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function grating_lenth_Callback(hObject, eventdata, handles)
% hObject    handle to grating_lenth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of grating_lenth as text
%        str2double(get(hObject,'String')) returns contents of grating_lenth as a double


% --- Executes during object creation, after setting all properties.
function grating_lenth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grating_lenth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pixel_per_line_Callback(hObject, eventdata, handles)
% hObject    handle to pixel_per_line (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pixel_per_line as text
%        str2double(get(hObject,'String')) returns contents of pixel_per_line as a double


% --- Executes during object creation, after setting all properties.
function pixel_per_line_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pixel_per_line (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
