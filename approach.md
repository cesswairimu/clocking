### Approach
---------

- I have two tables(teachers and clock events)
- I used devise for authentication(teachers sign-in, sign-out and registration)
- Once a user is signed in.. there is a "Clock in" button that a user can click to assert he/she has clocked in
- When clicked, A new record of clock_events is created, with user_id as current_user, time_in as Time.now and status is set to 1
- If a user is "clocked_in" the Clock in button does not appear but now we have the "Clock Out" button.
- When clicked, the "Clock Out button",  the record is updated with a time_out as Time.now and status set to 2.
- Then the 'Clock in' button is visible again. 



### Database plan
--------------

- I used postgres because, 
    1. _I am quite fond of it._
    2. If a migration fails the whole migration is rolled back.
    3. It is pretty easy to integrate with rails.
    4. It is the db that works best in heroku.
- I have two tables in the schema
    1. teachers table (first_name, l_name(optional), email and password for authorization and authentication)
    2. clock_events(time_in, time_out, teacher_id, status)
- A user has many clock_events
- Clock Events belong to a user



### How to improve Clocking
-----------------------------

- Have the list of events page as a calender and display events when a date on the calender is clicked.
- Return a count of how many days a teacher clocked in per month/ per weeek to track absentism.
- Have an option to search clock events per teacher and per day in the index page
- Add admin users
- Add restrictions on list of events (only admins can see all the events(index))
- Add restrictions on user profile(only admins and self user can see user profile)
- Only user can delete his/her own event
- 

