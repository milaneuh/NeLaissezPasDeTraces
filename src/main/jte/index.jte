<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ne laissez pas de traces</title>
    <script src="https://unpkg.com/htmx.org@2.0.3"></script>
</head>
<body >

<section class="top-home-page">
    <div class="left-part">
        <h1>Ne laissez <br /> &nbsp&nbsp;&nbsppas de traces</h1>
        <p class="subtitle">Le site de prévention à l'éthique en nature pour s'éduquer et tester ses connaissances.</p>
        <div class="flex-top-link">
            <!-- TODO Btn en savoir plus sur le sujet -->
        </div>
    </div>
    <img class="img-home" src="/images/illu-home.svg" alt="Illustration d'une femme avec une tente en nature" />
</section>

<section class="prevention" id="jeu">
    <div class="flex-prevention">
        <div class="box-prevention">
            <div class="text-prevention">
                <h2>Je <mark class="green-bg">teste</mark> mes connaissances</h2>
                <p class="instruction-text">
                    Prêt à booster tes connaissances sur les principes Leave no Trace ?
                    Avec notre quiz, tu vas pouvoir vérifier ce que tu sais déjà au sujet de l'éthique en nature et
                    découvrir de nouvelles infos !
                </p>
                <!-- TODO Btn to game -->
            </div>
            <img class="img-home" src="/images/illu-home-2.svg" alt="Illustration d'un homme qui fait un test en ligne" />
        </div>

        <div class="box-prevention">
            <div class="text-prevention">
                <h2>Je suis <span class="yellow-bg">animateur·rice</span></h2>
                <p class="instruction-text">
                    Vous souhaitez organiser un atelier de prévention sur l'éthique en nature ? Bingo, vous êtes au
                    bon endroit ! Retrouvez toutes les étapes détaillées afin de bien préparer votre
                    manifestation dans vos classes.
                </p>
                <!-- TODO Btn to atelier -->
            </div>
            <img class="img-home" src="/images/illu-home-3.svg" alt="Illustration d'un educateur face à sa classe" />
        </div>
    </div>

</section>
<section class="statistique">
    <div class="box-stat">
        <p class="number-stat">56%</p>
        <p class="text-stat">
            des Français, soit 27 millions de personnes
            de plus de 18 ans ont déclaré pratiquer toute forme de randonnée (c’est à dire marche,
            randonnée pédestre, balade) au cours de ces 12 derniers mois<a
                    class="source"
                    href="https://www.ofdt.fr/"
                    target="_blank">(FFRANDONNE, 2023)</a
            >
        </p>
    </div>
    <div class="box-stat">
        <p class="number-stat">1 élève sur 5</p>
        <p class="text-stat">
            a connu une alcoolisation ponctuelle importante dans le mois.<a
                    class="source"
                    href="https://www.drogues.gouv.fr/"
                    target="_blank">(drogues.gouv)</a
            >
        </p>
    </div>
    <div class="box-stat">
        <p class="number-stat">5 à 10 ans</p>
        <p class="text-stat">
            c’est la tranche d’âge de l’initiation à la consommation d’alcool chez les enfants par leur
            famille. <a class="source" href="https://www.drogues.gouv.fr/" target="_blank"
            >(drogues.gouv)</a
            >
        </p>
    </div>
</section>

<!-- TODO Add ressource section- -->

<section class="about">
    <div class="about-box">
        <h2>Pourquoi <span class="green-bg">Ne laissez pas de trace  ?</span></h2>
        <p class="about-text">
            Notre mission : fournir des conseils pratiques et des informations essentielles pour agir en respectant la nature. L'objectif est clair : te donner les clés pour adopter des comportements responsables et limiter ton impact dans les espaces naturels. Ne Laissez Pas de Trace aborde tous les sujets sans détour pour t’informer de manière transparente. Découvre notre section Ressources pour des informations fiables et détaillées sur l’éthique en milieu naturel, et teste tes connaissances dans notre espace Quiz pour évaluer et approfondir ton savoir.        </p>
        <!-- TODO add à propos link -->
    </div>
</section>
</body>
</html>

<style>
    @import url('https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap');

    html, body { min-height: 100vh; }

    #FONTS,

    h1 {
        font-family: 'DM Sans', sans-serif;
        font-weight: 600;
        color: black;
        font-size: 52px;
        line-height: 130%;
    }
    @media screen and (min-width: 0px) and (max-width: 300px) {
        h1 {
            font-size: 32px;
        }
    }
    @media screen and (min-width: 301px) and (max-width: 500px) {
        h1 {
            font-size: 38px;
        }
    }
    @media screen and (min-width: 501px) and (max-width: 800px) {
        h1 {
            font-size: 48px;
        }
    }
    h2 {
        font-family: 'DM Sans', sans-serif;
        font-weight: 600;
        color: black;
        font-size: clamp(20px, 3vw, 28px);
    }
    h3{
        font-family: 'DM Sans', sans-serif;
        font-weight: 600;
        color: black;
        font-size: 22px;
        line-height: 130%;
    }

    p{
        font-family: 'DM Sans', sans-serif;
        font-weight: 400;
        margin: 0;
    }

    .main-button {
        font-family: 'DM Sans', sans-serif;
        font-weight: 900;
        color: black;
        text-transform: uppercase;
    }

    .main-button-big {
        font-size: 24px;
    }

    .main-button-small {
        font-size: 16px;
    }

    a {
        font-family: 'DM Sans', sans-serif;
        font-weight: 400;
        color: black;
    }

    p, h1, h2, h3, h4, h5, h6 {
        overflow-wrap: break-word;
    }

    .bigText{
        font-family: "DM Sans", sans-serif;
        font-size: 32px;
        font-weight: 300;
        color: black
    }

    .logo-h1{
        position: relative;
    }
    .o-svg{
        width: 28px;
        top: 94px;
        left: 140px;
        z-index: -1;
        position: absolute;
    }
    h1 {
        text-transform: uppercase;
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
    .green-bg {
        background-color: #70C33C;
        padding: 0 5px;
    }

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
        color: black;
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
    .text-prevention{
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
        margin: 48px 0;
        line-height: 130%;
    }
    @media screen and (min-width: 0px) and (max-width: 300px) {
        .o-svg{
            width: 18px;
            top: 58px;
            left:89.5px;
        }
    }
    @media screen and (min-width: 301px) and (max-width: 500px) {
        .o-svg{
            width: 20px;
            top: 68px;
            left:103.5px;
        }
    }
    @media screen and (min-width: 501px) and (max-width: 800px) {
        .o-svg{
            width: 22px;
            top: 88px;
            left:132.5px;
        }
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
        .text-prevention{
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
        }
        .about-box {
            width: 90vw;
        }
        .about h2 {
            text-align: left;
        }
        .about-text {
            margin: 32px 0;
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
        .text-prevention{
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