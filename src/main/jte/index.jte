<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ne laissez pas de traces</title>
    <script src="https://unpkg.com/htmx.org@2.0.3"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.3/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="/css/index.css" content="text/css">
</head>
@template.components.header()
<body>
<div id="root">
    <section class="top-home-page">
        <div class="left-part">
            <h1 class="main-title">Ne laissez</h1> <br/>
            <div class="main-title-section">
                <span> &nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp;&nbsp</span>
                <h1 class="main-title">pas de traces</h1>
            </div>

            <p class="subtitle">Le site dédié à la sensibilisation à l'éthique en milieu naturel, conçu pour s'informer
                et évaluer ses connaissances.</p>
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
                        <span class="green-bg">teste</span>
                        mes connaissances
                    </h2>
                    <p class="instruction-text">Prêt à améliorer tes connaissances sur les principes "Ne Laissez Aucune
                        Trace" ? Grâce à notre quiz, tu pourras évaluer ce que tu sais déjà sur l’éthique en milieu
                        naturel
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
                de plastiques sont rejetées dans la nature chaque année en France <a class="source"
                                                                                     href="https://www.wwf.fr/"
                                                                                     target="_blank"
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
                Notre mission : fournir des conseils pratiques et des informations essentielles pour agir en respectant
                la
                nature. L'objectif est clair : te donner les clés pour adopter des comportements responsables et limiter
                ton
                impact dans les espaces naturels. Ne Laissez Pas de Trace aborde tous les sujets sans détour pour
                t’informer
                de manière transparente. Découvre notre section Ressources pour des informations fiables et détaillées
                sur
                l’éthique en milieu naturel, et teste tes connaissances dans notre espace Quiz pour évaluer et
                approfondir
                ton savoir. </p>
            @template.components.link(path = "/about", textUnderline = "À", text = "propos", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
        </div>
    </section>
</div>

</body>
</html>

<style>

    .logo-h1 {
        position: relative;
    }

    .main-title-section {
        display: flex;
        flex-direction: row;
        margin: 0;
    }

    .main-title {
        margin: 10px 0 0;
        text-decoration: underline 3px var(--green);
    }

    h1 {
        text-transform: uppercase;
    }

     .green-bg{
        position: relative !important;
        display: inline-block;
    }

     .green-bg::before {
        content: '';
        z-index: -1;
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: var(--green);
        animation: highlight 0.5s;
    }

    @keyframes highlight {
        0% {
            width: 0;
        }
        100% {
            width: 100%;
        }
    }

    .subtitle {
        margin-top: 32px;
        margin-bottom: 24px;
        width: 70%;
        font-weight: 600;
        line-height: 130%;
        font-size: 20px;
    }

    .flex-top-link {
        display: flex;
        flex-direction: column;
        gap: 16px;
    }

    /* Home Page */

    .top-home-page {
        margin-top: 128px;
        padding: 0 10vw;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .top-home-page .left-part {
        display: flex;
        flex-direction: column;
        justify-content: start;
    }

    .statistique {
        margin-top: 128px;
        padding: 0 10vw;
        display: flex;
        justify-content: space-between;
    }

    .box-stat {
        width: 23vw;
        color: var(--black);
    }

    .number-stat {
        font-size: 28px;
        font-weight: 600;
    }

    .text-stat {
        margin-top: 4px;
        font-size: 16px;
        font-weight: 400;
        line-height: 130%;
    }

    .source {
        font-weight: 200;
        text-decoration: none;
    }

    .prevention {
        margin-top: 128px;
    }

    .flex-prevention {
        margin-top: 64px;
        display: flex;
        flex-direction: column;
        padding: 0 10vw;
        gap: 128px;
    }

    .text-prevention {
        width: 32vw;
    }

    .instruction-text {
        line-height: 130%;
        margin-left: 5px;
        margin-top: 24px;
        margin-bottom: 80px;
    }

    .box-prevention {
        display: flex;
        justify-content: space-between;
    }

    .box-prevention:nth-child(2) {
        flex-direction: row-reverse;
    }

    .ressources {
        margin-top: 128px;
        padding: 0 10vw;
        display: flex;
        gap: 128px;
    }

    .ressources .right-part {
        display: flex;
        gap: 32px;
    }

    .right-part img {
        width: 200px;
    }

    .ressource-text {
        margin: 50px 0;
        line-height: 130%;
    }

    .about {
        margin-top: 128px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    .about-box {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 30vw;
    }

    .about-box h2 {
        text-align: center;
    }

    .about-text {
        margin: 30px 0;
        line-height: 130%;
    }

    .img-home {
        margin-left: 30px;
        width: 40vw;
    }



    @media screen and (min-width: 0px) and (max-width: 800px) {
        .subtitle {
            width: 90%;
            font-size: 20px;
        }

        /* Home Page */
        .top-home-page {
            margin-top: 45px;
            padding: 0 5vw;
            flex-direction: column;
        }

        .img-home {
            margin-top: 48px;
            width: 90vw;
            max-width: 500px;
        }

        .prevention {
            margin-top: 64px;
        }

        .flex-prevention {
            padding: 0 5vw;
            gap: 64px;
        }

        .text-prevention {
            width: 90vw;
        }

        .instruction-text {
            margin-left: 5px;
            margin-bottom: 40px;
        }

        .box-prevention img {
            display: none;
        }

        .statistique {
            margin-top: 64px;
            padding: 0 5vw;
            flex-direction: column;
            gap: 32px;
        }

        .box-stat {
            width: 90vw;
        }

        .ressources {
            flex-direction: column;
            margin-top: 64px;
            padding: 0 5vw;
            gap: 64px;
        }

        .ressources .right-part {
            flex-wrap: wrap;
        }

        .ressources .right-part img {
            width: 30vw;
            min-width: 300px;
        }

        .about {
            margin-top: 64px;
            margin-bottom: 64px;
        }

        .about-box {
            width: 90vw;
        }

        .about h2 {
            text-align: left;
        }

    }

    @media screen and (min-width: 800px) and (max-width: 1250px) {
        .img-home {
            width: 40vw;
        }

        .top-home-page {
            padding: 0 5vw;
        }

        .flex-prevention {
            padding: 0 15vw;
        }

        .text-prevention {
            width: 90vw;
        }

        .instruction-text {
            margin-left: 5px;
            margin-bottom: 40px;
        }

        .box-prevention img {
            display: none;
        }
    }
</style>
