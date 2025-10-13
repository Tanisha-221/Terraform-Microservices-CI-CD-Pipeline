import { connectToDb, getItems } from '../../db'; // assuming you have a db utility

describe('Database', () => {
  beforeAll(async () => {
    await connectToDb(); // Setup DB connection
  });

  it('should fetch items from the database', async () => {
    const items = await getItems();
    expect(items).toHaveLength(3); // assuming there are 3 items in the DB
  });

  afterAll(async () => {
    await disconnectFromDb(); // Close DB connection after tests
  });
});
