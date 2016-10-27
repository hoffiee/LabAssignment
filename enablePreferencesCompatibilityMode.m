function enablePreferencesCompatibilityMode
% For compatibility with MATLAB code written in previous releases 
% this file sets parameters of Simulink's root block diagram to the values 
% specified in your Simulink Preferences from a previous release. 
% For more information, run "doc Simulink.defaultModelTemplate"

fprintf('Running Preferences compatibility function: %s.m\n',mfilename('fullpath'));

Simulink.defaultModelTemplate('$clear');

set_param(0,'PaperType',get(0,'DefaultFigurePaperType'))
set_param(0,'PaperUnits',get(0,'DefaultFigurePaperUnits'))
set_param(0,'DefaultBlockFontName','Helvetica');
set_param(0,'DefaultBlockFontSize','10');
set_param(0,'DefaultBlockFontWeight','normal');
set_param(0,'DefaultBlockFontAngle','normal');
set_param(0,'DefaultLineFontName','Helvetica');
set_param(0,'DefaultLineFontSize','9');
set_param(0,'DefaultLineFontWeight','normal');
set_param(0,'DefaultLineFontAngle','normal');
set_param(0,'DefaultAnnotationFontName','Helvetica');
set_param(0,'DefaultAnnotationFontSize','10');
set_param(0,'DefaultAnnotationFontWeight','normal');
set_param(0,'DefaultAnnotationFontAngle','normal');
set_param(0,'BrowserLookUnderMasks','off');
set_param(0,'BrowserShowLibraryLinks','off');
set_param(0,'ModelBrowserVisibility','off');
set_param(0,'WideLines','off');
set_param(0,'ShowPortDataTypes','off');



end
