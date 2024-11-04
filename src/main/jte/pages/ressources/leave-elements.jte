<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/remove-trash", textUnderline = "Éliminez les déchets", text = "de manière appropriée", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/campfire", textUnderline = "Minimisez l'impact des", text = "feux de camp", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1><span class="green-bg">Laissez</span> ce que vous trouvez</h1>
        <p class="subtitle">
            Laisser les objets et éléments naturels à leur place aide à préserver l'environnement et à maintenir l'intégrité des écosystèmes pour les générations futures.
        </p>
    </div>
    <img class="img-home" src="/images/leave-elements.svg" alt="Illustration d'un paysage"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi est-ce important ?</h2>
        <div class="section-content">
            <p>En laissant les éléments naturels et culturels tels que nous les trouvons, nous contribuons à préserver les habitats et à respecter l'histoire des lieux. La collecte de souvenirs ou de spécimens perturbe les écosystèmes et prive les autres visiteurs de cette même expérience.</p>
            <p>Chaque pierre, plante ou objet naturel a sa place dans l'environnement et joue un rôle dans l'écosystème.</p>
        </div>
    </section>

    <section>
        <h2>Principes pour laisser ce que vous trouvez</h2>
        <div class="section-content">
            <ol class="list">
                <li>
                    <h3>Ne déplacez pas les objets naturels</h3>
                    <p>Les pierres, les branches et les feuilles font partie de l'environnement et fournissent un habitat pour les animaux et les insectes. Évitez de les déplacer.</p>
                </li>
                <li>
                    <h3>Évitez de cueillir les plantes</h3>
                    <p>La cueillette de fleurs ou de plantes peut perturber les écosystèmes locaux, affecter les pollinisateurs et nuire à la reproduction des plantes.</p>
                </li>
                <li>
                    <h3>Ne laissez pas de marques ou graffitis</h3>
                    <p>Évitez de graver ou de peindre sur les arbres, les rochers ou les structures. Ces marques peuvent durer des décennies et dégrader les paysages naturels.</p>
                </li>
            </ol>
        </div>
    </section>

    <section>
        <h2>Impact d’un mauvais comportement</h2>
        <div class="section-content">
            <p>Lorsque les visiteurs retirent des objets naturels ou laissent des marques, cela dénature le lieu pour les autres. Par exemple, retirer des fleurs empêche les autres de les apprécier et nuit aux pollinisateurs. Les marques sur les arbres et les rochers sont des cicatrices permanentes sur les paysages naturels.</p>
            <p>Ces comportements perturbent l'équilibre des écosystèmes et laissent des traces durables qui dégradent l'expérience des futurs visiteurs.</p>
        </div>
    </section>

    <section>
        <h2>Conseils pour préserver les lieux que vous visitez</h2>
        <div class="section-content">
            <p>Apportez un appareil photo pour capturer les souvenirs sans emporter d'objets naturels. Apprenez à apprécier la beauté de la nature telle qu'elle est, sans la modifier ou la marquer de manière permanente. Respectez les zones protégées et laissez les objets culturels ou naturels intacts pour les autres.</p>
        </div>
    </section>

    <section>
        <h2>Pour approfondir</h2>
        <div class="section-content">
            <p>Pour en savoir plus sur l'importance de laisser les éléments naturels intacts, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/leave-what-you-find/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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
