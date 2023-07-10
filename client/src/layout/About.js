import React from 'react';

const About = () => {
  return (
    <div>
      <h2 className="text-4xl font-bold dark:text-blue">About</h2>
      <p className="mb-3 text-center text-gray-500 dark:text-gray-00">
      Our event planning website offers a comprehensive set of components designed to streamline event management. The EventList component displays a personalized list of events created by the user, while the EventItem component provides a snapshot of each event's key details. Users can create or edit events using the EventForm component, which simplifies the process with intuitive form fields. For in-depth event information, the EventDetails component showcases comprehensive details, including descriptions, dates, times, locations, and guest lists. Managing guest lists is made effortless with the GuestList component, which fetches and displays guests for a specific event. Each individual guest is represented by the GuestItem component, showing their name, email, and RSVP status. Finally, the GuestForm component allows event organizers to easily add new guests by filling in their information. These components collectively enhance the event planning experience, ensuring efficiency and a seamless user interface.
      </p>
    </div>
  );
};

export default About;
