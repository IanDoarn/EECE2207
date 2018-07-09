function varargout = exam3system_gui(varargin)
% EXAM3SYSTEM_GUI MATLAB code for exam3system_gui.fig
%      EXAM3SYSTEM_GUI, by itself, creates a new EXAM3SYSTEM_GUI or raises the existing
%      singleton*.
%
%      H = EXAM3SYSTEM_GUI returns the handle to a new EXAM3SYSTEM_GUI or the handle to
%      the existing singleton*.
%
%      EXAM3SYSTEM_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXAM3SYSTEM_GUI.M with the given input arguments.
%
%      EXAM3SYSTEM_GUI('Property','Value',...) creates a new EXAM3SYSTEM_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exam3system_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exam3system_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exam3system_gui

% Last Modified by GUIDE v2.5 16-Nov-2017 08:42:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exam3system_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @exam3system_gui_OutputFcn, ...
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


% --- Executes just before exam3system_gui is made visible.
function exam3system_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exam3system_gui (see VARARGIN)

% Choose default command line output for exam3system_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exam3system_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exam3system_gui_OutputFcn(hObject, eventdata, handles) 
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



function input3_Callback(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input3 as text
%        str2double(get(hObject,'String')) returns contents of input3 as a double


% --- Executes during object creation, after setting all properties.
function input3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function monthslider_Callback(hObject, eventdata, handles)
% hObject    handle to monthslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function monthslider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to monthslider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function loanbalance_Callback(hObject, eventdata, handles)
% hObject    handle to loanbalance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loanbalance as text
%        str2double(get(hObject,'String')) returns contents of loanbalance as a double


% --- Executes during object creation, after setting all properties.
function loanbalance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loanbalance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.analysis_selector, 'Value')
switch val
    case 1
        A = str2double(get(handles.input1, 'String'));
        P  = str2double(get(handles.input2, 'String'));
        r = str2double(get(handles.input1, 'String'));
        mn = get(handles.monthslider, 'Value')*1;
        mr = 1:19;

        B = A*(1+(r/1200))^mn - (P/(r/1200))*((1+(r/1200))^mn-1);
        B2 = A*(1+(r/1200)).^mr - (P/(r/1200))*((1+(r/1200)).^mr-1);

        set(handles.loanbalance, 'String', num2str(B));

        axes(handles.axes1);
        plot(B2, mr + mn);
    case 2
        A = logspace(1,4,100);
        C = str2double(get(handles.input1, 'String'))
        L = str2double(get(handles.input2, 'String'))
        %V = str2double(get(handles.input3, 'String'));
        %V = evalin('base', handles.input3, 'Sting');
        %class(V);
        V = A;
        R = get(handles.slider3, 'Value')*100
        anon_RV = @(R, C, L, V) (abs(R*((-V.^2)*L*C))/sqrt((R-R*(V.^2)*L*C).^2 + (V.*L).^2));
        axes(handles.axes1);
        plot(A, anon_RV(R, C, L, V));
    otherwise
end

% --- Executes on button press in saveresults.
function saveresults_Callback(hObject, eventdata, handles)
% hObject    handle to saveresults (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = get(handles.analysis_selector, 'Value')
switch val
    case 1
        A = str2double(get(handles.input1, 'String'));
        P  = str2double(get(handles.input2, 'String'));
        r = str2double(get(handles.input1, 'String'));
        mn = get(handles.monthslider, 'Value')*1;
        mr = 1:19;

        B = A*(1+(r/1200))^mn - (P/(r/1200))*((1+(r/1200))^mn-1);
        B2 = A*(1+(r/1200)).^mr - (P/(r/1200))*((1+(r/1200)).^mr-1);

        set(handles.loanbalance, 'String', num2str(B));
        assignin('base', mn, 'mthNum');
        assignin('base' B2, 'remBal');
    case 2
        A = logspace(1,4,100);
        C = str2double(get(handles.input1, 'String'))
        L = str2double(get(handles.input2, 'String'))
        %V = str2double(get(handles.input3, 'String'));
        %V = evalin('base', handles.input3, 'Sting');
        %class(V);
        V = A;
        R = get(handles.slider3, 'Value')*100
        anon_RV = @(R, C, L, V) (abs(R*((-V.^2)*L*C))/sqrt((R-R*(V.^2)*L*C).^2 + (V.*L).^2));
        assignin('base', anon_RV(R, C, L, V), 'volRatio');
    otherwise
end

% --- Executes on selection change in analysis_selector.
function analysis_selector_Callback(hObject, eventdata, handles)
% hObject    handle to analysis_selector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns analysis_selector contents as cell array
%        contents{get(hObject,'Value')} returns selected item from analysis_selector


% --- Executes during object creation, after setting all properties.
function analysis_selector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to analysis_selector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
