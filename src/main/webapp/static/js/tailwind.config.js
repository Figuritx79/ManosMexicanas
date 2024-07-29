tailwind.config = {
    theme: {
        extend: {
            colors: {
                    bg100:'#F8F7F3',
                    bg200:'#DBBA91',
                    bg300:'#E5C69A',
                    bg400:'#F5EDDF',
                    primary100:'#30A380',
                    secondary:'#B47341',
                    extra:'#61371A',
                    text100:'#000000',
                    text200:'#5C5C5C'
            }
        }
    }
}

//Modulo para tipografia poppins negrita
module.exports = {
    content: ["./src/**/*.{html,js}"],
    theme: {
        extend: {
            fontFamily: {
                poppins: ['Poppins', 'sans-serif'],
            },
        },
    },
    plugins: [],
}