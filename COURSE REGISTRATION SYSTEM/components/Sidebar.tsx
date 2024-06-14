// components/Sidebar.tsx
import Link from 'next/link';
import { useRouter } from 'next/router';
import { useState, useEffect } from 'react';

const Sidebar = () => {
  const [isCollapsed, setIsCollapsed] = useState(false);
  const router = useRouter();

  useEffect(() => {
    console.log('Current path:', router.pathname); // Debug line to check the current path
  }, [router.pathname]);

  const menuItems = [
    { name: 'Dashboard', path: '/dashboard' },
    { name: 'Sign In', path: '/login' },
    { name: 'Register', path: '/register' },
  ];

  return (
    <div className={`h-full bg-black text-white shadow-lg ${isCollapsed ? 'w-20' : 'w-64'} transition-all duration-300`}>
      <div className="p-4 flex justify-between items-center">
        <div className={`font-bold text-2xl ${isCollapsed ? 'hidden' : 'block'}`}>CourseManager</div>
        <button onClick={() => setIsCollapsed(!isCollapsed)} className="text-white">
          {isCollapsed ? '▶️' : '◀️'}
        </button>
      </div>
      <nav>
        <ul>
          {menuItems.map((item) => (
            <li key={item.name} className={router.pathname === item.path ? 'bg-purple-700' : ''}>
              <Link legacyBehavior href={item.path}>
                <a className="block p-4 hover:bg-purple-700 transition-colors">
                  <span className={isCollapsed ? 'hidden' : 'block'}>{item.name}</span>
                </a>
              </Link>
            </li>
          ))}
        </ul>
      </nav>
    </div>
  );
};

export default Sidebar;
