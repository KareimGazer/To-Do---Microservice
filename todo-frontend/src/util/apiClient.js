import axios from 'axios'

// const VITE_BACKEND_URL = "http://localhost:3000/"

const apiClient = axios.create({
  baseURL: import.meta.env.VITE_BACKEND_URL,
  // baseURL: VITE_BACKEND_URL,
})

export default apiClient