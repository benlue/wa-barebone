exports.checkIn = {};


/**
 * This is the main function to generate the view.
 */
exports.view = function() {
    const  baseContainer = xs.div({class: 'container'})
                             .add(
                                xs.div({class: 'row justify-content-center'})
                                    .add( xs.div({class: 'col-lg-8 col-md-10'}, createWelcomeSection()) )
                                )

    // use xs.root() as the root element
    return  xs.root(css())
              .addClass('min-vh-100 d-flex align-items-center justify-content-center bg-light')
              .add( baseContainer )
}


// Helper: Create the main welcome section
function createWelcomeSection() {
    // using the 'add()' function to add a child element
    return  xs.div({class: 'text-center mb-5'})
              .add(createPageHeader())
              .add(createGettingStartedCard())
              .add(createFooterText());
}


// Helper: Create page header with title and description
function createPageHeader() {
    return  xs.div()
              .add(
                    xs.e('h1', {class: 'display-3 fw-bold text-primary mb-4'}, 'Welcome to Barebone')
                  )
              .add(
                    xs.e('p', {class: 'lead text-muted mb-4'}, 'A minimal webapp template to show how a wnode application can be built.')
                  );
}


// Helper: Create getting started card
function createGettingStartedCard() {
    return  xs.div({class: 'card shadow-sm border-0 p-4 mb-4'})
              .add(
                    xs.div({class: 'card-body'})
                      .add( xs.e('h5', {class: 'card-title text-secondary mb-3'}, 'Getting Started') )
                      .add( xs.e('p', {class: 'card-text text-start'}, 'This is your starting point for building modern web applications with wnode. Explore the structure, customize the components, and create something amazing!') )
                  )
}


// Helper: Create footer text with branding
function createFooterText() {
    return  xs.div({class: 'mt-4'})
              .add(
                    // using array [] to add multiple child elements
                    xs.e('p', {class: 'text-muted small'}, [
                        xs.e('span', {}, 'Powered by '),
                        xs.e('strong', {class: 'text-primary'}, 'wnode'),
                        xs.e('span', {}, ' | Built with Bootstrap 5')
                    ])
                  )
}


function css() {
    // CSS styles as a json object
    return {
        '.card': {
            'transition': 'transform 0.2s ease-in-out',
        },
        '.card:hover': {
            'transform': 'translateY(-5px)',
        }
    };
}
