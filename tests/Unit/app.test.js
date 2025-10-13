import request from 'supertest'; // for making requests to the app
import app from '../../app'; // import your Express app

describe('App', () => {
  it('should return a 200 status for the /health route', async () => {
    const response = await request(app).get('/health');
    expect(response.status).toBe(200);
  });

  it('should return a message for the root route', async () => {
    const response = await request(app).get('/');
    expect(response.text).toBe('Hello Azure DevOps CI/CD!');
  });
});
