<link rel="stylesheet" href="/css/index.css" content="text/css">
<header>
    @template.components.navbar()
</header>

<section class="ressources-container" x-init="window.scrollTo(0,0);">
    <h1 id="ressources"><span class="green-bg">Ressources</span></h1>
    <div>
        <h2>Les 7 principes "Ne laissez pas de traces"</h2>
        @template.components.outside-link(path = "https://lnt.org/", textUnderline = "Pour plus d'informations", text = "visitez le site officiel de l'asociation", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
    </div>
    <div class="resources">

        <div class="resource-card">
            <img class="img-ressource" src="/images/illu-plan-ahead.svg"
                 alt="Illustrationg d'une personne qui prépare un projet"/>
            <div class="contenuRessource">
                <h2>Planifiez à l'avance et préparez-vous</h2>
                <p class="ressourcesText">Planifier à l'avance permet de profiter du voyage en toute sécurité tout en
                    minimisant l'impact sur
                    la nature. Une mauvaise planification peut nuire à l'expérience et à l'environnement.</p>
                @template.components.link(path = "/plan-ahead", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/illu-walk-durable.svg"
                 alt="Illustrationg d'une personne qui marche sur un sentier"/>
            <div class="contenuRessource">
                <h2>Voyager et camper sur des surfaces durables</h2>
                <p class="ressourcesText">L'objectif du voyage en plein air est de traverser des espaces naturels sans
                    endommager le sol, la végétation ou les cours d'eau. Voyager de manière responsable et camper sur
                    des surfaces durables permet de minimiser l'impact humain et de préserver la nature.</p>
                @template.components.link(path = "/voyager-camper-durable", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/remove-trash.svg"
                 alt="Illustrationg de deux personnes rangeant des déchets"/>
            <div class="contenuRessource">
                <h2>Éliminez les déchets de manière appropriée</h2>
                <p class="ressourcesText">Éliminer correctement ses déchets en plein air est essentiel pour minimiser
                    l'impact sur les autres, l'eau et la faune.</p>
                @template.components.link(path = "/eliminer-dechets-maniere-appropriee", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/leave-elements.svg"
                 alt="Illustrationg d'une photo polaroid d'un paysage"/>
            <div class="contenuRessource">
                <h2>Laissez ce que vous trouvez</h2>
                <p class="ressourcesText">Les éléments trouvés dans la nature ont un rôle dans l'écosystème ou
                    l'histoire du paysage. Laissez-les sur place pour préserver la nature et permettre aux autres de
                    faire leurs propres découvertes.</p>
                @template.components.link(path = "/laisser-elements-sur-place", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/campfire.svg"
                 alt="Illustrationg d'un feu de camp"/>
            <div class="contenuRessource">
                <h2>Minimisez l'impact des feux de camp</h2>
                <p class="ressourcesText">Les feux de camp peuvent causer des dommages durables à l'environnement.
                    Privilégiez des alternatives comme les réchauds portables ou utilisez des emplacements de feu
                    existants pour minimiser l'impact.</p>
                @template.components.link(path = "/minimiser-impact-feu", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/respecter-faune.svg"
                 alt="Illustrationg d'une femme dans la nature observant les oiseaux"/>
            <div class="contenuRessource">
                <h2>Respectez la faune</h2>
                <p class="ressourcesText">Observez la faune de loin pour éviter de la déranger. Ne nourrissez jamais les animaux, car cela peut nuire à leur santé et perturber leur comportement naturel.</p>
                @template.components.link(path = "/respecter-faune", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>

        <div class="resource-card">
            <img class="img-ressource" src="/images/considerate-other.svg"
                 alt="Illustrationg de plusieurs personnes marchants en nature"/>
            <div class="contenuRessource">
                <h2>Soyez prévenant envers les autres</h2>
                <p class="ressourcesText">Respectez les autres visiteurs en minimisant le bruit et en laissant de la place pour qu'ils puissent profiter de la nature. Soyez courtois pour que chacun ait une expérience agréable.</p>
                @template.components.link(path = "/respecter-autres-visiteurs", textUnderline = "En savoir plus", text = "sur le sujet", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
            </div>
        </div>
    </div>

</section>
<style>
    .ressources-container {
		max-width: 60vw;
        margin: auto;
        margin-top: 80px;
        display: flex;
        flex-direction: column;
        gap: 40px;
	}
    .resources {
      display: flex;
		flex-wrap: wrap;
		margin-top: 64px;
		gap: 50px;
		margin-bottom:50px
    }
    .resource-card {
        display: flex;
        gap: 30px;
        align-items: center;
        width: 500px;
        cursor: pointer;
    }
    .resource-card .img-ressource {
        width: 100%;
        height: auto;
        max-width: 100px;
    }
    .contenuRessource {
		display: flex;
		flex-direction: column;
	}

	 .contenuRessource .ressourcesText {
		margin: 8px 0 24px 0;
		font-weight: 200;
		font-style: italic;
		font-size: 16px;
	}

    @media screen and (min-width: 0px) and (max-width: 800px) {
		.ressources-container {
			width: 80vw;
			margin-top: 60px;
      text-align: center;
      align-items: center;
      justify-content: center;
		}
		.ressources {
			justify-content: center;
			align-items: center;
			margin-top: 64px;
			gap: 50px;
		}

		.resource-card {
			flex-direction: column;
			justify-content: center;
		}

		.resource-card .img-ressource  {
			width: clamp(200px, 20vw, 300px);
		}

	}
</style>