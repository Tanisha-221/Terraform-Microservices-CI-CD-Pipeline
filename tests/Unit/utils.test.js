import { sum } from '../../utils'; // assuming you have a utils file with sum function

describe('Utils', () => {
  it('should sum two numbers correctly', () => {
    const result = sum(1, 2);
    expect(result).toBe(3);
  });
});
