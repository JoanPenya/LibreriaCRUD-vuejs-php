module.exports = {
  purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      margin: {
        sm: '8px',
        md: '16px',
        lg: '24px',
        xl: '48px',
        complete: '30rem'
       }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
