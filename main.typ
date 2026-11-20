#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Vishwas Parpattegar"
#let location = "Sydney, NSW"
#let email = "vishwas.p.parpattegar@student.uts.edu.au"
#let github = "github.com/RealVishy"
#let linkedin = "linkedin.com/in/vishwasparpattegar"
#let phone = "+61 469 770 052"
#let personal-site = "vishy.org"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  font-size: 9.6pt,
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
== Work Experience

#work(
  title: "Software Developer (Part-time), formerly Intern",
  location: "North Ryde, NSW",
  company: "Ericsson",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Present"),
)
- Migrated a multi-app monorepo from bun to a single pnpm workspace and moved every Python project to Python 3.14 in one uv workspace, unifying dependency locking and automated updates across CI.
- Found that GitLab CI was reporting failing frontend tests as passes, fixed the broken tests, and made the suite a merge gate.
- Migrated the local development environment from Docker Compose to Tilt and Kind, mirroring production Kubernetes deployments and enabling hot reload.
- Standardised uv-based workflows with mise, automatically loading environment variables and cutting manual setup.
- Migrated map-tile and site-information endpoints from Django to FastAPI, improving application load times.
- Built and shipped the initial React/TypeScript prototype of a chat app for an AI operations assistant.

#work(
  title: "Tech Mate",
  location: "Penrith City Library",
  company: "Digital Literacy Foundation",
  dates: dates-helper(start-date: "Apr 2025", end-date: "Sep 2025"),
)
- Taught community members one-on-one to use essential digital services independently.

== Education

#edu(
  institution: "University of Technology Sydney",
  location: "Sydney, NSW",
  dates: dates-helper(start-date: "Feb 2023", end-date: "Oct 2027"),
  degree: "Bachelor of Engineering (Honours), Software Major",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
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
  name: "AVP vROC (Software Design Studio)",
  role: "Student Team Lead",
  dates: dates-helper(start-date: "Aug 2026", end-date: "Nov 2026"),
)
- Led code-quality work on an Apple Vision Pro drone-control cockpit using Swift, visionOS, and MQTT.
- Designed a monorepo and CI strategy to unite the visionOS app and Python simulator through versioned contracts, automated testing, linting, and reproducible tooling.

#project(
  name: "Aurora Workstation",
  // Role is optional
  role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2024", end-date: "Dec 2025"),
  // URL is also optional
  url: "getaurora.dev",
)
- Co-maintained a custom Fedora Linux image used by 2,000+ users alongside three international contributors.
- Resolved kernel and application regressions through package pinning, improving stability for all users.
- Automated testing and releases with GitHub Actions, reducing manual work and speeding up stable releases.




== Extracurricular Activities

#extracurriculars(
  activity: "UTS Programming Society Vice President, formerly Secretary",
  dates: dates-helper(start-date: "Nov 2022", end-date: "Present"),
)

- Grew event attendance by 50% through targeted promotion, hands-on workshops, and online community building.
- Ran Docker and GitHub workshops with containerised hands-on environments and documentation used by 100+ students.

#extracurriculars(
  activity: "Homelab (Proxmox, ZFS, Docker, GitOps)",
  dates: dates-helper(start-date: "Mar 2026", end-date: "Present"),
)

- Built a Proxmox server (Ryzen 5 7600, Intel Arc B580 for hardware transcoding, LSI SAS HBA) with ZFS storage: a six-disk RAIDZ2 media pool (\~44 TiB) and a mirrored pool for family data.
- Deployed 30+ self-hosted containers as Docker Compose stacks via GitOps (doco-cd) with Renovate-pinned images and CI checks (Compose and Caddy validation, yamllint, gitleaks).
- Exposed public apps through a Caddy reverse proxy on an Oracle Cloud VPS over Tailscale, with no inbound ports at home and single sign-on via Pocket ID (OIDC).
- Automated backups with hourly ZFS snapshots and replication, nightly database dumps, and off-site Restic to a second VPS, with Gatus and ntfy alerting.

#extracurriculars(
  activity: "UTS × Apple Intelligence Hackathon (Winner)",
  dates: "Jun 2024",
)

- Won the one-day sprint by shipping a Swift prototype that used OpenAI Whisper for transcription and Groq-hosted Llama 3 for real-time action-item summaries.
- Designed the app's interface in Figma following Apple's Human Interface Guidelines.

/*#extracurriculars(
  activity: "Ericsson ML & UX Hackathon (Runner-up)",
  dates: dates-helper(start-date: "Jul 2023", end-date: "Aug 2023"),
)

- Analysed a large 5G home internet usage dataset using Python, Pandas, Excel, and Power BI for data cleaning, trend analysis, and visualisation.
- Built predictive models to forecast network demand growth and identify key trends and growth areas.
*/
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
- *Languages*: Python, TypeScript, JavaScript, SQL, C/C++, Swift, Bash, HTML/CSS
- *Frameworks & Testing*: React, Vite, FastAPI, asyncio, Pydantic, Django, PostgreSQL, Pandas, pytest, Vitest
- *Infrastructure & Tooling*: Kubernetes, Docker, Tilt, Google Cloud, AWS, GitLab CI, GitHub Actions, uv, pnpm, mise
