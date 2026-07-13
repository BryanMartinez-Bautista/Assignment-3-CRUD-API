<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Batman Universe Character Gallery</title>
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
                        <li class="nav-item"><a class="nav-link active" href="/batmanCharacters">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="/batmanCharacters/new">Add a Character</a></li>
                    </ul>
                </div>
            </div>
         </nav>

        <!-- Main Content -->
        <main class="flex-grow-1">
            <div class="container-lg py-5">
                <div class="page-header text-center mb-5 pb-4 border-bottom">
                    <h1 class="display-4 fw-bold">Batman Universe Character Gallery</h1>
                    <p class="lead text-white">Discover the iconic heroes and villains of the Batman Universe.</p>
                </div>

                <!-- Search and Filter Section -->
                <div class="card mb-4 search-card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-9">
                                <input type="text" placeholder="Search by character name or role..."
                                    class="form-control form-control-lg">
                            </div>
                            <div class="col-md-3">
                                <button class="btn btn-light w-100">Clear</button>
                            </div>
                        </div>
                        <div class="filter-buttons d-flex flex-wrap gap-2">
                            <button class="btn btn-outline-primary active">All Characters</button>
                            <button class="btn btn-outline-primary">Vigilante Hero</button>
                            <button class="btn btn-outline-primary">Villain</button>
                            <button class="btn btn-outline-primary">Sidekick</button>
                            <button class="btn btn-outline-primary">Ally</button>
                        </div>
                    </div>
                </div>
                
                <!-- Results Counter -->
                <div class="mb-4 text-white">
                    Showing <span class="fw-bold">${charactersList?size}</span> character(s)
                </div>

                <!-- Characters Grid -->
                <div class="row" id="charactersGrid">
                    <#list charactersList as character>

                    <div class="col-md-6 col-lg-4 mb-4">
                        <div class="card h-100 character-card shadow-sm">
                            <div class="card-img-top-wrapper">
                                <img src="${character.imageUrl}" class="card-img-top" alt="${character.name}">
                            </div>

                            <div class="card-body d-flex flex-column">

                                <h5 class="card-title">${character.name}</h5>

                                <p class="mb-2">
                                    <span class="badge bg-batman">
                                        ${character.role}
                                    </span>
                                </p>

                                <p class="card-text flex-grow-1">
                                    ${character.description}
                                </p>

                                <a href="/batmanCharacters/${character.characterId}" class="btn btn-danger">
                                    View Details
                                </a>

                            </div>
                        </div>
                    </div>

                    </#list>
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