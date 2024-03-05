import 'package:first_project/enums/enums.dart';

const mobileCourse = {
  SubjectSection.applicationdev: {
    0: {
      'topic': "1.     MOBILE DEVELOPMENT",
      'subTopic': [
        {
          'heading': "WHAT IS A “SMARTPHONE”  ",
          'attachment': "",
          'body': "Semi-Smart: Phone that offers features beyond making"
          "\n\n•Calls"
          "\n\n•E-mail"
          "\n\n•Take pictures"
          "\n\n•PLays mp3 and mp4"
        },
        {
          'heading': "Phone that runs a complete Operating System ",
          'attachment': "",
          'body': "Offers a standardized platform for development"
          "\n\nAble to execute arbitrary 3rd party applications "
        },
        {
          'heading': "QUICK FACTS ",
          'attachment': "",
          'body': "Today Cell phones in use today ~ 1.2 billion"
          "\n\n•Smartphones account for 14% ~ 170 Million "
          "\n\n•Projected 2012 "
          "\n\n•Cell phones ~ 1.7 billion"
          "\n\n•Smartphones 29% ~ 500 Million"
          "\n\n•300% Smartphone growth in three years"
        },{
          'heading': "MOBILE DEVELOPMENT SOLUTIONS",
          'attachment': "",
          'body': "Java ME"
          "\n\n•Symbian "
          "\n\n   -UIQ "
          "\n\n   -S60"
          "\n•Android"
          "\n\•nBlackBerry"
           "\n\n•OVI"
           "\n\n•Windows Mobile"
          "\n\n•iPhone"
           "\n\n•LiMo"
           "\n\n•Ångström distribution"
           "\n\n•Adobe Flash Light"
          "\n\n•BREW"
          "\n\n•OpenMoko"
              "\n\n•Palm OS (Garnet OS, Cobalt OS)"
          "\n\n•Palm webOS "
          "\n\n   -Mojo"
        },{
          'heading': "WHY? ",
          'attachment': "",
          'body': "Different Phones Different Uses"
          "\n\n•Phones for consumer or phone for business "
          "\n\n•V-Cast vs Palm "
        },{
          'heading': "COMMON PROBLEM: ABSTRACTION ",
          'attachment': "",
          'body': "Interface / GUI"
          "\n\n•How does the developer create an interface"
          "\n\n   -Different interaction techniques"
          "\n\n   -Graphical capabilities of the phone "
        },{
          'heading': "Phone Services and Security ",
          'attachment': "",
          'body': "•What resources are available to your program"
          "\n\n•What types of boundaries or constraints are put on applications "
          "\n\n• How can code be considered “safe” "
        },
        {
          'heading': "OTHER ISSUES ",
          'attachment': "",
          'body': "•Distribution"
          "\n\n•Centralized repository"
          "\n\n•Direct OTI"
          "\n\n•From PC"
        },
        {
          'heading': " ",
          'attachment': "",
          'body': "•Development "
          "\n\n•Language familiarity"
          "\n\n   -Porting"
          "\n\n•IDEs? "
          "\n\n•Debugging"
          "\n\n•Emulation Vs on Phone"
          "\n\n•Performance"
          "\n\n   -Very limited resources"
          "\n\n   -Battery"
        },
        {
          'heading': "THREE TIERED SOLUTION ",
          'attachment': "",
          'body': "•Virtual Environment"
          "\n\n   -Java ME"
          "\n\n   -BREW *"
          "\n\n•Core Operating System "
          "\n\n   -Symbian"
          "\n\n   -LiMo"
          "\n\n•Rich Operating System"
          "\n\n   -Android"
          "\n\n   -iPhone"
        },

      ]
    },
    1: {
      'topic': "2.     VIRTUAL ENVIRONMENTS",
      'subTopic': [
        {
          'heading': "JAVA PLATFORM ",
          'attachment': "assets/mobile_development/mobile_1.png",
          'body': ""
        },
        {
          'heading': "KVM / CLDC ",
          'attachment': "",
          'body': "•Specially designed mobile virtual machine "
          "\n\n•Original Ran with 128k Memory footprint"
          "\n\n•Paired down to bare bones"
          "\n\n   -Reduced versions of classes"
          "\n\n    -String, Object, Hashtable, Vector, Math, Simple Errors "
          "\n\n•Yank out features"
          "\n\n   -No long, float, double "
          "\n\n   -Class Loaders"
          "\n\n   -Threading"
          "\n\n   -Multi dimensional arrays"
          "\n\n•But Each phone implementation can add them back "
          "\n\n•Takes a profile to complete the stack"
        },
        {
          'heading': "MOBILE INFORMATION DEVICE PROFILE ",
          'attachment': "",
          'body': "•Mobile Information Device Profile "
          "\n\n•Adds libraries specific to Mobile phones"
          "\n\n   -IO"
          "\n\n   -Record management system"
          "\n\n   -Basic media playback system"
          "\n\n•LCDUI- 2D drawing library typically used for sprite based 2d games"
          "\n\n•Optional packages"
          "\n\n   -SMS control"
          "\n\n   -PIM personal info management (Contact list control)"
        },
        {
          'heading': "JAVA MICRO EDITION ",
          'attachment': "",
          'body': "•Almost all phones include a runtime"
          "\n\n   -Pluggable Architecture"
          "\n\n•Attempted to be ubiquitous language for development "
          "\n\n•Security Model"
          "\n\n   -Relied heavily on digital signing"
          "\n\n•Fell short of expectations "
          "\n\n   -Phone specific plug-ins"
          "\n\n   -Applications could be blocked without specific certificates. "
          "\n\n   -Currently paired down version of java 1.3"
        },
        {
          'heading': "JAVA MICRO EDITION ",
          'attachment': "",
          'body': "New Version 3.0 just released"
          "\n\n•Offers support for several new features"
          "\n\n   -GPS"
          "\n\n   -New Graphics library LWUIT"
          "\n\n   -Screen orientation "
          "\n\n•Only available for windows"
          "\n\n•Updated CLDC."
        },
        {
          'heading': "BINARY RUNTIME ENVIRONMENT FOR WIRELESS (BREW) ",
          'attachment': "",
          'body': "•Developed by QUALCOMM"
          "\n\n•V-Cast"
          "\n\n•Similar to Java ME"
          "\n\n   -C/C++ vs Java"
          "\n\n   -Smaller subset of phones"
          "\n\n   -Tighter integration then ME"
          "\n\n•Start to finish development integration"
          "\n\n   -High barrier to entry"
          "\n\n   -Number of large steps at high cost"
          "\n\n•Java ME can be as simple as publish and go "
        },


      ]
    },
    2: {
      'topic': "3.     OPERATING SYSTEMS SYMBIAN",
      'subTopic': [
        {
          'heading': "SYMBIAN: AT A GLANCE ",
          'attachment': "assets/mobile_development/mobile_2.png",
          'body': ""
        },
        {
          'heading': "UIQ VS S60 ",
          'attachment': "",
          'body': "•Rival SDK’s for the Symbian OS"
          "\n\n•UIQ "
          "\n\n   -Sony Ericsson"
          "\n\n   -Touch screen phones "
          "\n\n•S60 "
          "\n\n   -Developed and owned by Nokia"
          "\n\n   -Current industry leader"
          "\n\n   -Will become standard in late 2009"
          "\n\n•Both offer a full development stack"
        },
        {
          'heading': "S60 DEVELOPMENT: THE STACK ",
          'attachment': "assets/mobile_development/mobile_3.png",
          'body': ""
        },
        {
          'heading': "S60 DEVELOPMENT: IDE ",
          'attachment': "",
          'body': "•Carbide.c++ "
          "\n\n   -Developed by Nokia"
          "\n\n   -IDE based on Eclipse platform"
          "\n\n   -Provides a set of tools for debugging"
          "\n\n   -SDK independent"
          "\n\n•Carbide.vs"
          "\n\n   -Visual studio implementation"
          "\n\n   -Similar feature set "
        },
        {
          'heading': "S60 DEVELOPMENT: APPLICATION STRUCTURE ",
          'attachment': "",
          'body': "•All applications are treated as dll’s and have a single entry point"
          "\n\n•Main: Application Class"
          "\n\n•Uses MVC style organization "
          "\n\n   M: Document Class "
          "\n\n   V: Container / ContainerView Class"
          "\n\n   C: AppUI Class "
        },
        {
          'heading': "S60 DEVELOPMENT: CLASSES AND VARIABLES ",
          'attachment': "assets/mobile_development/mobile_4.png",
          'body': ""
        },
        {
          'heading': " ",
          'attachment': "assets/mobile_development/mobile_5.png",
          'body': ""
        },
        {
          'heading': "S60 DEVELOPMENT: ERROR HANDLING ",
          'attachment': "",
          'body': "LEAVE and TRAP vs try/catch"
          "\n\n•LEAVE and TRAP vs try/catch"
          "\n\n•Try Catch has large overhead "
          "\n\n•se TRAP Macro"
          "\n\n•Cleanup is an issue"
        },
        {
          'heading': "S60 DEVELOPMENT: SECURITY MODEL ",
          'attachment': "",
          'body': "D•ata caging"
          "\n\n•Data caging"
          "\n\n   /Resource"
          "\n\n   /Sys"
          "\n\n   /Private"
          "\n\n   /“Anything else” "
        },
        {
          'heading': " ",
          'attachment': "",
          'body': "Capabilities"
          "\n\n•Open to all "
          "\n\n•Granted by user at install"
          "\n\n•Symbian Signed"
          "\n\n•OEM "
        },
        {
          'heading': "S60 DEVELOPMENT: FUTURE ",
          'attachment': "",
          'body': "•June 24, 2008:"
          "\n\n   -Nokia outright purchased the Symbian OS"
          "\n\n   -Symbian Foundation Formed"
          "\n\n•Goals"
          "\n\n   -Provide a royalty-free open platform and accelerate innovation"
          "\n\n   -Combine Symbian OS, S60, UIQ "
          "\n\n   -Move code base to open source in next two years "
        },

      ]
    },
    3: {
      'topic': "4.     OPERATING SYSTEMS iPHONE",
      'subTopic': [
        {
          'heading': "NUMBERS ",
          'attachment': "",
          'body': "•SDK Released March 6th 2008"
          "\n\n•Billion apps downloaded as of April 23rd"
          "\n\n   -Includes both pay and free"
          "\n\n   -Assuming 10% paid downloads"
          "\n\n   -lowest price of .99 Dollar/app "
          "\n\n   -99 Million Dollar"
          "\n\n•17% Market share just in front of Blackberry"
          "\n\n•Still well behind Symbian but growing very fast"
        },
        {
          'heading': "iPHONE DEVELOPMENT ",
          'attachment': "",
          'body': "•Objective-C "
          "\n\n   Message based architecture"
          "\n\n   Similar to Smalltalk"
          "\n\n•No Java VM or other 3rd party plugins"
          "\n\n•An Application may not itself install or launch other "
              "executable code by any means, including without limitation "
              "through the use of a plug-in architecture, calling other frameworks, "
              "other APIs or otherwise. No interpreted code may be downloaded "
              "and used in an Application except for code that is interpreted "
              "and run by Apple’s Published APIs and built-in interpreter(s).” – "
              "iPhone SDK EULA"
        },
        {
          'heading': "iPHONE DEVELOPMENT: SDK ",
          'attachment': "assets/mobile_development/mobile_6.png",
          'body': "•Four distinctive framework API’s "
          "\n\n   -Cocoa Touch Layer "
          "\n\n   -Media Layer"
          "\n\n   -Core Services Layer "
          "\n\n   -Core OS Layer "
          "\n\n•IDE"
          "\n\n   -Xcode"
          "\n\n   -Interface Builder"
          "\n\n   -iPhone Simulator "
          "\n\n   -On phone application development"
        },
        {
          'heading': "iPHONE DEVELOPMENT: INTERFACE BUILDER / XCODE ",
          'attachment': "",
          'body': "•Design for graphical,event-driven applications "
          "\n\n•Pallet of GUI widgets to use in your views. "
          "\n\n•Drag and drop widgets onto views"
          "\n\n•Links between objects can be created graphically"
          "\n\n   -MVC pattern designed here"
          "\n\n   -Graphically declare hooks into a program"
          "\n\n•Produces Nib Files"
        },
        {
          'heading': "iPHONE DEVELOPMENT: DESIGN PATTERNS ",
          'attachment': "",
          'body': "•Delegation"
          "\n\n   -Don’t Subclass"
          "\n\n•Method calls are messages "
          "\n\n   -[Object Message]"
          "\n\n   -Both are dynamic"
          "\n\n•Managed Memory"
          "\n\n   -Auto release"
        },
        {
          'heading': "iPHONE DEVELOPMENT: APPLICATION LIFE CYCLE ",
          'attachment': "assets/mobile_development/mobile_.png",
          'body': ""
        },
        {
          'heading': "iPHONE DEVELOPMENT: SECURITY MODEL ",
          'attachment': "",
          'body': "Originally all applications ran as root"
          "\n\nNot a whole lot better now"
          "\n\n   -All apps run as “mobile” user"
          "\n\nSurvived this year’s Pwn2Own"
          "\n\nSecurity based on delivery mechanism"
          "\n\n   -All applications must be delivered through the iTunes App Store"
          "\n\n   -Requires apple approval and testing"
          "\n\n   -Digitally signed by developer "
        },
        {
          'heading': "iPHONE DEVELOPMENT: FUTURE  ",
          'attachment': "",
          'body': "iPhone OS 3.0"
          "\n\n   -In app purchases "
          "\n\n   -Accessory APIs "
          "\n\n   -Peer to Peer connectivity "
          "\n\n     -New Game Kit"
          "\n\n   -iPod library access"
          "\n\n   -Embedded maps "
          "\n\n   -Copy & Paste"
          "\n\nVideo"
        },




      ]
    },
    4: {
      'topic': "5.     OPERATING SYSTEMS Android",
      'subTopic': [
        {
          'heading': "YEAR OF THE ANDROID? ",
          'attachment': "",
          'body': "•Averaged 47% growth/month over first four months"
          "\n\n•iPhone 88% "
          "\n\n•Currently only on HTC Dream(G1) "
          "\n\n•Really cool concept but will it penetrate the market"
        },
        {
          'heading': "WHAT IS ANDROID ",
          'attachment': "",
          'body': "•Full Stack"
          "\n\n   -OS"
          "\n\n   -Middleware"
          "\n\n   -Applications "
          "\n\n   -IDE"
          "\n\n•Fully Open"
          "\n\n   -Source and Ideology"
          "\n\n•User Control"
          "\n\n   -Can establish preferred applications"
          "\n\n•Application Modularity "
          "\n\n   -Apps provide functionality that can be used by others"
        },
        {
          'heading': "ANDROID DEVELOPMENT: THE STACK ",
          'attachment': "assets/mobile_development/mobile_8.png",
          'body': ""
        },
        {
          'heading': "ANDROID DEVELOPMENT: JVM ",
          'attachment': "",
          'body': "•Dalvik"
          "\n\n   -Register-based Java virtual machine"
          "\n\n   -Runs .dex files "
          "\n\n   -Similar to a JAR"
          "\n\n   -Used a cross compiler tool ‘dx’ "
          "\n\n   -Optimized for multiple instances "
          "\n\n•Why not Java ME?"
          "\n\n   -Not fully open source"
          "\n\n   -Still under control of Sun Micro "
          "\n\n     -Veto on any proposed changes"
        },
        {
          'heading': "ANDROID DEVELOPMENT: APPLICATION OVERVIEW ",
          'attachment': "",
          'body': "•Packaged in one .apk file"
          "\n\n•Each application lives in its “own phone”"
          "\n\n   -Its own Linux process"
          "\n\n   -Its own JVM"
          "\n\n   -Its own “file system”"
          "\n\n•Component based architecture"
          "\n\n   -Activities"
          "\n\n   -Services"
          "\n\n   -Broadcast receivers"
          "\n\n   -Content providers "
          "\n\n•Manifest file provides information about components"
        },
        {
          'heading': "ANDROID DEVELOPMENT: ACTIVITIES ",
          'attachment': "",
          'body': "•A visual interface for one task a user will attempt"
          "\n\n•Each activity gets a window to draw in. "
          "\n\n•Similar to a controller, takes view objects to display in the window"
          "\n\n   -Views can nest within each other"
          "\n\n•Application can designate one activity as first "
        },
        {
          'heading': "ANDROID DEVELOPMENT: SERVICES ",
          'attachment': "",
          'body': "•Background process"
          "\n\n   -No UI"
          "\n\n•Example: Media player "
          "\n\n•Can connect (bind) to a service"
          "\n\n   -Currently running "
          "\n\n   -Or by starting it"
          "\n\n•Once bound can communicate through predefined interface "
          "\n\n•Media Player: start, stop.."
        },
        {
          'heading': "ANDROID DEVELOPMENT: BROADCAST RECEIVERS / CONTENT PROVIDERS ",
          'attachment': "",
          'body': "•Broadcast Receivers"
          "\n\n  - Event listeners"
          "\n\n   -No UI"
          "\n\n   -Can broadcast events"
          "\n\n   -On event execute activity or display notification "
          "\n\n•Content Providers"
          "\n\n   -Opens specific part of an applications data"
          "\n\n   -Uses Content Resolvers "
          "\n\n   -Not called directly"
          "\n\n   -Returns a cursor object "

        },
        {
          'heading': "ANDROID DEVELOPMENT: INTENTS ",
          'attachment': "",
          'body': "•Contains the target object, the target method, and a URI of data to act on"
          "\n\n•Activates components"
          "\n\n  -Aside from content providers "
          "\n\n•Intent can call startActivity, startService, sendBroadcast"
        },
        {
          'heading': " ",
          'attachment': "assets/mobile_development/mobile_9.png",
          'body': ""
        },
        {
          'heading': "ANDROID DEVELOPMENT: DEMO ",
          'attachment': "",
          'body': "•Video: Example integration using android "
          "\n\n-http://www.youtube.com/watch?v=3LkNlTNHZzE&feature=PlayList&p=611F8C5DBF49CEC6&index=2 "
        },
        {
          'heading': "ANDROID DEVELOPMENT: SECURITY ",
          'attachment': "assets/mobile_development/mobile_10.png",
          'body': "•Sand Box"
          "\n\n   -Without explicit permission can’t get outside"
          "\n\n   -Each application can control what gets exposed"
          "\n\n   -Permissions are declared at install time and can’t change"
          "\n\n•App signing"
          "\n\n   -Digitally signed by developer"
        },
        {
          'heading': "ANDROID DEVELOPMENT: FUTURE ",
          'attachment': "assets/mobile_development/mobile_11.png",
          'body': "•Could have changed everything"
          "\n\n   -iPhone got there first "
          "\n\n•True value of “Apps without boarders?” "
          "\n\n•Solid development platform"
          "\n\n   -Build on a language with millions of developers"
          "\n\n   -Without limitations of Java ME"
          "\n\n•Net Books?"
          "\n\n   -Still far away "
          "\n\n   -Android doesn’t support XServer"
          "\n\n   -Tech demo already complete"
        },

      ]
    },
    5: {
      'topic': "6.     ON THE HORIZON",
      'subTopic': [
        {
          'heading': "LiMo ",
          'attachment': "assets/mobile_development/mobile_12.png",
          'body': "•LiMo believes that the growth of the mobile industry depends "
              "on the existence of a broadly accepted operating system."
          "\n\n•SDKs"
          "\n\n   -Native"
          "\n\n   -Java"
          "\n\n   -Web"
          "\n\n•Major Players:"
          "\n\n   -Verizon"
          "\n\n   -Motorola"
          "\n\n   -Docomo"
          "\n\n   -Vodafone "
        },
        {
          'heading': "PALM webOS / MOJO ",
          'attachment': "",
          'body': "Blurs the line between phone and web sources"
          "\n\n   -Native"
          "\n\n   -Application"
          "\n\n   -Cloud"
          "\n\nPalm has extended the standard web development environment through "
              "a JavaScript framework that gives standardized UI widgets, and "
              "access to selected device hardware and services."
          "\n\nVideo "
        },

      ]
    },






  }
};
