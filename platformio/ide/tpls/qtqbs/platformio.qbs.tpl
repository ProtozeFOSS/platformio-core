import qbs
CppApplication{
cpp.includePaths:[
% for include in includes:
"{{include}}",
% end
]

cpp.defines:[
% for define in defines:
% tokens = define.split("##", 1)
"{{tokens[0].strip()}}",
% end
]


files:["platformio.ini",
% for file in src_files:
"{{file}}",
% end
]

}
