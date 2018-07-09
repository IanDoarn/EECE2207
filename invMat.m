function varargout = invMat(varargin)
% INVMAT MATLAB code for invMat.fig
%      INVMAT, by itself, creates a new INVMAT or raises the existing
%      singleton*.
%
%      H = INVMAT returns the handle to a new INVMAT or the handle to
%      the existing singleton*.
%
%      INVMAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVMAT.M with the given input arguments.
%
%      INVMAT('Property','Value',...) creates a new INVMAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before invMat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to invMat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help invMat

% Last Modified by GUIDE v2.5 31-Oct-2017 08:22:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @invMat_OpeningFcn, ...
                   'gui_OutputFcn',  @invMat_OutputFcn, ...
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


% --- Executes just before invMat is made visible.
function invMat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to invMat (see VARARGIN)

% Choose default command line output for invMat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes invMat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = invMat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function mat_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mat_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function mat_a_Callback(hObject, eventdata, handles)
% hObject    handle to mat_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mat_a as text
%        str2double(get(hObject,'String')) returns contents of mat_a as a double
a = str2num(get(handles.mat_a, 'string'));
assignin('base', 'input_mat', a);

% --- Executes on button press in make_inv.
function make_inv_Callback(hObject, eventdata, handles)
% hObject    handle to make_inv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b = evalin('base', 'input_mat');
c = inv(b);
assignin('base', 'inverse_mat', b);
set(handles.dis_inv, 'string', mat2str(c));




function dis_inv_Callback(hObject, eventdata, handles)
% hObject    handle to dis_inv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dis_inv as text
%        str2double(get(hObject,'String')) returns contents of dis_inv as a double


% --- Executes during object creation, after setting all properties.
function dis_inv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dis_inv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
