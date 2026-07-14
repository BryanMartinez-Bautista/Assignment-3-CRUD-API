<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Character Details - Batman Universe Character Gallery</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/styles.css">
    </head>

    <body class="d-flex flex-column min-vh-100">
        <!-- Navigation Bar -->
         <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-lg">
                <a class="navbar-brand fw-bold" href="/batmanCharacters">Batman Universe Gallery</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="/batmanCharacters">Home</a></li>
                        <li class="nav-item"><a class="nav-link active" href="#">Details</a></li>
                        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="/batmanCharacters/new">Add a Character</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="flex-grow-1">
            <div class="container-lg py-5">
                <div class="character-details">
                    <a href="/batmanCharacters" class="btn btn-outline-secondary mb-4">&larr; Back to Gallery</a>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-4">
                                <img src="${batmanCharacter.imageUrl}"
                                    class="img-fluid rounded shadow"
                                    alt="${batmanCharacter.name}">
                            </div>
                            <div class="card quick-info">
                                <div class="card-header quick-info-header text-white"><strong>Quick Info</strong></div>
                                
                                <div class="card-body">
                                    <h1 class="mb-2">${batmanCharacter.name}</h1>
                                    <p class="lead mb-4">${batmanCharacter.description}</p>
                                    <p class="mb-2"><strong>Role:</strong><br><span class="badge badge-batman">${batmanCharacter.role}</span></p>
                                    <p class="mb-2"><strong>First Comic Appearance:</strong><br>${batmanCharacter.firstAppearance}</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <h2 class="mt-4 mb-3">Backstory</h2>
                            <p>${batmanCharacter.backstory}</p>
                            
                            <h2 class="mt-4 mb-3">Abilities</h2>
                            <p>
                                ${batmanCharacter.abilities}
                            </p>
                        </div>
                    </div>

                    <div class="text-center mt-5">
                        <a href="/batmanCharacters/delete/${batmanCharacter.characterId?c}" class="btn btn-danger"> Delete Character</a>
                        <a href="/batmanCharacters/updateForm/${batmanCharacter.characterId?c}" class="btn btn-warning"> Edit Character</a>
                        <a href="/batmanCharacters" class="btn btn-danger btn-lg">View All Characters</a>
                    </div>
                </div>
            </div>
        </main>

        <!-- Footer -->
        <footer class="bg-dark text-white text-center py-4 mt-5">
            <p class="mb-0">&copy; 2026 Batman Universe Character Gallery. Created for class project.</p>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>