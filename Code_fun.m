function varargout = leite(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @leite_OpeningFcn, ...
                   'gui_OutputFcn',  @leite_OutputFcn, ...
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


% --- Executes just before leite is made visible.
function leite_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to leite (see VARARGIN)

% Choose default command line output for leite
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes leite wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = leite_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fun_input_Callback(hObject, eventdata, handles)
% hObject    handle to fun_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fun_input as text
%        str2double(get(hObject,'String')) returns contents of fun_input as a double

% --- Executes during object creation, after setting all properties.
function fun_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fun_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_min_Callback(hObject, eventdata, handles)
% hObject    handle to x_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_min as text
%        str2double(get(hObject,'String')) returns contents of x_min as a double


% --- Executes during object creation, after setting all properties.
function x_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_max_Callback(hObject, eventdata, handles)
% hObject    handle to x_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_max as text
%        str2double(get(hObject,'String')) returns contents of x_max as a double


% --- Executes during object creation, after setting all properties.
function x_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_min_Callback(hObject, eventdata, handles)
% hObject    handle to y_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_min as text
%        str2double(get(hObject,'String')) returns contents of y_min as a double


% --- Executes during object creation, after setting all properties.
function y_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_max_Callback(hObject, eventdata, handles)
% hObject    handle to y_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_max as text
%        str2double(get(hObject,'String')) returns contents of y_max as a double


% --- Executes during object creation, after setting all properties.
function y_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in out_pushb.
function out_pushb_Callback(hObject, eventdata, handles)
% hObject    handle to out_pushb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x_min x_max y_min y_max
 syms f(x, y)
 function1 = get(handles.fun_input,'string');
 x_min = str2num(get(handles.x_min,'string'));
 x_max = str2num(get(handles.x_max,'string'));
 y_min=  str2num(get(handles.y_min,'string'));
 y_max = str2num(get(handles.y_max,'string'));
 
 f(x, y) = subs(str2sym(function1));
 [X1,Y1]= meshgrid(x_min:.2:x_max,y_min:.2:y_max);
 zfun = @(x, y) eval(vectorize(f))
 Z1=zfun(X1,Y1);
 xlabel('X')
 ylabel('Y')
 zlabel('Z')
 title('Surf')
 surf(X1,Y1,Z1)





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


% --- Executes on button press in surf_psh.
function surf_psh_Callback(hObject, eventdata, handles)
% hObject    handle to surf_psh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x_min x_max y_min y_max
 syms f(x, y)
 function1 = get(handles.fun_input,'string');
 x_min = str2num(get(handles.x_min,'string'));
 x_max = str2num(get(handles.x_max,'string'));
 y_min=  str2num(get(handles.y_min,'string'));
 y_max = str2num(get(handles.y_max,'string'));
 
 f(x, y) = subs(str2sym(function1));
 [X1,Y1]= meshgrid(x_min:.2:x_max,y_min:.2:y_max);
 zfun = @(x, y) eval(vectorize(f))
 Z1=zfun(X1,Y1);
 xlabel('X')
 ylabel('Y')
 zlabel('Z')
 title('Surf')
 surf(X1,Y1,Z1)

% --- Executes on button press in mesh_push.
function mesh_push_Callback(hObject, eventdata, handles)
% hObject    handle to mesh_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x_min x_max y_min y_max
 syms f(x, y)
 function1 = get(handles.fun_input,'string');
 x_min = str2num(get(handles.x_min,'string'));
 x_max = str2num(get(handles.x_max,'string'));
 y_min=  str2num(get(handles.y_min,'string'));
 y_max = str2num(get(handles.y_max,'string'));
 
 f(x, y) = subs(str2sym(function1));
 [X1,Y1]= meshgrid(x_min:.2:x_max,y_min:.2:y_max);
 zfun = @(x, y) eval(vectorize(f))
 Z1=zfun(X1,Y1);
 xlabel('X')
 ylabel('Y')
 zlabel('Z')
 title('Mesh')
 mesh(X1,Y1,Z1)


% --- Executes on button press in cont_push.
function cont_push_Callback(hObject, eventdata, handles)
% hObject    handle to cont_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x_min x_max y_min y_max
 syms f(x, y)
 function1 = get(handles.fun_input,'string');
 x_min = str2num(get(handles.x_min,'string'));
 x_max = str2num(get(handles.x_max,'string'));
 y_min=  str2num(get(handles.y_min,'string'));
 y_max = str2num(get(handles.y_max,'string')); 
 
 f(x, y) = subs(str2sym(function1));
 [X1,Y1]= meshgrid(x_min:.2:x_max,y_min:.2:y_max);
 zfun = @(x, y) eval(vectorize(f))
 Z1=zfun(X1,Y1);
 xlabel('X')
 ylabel('Y')
 zlabel('Z')
 title('Contour')
 contour(X1,Y1,Z1)
