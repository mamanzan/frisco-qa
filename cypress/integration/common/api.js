// cy.server();
// cy.route("GetAreas/*").as("GetAreas");

// export const areasApi = "@GetAreas";
// visit the dashboard, which should make requests that match
// the two routes above
//cy.visit('http://localhost:8888/dashboard')

// pass an array of Route Aliases that forces Cypress to wait
// until it sees a response for each request that matches
// each of these aliases
//cy.wait(['@getActivities', '@getMessages'])

// these commands will not run until the wait command resolves above
//cy.get('h1').should('contain', 'Dashboard')


