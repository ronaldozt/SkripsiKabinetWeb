/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            colors: {
                primary: "#00a3ff",
                text: "#0f172a",
                muted: "#6b7280",
                bg: "#f7f9fc",
                card: "#ffffff",
                grid: "#f5f5f5",
                stroke: "#e9ecf4",
            },
        },
    },
    // Safelist untuk classes yang digunakan di Blade templates
    safelist: ["text-muted", "font-bold"],
    plugins: [],
    // Important: Jangan conflict dengan Bootstrap
    corePlugins: {
        preflight: false, // Disable Tailwind reset agar tidak conflict dengan Bootstrap
    },
};
