<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/respect-wildlife", textUnderline = "Respectez", text = "la faune", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/plan-ahead", textUnderline = "Planifiez à l'avance", text = "et préparez-vous", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1><span class="green-bg">Soyez prévenant</span> envers les autres</h1>
        <p class="subtitle">
            Respecter les autres visiteurs permet à chacun de profiter pleinement de la nature. Les espaces naturels sont des lieux partagés où la courtoisie et l’attention aux autres créent une expérience harmonieuse pour tous.
        </p>
    </div>
    <img class="img-home" src="/images/considerate-other.svg" alt="Illustration de plusieurs personnes marchant en nature"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi être prévenant envers les autres ?</h2>
        <div class="section-content">
            <p>Les espaces naturels sont souvent visités par de nombreuses personnes, chacune ayant sa propre manière de se connecter à la nature. Être respectueux et prévenant permet d’éviter les conflits et de maintenir une atmosphère paisible. Cela inclut le respect du calme, des chemins balisés, et des lieux de repos partagés.</p>
            <p>En adoptant une attitude courtoise, nous contribuons à un environnement où chacun peut profiter de la nature de manière paisible et enrichissante.</p>
        </div>
    </section>

    <section>
        <h2>Bonnes pratiques pour respecter les autres visiteurs</h2>
        <div class="section-content">
            <ol class="list">
                <li>
                    <h3>Réduisez le bruit</h3>
                    <p>Parlez doucement et évitez la musique forte pour préserver le calme naturel. Le silence est précieux dans la nature et fait partie de l'expérience pour de nombreux visiteurs.</p>
                </li>
                <li>
                    <h3>Laissez le passage</h3>
                    <p>Sur les sentiers étroits, cédez le passage aux autres. Les randonneurs montant ont généralement la priorité, et il est courtois de laisser de la place pour ceux qui passent.</p>
                </li>
                <li>
                    <h3>Respectez les règles de groupe</h3>
                    <p>Voyager en groupe nécessite de faire preuve de discrétion. Maintenez une distance raisonnable entre les membres du groupe et évitez de bloquer le chemin pour les autres visiteurs.</p>
                </li>
            </ol>
        </div>
    </section>

    <section>
        <h2>Gérer les interactions avec la faune et les autres visiteurs</h2>
        <div class="section-content">
            <p>Si vous rencontrez des animaux ou d'autres personnes en pleine nature, observez de loin pour éviter de perturber leur expérience. Évitez de vous approcher trop près et respectez leur espace, en particulier si vous les croisez sur un sentier étroit.</p>
            <p>En respectant la faune et les autres visiteurs, vous contribuez à une cohabitation harmonieuse et minimisez l'impact de votre passage.</p>
        </div>
    </section>

    <section>
        <h2>Exemples de comportement prévenant</h2>
        <div class="section-content">
            <p>Imaginez une famille qui souhaite profiter d'un pique-nique en silence, ou un photographe qui tente de capturer la beauté de la nature. En parlant doucement et en évitant de traverser leur champ de vision, vous leur permettez de profiter de leur expérience.</p>
            <p>De même, en ramassant vos déchets et ceux que vous trouvez sur votre passage, vous contribuez à un environnement propre et accueillant pour tous.</p>
        </div>
    </section>

    <section>
        <h2>Que faire en cas de conflit ?</h2>
        <div class="section-content">
            <p>Si vous avez un désaccord avec un autre visiteur, restez calme et courtois. Exprimez-vous poliment et cherchez une solution qui permette à chacun de continuer à profiter de la nature. La patience et la tolérance sont essentielles pour maintenir un environnement serein et agréable pour tous.</p>
        </div>
    </section>

    <section>
        <h2>Pour approfondir</h2>
        <div class="section-content">
            <p>Pour des conseils plus détaillés sur le respect des autres dans les espaces naturels, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
        @template.components.outside-link(path = "https://lnt.org/why/7-principles/be-considerate-of-other-visitors/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</section>

<style>
    .green-bg {
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
    .only-mobile {
        display: none;
    }
    .nav-ressource {
        top: 80px;
        background-color: #fff;
        width: 90vw;
        position: fixed;
        padding: 30px 5vw;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }
    .top-home-page {
        margin-top: 180px;
        padding: 0 10vw;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .img-home {
        width: 30vw;
    }
    .top-home-page .left-part {
        display: flex;
        flex-direction: column;
        justify-content: start;
        max-width: 60%;
    }
    .contenu {
        margin-left: 20vw;
        margin-top: 60px;
        margin-bottom: 60px;
        gap: 40px;
    }
    .contenu h2 {
        margin-top: 48px;
        margin-bottom: 32px;
    }
    .contenu section p {
        margin: 48px 0 32px 0;
        max-width: 40vw;
        line-height: 1.6;
    }

    .outside-link {
        display: block;
        margin-top: 20px;
        margin-bottom: 50px;
        text-align: center;
    }

    @media screen and (max-width: 800px) {
        .only-mobile {
            display: block;
        }

        .top-home-page {
            margin-top: 80px;
            padding: 0 5vw;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .img-home {
            margin-top: 48px;
            width: 80vw;
            max-width: 300px;
        }

        .nav-ressource {
            display: none;
        }

        .subtitle {
            width: 90%;
            margin: 0 auto;
        }

        .contenu {
            margin-left: 0;
            padding: 0 5vw;
            gap: 24px;
        }
        .contenu h2 {
            margin-top: 24px;
            font-size: 1.5rem;
        }
        .contenu section p, .contenu .section-content {
            max-width: 100%;
            text-align: left;
            padding: 10px;
        }
        .contenu .list li h3 {
            font-size: 1.1rem;
        }
    }
</style>
