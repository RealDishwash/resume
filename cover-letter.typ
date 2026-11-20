// Standalone cover letter matching the resume style (main.typ):
// "New Computer Modern" font, accent color #26428b, left-aligned header.
// No package imports by design - the header block is built manually.

#set page(
  paper: "a4",
  margin: 2cm,
)

#set text(font: "New Computer Modern", size: 11pt)

#set par(justify: true)

// Header block
#text(size: 24pt, weight: "bold", fill: rgb("#26428b"))[Vishwas Parpattegar]

#v(0.25em)

#text(size: 10pt)[
  Sydney, NSW | vishwas.p.parpattegar\@student.uts.edu.au | +61 469 770 052 | linkedin.com/in/vishwasparpattegar | github.com/RealVishy | vishy.org
]

#v(0.5em)

#line(length: 100%, stroke: 0.7pt + rgb("#26428b"))

#v(1.2em)

3 August 2026

#v(1.2em)

Dear Hiring Manager,

#v(1em)

*Re: Technology Summer Internship, Macquarie Group*

#v(1em)

I am writing to apply for the technology internship at Macquarie Group. As a Bachelor of Engineering (Honours) student majoring in Software at the University of Technology Sydney, I am drawn to Macquarie because technology sits at the core of its business - from trading platforms to data-driven risk and investment decisions - and I want to build software in an environment where reliability, scale, and performance are crucial.

#v(1em)

I recently completed a Software Engineering Internship at Ericsson, where I worked on production-grade enterprise systems. I migrated the team's local development environment from Docker Compose to Tilt and Kind to mirror our production Kubernetes deployments, enabling hot reload and faster feedback cycles for developers. I also migrated map-tile and database-backed endpoints from Django to FastAPI, measurably improving application load times and responsiveness for end users. This experience taught me how to ship changes safely in large, cloud-native codebases - the same kind of engineering discipline Macquarie's technology teams are known for.

#v(1em)

Beyond backend engineering, I bring strong data skills. As runner-up in the Ericsson ML & UX Hackathon, I analysed a large 5G usage dataset with Python, Pandas, and Power BI, and built predictive models to forecast network demand growth. Combined with my coursework in cloud computing and data analytics, this gives me a solid foundation for working with the large, complex datasets that underpin financial services.

#v(1em)

I also care about the people side of technology. As Secretary of the UTS Programming Society, I grew event attendance by 50% and delivered hands-on Docker and GitHub workshops, and I helped maintain Aurora, an open-source Linux container image used by over 2,000 people, where I automated testing and CI/CD with GitHub Actions. Volunteering as a digital literacy trainer has made me a clear communicator who can explain technical ideas to anyone.

#v(1em)

I would welcome the opportunity to contribute to Macquarie's technology team and learn from its engineers. Thank you for considering my application; I look forward to hearing from you.

#v(1em)

Sincerely,

#v(3em)

Vishwas Parpattegar
