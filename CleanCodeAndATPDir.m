function[]=CleanCodeAndATPDir(Dir,filename )
% This is a hlper function that depetes all temp files due to ATPMAT
% operation

%This file is part of ATPMAT
%For more information, please go to https://bitbucket.org/ahmadmabdullah/atpmat
% ATPMAT is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published
%   by the Free Software Foundation, either version 3 of the License,
%   or (at your option) any later version.
%
%   ATPMAT is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with MATPOWER. If not, see <http://www.gnu.org/licenses/>.
%
%   Additional permission under GNU GPL version 3 section 7
%
%   If you modify ATPMAT, or any covered work, to interface with
%   other modules (such as MATLAB code and MEX-files) available in a
%   MATLAB(R) or comparable environment containing parts covered
%   under other licensing terms, the licensors of MATPOWER grant
%   you additional permission to convey the resulting work.

nameBase=strcat(Dir.codePath,'\',filename);
    fileRM=strcat({'rm '},{nameBase});
    system(fileRM{:});
    fileRM=strcat({'rm '},{nameBase},'02');
    system(fileRM{:});
    fileRM=strcat({'rm '},{nameBase},'03');
    system(fileRM{:});
    fileRM=strcat({'rm '},{nameBase},'04');
    system(fileRM{:});
    fileRM=strcat({'rm '},{nameBase},'05');
    system(fileRM{:});
    fileRM=strcat({'rm '},{nameBase},'06');
    system(fileRM{:});
    cd(Dir.ATPEXEDir);
    fileRM=strcat({'rm '},{strcat(Dir.ATPEXEDir,'\','tempFaultFile.pl4')});
    system(fileRM{:});
    fileRM=strcat({'rm '},{strcat(Dir.ATPEXEDir,'\','tempFaultFile.atp')});
    system(fileRM{:});
    fileRM=strcat({'rm '},{strcat(Dir.ATPEXEDir,'\','tempFaultFile.dbg')});
    system(fileRM{:});
    fileRM=strcat({'rm '},{strcat(Dir.ATPEXEDir,'\','tempFaultFile.lis')});
    system(fileRM{:});
    fileRM=strcat({'rm '},{strcat(Dir.ATPEXEDir,'\','output.txt')});
    system(fileRM{:});