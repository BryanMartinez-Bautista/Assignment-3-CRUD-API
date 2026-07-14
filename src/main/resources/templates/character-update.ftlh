<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Character - Batman Universe Character Gallery</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
</head>

<body class="d-flex flex-column min-vh-100">

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-lg">
            <a class="navbar-brand fw-bold" href="/batmanCharacters">
                Batman Universe Gallery
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/batmanCharacters">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/batmanCharacters/new">Add a Character</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- Main Content -->
    <main class="flex-grow-1">

        <div class="container-lg py-5">

            <div class="page-header text-center mb-5 pb-4 border-bottom">
                <h1 class="display-4 fw-bold">Update Character</h1>
            </div>


            <div class="row justify-content-center">
                <div class="col-lg-6">

                    <div class="card mb-4">
                        <div class="card-body">

                            <h5 class="card-title mb-4">
                                Character Information
                            </h5>


                            <form action="/batmanCharacters/update/${batmanCharacter.characterId?c}" method="post" enctype="multipart/form-data">

                                <input type="hidden" name="characterId" value="${batmanCharacter.characterId}">


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Character Name *</strong>
                                    </label>

                                    <input type="text"
                                           name="name"
                                           value="${batmanCharacter.name}"
                                           required
                                           class="form-control">
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Role *</strong>
                                    </label>

                                    <select name="role" class="form-select" required>

                                        <option value="Hero" <#if batmanCharacter.role == "Hero">selected</#if>>
                                            Hero
                                        </option>

                                        <option value="Villain" <#if batmanCharacter.role == "Villain">selected</#if>>
                                            Villain
                                        </option>

                                        <option value="Anti-hero" <#if batmanCharacter.role == "Anti-hero">selected</#if>>
                                            Anti-hero
                                        </option>

                                        <option value="Ally" <#if batmanCharacter.role == "Ally">selected</#if>>
                                            Ally
                                        </option>

                                        <option value="Sidekick" <#if batmanCharacter.role == "Sidekick">selected</#if>>
                                            Sidekick
                                        </option>

                                    </select>

                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Abilities *</strong>
                                    </label>

                                    <input type="text"
                                           name="abilities"
                                           value="${batmanCharacter.abilities}"
                                           required
                                           class="form-control">
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Image URL *</strong>
                                    </label>

                                    <input type="url"
                                           name="imageUrl"
                                           value="${batmanCharacter.imageUrl}"
                                           required
                                           class="form-control">
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Description *</strong>
                                    </label>

                                    <textarea name="description"
                                              rows="3"
                                              required
                                              class="form-control">${batmanCharacter.description}</textarea>
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        First Appearance
                                    </label>

                                    <input type="text"
                                           name="firstAppearance"
                                           value="${batmanCharacter.firstAppearance}"
                                           class="form-control">
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">
                                        <strong>Backstory</strong>
                                    </label>

                                    <textarea name="backstory"
                                              rows="6"
                                              class="form-control">${batmanCharacter.backstory}</textarea>
                                </div>


                                <div class="d-grid gap-2 d-sm-flex">

                                    <button type="submit" class="btn btn-danger">
                                        Update Character
                                    </button>

                                    <a href="/batmanCharacters/${batmanCharacter.characterId?c}"
                                       class="btn btn-outline-secondary">
                                        Cancel
                                    </a>

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
        <p class="mb-0">
            &copy; 2026 Batman Universe Character Gallery. Created for class project.
        </p>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>