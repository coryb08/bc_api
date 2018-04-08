Simply run `rake db:migrate`, `rake db:seed`, and `rails s`.

This is complex api that models a class registration system for a university.

Only students can add and drop courses. Either of these will add a notification to the appropriate professor. Once a message is shown/viewed, its unread property will be marked as false.
Only professors can approve these registrations. Approvals or denials will add a notification to the appropriate student.
Students cannot register for courses whose meeting times overlap.
Approval by the professor will add the course to the students schedule.
