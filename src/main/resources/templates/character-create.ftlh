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
                        <li class="nav-item"><a class="nav-link" href="/batmanCharacters">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link active" href="/batmanCharacters/new">Add a Character</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="flex-grow-1">
            <div class="container-lg py-5">
                <div class="page-header text-center mb-5 pb-4 border-bottom">
                    <h1 class="display-4 fw-bold">Add a New Character</h1>
                </div>

                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title mb-4">Character Information</h5>
                                <form action="/batmanCharacters/save" method="post">
                                    <div class="mb-3">
                                        <label for="characterName" class="form-label"><strong>Character Name
                                                *</strong></label>
                                        <input type="text" id="characterName" name="name" placeholder="e.g., Riddler"
                                            required class="form-control">
                                        <small class="form-text text-muted">The name of your character</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="role" class="form-label"><strong>Role*</strong></label>
                                        <select id="role" name="role" required class="form-select">
                                            <option value="">-- Select a role --</option>
                                            <option value="Hero">Hero</option>
                                            <option value="Villain">Villain</option>
                                            <option value="Anti-hero">Anti-hero</option>
                                            <option value="Ally">Ally</option>
                                            <option value="Sidekick">Sidekick</option>
                                        </select>
                                        <small class="form-text text-muted">What role does this character play in the Batman Universe?</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="abilities" class="form-label"><strong>Abilities *</strong></label>
                                        <select id="abilities" name="abilities" required class="form-select">
                                            <option value="">-- Select a specialty --</option>
                                            <option value="Martial Skills">Martial Skills</option>
                                            <option value="Intelligence/Strategy">Intelligence/Strategy</option>
                                            <option value="Gadgets/Technology">Gadgets/Technology Users</option>
                                            <option value="Support">Allies/Support Roles</option>
                                            <option value="Leadership">Boss</option>
                                            <option value="Superpowers">Superpowers</option>
                                        </select>
                                        <small class="form-text text-muted">What abilities best describes this
                                            character?</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="imageUrl" class="form-label"><strong>Image URL *</strong></label>
                                        <input type="url" id="imageUrl" name="imageUrl"
                                            placeholder="https://example.com/yourimage.jpg" required
                                            class="form-control">
                                        <small class="form-text text-muted">Link to a character image (must be a valid
                                            URL)</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="description" class="form-label"><strong>Short Description *</strong></label>
                                        <textarea id="description" name="description"
                                            placeholder="Describe the character in 1-3 sentences..." rows="3" required
                                            class="form-control"></textarea>
                                        <small class="form-text text-muted">A brief summary of the character (100-200
                                            characters)</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="firstAppearance" class="form-label">First Appearance</label>
                                        <input type="text" id="firstAppearance" name="firstAppearance"
                                            placeholder="e.g., Detective Comics #29 (May 1939)" class="form-control">
                                        <small class="form-text text-muted">When did this character first
                                            appear in comics?</small>
                                    </div>

                                    <div class="mb-3">
                                        <label for="backstory" class="form-label">
                                            <strong>Backstory</strong>
                                        </label>
                                        <textarea id="backstory"
                                                name="backstory"
                                                rows="6"
                                                class="form-control"
                                                placeholder="Enter the character's backstory..." required></textarea>
                                    </div>

                                    <div class="d-grid gap-2 d-sm-flex justify-content-sm-start">
                                        <button type="submit" class="btn btn-danger">Add Character</button>
                                        <a href="/batmanCharacters" class="btn btn-outline-secondary">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
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