<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/travel-durable-surface", textUnderline = "Voyager et camper", text = "sur des surfaces durables", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/leave-elements", textUnderline = "Laissez ce que", text = "vous trouvez", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1><span class="green-bg">Éliminez les déchets</span> de manière appropriée</h1>
        <p class="subtitle">
            L'élimination responsable des déchets contribue à préserver les environnements naturels et à réduire l'impact des visiteurs sur la faune et la flore locales.
        </p>
    </div>
    <img class="img-home" src="/images/remove-trash.svg" alt="Illustration de personnes ramassant des déchets"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi éliminer les déchets correctement ?</h2>
        <div class="section-content">
            <p>La gestion des déchets en plein air est cruciale pour protéger les écosystèmes et éviter la pollution. Les déchets laissés dans la nature peuvent nuire aux animaux, polluer les sources d'eau et endommager les paysages.</p>
            <p>En ramenant tous les déchets avec vous, vous contribuez à préserver les sites naturels pour les autres visiteurs et à protéger la biodiversité.</p>
        </div>
    </section>

    <section>
        <h2>Les types de déchets à gérer</h2>
        <div class="section-content">
            <ul class="list">
                <li>
                    <h3>Déchets alimentaires et emballages</h3>
                    <p>Ramenez tous les emballages et les restes de nourriture, même les biodégradables, pour éviter d'attirer les animaux et polluer l'environnement.</p>
                </li>
                <li>
                    <h3>Excréments et produits sanitaires</h3>
                    <p>Utilisez des toilettes portables ou enterrez les excréments à au moins 20 cm de profondeur, loin des sources d'eau. Ramenez tous les produits sanitaires non biodégradables.</p>
                </li>
                <li>
                    <h3>Eaux usées</h3>
                    <p>Éloignez-vous des rivières et des lacs pour jeter l'eau de vaisselle ou de lessive. Utilisez des savons biodégradables et jetez les eaux usées dans un trou à 20 cm de profondeur.</p>
                </li>
            </ul>
        </div>
    </section>

    <section>
        <h2>Conseils pour une élimination efficace des déchets</h2>
        <div class="section-content">
            <p>Prévoyez des sacs en plastique réutilisables pour ramener vos déchets et vos restes de nourriture. Emportez des toilettes portables ou une petite pelle pour enterrer les excréments si nécessaire. Assurez-vous de laisser les lieux aussi propres, voire plus propres, que lorsque vous êtes arrivé.</p>
        </div>
    </section>

    <section>
        <h2>Exemples d'impact négatif d'une mauvaise gestion des déchets</h2>
        <div class="section-content">
            <p>Laisser des déchets alimentaires peut attirer des animaux sauvages, ce qui perturbe leur comportement naturel et peut créer des situations dangereuses. Les déchets non biodégradables, comme les plastiques et les produits sanitaires, peuvent polluer les sols et les cours d'eau, nuisant ainsi à la faune et aux habitats locaux.</p>
            <p>Ces exemples montrent l'importance d'une gestion responsable des déchets pour protéger l'environnement et les animaux.</p>
        </div>
    </section>

    <section>
        <h2>Pour aller plus loin</h2>
        <div class="section-content">
            <p>Pour en savoir plus sur les bonnes pratiques pour éliminer les déchets en plein air, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/dispose-of-waste-properly/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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
