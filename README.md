# Analysis of Pewlett Hackard's Aging Workforce

## Overview:
### Background:
Pewlett Hackard is a large company with many longtime employees close to retirement age. An analysis of their workforce needs to be completed so the company can determine who will be retiring soon. With this knowledge, the company can then begin developing retirement packages as well as training and mentoring plans.

### Purpose:
After some initial work, further analysis is needed to determine the number of retiring employees by their title. This will give the company further context on exactly where the future labor gaps will emerge. Additionally, the employees who are eligible to participate in a mentorship program will also be determined.

## Results:
- A great deal of technical knowledge will be leaving the company soon due to the large number of engineers (Senior, mid-level, and associate) that will be retiring in the next few years.
	Senior engineers make up the largest number of soon-to-be retiring roles. These senior engineers are likely not easily replaceable due to all their experience in the technical aspects of Pewlett Hackard's work.
- Senior staff make up the second largest number of roles retiring. Although perhaps not as technical in some aspects as engineers, these employees contain a lot of institutional knowledge regarding how Pewlett Hackard operates as a company.
	Again, not easily replaceable, especially considering that many of the Staff employees who would move into Senior Staff roles are also retiring. Staff roles make up the fourth largest count of retirees.
- Upper management will also be impacted by the 'silver tsunami." 2 of the 9 departments have managers about to retire. Managing such large departments is not an easy role and special attention must be paid to these two retirements. Although just two in number, these departures could have a big impact on the company. Especially if suitable replacements are not found.

![retiring_titles](https://github.com/bfox87/Pewlett-Hackard-Analysis/blob/main/Data/Challenge_Screenshots/retiring_titles.PNG)


- At just 1,549 people, the number of employees eligible to mentor new employees is not large enough. Over 72,000 employees are close to retirement. Although not all their replacements would need mentoring, the retirements are high enough in number that many younger, inexperienced employees will need to be hired. Trying to stretch mentors beyond a couple of mentees is likely to fail. As such, the eligibility standards could be re-evaluated so a wider net can be cast.  

## Summary:
Pewlett Hackard is indeed facing a "silver tsunami" in the near future as some 72,458 roles appear close to retirement and would need to be filled in the near future. Also, based on the results highlighted in point four, there do not appear to be enough qualified employees to mentor the next generation. There are too many new roles to fill.

#### Additional Queries for Further Insight:
To get an idea of where these eligible mentors exist within the company, we can run a query on the count within each department and break that out by role type. Now we can determine how many of each role in each department is eligible to mentor.
![mentorship_eligibility_by_dept](https://github.com/bfox87/Pewlett-Hackard-Analysis/blob/main/Data/Challenge_Screenshots/mentorship_eligibility_by_dept.PNG)

Aditionally, to broaden the pool of eligible mentors, the birth date could extend earlier than just 1965 birthdates to include 1963-1965, for example. Running the same query as before on this expanded table.

![mentorship_eligibility_expanded](https://github.com/bfox87/Pewlett-Hackard-Analysis/blob/main/Data/Challenge_Screenshots/mentorship_eligibility_expanded.PNG)
