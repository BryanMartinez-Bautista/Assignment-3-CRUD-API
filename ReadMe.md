## API Endpoints

All endpoints use the base URL: `https://batman-character-api.onrender.com/api/characters`

### 1. Get All Characters

```http
GET /api/characters
```

**Response:**

```json
[
  {
    "characterId": 1,
    "name": "Batman",
    "description": "The Dark Knight of Gotham City, a vigilante hero who fights crime using advanced gadgets and detective skills.",
    "role": "Vigilante Hero",
    "abilities": "Gadgets/Technology Users",
    "imageUrl": "images/Batman.jpg",
    "firstAppearance": "Detective Comics #27 (May 1939)",
    "createdAt": null
  },
  {
    "characterId": 5,
    "name": "Robin",
    "description": "A skilled sidekick and Batman partner who helps protect Gotham City from crime.",
    "role": "Vigilante Hero",
    "abilities": "Martial Skills",
    "imageUrl": "images/Robin.jpg",
    "firstAppearance": "Detective Comics #38",
    "createdAt": "2026-07-06 22:18"
  }
]
```
### 2. Get Character by ID

```http
GET /api/characters/{id}
```
**Response:**

```json
{
  "characterId": 1,
  "name": "Batman",
  "description": "The Dark Knight of Gotham City.",
  "role": "Vigilante Hero",
  "abilities": "Gadgets and Detective Skills",
  "imageUrl": "images/Batman.jpg",
  "firstAppearance": "Detective Comics #27"
}
```

### 3. Create a New Character

```http
POST /api/characters
request body:
{
  "name": "Robin",
  "description": "A skilled sidekick and Batman partner who helps protect Gotham City from crime.",
  "role": "Vigilante Hero",
  "abilities": "Martial Skills",
  "imageUrl": "images/Robin.jpg",
  "firstAppearance": "Detective Comics #38"
}
```

**Response:**

```json
{
  "characterId": 3,
  "name": "Robin",
  "description": "A skilled sidekick and Batman partner who helps protect Gotham City from crime.",
  "role": "Vigilante Hero",
  "abilities": "Martial Skills",
  "imageUrl": "images/Robin.jpg",
  "firstAppearance": "Detective Comics #38"
}
```
### 4. Update an Existing Character

```http
PUT /api/characters/{id}
request body:
{
  "name": "Batman",
  "description": "The protector of Gotham City.",
  "role": "Vigilante Hero",
  "abilities": "Advanced Technology",
  "imageUrl": "images/Batman.jpg",
  "firstAppearance": "Detective Comics #27"
}
```

**Response:**

```json
{
  "characterId": 1,
  "name": "Batman",
  "description": "The protector of Gotham City.",
  "role": "Vigilante Hero",
  "abilities": "Advanced Technology",
  "imageUrl": "images/Batman.jpg",
  "firstAppearance": "Detective Comics #27"
}
```

### 5. Delete a Character

```http
DELETE /api/characters/{id}
```
**Response:** <Empty>

### 6. Search Characters by Name

```http
GET /api/characters/search?query={searchTerm}
```

**Response:**

```json
[
  {
    "characterId": 1,
    "name": "Batman",
    "description": "The Dark Knight of Gotham City.",
    "role": "Vigilante Hero",
    "abilities": "Gadgets and Detective Skills",
    "imageUrl": "images/Batman.jpg",
    "firstAppearance": "Detective Comics #27"
  }
]
```

### 7. Search Characters by Role

```http
GET /api/characters/role?role={role}
```

**Response:**

```json
[
  {
    "characterId": 2,
    "name": "Joker",
    "description": "Batman's greatest enemy.",
    "role": "Villain",
    "abilities": "Manipulation and Strategy",
    "imageUrl": "images/Joker.jpg",
    "firstAppearance": "Batman #1"
  }
]
```
