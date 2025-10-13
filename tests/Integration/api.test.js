import request from 'supertest'; // for making requests to the app
import app from '../../app'; // import your Express app

describe('API', () => {
  it('should return a 404 status for an unknown route', async () => {
    const response = await request(app).get('/nonexistent');
    expect(response.status).toBe(404);
  });

  it('should return a list of items for the /items route', async () => {
    const response = await request(app).get('/items');
    expect(response.status).toBe(200);
    expect(response.body).toHaveLength(3); // assuming there are 3 items
  });
});
