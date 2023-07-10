import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

const GuestList = ({ eventId }) => {
  const [guests, setGuests] = useState([]);

  useEffect(() => {
    const fetchGuests = async () => {
      try {
        const response = await axios.get(`/api/events/${eventId}/guests`);
        setGuests(response.data);
      } catch (error) {
        console.error(error);
      }
    };

    fetchGuests();
  }, [eventId]);

  return (
    <div class="w-full max-w-md p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
      <div class="flex items-center justify-between mb-4">
        <h5 class="text-xl font-bold leading-none text-gray-900 dark:text-white">Guest List</h5>
        <Link to="/add-guest" class="text-sm font-medium text-blue-600 hover:underline dark:text-blue-500">
          Add guest
        </Link>
      </div>
      <div class="flow-root">
        <ul role="list" class="divide-y divide-gray-200 dark:divide-gray-700">
          {guests.map((guest) => (
            <li class="py-3 sm:py-4">
              <div class="flex items-center space-x-4">
                <div class="flex-shrink-0">
                  <img class="w-8 h-8 rounded-full" src={guest.profilePicture} alt={`${guest.name} image`} />
                </div>
                <div class="flex-1 min-w-0">
                  <p class="text-sm font-medium text-gray-900 truncate dark:text-white">
                    {guest.name}
                  </p>
                  <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                    {guest.email}
                  </p>
                </div>
                <div class="inline-flex items-center text-base font-semibold text-gray-900 dark:text-white">
                  {guest.rsvpStatus}
                </div>
              </div>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
};

export default GuestList;
