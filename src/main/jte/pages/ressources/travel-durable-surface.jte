<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/plan-ahead", textUnderline = "Planifiez à l'avance", text = " et préparez-vous", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/remove-trash", textUnderline = "Éliminez les déchets", text = "de manière appropriée", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1>Voyager et camper sur des <span class="green-bg">surfaces durables</span></h1>
        <p class="subtitle">
            Voyager et camper sur des surfaces durables réduit les dommages causés aux environnements naturels et permet de préserver les espaces sauvages pour les générations futures.
        </p>
    </div>
    <img class="img-home" src="/images/illu-walk-durable.svg" alt="Illustration d'une personne marchant sur un sentier"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi choisir des surfaces durables ?</h2>
        <div class="section-content">
            <p>Choisir de voyager et camper sur des surfaces durables aide à protéger les écosystèmes fragiles et à minimiser l'impact humain sur la nature. Les zones naturelles peuvent être sensibles à la surfréquentation et aux dommages permanents si elles ne sont pas correctement respectées.</p>
            <p>En se tenant aux sentiers balisés et en campant dans des zones désignées, les voyageurs contribuent à la préservation de la flore, de la faune, et des paysages pour les autres utilisateurs et les générations futures.</p>
        </div>
    </section>

    <section>
        <h2>Types de surfaces durables</h2>
        <div class="section-content">
            <ul class="list">
                <li>
                    <h3>Sentiers et campings désignés</h3>
                    <p>Utilisez les sentiers balisés et les emplacements de camping officiels pour minimiser l'érosion et protéger les habitats naturels.</p>
                </li>
                <li>
                    <h3>Roches, gravier, et sable</h3>
                    <p>Ces surfaces naturelles sont moins susceptibles d'être affectées par le passage et l'installation de campements temporaires.</p>
                </li>
                <li>
                    <h3>Neige et glace</h3>
                    <p>Camper sur la neige ou la glace limite l'impact sur les plantes et le sol, mais nécessite une préparation adéquate pour la sécurité.</p>
                </li>
            </ul>
        </div>
    </section>

    <section>
        <h2>Pratiques recommandées pour le camping</h2>
        <div class="section-content">
            <p>Lorsque vous campez, installez-vous à au moins 60 mètres de toute source d'eau pour protéger la faune et éviter la contamination. Utilisez des emplacements de camping existants ou des zones dégagées, et évitez de créer de nouvelles aires de campement. Après avoir démonté le camp, assurez-vous de ne laisser aucune trace de votre passage.</p>
        </div>
    </section>

    <section>
        <h2>Exemples d'impact négatif d'un mauvais choix de surface</h2>
        <div class="section-content">
            <p>Installer un campement dans une zone herbeuse ou sur des plantes sensibles peut causer des dégâts durables et nuire à l'écosystème local. Marcher hors des sentiers balisés peut provoquer une érosion accélérée et endommager la végétation environnante.</p>
            <p>Ces erreurs soulignent l'importance de rester sur les surfaces durables pour réduire notre empreinte et protéger la nature.</p>
        </div>
    </section>

    <section>
        <h2>Pour aller plus loin</h2>
        <div class="section-content">
            <p>Pour en savoir plus sur le respect des surfaces durables et les pratiques de camping responsables, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/travel-camp-on-durable-surfaces/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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

        .nav-ressource {
            display: none;
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

        .nav-
</style>