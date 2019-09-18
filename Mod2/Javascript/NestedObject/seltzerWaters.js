function welcome() {
    return "Hello, listeners."
}


let seltzerWaters = {
    'LaCroix': {
        'Grapefruit': {
            'Rating': 1,
            'Feedback': 'I like my face unimploded.'
        },
        'Key Lime': {
            'Rating': 2.7,
            'Feedback': 'Tastes like it passed through an armpit after baking.'
        },
        'Lemon': {
            'Rating': 3,
            'Feedback': 'More pucker, less pout.'
        },
        'Lime': {
            'Rating': 3,
            'Feedback': 'Are these actually limes?'
        }
    },
    'buble': {
        'Grapefruit': {
            'Rating': 1,
            'Feedback': 'Pucker factor overload.'
        },
        'Key Lime': {
            'Rating': 2,
            'Feedback': 'Is this supposed to be musky?'
        },
        'Lemon': {
            'Rating': 5,
            'Feedback': 'Zesty.'
        },
        'Lime': {
            'Rating': 1,
            'Feedback': 'Would not wish this on my worst enemy.'
        }
    }
}

console.log(seltzerWaters['LaCroix']['Lemon']['Rating'])