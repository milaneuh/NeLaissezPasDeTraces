<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/leave-elements", textUnderline = "Laissez ce que", text = "vous trouvez", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/respect-wildlife", textUnderline = "Respectez", text = "la faune", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1><span class="green-bg">Minimisez</span> l'impact des feux de camp</h1>
        <p class="subtitle">
            Les feux de camp, bien qu'agréables, peuvent causer des dommages durables. Il est important de minimiser leur impact pour préserver les écosystèmes naturels.
        </p>
    </div>
    <img class="img-home" src="/images/campfire.svg" alt="Illustration d'un feu de camp"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi minimiser l'impact des feux de camp ?</h2>
        <div class="section-content">
            <p>Les feux de camp peuvent causer des dommages à la végétation, au sol et à la faune. En minimisant leur usage ou en choisissant des alternatives, nous aidons à préserver les espaces naturels et à réduire les risques d'incendies.</p>
            <p>De plus, les traces de feux de camp peuvent durer des années et dégrader l'expérience des autres visiteurs.</p>
        </div>
    </section>

    <section>
        <h2>Alternatives aux feux de camp</h2>
        <div class="section-content">
            <ul class="list">
                <li>
                    <h3>Utilisez un réchaud portable</h3>
                    <p>Les réchauds portables sont une option plus écologique pour cuisiner sans laisser de traces. Ils sont faciles à transporter et limitent les risques d'incendies.</p>
                </li>
                <li>
                    <h3>Préférez les emplacements de feu existants</h3>
                    <p>Si vous devez faire un feu, utilisez les foyers déjà aménagés pour éviter de créer de nouvelles cicatrices dans le paysage.</p>
                </li>
                <li>
                    <h3>Utilisez une lampe frontale pour l'éclairage</h3>
                    <p>Au lieu d'un feu de camp pour l'éclairage, privilégiez les lampes frontales ou autres lumières portables pour minimiser l'impact sur l'environnement.</p>
                </li>
            </ul>
        </div>
    </section>

    <section>
        <h2>Conseils pour un feu de camp à faible impact</h2>
        <div class="section-content">
            <p>Si vous décidez de faire un feu, respectez quelques règles de base : n'utilisez que du bois mort et déjà au sol, gardez le feu petit et contrôlé, et assurez-vous de l'éteindre complètement en utilisant de l'eau et en remuant les cendres.</p>
            <p>Avant de quitter les lieux, dispersez les cendres froides pour ne laisser aucune trace de votre feu.</p>
        </div>
    </section>

    <section>
        <h2>Exemples d'impact négatif des feux de camp non contrôlés</h2>
        <div class="section-content">
            <p>Des feux de camp mal gérés peuvent provoquer des incendies dévastateurs, détruire la végétation et rendre des zones entières inhospitalières pour la faune. Les traces laissées par les feux, comme les pierres noircies et les zones de cendres, nuisent également à la beauté naturelle des sites.</p>
            <p>C'est pourquoi il est essentiel de faire preuve de prudence et de limiter l'usage des feux de camp.</p>
        </div>
    </section>

    <section>
        <h2>Pour en savoir plus</h2>
        <div class="section-content">
            <p>Pour des conseils détaillés sur la gestion responsable des feux de camp, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/minimize-campfire-impacts/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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
