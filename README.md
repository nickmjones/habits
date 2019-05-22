# Habits

Track habits. Earn points.

## Models
- Users
  - has_many habits
- Habits
  - Title (e.g., 'Do 1 pushup')
  - Frequency (e.g., 'per day', 'per week')
  - belongs_to User
- Points
  - belongs_to User