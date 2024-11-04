<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<section class="content">
    <h1><span class="green-bg">Ressources</span></h1>
    <div>
        <h2>Les 7 principes "Ne laissez pas de traces"</h2>
        @template.components.outside-link(path = "https://lnt.org/", textUnderline = "Visitez le site ", text = "de l'asociation", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
    </div>
    <div hx-boost="true" class="ressources">
        <a class="sujet" href="/plan-ahead">
            <img class="img-ressource" src="/images/illu-plan-ahead.svg"
                 alt="Illustrationg d'une personne qui prépare un projet"/>
            <div class="contenu">
                <h2>Planifiez à l'avance et préparez-vous</h2>
                <p class="ressourcesText">Planifier à l'avance permet de profiter du voyage en toute sécurité tout en
                    minimisant l'impact sur
                    la nature. Une mauvaise planification peut nuire à l'expérience et à l'environnement.</p>
                @template.components.link(path = "/plan-ahead", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet" href="/travel-durable-surface">
            <img class="img-ressource" src="/images/illu-walk-durable.svg"
                 alt="Illustrationg d'une personne qui marche sur un sentier"/>
            <div class="contenu">
                <h2>Voyager et camper sur des surfaces durables</h2>
                <p class="ressourcesText">Voyager de manière responsable et camper sur
                    des surfaces durables permet de minimiser l'impact humain et de préserver la nature.</p>
                @template.components.link(path = "/travel-durable-surface", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet" href="/remove-trash">
            <img class="img-ressource" src="/images/remove-trash.svg"
                 alt="Illustrationg de deux personnes rangeant des déchets"/>
            <div class="contenu">
                <h2>Éliminez les déchets de manière appropriée</h2>
                <p class="ressourcesText">Éliminer correctement ses déchets en plein air est essentiel pour minimiser l'impact sur les autres, l'eau et la faune.</p>
                @template.components.link(path = "/remove-trash", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet" href="/leave-elements">
            <img class="img-ressource" src="/images/leave-elements.svg"
                 alt="Illustrationg d'une photo polaroid d'un paysage"/>
            <div class="contenu">
                <h2>Laissez ce que vous trouvez</h2>
                <p class="ressourcesText">Les éléments trouvés dans la nature ont un rôle dans l'écosystème ou
                    l'histoire du paysage.</p>
                @template.components.link(path = "/leave-elements", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet">
            <img class="img-ressource" src="/images/campfire.svg"
                 alt="Illustrationg d'un feu de camp"/>
            <div class="contenu">
                <h2>Minimisez l'impact des feux de camp</h2>
                <p class="ressourcesText">Les feux de camp peuvent causer des dommages durables à l'environnement.
                    Privilégiez des alternatives comme les réchauds portables ou utilisez des emplacements de feu
                    existants pour minimiser l'impact.</p>
                @template.components.link(path = "/minimiser-impact-feu", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet">
            <img class="img-ressource" src="/images/respecter-faune.svg"
                 alt="Illustrationg d'une femme dans la nature observant les oiseaux"/>
            <div class="contenu">
                <h2>Respectez la faune</h2>
                <p class="ressourcesText">Observez la faune de loin pour éviter de la déranger. Ne nourrissez jamais les
                    animaux, car cela peut nuire à leur santé et perturber leur comportement naturel.</p>
                @template.components.link(path = "/respecter-faune", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>

        <a class="sujet">
            <img class="img-ressource" src="/images/considerate-other.svg"
                 alt="Illustrationg de plusieurs personnes marchants en nature"/>
            <div class="contenu">
                <h2>Soyez prévenant envers les autres</h2>
                <p class="ressourcesText">Respectez les autres visiteurs en minimisant le bruit et en laissant de la
                    place pour qu'ils puissent profiter de la nature. Soyez courtois pour que chacun ait une expérience
                    agréable.</p>
                @template.components.link(path = "/considerate-others", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </a>
    </div>


</section>
<style>
    .content {
    max-width: 90vw;
    margin: auto;
    margin-top: 80px;
    display: flex;
    flex-direction: column;
    gap: 40px;
    text-align: center;
}

.ressources {
    display: flex;
    flex-wrap: wrap;
    margin-top: 64px;
    gap: 50px; /* espace entre les cartes */
    justify-content: center;
    margin-bottom:50px
}

.sujet {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    flex: 1 1 300px; /* Largeur de base de 300px avec wrap automatique */
    max-width: 400px; /* Limite de largeur pour chaque carte */
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    background-color: #fff;
    cursor: pointer;
    transition: transform 0.3s ease;
    margin-bottom: 20px; /* espace entre les cartes en mode bureau */
}

.sujet:hover {
    transform: scale(1.05);
}

.img-ressource {

    width: auto;
    height: 100%;
    height: 200px;
}

.contenu {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 10px;
}

.ressourcesText {
    margin: 8px 0 24px 0;
    font-weight: 200;
    font-style: italic;
    font-size: 16px;
}

@media screen and (max-width: 800px) {
    .content {
        max-width: 90vw;
        margin-top: 60px;
        text-align: center;
        align-items: center;
        justify-content: center;
    }

    .ressources {
        gap: 20px;
    }

    .sujet {
        width: 100%; /* pleine largeur sur mobile */
        flex-direction: column;
        padding: 15px;
        margin-bottom: 20px; /* espace entre les cartes en mode mobile */
    }

    .img-ressource {
        max-width: 150px; /* taille réduite pour mobile */
    }
}

</style>