import 'package:first_project/enums/enums.dart';

const webCourse = {
  SubjectSection.webdev: {
    0: {
      'topic': '1.     Web Development Roadmaps',
      'subTopic': [
        {
          'heading': "Web Development Roadmaps",
        },
        {
          'attachment': 'assets/web/1.png',
        },
        {
          'attachment': 'assets/web/2.png',
        },
        {
          'body': "1. Create your first web page"
              "\n• The first thing you have to learn, is HTML, which is the standard markup language for creating web pages."
        },
        {
          'attachment': 'assets/web/3.png',
        },
        {
          'body': "2. Style your web page"
              "\n• The next step is to learn CSS, to set the layout of your web page with beautiful colors, fonts, and much more."
        },
        {
          'attachment': 'assets/web/4.png',
        },
        {
          'body': "3. Make your web page interactive"
              "\n• After studying HTML and CSS, you should learn JavaScript to create dynamic and interactive web pages for your users."
        },
      ]
    },
    1: {
      'topic': '2.     What is HTTP?',
      'subTopic': [
        {
          'body': "HTTP stands for Hyper Text Transfer Protocol"
          "\n\n•WWW is about communication between web clients and servers"
          "\n\n•Communication between client computers and web servers is done by sending HTTP Requests and receiving HTTP Responses"
        },
        {
          'heading' : 'World Wide Web Communication',
          'body' : "\n\n•The World Wide Web is about communication between web clients and web servers."
          "\n\n•Clients are often browsers (Chrome, Edge, Safari), but they can be any type of program or device."
          "\n\n•Servers are most often computers in the cloud."

        },
        {
          'attachment': 'assets/web/5.png',
        },
        {
          'heading' : 'HTTP Request / Response',
          'body' : "Communication between clients and servers is done by requests and responses:"
              "\n\n•A client (a browser) sends an HTTP request to the web"
              "\n\n•A web server receives the request"
              "\n\n•The server runs an application to process the request"
              "\n\n•The server returns an HTTP response (output) to the browser"
              "\n\n•The client (the browser) receives the response"
        },
        {
          'heading' : 'The HTTP Request Circle',
          'body' : "A typical HTTP request / response circle:"
              "\n\n•The browser requests an HTML page. The server returns an HTML file."
              "\n\n•The browser requests a style sheet. The server returns a CSS file."
              "\n\n•The browser requests an JPG image. The server returns a JPG file."
              "\n\n•The browser requests JavaScript code. The server returns a JS file."
              "\n\n•The browser requests data. The server returns data (in XML or JSON)."
        },
        {
          'heading' : 'XHR - XML Http Request',
          'body' : "All browsers have a built-in XMLHttpRequest Object (XHR)."
              "\n\n•XHR is a JavaScript object that is used to transfer data between a web browser and a web server."
              "\n\n•XHR is often used to request and receive data for the purpose of modifying a web page."
              "\n\n•Despite the XML and Http in the name, XHR is used with other protocols than HTTP, and the data can be of many different types like HTML, CSS, XML, JSON, and plain text."
              "\n\n•The XHR Object is a Web Developers Dream, because you can:"
              "\n     •Update a web page without reloading the page"
              "\n     •Request data from a server - after the page has loaded"
              "\n     •Receive data from a server - after the page has loaded"
              "\n     •Send data to a server - in the background"
        },
        {
          'attachment': 'assets/web/6.png',
          'body' :"\n\nThe XHR Object is the underlying concept of AJAX and JSON:"
        }
      ]
    },
    2: {
      'topic': '3.     What is HTML?',
      'subTopic': [
        {
          'body': "•HTML stands for Hyper Text Markup Language"
              "\n\n•HTML is the standard markup language for Web pages"
              "\n\n•HTML elements are the building blocks of HTML pages"
              "\n\n•HTML elements are represented by <> tags"
        },
        {
          'heading': 'HTML Elements',
          'body': "•An HTML element is a start tag and an end tag with content in between:"
        },
        {
          'attachment': 'assets/web/7.png',
        },
        {
          'heading': '\n\nHTML Attributes',
          'body': "•HTML elements can have attributes"
              "\n\n•Attributes provide additional information about the element"
              "\n\n•Attributes come in name/value pairs like charset=utf-8"
        },
        {
          'heading': 'Example Explained',
          'body': "\n\nHTML elements are the building blocks of HTML pages."
              "\n\n•The <!DOCTYPE html> declaration defines this document to be HTML5"
              "\n\n•The <html> element is the root element of an HTML page"
              "\n\n•The lang attribute  defines the language of the document"
              "\n\n•The <meta> element contains meta information about the document"
              "\n\n•The charset attribute defines the character set used in the document"
              "\n\n•The <title> element specifies a title for the document"
              "\n\n•The <body> element contains the visible page content"
              "\n\n•The <h1> element defines a large heading"
              "\n\n•The <p> element defines a paragraph"

        }
      ]
    },
    3: {
      'topic': '     3.1 HTML Documents',
      'subTopic': [
        {
          'heading': 'HTML Documents',
          'body': "All HTML documents must start with a document type declaration: <!DOCTYPE html> "
              "\n•The HTML document itself begins with <html> and ends with </html>."
        }
      ]
    },
    4: {
      'topic': '     3.2 HTML Document Structure',
      'subTopic': [
        {
          'heading': 'HTML Documents',
          'attachment': 'assets/web/8.png',
          'body': "Below is a visualization of an HTML document an HTML Page:"
        }
      ]
    },
    5: {
      'topic': '     3.3 HTML Headings',
      'subTopic': [
        {
          'heading': 'Headings',
          'attachment': 'assets/web/9.png',
          'body': "HTML headings are defined with <h1> to <h6> tags"
          "\n\n• h1 defines the most important heading. h6 defines the least important heading: "

        }
      ]
    },
    6: {
      'topic': '     3.4 HTML Paragraphs',
      'subTopic': [
        {
          'heading': 'Headings',
          'attachment': 'assets/web/10.png',
          'body': "HTML paragraphs are defined with <p> tags"
        }
      ]
    },
    7: {
      'topic': '     3.5 HTML Links',
      'subTopic': [
        {
          'heading': 'Links',
          'attachment': 'assets/web/11.png',
          'body': "HTML links are defined with <a> tags:"
        }
      ]
    },
    8: {
      'topic': '     3.6 HTML Images',
      'subTopic': [
        {
          'heading': 'Images',
          'attachment': 'assets/web/12.png',
          'body': "HTML images are defined with <img> tags."
          "\n\n The source file (src), alternative text (alt), width, and height are provided as attributes:"
        }
      ]
    },
    9: {
      'topic': '     3.7 HTML Buttons',
      'subTopic': [
        {
          'heading': 'Buttons',
          'attachment': 'assets/web/13.png',
          'body': "HTML buttons are defined with <button> tags:"
        }
      ]
    },
    10: {
      'topic': '     3.8 HTML Lists',
      'subTopic': [
        {
          'heading': 'Lists',
          'attachment': 'assets/web/14.png',
          'body': "HTML lists are defined with <ul> (unordered/bullet list) or <ol> (ordered/numbered list) tags, followed by <li> tags (list items):"
        }
      ]
    },
    11: {
      'topic': '     3.9 HTML Tables',
      'subTopic': [
        {
          'heading': 'Tables',
          'attachment': 'assets/web/15.png',
          'body': "An HTML table is defined with a <table> tag."
          "\n\n•Table rows are defined with <tr> tags."
              "\n\n•Table cells (data) are defined with <td> tags."
              "\n\n•Table headers are defined with <th> tags. (bold and centered by default)"
        }

      ]
    },
    12: {
      'topic': '     3.10 Programming HTML',
      'subTopic': [
        {
          'heading': 'Attributes',
          'attachment': 'assets/web/16.png',
          'body': "Every HTML element can have attributes."
              "\n\n•For web development and programming, the most important attributes are id and class."
              "\n\n•These attributes are often used to address program based web page manipulations."

        }
      ]
    },
    13: {
      'topic': '4.     What is CSS?',
      'subTopic': [
        {
          'heading': 'CSS',
          'attachment': 'assets/web/17.png',
          'body': "•CSS stands for Cascading Style Sheets"
              "\n\n•CSS describes how HTML elements are to be displayed"
        }
      ]
    },
    14: {
      'topic': '5.     CSS Syntax',
      'subTopic': [
        {
          'heading': 'Syntax',
          'attachment': 'assets/web/18.png',
          'body': "•A CSS rule consists of a selector and a declaration block:"
              "\n\n•The selector points to the HTML element to style (h1)."
              "\n\n•The declaration block (in curly braces) contains one or more declarations separated by semicolons."
              "\n\n•Each declaration includes a CSS property name and a value, separated by a colon."
              "\n\n•In the following example all <p> elements will be center-aligned, red and have a font size of 32 pixels:"
        },
        {
          'attachment': 'assets/web/19.png',

        }
      ]
    },
    15: {
      'topic': '     5.1 CSS External Style Sheet',
      'subTopic': [
        {
          'heading': 'Syntax',
          'attachment': 'assets/web/21.png',
          'body': "•A CSS style sheet can be stored in an external file:"
              "\n\n•External style sheets are linked to HTML pages with <link> tags:"
        },
        {
          'attachment': 'assets/web/22.png',

        }
      ]
    },
    16: {
      'topic': '     5.2 CSS Inline Style',
      'subTopic': [
        {
          'heading': 'Syntax',
          'attachment': 'assets/web/23.png',
        },
      ]
    },
    17: {
      'topic': '     5.3 Cascading Order',
      'subTopic': [
        {
          'heading': 'Syntax',
          'attachment': 'assets/web/24.png',
          'body': "If different styles are specified for HTML elements, the styles will cascade into new styles with the following priority:"
        },
        {
          'attachment': 'assets/web/25.png',

        }
      ]
    },
    18: {
      'topic': '6.     What is JavaScript?',
      'subTopic': [
        {
          'heading': 'Java Script',
          'attachment': 'assets/web/26.png',
        },
        {
          'heading': 'Tutorial',
          'body': "•This tutorial will take a quick look at the most important JavaScript data types."
              "\n\n•JavaScript variables can be:"
        },
        {
          'attachment': 'assets/web/27.png',

        }
      ]
    },
    19: {
      'topic': '     6.1 JavaScript Variables?',
      'subTopic': [
        {
          'heading': 'Java Script Variables',
          'body': "•JavaScript variables are containers for storing data values."
              "\n\n•In this example, x, y, and z, are variables:"
        },
        {
          'attachment': 'assets/web/28.png',
        },
        {
          'body': "From the example above, you can expect:"
              "\n\n•x stores the value 5"
              "\n\n•y stores the value 6"
              "\n\n•z stores the value 11"
        }
      ]
    },
    20: {
      'topic': '     6.2 JavaScript Numbers',
      'subTopic': [
        {
          'heading': 'Java Script Numbers',
          'body': "•JavaScript has only one type of number. Numbers can be written with or without decimals."
        },
        {
          'attachment': 'assets/web/29.png',
        },
        {
          'attachment': 'assets/web/30.png',
          'body': "All numbers are stored as double precision floating point numbers."
              "\n\n•The maximum number of decimals is 17, but floating point is not always 100% accurate:"
        }
      ]
    },
    21: {
      'topic': '     6.3 JavaScript Strings',
      'subTopic': [
        {
          'heading': 'Java Script Strings',
          'body': "•Strings store text. Strings are written inside quotes. You can use single or double quotes:"
        },
        {
          'attachment': 'assets/web/31.png',
          'body': "The length of a string is found in the built in property length:"
        },
        {
          'attachment': 'assets/web/32.png',

        }
      ]
    },
    22: {
      'topic': '     6.4 JavaScript Objects',
      'subTopic': [
        {
          'heading': 'Java Script Objects',
          'body': "You have already learned that JavaScript variables are containers for data values."
          "This code assigns a simple value (Fiat) to a variable named car"
        },
        {
          'attachment': 'assets/web/33.png',
        },
        {
          'attachment': 'assets/web/34.png',
          'body':"Objects are variables too. But objects can contain many values."
              "\n\nThis code assigns many values (Fiat, 500, white) to a variable named car:"
        }
      ]
    },
    23: {
      'topic': '     6.5 JavaScript Arrays',
      'subTopic': [
        {
          'heading': 'Java Script Arrays',
          'attachment': 'assets/web/35.png',
          'body': "JavaScript arrays are used to store multiple values in a single variable."
        },
      ]
    },

  }
};
