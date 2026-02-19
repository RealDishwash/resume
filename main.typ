#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Vishwas Parpattegar"
#let location = "Sydney, New South Wales"
#let email = "vishwas.p.parpattegar@student.uts.edu.au"
#let github = "github.com/RealVishy"
#let linkedin = "linkedin.com/in/vishwasparpattegar"
#let phone = "+61 (046) 977-0052"
#let personal-site = "vishwasp.netlify.app"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of Technology Sydney",
  location: "Sydney, NSW",
  dates: dates-helper(start-date: "Feb 2023", end-date: "Oct 2027"),
  degree: "Bachelor's of Engineering (Honours), Software Major",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
//- Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
- Relevant Coursework: Network Fundamental, Cloud Computing and Software as  a Service, Intro to Data Analytics

== Work Experience

#work(
  title: "Software Engineering Intern",
  location: "North Ryde, NSW",
  company: "Ericsson",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Feb 2026"),
)
- Built a local Kubernetes workflow with Tilt and Kind that mirrored production services, improving test reliability and reducing environment drift.
- Migrated React-facing routes from Django to FastAPI, improving tile load performance in the web application.
- Implemented Microsoft Entra ID authentication in Azure Portal, replacing Keycloak to reduce dependencies.

#work(
  title: "Tech Mate",
  location: "Penrith City Library",
  company: "Digital Literacy Foundation",
  dates: dates-helper(start-date: "Apr 2025", end-date: "Sep 2025"),
)
- Provided one-on-one digital literacy training sessions, helping individuals confidently navigate technology
- Tailored instructional support to diverse learners, improving their practical skills in using digital tools
- Assisted community members in overcoming technological barriers, promoting digital inclusion and empowerment


/*#work(
  title: "AI Wrangler and Code Ninja",
  location: "Silicon Mirage, CA",
  company: "Organic Stupidity Startup",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
)
- Taught robots to predict when (and how much!) humans will empty their wallets at the doctor's office
- Developed HIPAA-compliant digital signatures, because doctors' handwriting wasn't illegible enough already
- Turned spaghetti code into a gourmet dish, making other interns drool with envy

#work(
  title: "Digital Playground Architect",
  location: "The Cloud",
  company: "Pixels & Profit Interactive",
  dates: dates-helper(start-date: "Jun 2020", end-date: "May 2023"),
)
- Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
- Crafted Bash scripts so clever they occasionally made other engineers weep with joy
- Automated support responses, reducing human interaction to a level that would make introverts proud
- Built a documentation site that actually got read, breaking the ancient RTFM curse

#work(
  title: "Code Conjurer Intern",
  location: "Silicon Suburb, CA",
  company: "Bits & Bytes Consulting",
  dates: dates-helper(start-date: "Jun 2022", end-date: "Aug 2022"),
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"
*/
== Projects

#project(
  name: "Aurora Workstation",
  // Role is optional
  role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2024", end-date: "Dec 2025"),
  // URL is also optional
  url: "getaurora.dev",
)
- Collaborated with three international developers to maintain Aurora Workstation (getaurora.dev) until Dec 2025, a custom Fedora Linux container image relied on by over 2,000 users for their daily workflow.
- Fixed kernel and application regressions by implementing package pinning, improving stability for all users.
- Developed a centralized configuration repository, eliminating duplicate code and streamlining update management.
- Automated testing and CI/CD with GitHub Actions, minimizing manual intervention and accelerating stable releases.




== Extracurricular Activities

#extracurriculars(
  activity: "UTS Programming Society Secretary",
  dates: dates-helper(start-date: "Nov 2022", end-date: "Present"),
)

- Led initiatives that increased UTS Programming Society event attendance by 50% through strategic promotions, engaging workshops, and a stronger online community presence.
- Wrote documentation for the workshops that helped over 100 students understand the tools better.
- Organize workshops on Docker and GitHub, equipping students with industry-relevant development skills.
- Used Docker to set up development environments for workshops, making it easy for attendees to follow along and practice.

#extracurriculars(
  activity: "UTS X Apple iOS Apple Intelligence Hackathon (Winner)",
  dates: "Jun 20 2024",
)

- Won the one-day sprint by shipping a Swift prototype that used OpenAI Whisper for transcription and Groq-hosted Llama 3 for realtime action-item summaries.
- Developed a working prototype in Swift and ensured it was performant and reliable during live testing.
- Designed an Apple Human Interface Guidelines (HIG)-compliant mockup in Figma, showcasing a polished, user-friendly UI.

#extracurriculars(
  activity: "Ericsson ML & UX Hackathon (Runner's Up)",
  dates: dates-helper(start-date: "Jul 2023", end-date: "Aug 2023"),
)

- Collaborated with a team to analyze a large dataset of 5G home internet usage patterns provided in a CSV file.
- Used Python (Pandas), Excel, and Power BI for data cleaning, trend analysis, and visualization.
- Built predictive models to forecast network demand growth, achieving an accuracy of over 85% in identifying trends and key growth areas.

/*#extracurriculars(
  activity: "MACSCON CTF (Second Place)",
  dates: dates-helper(start-date: "Nov 2024", end-date: "Nov 2024"),
)
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally
- Competed in a cybersecurity challenge focusing on OSINT, cryptography, web APIs, and reverse engineering.
- Captured 5+ flags in cryptography, OSINT, and reverse engineering using Exif Checker, CyberChef, and APK decompilation.
- Collaborated as a two-person team, outperforming larger teams of 3+ members to secure 2nd place.
*/
// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )
== Skills
- *Programming Languages*: Python, C/C++, Bash, HTML/CSS/JS, Just, YAML
- *DevOps & Cloud*: Docker, Kubernetes, Tilt, Postgres, AWS, GitHub Actions, CI/CD
- *Web & Networking*: Astro, NGINX, Caddy, Network Security
