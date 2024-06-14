// pages/login.tsx
import Layout from '../components/Layout';

const Login = () => {
  return (
    <Layout>
      <div className="flex items-center justify-center min-h-screen bg-gray-50">
        <div className="bg-black p-8 rounded-lg shadow-lg w-full max-w-md">
          <h2 className="text-3xl font-semibold mb-6 text-center text-purple-500">Login</h2>
          <form>
            <div className="mb-4">
              <label className="block text-gray-300 mb-2">Enter Student ID</label>
              <input
                type="text"
                className="w-full px-4 py-2 border border-gray-700 rounded-lg bg-gray-800 text-white focus:outline-none focus:ring-2 focus:ring-purple-500"
              />
            </div>
            <div className="mb-6">
              <label className="block text-gray-300 mb-2">Enter Password</label>
              <input
                type="password"
                className="w-full px-4 py-2 border border-gray-700 rounded-lg bg-gray-800 text-white focus:outline-none focus:ring-2 focus:ring-purple-500"
              />
            </div>
            <div className="flex justify-between items-center mb-6">
              <button className="w-full bg-purple-600 text-white py-2 rounded-lg hover:bg-purple-700 transition-colors">
                Login
              </button>
            </div>
            <div className="text-center">
              <a href="/forgot-password" className="text-sm text-gray-300 hover:underline">Forgot Password?</a>
            </div>
          </form>
        </div>
      </div>
    </Layout>
  );
};

export default Login;
