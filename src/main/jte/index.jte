<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ne laissez pas de traces</title>
    <script src="https://unpkg.com/htmx.org@2.0.3"></script>
    <script src="https://unpkg.com/htmx-ext-preload@2.0.1/preload.js"></script>
    <link rel="stylesheet" href="/css/index.css" content="text/css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.3/dist/cdn.min.js"></script>
</head>
<header>
    @template.components.navbar()
</header>
<body>
<div id="root">
    <section class="top-home-page">
        <div class="left-part">
            <h1 class="main-title">Ne laissez</h1> <br/>
            <div class="main-title-section">
                <span> &nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp</span>
                <h1 class="main-title">pas de traces</h1>
            </div>

            <p class="subtitle">Le site dédié à la sensibilisation à l'éthique en milieu naturel, conçu pour s'informer et évaluer ses connaissances.</p>
            <div class="flex-top-link">
                @template.components.link(path = "/ressources", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>
        <img class="img-home" src="/images/illu-home.svg" alt="Illustration d'une femme avec une tente en nature"/>
    </section>

    <section class="prevention" id="jeu">
        <div class="flex-prevention">
            <div class="box-prevention">
                <img class="img-home" src="/images/illu-home-2.svg"
                     alt="Illustration d'un homme qui fait un test en ligne"/>
                <div class="text-prevention">
                    <h2>Je
                        <mark class="green-bg">teste</mark>
                        mes connaissances
                    </h2>
                    <p class="instruction-text">Prêt à améliorer tes connaissances sur les principes "Ne Laissez Aucune
                        Trace" ? Grâce à notre quiz, tu pourras évaluer ce que tu sais déjà sur l’éthique en milieu naturel
                        tout en apprenant de nouvelles informations !
                    </p>
                    @template.components.choice-button(type = com.milan.lnt.beans.ButtonTypeEnum.main, path = "/game", title = "Démarrer le test", description = "En autonomie")
                </div>

            </div>
            <!-- TODO Atelier pour les écoles
            <div class="box-prevention">
                <div class="text-prevention">
                    <h2>Je suis <span class="yellow-bg">animateur·rice</span></h2>
                    <p class="instruction-text">
                        Vous envisagez de mettre en place un atelier de sensibilisation à l'éthique en milieu naturel ?
                        Parfait, vous êtes au bon endroit ! Découvrez toutes les étapes précises pour bien organiser votre
                        événement dans vos classes.
                    </p>
                    @template.components.choice-button(type = com.milan.lnt.beans.ButtonTypeEnum.main, path = "/guideAtelier", title = "Préparer un atelier.", description = "Manuel d'atelier pour le milieu scolaire.")
                </div>
                <img class="img-home" src="/images/illu-home-3.svg" alt="Illustration d'un educateur face à sa classe"/>
            </div>-->
        </div>
    </section>
    <section class="statistique">
        <div class="box-stat">
            <p class="number-stat">56%</p>
            <p class="text-stat">
                des Français, soit 27 millions de personnes
                de plus de 18 ans ont déclaré pratiquer de la randonnée au cours de ces 12 derniers mois. <a
                        class="source"
                        href="https://www.ffrandonnee.fr/"
                        target="_blank">(FFRANDONNE, 2023)</a
                >
            </p>
        </div>
        <div class="box-stat">
            <p class="number-stat">4 à 8 ans</p>
            <p class="text-stat">
                c'est le temps que le sol met à se reconstituer après un campement de 4 jours. <a
                        class="source"
                        href="https://lnt.org/"
                        target="_blank">(LNT, 2023)</a
                >
            </p>
        </div>
        <div class="box-stat">
            <p class="number-stat">80 000 tonnes</p>
            <p class="text-stat">
                de plastiques sont rejetées dans la nature chaque année en France <a class="source" href="https://www.wwf.fr/" target="_blank"
                >(WWF)</a
                >
            </p>
        </div>
    </section>

    <!-- TODO Add ressource section- -->

    <section class="about">
        <div class="about-box">
            <h2>Pourquoi <span class="green-bg">Ne laissez pas de trace  ?</span></h2>
            <p class="about-text">
                Notre mission : fournir des conseils pratiques et des informations essentielles pour agir en respectant la
                nature. L'objectif est clair : te donner les clés pour adopter des comportements responsables et limiter ton
                impact dans les espaces naturels. Ne Laissez Pas de Trace aborde tous les sujets sans détour pour t’informer
                de manière transparente. Découvre notre section Ressources pour des informations fiables et détaillées sur
                l’éthique en milieu naturel, et teste tes connaissances dans notre espace Quiz pour évaluer et approfondir
                ton savoir. </p>
            @template.components.link(path = "/about", textUnderline = "À", text = "propos", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
        </div>
    </section>
</div>

</body>
</html>
