function varargout = finalexamgui(varargin)
% FINALEXAMGUI MATLAB code for finalexamgui.fig
%      FINALEXAMGUI, by itself, creates a new FINALEXAMGUI or raises the existing
%      singleton*.
%
%      H = FINALEXAMGUI returns the handle to a new FINALEXAMGUI or the handle to
%      the existing singleton*.
%
%      FINALEXAMGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALEXAMGUI.M with the given input arguments.
%
%      FINALEXAMGUI('Property','Value',...) creates a new FINALEXAMGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalexamgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalexamgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalexamgui

% Last Modified by GUIDE v2.5 12-Dec-2017 08:38:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalexamgui_OpeningFcn, ...
                   'gui_OutputFcn',  @finalexamgui_OutputFcn, ...
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


% --- Executes just before finalexamgui is made visible.
function finalexamgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalexamgui (see VARARGIN)

% Choose default command line output for finalexamgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalexamgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.input1, 'String', '[ 0 1 2 3 4 5 6 7 8 9 ]');
set(handles.input2, 'String', '[ 9 8 7 6 5 4 3 2 1 0 ]');
set(handles.length, 'String', '3');


% --- Outputs from this function are returned to the command line.
function varargout = finalexamgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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



function length_Callback(hObject, eventdata, handles)
% hObject    handle to length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of length as text
%        str2double(get(hObject,'String')) returns contents of length as a double


% --- Executes during object creation, after setting all properties.
function length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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


% --- Executes on button press in display.
function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.popupmenu1, 'Value');
a = str2num(get(handles.input1, 'String'))
b = str2num(get(handles.input2, 'String'))
l = str2double(get(handles.length, 'String'))
r = get(handles.slider1, 'Value')*100

switch(val)
    case 1
        xVector = linspace(min(a), max(b), l)
        intVector = interp1(a, b, xVector)
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        axes(handles.axes1);
        plot(a, b, 'r*', xVector, intVector, '-', xVector, regVector, 'b.')
    case 2
        xVector = linspace(min(a), max(b), l)
        intVector = interp1(a, b, xVector, 'spline')
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        axes(handles.axes1);
        plot(a, b, 'r*', xVector, intVector, '-', xVector, regVector, 'b.')
    case 3
        xVector = linspace(min(a), max(b), l)
        intVector = interp1(a, b, xVector, 'cubic')
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        axes(handles.axes1);
        plot(a, b, 'r*', xVector, intVector, '-', xVector, regVector, 'b.')
    otherwise
end
        
        


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.popupmenu1, 'Value');
a = str2num(get(handles.input1, 'String'))
b = str2num(get(handles.input2, 'String'))
l = str2double(get(handles.length, 'String'))
r = get(handles.slider1, 'Value')*100
xVector = linspace(min(a), max(b), l)
assignin('base', 'xVector', num2str(xVector));
switch(val)
    case 1        
        intVector = interp1(a, b, xVector)
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        assignin('base', 'intVector', num2str(intVector));
        assignin('base', 'regVector', num2str(regVector));
    case 2
        intVector = interp1(a, b, xVector, 'spline')
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        assignin('base', 'intVector', num2str(intVector));
        assignin('base', 'regVector', num2str(regVector));        
    case 3
        intVector = interp1(a, b, xVector, 'cubic')
        p = polyfit(a, b, r)
        regVector = polyval(p, xVector)
        assignin('base', 'intVector', num2str(intVector));
        assignin('base', 'regVector', num2str(regVector));        
    otherwise
end
