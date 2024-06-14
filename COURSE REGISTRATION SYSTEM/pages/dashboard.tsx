import Layout from '../components/Layout';
import Link from 'next/link';

const Dashboard = () => {
  const studentName = "Ishaan Bhardwaj"; // Replace with dynamic data if available
  const studentInitials = studentName.split(' ').map(name => name[0]).join(''); // Extract initials

  return (
    <Layout>
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
        <div className="lg:col-span-3 flex justify-between items-center bg-black p-6 rounded-lg shadow-md mb-8">
          <div>
            <h1 className="text-4xl font-semibold text-purple-500 mb-2">Dashboard</h1>
            <p className="text-gray-300 text-lg">Welcome back, {studentName}!</p>
            <p className="text-gray-400">Here is a brief summary of your courses and activities.</p>
          </div>
          <div className="flex items-center">
            <div className="w-12 h-12 rounded-full bg-purple-500 flex items-center justify-center text-white font-bold text-lg mr-4">
              {studentInitials}
            </div>
            <div>
              <p className="text-gray-300 text-lg">{studentName}</p>
              <Link legacyBehavior href="/logout">
                <a className="text-purple-500 hover:underline">Logout</a>
              </Link>
            </div>
          </div>
        </div>
        <div className="lg:col-span-2">
          <div className="bg-black p-6 rounded-lg shadow-md mb-8">
            <h2 className="text-2xl font-semibold text-purple-500 mb-4">Current Courses</h2>
            <ul className="text-gray-300 space-y-2">
              <li>Computer Systems Design -- CPEN202</li>
              <li>Linear Circuits -- CPEN206</li>
              <li>Data Structures and Algorithms -- CPEN204</li>
              <li>Data communication -- CPEN212</li>
              <li>Software Engineering -- CPEN208</li>
              <li>Differential Equations -- SENG202</li>
              <li>Academic Writing II -- CBAS210</li>
            </ul>
          </div>
          <div className="bg-black p-6 rounded-lg shadow-md mb-8">
            <h2 className="text-2xl font-semibold text-purple-500 mb-4">To-Do List</h2>
            <ul className="text-gray-300 space-y-2">
              <li>Submit Essay - Academic Writing II (Due: June 15)</li>
              <li>Complete Lab Report - Linear Circuits (Due: June 20)</li>
              <li>Finish Coding Assignment - Data Structures (Due: June 25)</li>
            </ul>
          </div>
        </div>
        <div className="bg-black p-6 rounded-lg shadow-md">
          <h2 className="text-2xl font-semibold text-purple-500 mb-4">Upcoming Exams</h2>
          <ul className="text-gray-300 space-y-2">
            <li>Computer Systems Design - June 20</li>
            <li>Linear Circuits - July 15</li>
            <li>Software Engineering - July 30</li>
          </ul>
        </div>
        <div className="bg-black p-6 rounded-lg shadow-md lg:col-span-3">
          <h2 className="text-2xl font-semibold text-purple-500 mb-4">Recent Announcements</h2>
          <ul className="text-gray-300 space-y-2">
            <li>New project guidelines for Data Structures released.</li>
            <li>Differential equations tutorial postponed to June 14.</li>
            <li>Linear Circuits IA scheduled for June 18.</li>
          </ul>
        </div>
        <div className="bg-black p-6 rounded-lg shadow-md lg:col-span-3">
          <h2 className="text-2xl font-semibold text-purple-500 mb-4">Course Materials</h2>
          <ul className="text-gray-300 space-y-2">
            <li>Lecture Notes - Computer Systems Design</li>
            <li>Lab Exercises - Linear Circuits</li>
            <li>Project Guidelines - Software Engineering</li>
          </ul>
        </div>
      </div>
    </Layout>
  );
};

export default Dashboard;
