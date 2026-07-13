<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About - Batman Universe Character Gallery</title>
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
                        <li class="nav-item"><a class="nav-link active" href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="/batmanCharacters/new">Add a Character</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="flex-grow-1">
            <div class="container-lg py-5">
                <div class="page-header text-center mb-5 pb-4 border-bottom">
                    <h1 class="display-4 fw-bold">About This Gallery</h1>
                </div>

                <!-- Centered Image -->
                <div class="text-center mb-5">
                    <img src="/images/Hero-Villain.jpg" class="img-fluid rounded shadow" alt="Batman" style="max-width: 500px;">
                </div>

                <div class="row justify-content-center">
                    <div class="col-lg-9">
                        <h2 >Welcome to the Batman Universe Character Gallery</h2>
                        <p>
                            The Batman Universe Character Gallery showcases some of the most iconic heroes and villains 
                            from the Batman Universe and DC Comics.
                        </p>

                        <h2>Why I Chose This Theme</h2>
                        <p>
                            I chose the Batman Universe as my theme because I'm fascinated by how Batman fights crime 
                            without having any superpowers. Not only does he fight crime without powers, but he is also considered 
                            one of the world's greatest detectives. He solves some of the most difficult cases in Gotham City, ranging 
                            from homicides with no evidence to investigations that seem to have reached a dead end.

                            Batman is also a humble person who doesn't let his wealth get the best of him. Instead, he uses his money to 
                            help others and to develop the advanced gadgets and technology he uses to fight crime. One thing I admire most about 
                            Batman is the code he follows. No matter how terrible a criminal's actions are, Batman refuses to kill them because 
                            he believes justice should be served without taking a life.

                            As for the design of my website, I chose colors like black, blue, and yellow because they represent the traditional Batman theme. 
                            I also decided to use cards for each character because they organize the information in a clean and easy-to-read layout. I wanted 
                            the character cards to stand out and almost feel like they were jumping off the screen while keeping the overall design simple and 
                            visually appealing.
                        </p>
                    </div>
                </div>

                <div class="text-center mt-5">
                    <a href="/batmanCharacters" class="btn btn-danger btn-lg">View Gallery</a>
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