// components/Navbar.tsx
import Link from 'next/link';

const Navbar = () => {
  return (
    <nav className="bg-blue-600 shadow-md">
      <div className="container mx-auto p-4 flex justify-between items-center">
        <div className="text-white font-bold text-xl">CourseManager</div>
        <div className="flex space-x-6">
          <Link legacyBehavior href="/login">
            <a className="text-white hover:text-gray-200 transition-colors">Login</a>
          </Link>
          <Link legacyBehavior href="/register">
            <a className="text-white hover:text-gray-200 transition-colors">Register</a>
          </Link>
          <Link legacyBehavior href="/dashboard">
            <a className="text-white hover:text-gray-200 transition-colors">Dashboard</a>
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
