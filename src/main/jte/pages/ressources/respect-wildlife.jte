<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/campfire", textUnderline = "Minimisez l'impact", text = "des feux de camp", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/considerate-others", textUnderline = "Soyez prévenant", text = "envers les autres", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1><span class="green-bg">Respectez</span> la faune</h1>
        <p class="subtitle">
            La faune sauvage est un élément essentiel des écosystèmes. Respecter la faune permet de préserver son comportement naturel et d'assurer sa survie.
        </p>
    </div>
    <img class="img-home" src="/images/respecter-faune.svg" alt="Illustration de respect de la faune"/>
</section>

<section class="contenu">
    <section>
        <h2>Pourquoi respecter la faune ?</h2>
        <div class="section-content">
            <p>Les animaux jouent un rôle crucial dans la santé des écosystèmes. Lorsque les visiteurs perturbent la faune, cela peut entraîner des changements de comportement, affecter leur alimentation et même leur reproduction. Respecter la faune signifie interagir de manière à minimiser les perturbations et protéger leur habitat.</p>
            <p>Les actions de chaque visiteur comptent. En observant des pratiques responsables, nous contribuons à la protection des animaux et à la préservation des écosystèmes pour les générations futures.</p>
        </div>
    </section>

    <section>
        <h2>Bonnes pratiques pour observer la faune</h2>
        <div class="section-content">
            <ol class="list">
                <li>
                    <h3>Gardez une distance respectueuse</h3>
                    <p>Observez les animaux de loin pour éviter de les stresser. Utilisez des jumelles pour une meilleure observation sans intrusion.</p>
                </li>
                <li>
                    <h3>Ne nourrissez jamais les animaux</h3>
                    <p>Le nourrissage des animaux sauvages peut perturber leur régime alimentaire naturel et les rendre dépendants des humains, ce qui peut être dangereux pour leur santé.</p>
                </li>
                <li>
                    <h3>Évitez les périodes de reproduction</h3>
                    <p>Certaines périodes de l'année, comme le printemps, sont cruciales pour la reproduction. Évitez de déranger les animaux pendant ces périodes sensibles.</p>
                </li>
            </ol>
        </div>
    </section>

    <section>
        <h2>Signes d’une faune perturbée</h2>
        <div class="section-content">
            <p>Les animaux peuvent montrer des signes de stress lorsqu'ils sont dérangés. Cela inclut des comportements inhabituels, comme s'éloigner rapidement, émettre des cris d'alarme, ou afficher une agressivité inattendue. Reconnaître ces signes permet de savoir quand il est temps de se retirer pour laisser les animaux tranquilles.</p>
        </div>
    </section>

    <section>
        <h2>Conséquences d'un mauvais comportement envers la faune</h2>
        <div class="section-content">
            <p>Les interactions humaines non respectueuses peuvent entraîner des conséquences graves pour les animaux : changements de comportement, dépendance à la nourriture humaine, stress accru et réduction de la survie des jeunes. En perturbant la faune, on affecte non seulement leur bien-être, mais aussi l'équilibre de l'écosystème dans son ensemble.</p>
            <p>En prenant conscience de ces impacts, nous pouvons adapter nos comportements pour mieux protéger les animaux et leurs habitats.</p>
        </div>
    </section>

    <section>
        <h2>Que faire si vous rencontrez un animal ?</h2>
        <div class="section-content">
            <p>Si vous rencontrez un animal en pleine nature, arrêtez-vous et observez à distance. Si l'animal s'approche, restez calme et immobile pour ne pas provoquer de réaction agressive. Ne laissez pas de nourriture ou de déchets derrière vous, car cela peut attirer des animaux et perturber leur environnement.</p>
        </div>
    </section>

    <section>
        <h2>Pour aller plus loin</h2>
        <div class="section-content">
            <p>Pour des conseils plus détaillés sur les interactions responsables avec la faune, consultez les ressources officielles de <strong>Leave No Trace</strong>.</p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/respect-wildlife/", textUnderline = "Consultez les", text = "ressources officielles", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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
        margin-bottom : 60px;
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
