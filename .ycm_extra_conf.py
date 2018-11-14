import os
import os.path
import fnmatch
import logging
import ycm_core
import re

def FlagsForFilex( filename ):
  return { 'flags': [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-ferror-limit=10000',
    '-std=c++98',
    '-x', 'c++',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Framework/Interfaces',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/GPALMedia/Interface',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/blued/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/blued/GPAL/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Interface',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/VoiceEngine/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/BluetoothService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Common/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/ToneGenerationService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaControlService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/SRTP/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaProcessingService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Interfaces',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/Interfaces',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/TestJournalService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/Common/CanonicalDialSettings/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFAAdaptor/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/Common/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/CallControl/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/FunctionalInterface/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/TeamServices/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/Signalling/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/XmlSaxParser/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/InterfaceProxy/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/MessageExtender/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/Mapper/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/Kicker/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/sosal/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/DisplayHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/AudioHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CallControl/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/LocalFeatureHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CallLogHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/FeatureHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/HFA/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/ConfigManager/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/MenuHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CTCHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/DeviceHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CCHandler/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/Adaptor/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/AnsibleService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTAParser/xmlelement/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTAParser/cstaXML/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTATestService/SIP/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/OBEXService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/WSIService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/AnalyticsService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/DigitAnalysisService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/InstrumentationService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/JournalService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/EAS/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/DirectoryService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/BroadsoftService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/SidecarService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/LDAPService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTA_Service/CSTAComputingFunction/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTA_Service/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/UCService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/PotService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/BackupService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/TeamService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/EWS/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/MediaRecordingService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaProcessingService/include',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TFramework/Sources/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TConfig/SIP/'
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/Linux_BSP/ifx-com-linux/source/user/opensource/openssl/output/armv7l_R3/usr/include/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TIce/Sources/IceManagement/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/Devices/include/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/VideoService/include/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TConfig/',
    '-I', '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TStun/Sources/',
    '-l', 'pthread'
  ] }

    # '-isystem', '/usr/include/x86_64-linux-gnu/c++/7',
    # '-isystem', '/usr/include/c++/7',

CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))

include_dirs = [
    '/home/km000057/GIT/mainline/vobs/Opera_Framework/Interfaces',
    '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/GPALMedia/Interface',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/blued/include',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/blued/GPAL/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Interface',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/VoiceEngine/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/BluetoothService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Common/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/ToneGenerationService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaControlService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/SRTP/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaProcessingService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Interfaces',
    '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/Interfaces',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/TestJournalService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/Common/CanonicalDialSettings/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFAAdaptor/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/Common/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/CallControl/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/FunctionalInterface/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/TeamServices/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/SIP/Signalling/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/XmlSaxParser/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/InterfaceProxy/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/MessageExtender/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/Mapper/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/Kicker/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/Common/sosal/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/DisplayHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/AudioHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CallControl/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/LocalFeatureHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CallLogHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/FeatureHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/HFA/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/ConfigManager/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/MenuHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CTCHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/DeviceHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/HFA/CCHandler/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CommunicationsService/Adaptor/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/AnsibleService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTAParser/xmlelement/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTAParser/cstaXML/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTATestService/SIP/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/OBEXService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/WSIService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/AnalyticsService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/DigitAnalysisService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/InstrumentationService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/JournalService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/EAS/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/DirectoryService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/BroadsoftService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/SidecarService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/LDAPService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTA_Service/CSTAComputingFunction/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/CSTA_Service/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/UCService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/PotService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/BackupService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/TeamService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/EWS/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Business_Services/MediaRecordingService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/MediaProcessingService/include',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TFramework/Sources/',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TConfig/SIP/'
    '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/Linux_BSP/ifx-com-linux/source/user/opensource/openssl/output/armv7l_R3/usr/include/',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TIce/Sources/IceManagement/',
    '/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/Devices/include/',
    '/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/VideoService/include/',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TConfig/',
    '/home/km000057/GIT/mainline/vobs/Opera_3rdParty/SipStack/v4_1/M5T/M5TStun/Sources/',
    '/usr/include/x86_64-linux-gnu/c++/7',
    '/usr/include/c++/7'
]


include_files = [
    './include/linux/kconfig.h',
]

flags = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-ferror-limit=10000',
    '-std=c++98',
    '-xc',
    '-xc++',
    '-nostdinc',
]

def FlagsForFileoo( filename, **kwargs ):
    """
    Given a source file, retrieves the flags necessary for compiling it.
    """
    for dir in include_dirs:
        flags.append('-I' + os.path.join(CURRENT_DIR, dir))

    for file in include_files:
        flags.append('-include' + os.path.join(CURRENT_DIR, file))

    return { 'flags': flags }




BASE_FLAGS = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-std=c++11',
    '-x', 'c++',
    '-isystem', '/usr/include/c++/',
    '-isystem', '/usr/local/include',
    '-isystem', '/usr/include',
    '-I','/usr/lib/',
    '-I','/usr/include/',
    '-I','include'
]
BASE_FLAGSOld = [
        '-Wall',
        '-Wextra',
        '-Werror',
        '-Wno-long-long',
        '-Wno-variadic-macros',
        '-fexceptions',
        '-ferror-limit=10000',
        '-DNDEBUG',
        '-std=c++11',
        '-x','c++',
        '-I','/usr/lib/',
        '-I','/usr/include/',
        '-I','include'
]

SOURCE_EXTENSIONS = [
        '.cpp',
        '.cxx',
        '.cc',
        '.c',
        '.m',
        '.mm'
        ]

SOURCE_DIRECTORIES = [
        'src',
        'lib'
        ]

HEADER_EXTENSIONS = [
        '.h',
        '.hxx',
        '.hpp',
        '.hh'
        ]

HEADER_DIRECTORIES = [
        'include'
        ]

def IsHeaderFile(filename):
    extension = os.path.splitext(filename)[1]
    return extension in HEADER_EXTENSIONS

def GetCompilationInfoForFile(database, filename):
    if IsHeaderFile(filename):
        basename = os.path.splitext(filename)[0]
        for extension in SOURCE_EXTENSIONS:
            # Get info from the source files by replacing the extension.
            replacement_file = basename + extension
            if os.path.exists(replacement_file):
                compilation_info = database.GetCompilationInfoForFile(replacement_file)
                if compilation_info.compiler_flags_:
                    return compilation_info
            # If that wasn't successful, try replacing possible header directory with possible source directories.
            for header_dir in HEADER_DIRECTORIES:
                for source_dir in SOURCE_DIRECTORIES:
                    src_file = replacement_file.replace(header_dir, source_dir)
                    if os.path.exists(src_file):
                        compilation_info = database.GetCompilationInfoForFile(src_file)
                        if compilation_info.compiler_flags_:
                            return compilation_info
        return None
    return database.GetCompilationInfoForFile(filename)

def FindNearest(path, target, build_folder):
    candidate = os.path.join(path, target)
    if(os.path.isfile(candidate) or os.path.isdir(candidate)):
        logging.info("Found nearest " + target + " at " + candidate)
        return candidate;

    parent = os.path.dirname(os.path.abspath(path));
    if(parent == path):
        raise RuntimeError("Could not find " + target);

    if(build_folder):
        candidate = os.path.join(parent, build_folder, target)
        if(os.path.isfile(candidate) or os.path.isdir(candidate)):
            logging.info("Found nearest " + target + " in build folder at " + candidate)
            return candidate;

    return FindNearest(parent, target, build_folder)

def MakeRelativePathsInFlagsAbsolute(flags, working_directory):
    if not working_directory:
        return list(flags)
    new_flags = []
    make_next_absolute = False
    path_flags = [ '-isystem', '-I', '-iquote', '--sysroot=' ]
    for flag in flags:
        new_flag = flag

        if make_next_absolute:
            make_next_absolute = False
            if not flag.startswith('/'):
                new_flag = os.path.join(working_directory, flag)

        for path_flag in path_flags:
            if flag == path_flag:
                make_next_absolute = True
                break

            if flag.startswith(path_flag):
                path = flag[ len(path_flag): ]
                new_flag = path_flag + os.path.join(working_directory, path)
                break

        if new_flag:
            new_flags.append(new_flag)
    return new_flags


def FlagsForClangComplete(root):
    try:
        clang_complete_path = FindNearest(root, '.clang_complete')
        clang_complete_flags = open(clang_complete_path, 'r').read().splitlines()
        return clang_complete_flags
    except:
        return None

def FlagsForInclude(root):
    try:
        include_path = FindNearest(root, 'include')
        flags = []
        for dirroot, dirnames, filenames in os.walk(include_path):
            for dir_path in dirnames:
                real_path = os.path.join(dirroot, dir_path)
                flags = flags + ["-I" + real_path]
        return flags
    except:
        return None

def FlagsForCompilationDatabase(root, filename):
    print("xx - Flags for comp db")
    try:
        # Last argument of next function is the name of the build folder for
        # out of source projects
        compilation_db_path = FindNearest(root, 'compile_commands.json', 'build')
        # compilation_db_path = "/home/km000057/GIT/compile_commands.json"
        compilation_db_dir = os.path.dirname(compilation_db_path)
        logging.info("Set compilation database directory to " + compilation_db_dir)
        compilation_db =  ycm_core.CompilationDatabase(compilation_db_dir)
        if not compilation_db:
            logging.info("Compilation database file found but unable to load")
            return None
        compilation_info = GetCompilationInfoForFile(compilation_db, filename)
        if not compilation_info:
            logging.info("No compilation info for " + filename + " in compilation database")
            return None
        return MakeRelativePathsInFlagsAbsolute(
                compilation_info.compiler_flags_,
                compilation_info.compiler_working_dir_)
    except:
        return None

def FlagsForFile(filename):
    root = os.path.realpath(filename);
    compilation_db_flags = FlagsForCompilationDatabase(root, filename)
    if compilation_db_flags:
        final_flags = compilation_db_flags
    else:
        final_flags = BASE_FLAGS
        clang_flags = FlagsForClangComplete(root)
        if clang_flags:
            final_flags = final_flags + clang_flags
        include_flags = FlagsForInclude(root)
        if include_flags:
            final_flags = final_flags + include_flags
    return {
            'flags': final_flags,
            'do_cache': True
            }
