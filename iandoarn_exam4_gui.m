function varargout = iandoarn_exam4_gui(varargin)
% IANDOARN_EXAM4_GUI MATLAB code for iandoarn_exam4_gui.fig
%      IANDOARN_EXAM4_GUI, by itself, creates a new IANDOARN_EXAM4_GUI or raises the existing
%      singleton*.
%
%      H = IANDOARN_EXAM4_GUI returns the handle to a new IANDOARN_EXAM4_GUI or the handle to
%      the existing singleton*.
%
%      IANDOARN_EXAM4_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IANDOARN_EXAM4_GUI.M with the given input arguments.
%
%      IANDOARN_EXAM4_GUI('Property','Value',...) creates a new IANDOARN_EXAM4_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iandoarn_exam4_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iandoarn_exam4_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iandoarn_exam4_gui

% Last Modified by GUIDE v2.5 05-Dec-2017 08:07:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iandoarn_exam4_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @iandoarn_exam4_gui_OutputFcn, ...
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


% --- Executes just before iandoarn_exam4_gui is made visible.
function iandoarn_exam4_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iandoarn_exam4_gui (see VARARGIN)

% Choose default command line output for iandoarn_exam4_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iandoarn_exam4_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.input1, 'String', '[ 3 2 1 ]');
set(handles.input2, 'String', '[ 5 7 9 ]');


% --- Outputs from this function are returned to the command line.
function varargout = iandoarn_exam4_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1 as text
%        str2double(get(hObject,'String')) returns contents of input1 as a double


% --- Executes during object creation, after setting all properties.
function input1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function solution_Callback(hObject, eventdata, handles)
% hObject    handle to solution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of solution as text
%        str2double(get(hObject,'String')) returns contents of solution as a double


% --- Executes during object creation, after setting all properties.
function solution_CreateFcn(hObject, eventdata, handles)
% hObject    handle to solution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcresult.
function calcresult_Callback(hObject, eventdata, handles)
% hObject    handle to calcresult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

switch get(handles.popupmenu1, 'value')
    case 1
        in1 = str2num(get(handles.input1, 'string'))
        in2 = str2num(get(handles.input2, 'String'))
        range = [-5:5]
        p1 = polyval(in1, range)
        p2 = polyval(in2, range)
        p3 = p1 + p2
        assignin('base', 'Polynomial1', in1);
        assignin('base', 'Polynomial2', in2);
        r = roots(p3)
        set(handles.solution, 'string', mat2str(r))
        axes(handles.axes1);
        plot(range, p3, 'b-o')
    case 2
        range = -5:5;
        in1 = str2num(get(handles.input1, 'string'))
        in2 = str2num(get(handles.input2, 'String'))
        
        f1_z = fzero(in1, in2)
        f1_out = feval(in1, range)
        axes(handles.axes1)
        plot(range, f1_out)
        set(handles.solution, 'string', num2str(f1_z))
    case 3
        x_data = str2num(get(handles.input1, 'string'))
        y_data = str2num(get(handles.input2, 'String'))
        slider = get(handles.slider1, 'value')*10
        p = polyfit(x_data, y_data, slider)
        xRange = linspace(0, 10, 100);
        yRange = polyval(p, xRange)
        axes(handles.axes1)
        plot(x_data, y_data, 'ro', xRange, yRange, 'b-')
        assignin('base', 'inpRegress', num2str(xRange))        
        assignin('base', 'outRegress', num2str(yRange))        
    otherwise
end

% --- Executes on button press in saveresult.
function saveresult_Callback(hObject, eventdata, handles)
% hObject    handle to saveresult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
in1 = str2num(get(handles.input1, 'string'))
in2 = str2num(get(handles.input2, 'String'))

switch get(handles.popupmenu1, 'value')
    case 1
        assignin('base', 'Polynomial3', num2str(in1 + in2))
    case 3
        assignin('base', 'inpRegress', num2str(linspace(0, 10, 100)))        
    otherwise
end

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
