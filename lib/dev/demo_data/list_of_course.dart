List<Map<String, dynamic>> listOfCourses =[
  /*
  https://www.singaporetranscription.com/wp-content/uploads/2017/01/meeting.jpg
https://www.lucidnetworks.co.uk/wp-content/uploads/2021/03/executive-meeting-1536x1024.jpg
https://hub.packtpub.com/wp-content/uploads/2018/05/programming.jpg
https://redislabs.com/wp-content/uploads/2020/06/blog-async-scaled.jpeg
   */
  //name, introduction, long description, category, total rating, rates, image from thier official website

  {
    'id':1,
    'title': 'Introduction to Programming',
    'introduction': 'Learn the fundamentals of programming with this comprehensive course.',
    'image': 'https://www.singaporetranscription.com/wp-content/uploads/2017/01/meeting.jpg',
    'rate': 4.5,
    'numRaters': 100,
    'offeredBy': 'Acme University',
    'aboutCourse': 'This course covers basic programming concepts such as variables, control structures, and functions. It is suitable for beginners with no prior programming experience.',
    'skillsYoullGain': ['Problem-solving', 'Programming logic', 'Basic syntax'],
    'modules': [
      {'name': 'Introduction to Programming', 'timestamp': '00:00:00'},
      {'name': 'Variables and Data Types', 'timestamp': '01:30:00'},
      {'name': 'Control Structures', 'timestamp': '03:00:00'},
      {'name': 'Functions', 'timestamp': '05:00:00'}
    ]
  },
  {
    'id':2,
    'title': 'Web Development Bootcamp',
    'introduction': 'Become a full-stack web developer in this intensive bootcamp.',
    'image': 'https://www.lucidnetworks.co.uk/wp-content/uploads/2021/03/executive-meeting-1536x1024.jpg',
    'rate': 4.8,
    'numRaters': 200,
    'offeredBy': 'Code Academy',
    'aboutCourse': 'This bootcamp covers front-end and back-end web development technologies such as HTML, CSS, JavaScript, Node.js, and MongoDB.',
    'skillsYoullGain': ['HTML', 'CSS', 'JavaScript', 'Node.js', 'MongoDB'],
    'modules': [
      {'name': 'HTML and CSS Basics', 'timestamp': '00:00:00'},
      {'name': 'JavaScript Fundamentals', 'timestamp': '02:00:00'},
      {'name': 'Backend Development with Node.js', 'timestamp': '04:00:00'},
      {'name': 'Database Management with MongoDB', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':3,
    'title': 'Data Science Fundamentals',
    'introduction': 'Learn the basics of data science and machine learning.',
    'image': 'https://hub.packtpub.com/wp-content/uploads/2018/05/programming.jpg',
    'rate': 4.7,
    'numRaters': 150,
    'offeredBy': 'Data Science Academy',
    'aboutCourse': 'This course covers the fundamentals of data science and machine learning, including data analysis, visualization, and predictive modeling.',
    'skillsYoullGain': ['Data analysis', 'Data visualization', 'Predictive modeling'],
    'modules': [
      {'name': 'Introduction to Data Science', 'timestamp': '00:00:00'},
      {'name': 'Data Analysis with Python', 'timestamp': '02:00:00'},
      {'name': 'Data Visualization with Matplotlib', 'timestamp': '04:00:00'},
      {'name': 'Predictive Modeling with Scikit-learn', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':4,
    'title': 'Mobile App Development',
    'introduction': 'Learn to build mobile apps for iOS and Android.',
    'image': 'https://redislabs.com/wp-content/uploads/2020/06/blog-async-scaled.jpeg',
    'rate': 4.6,
    'numRaters': 120,
    'offeredBy': 'Mobile App Academy',
    'aboutCourse': 'This course covers mobile app development for both iOS and Android platforms, including user interface design, data storage, and app deployment.',
    'skillsYoullGain': ['iOS app development', 'Android app development', 'User interface design'],
    'modules': [
      {'name': 'Introduction to Mobile App Development', 'timestamp': '00:00:00'},
      {'name': 'iOS App Development with Swift', 'timestamp': '02:00:00'},
      {'name': 'Android App Development with Kotlin', 'timestamp': '04:00:00'},
      {'name': 'App Deployment and Distribution', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':5,
    'title': 'Cybersecurity Essentials',
    'introduction': 'Learn the basics of cybersecurity and network security.',
    'image': 'https://www.singaporetranscription.com/wp-content/uploads/2017/01/meeting.jpg',
    'rate': 4.9,
    'numRaters': 250,
    'offeredBy': 'Cybersecurity Institute',
    'aboutCourse': 'This course covers the essentials of cybersecurity, including network security, cryptography, and secure software development.',
    'skillsYoullGain': ['Network security', 'Cryptography', 'Secure software development'],
    'modules': [
      {'name': 'Introduction to Cybersecurity', 'timestamp': '00:00:00'},
      {'name': 'Network Security Fundamentals', 'timestamp': '02:00:00'},
      {'name': 'Cryptography and Encryption', 'timestamp': '04:00:00'},
      {'name': 'Secure Software Development', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':6,
    'title': 'Cloud Computing Basics',
    'introduction': 'Learn the basics of cloud computing and cloud infrastructure.',
    'image': 'https://www.lucidnetworks.co.uk/wp-content/uploads/2021/03/executive-meeting-1536x1024.jp',
    'rate': 4.7,
    'numRaters': 150,
    'offeredBy': 'Cloud Academy',
    'aboutCourse': 'This course covers the fundamentals of cloud computing, including cloud infrastructure, virtualization, and cloud security.',
    'skillsYoullGain': ['Cloud infrastructure', 'Virtualization', 'Cloud security'],
    'modules': [
      {'name': 'Introduction to Cloud Computing', 'timestamp': '00:00:00'},
      {'name': 'Cloud Infrastructure and Virtualization', 'timestamp': '02:00:00'},
      {'name': 'Cloud Security and Compliance', 'timestamp': '04:00:00'},
      {'name': 'Cloud Deployment and Management', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':7,
    'title': 'Artificial Intelligence Fundamentals',
    'introduction': 'Learn the basics of artificial intelligence and machine learning.',
    'image': 'https://hub.packtpub.com/wp-content/uploads/2018/05/programming.jpg',
    'rate': 4.8,
    'numRaters': 200,
    'offeredBy': 'AI Institute',
    'aboutCourse': 'This course covers the fundamentals of artificial intelligence and machine learning, including neural networks, deep learning, and natural language processing.',
    'skillsYoullGain': ['Neural networks', 'Deep learning', 'Natural language processing'],
    'modules': [
      {'name': 'Introduction to Artificial Intelligence', 'timestamp': '00:00:00'},
      {'name': 'Neural Networks and Deep Learning', 'timestamp': '02:00:00'},
      {'name': 'Natural Language Processing', 'timestamp': '04:00:00'},
      {'name': 'Machine Learning Applications', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':8,
    'title': 'Blockchain Fundamentals',
    'introduction': 'Learn the basics of blockchain technology and cryptocurrency.',
    'image': 'https://redislabs.com/wp-content/uploads/2020/06/blog-async-scaled.jpeg',
    'rate': 4.6,
    'numRaters': 120,
    'offeredBy': 'Blockchain Academy',
    'aboutCourse': 'This course covers the fundamentals of blockchain technology, including cryptocurrency, smart contracts, and decentralized applications.',
    'skillsYoullGain': ['Cryptocurrency', 'Smart contracts', 'Decentralized applications'],
    'modules': [
      {'name': 'Introduction to Blockchain Technology', 'timestamp': '00:00:00'},
      {'name': 'Cryptocurrency and Smart Contracts', 'timestamp': '02:00:00'},
      {'name': 'Decentralized Applications', 'timestamp': '04:00:00'},
      {'name': 'Blockchain Security and Compliance', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':9,
    'title': 'DevOps Essentials',
    'introduction': 'Learn the essentials of DevOps and continuous integration/continuous deployment (CI/CD).',
    'image': 'https://www.singaporetranscription.com/wp-content/uploads/2017/01/meeting.jpg',
    'rate': 4.9,
    'numRaters': 250,
    'offeredBy': 'DevOps Institute',
    'aboutCourse': 'This course covers the essentials of DevOps, including continuous integration, continuous deployment, and infrastructure as code.',
    'skillsYoullGain': ['Continuous integration', 'Continuous deployment', 'Infrastructure as code'],
    'modules': [
      {'name': 'Introduction to DevOps', 'timestamp': '00:00:00'},
      {'name': 'Continuous Integration and Deployment', 'timestamp': '02:00:00'},
      {'name': 'Infrastructure as Code', 'timestamp': '04:00:00'},
      {'name': 'DevOps Tools and Automation', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':10,
    'title': 'Internet of Things (IoT) Fundamentals',
    'introduction': 'Learn the basics of Internet of Things (IoT) and IoT devices.',
    'image': 'https://www.lucidnetworks.co.uk/wp-content/uploads/2021/03/executive-meeting-1536x1024.jpg',
    'rate': 4.7,
    'numRaters': 150,
    'offeredBy': 'IoT Institute',
    'aboutCourse': 'This course covers the fundamentals of Internet of Things (IoT), including IoT devices, sensors, and data analytics.',
    'skillsYoullGain': ['IoT devices', 'Sensors', 'Data analytics'],
    'modules': [
      {'name': 'Introduction to Internet of Things (IoT)', 'timestamp': '00:00:00'},
      {'name': 'IoT Devices and Sensors', 'timestamp': '02:00:00'},
      {'name': 'Data Analytics and Visualization', 'timestamp': '04:00:00'},
      {'name': 'IoT Security and Compliance', 'timestamp': '06:00:00'}
    ]
  },
  {
    'id':11,
    'title': 'Quantum Computing Fundamentals',
    'introduction': 'Learn the basics of quantum computing and quantum algorithms.',
    'image': 'https://hub.packtpub.com/wp-content/uploads/2018/05/programming.jpg',
    'rate': 4.8,
    'numRaters': 200,
    'offeredBy': 'Quantum Computing Institute',
    'aboutCourse': 'This course covers the fundamentals of quantum computing, including quantum algorithms, quantum gates, and quantum error correction.',
    'skillsYoullGain': ['Quantum algorithms', 'Quantum gates', 'Quantum error correction'],
    'modules': [
      {'name': 'Introduction to Quantum Computing', 'timestamp': '00:00:00'},
      {'name': 'Quantum Algorithms and Gates', 'timestamp': '02:00:00'},
      {'name': 'Quantum Error Correction', 'timestamp': '04:00:00'},
      {'name': 'Quantum Computing Applications', 'timestamp': '06:00:00'}
    ]
  },
  {
    'title': 'Robotics Fundamentals',
    'introduction': 'Learn the basics of robotics and robotic systems.',
    'image': 'https://redislabs.com/wp-content/uploads/2020/06/blog-async-scaled.jpeg',
    'rate': 4.6,
    'numRaters': 120,
    'offeredBy': 'Robotics Institute',
    'aboutCourse': 'This course covers the fundamentals of robotics, including robotic systems, sensors, and control algorithms.',
    'skillsYoullGain': ['Robotic systems', 'Sensors', 'Control algorithms'],
    'modules': [
      {'name': 'Introduction to Robotics', 'timestamp': '00:00:00'},
      {'name': 'Robotic Systems and Sensors', 'timestamp': '02:00:00'},
      {'name': 'Control Algorithms and Feedback', 'timestamp': '04:00:00'},
      {'name': 'Robotics Applications and Automation', 'timestamp': '06:00:00'}
    ]
  },

];

//model class
