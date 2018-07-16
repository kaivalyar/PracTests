To analyse say, the profile-data003.txt profile run using pstats, simply open a terminal and type ... ~ $ cprofilev -f profile-data003.txt.

This will open a webpage browser window / provide a link to a webpage where different pstats analyses can be performed easily. Clicking on any of the columns sorts the output by that column. Clicking a function in the last column provides a detiled view of the functions profile - with calling and callee functions.

0. file-name : comment [total-runtime]

1. profile-data001.txt : start [473]
2. profile-data002.txt : cdef _prednames [395]
3. profile-data003.txt : cdef GroundAtoms.MLN [393]
4. profile-data004.txt : l=[]/l=None [757]
5. profile-data005.txt : revert l=None [387]
6. profile-data006.txt : add__dict__ [381]
7. profile-data007.txt : type-misc-attributes [330]
