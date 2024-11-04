<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<div class="nav-ressource">
    @template.components.link(path = "/considerate-others", textUnderline = "Soyez prévenant", text = "envers les autres", linkType = com.milan.lnt.beans.LinkTypeEnum.left)
    @template.components.link(path = "/remove-trash", textUnderline = "Éliminez les déchets", text = "de manière appropriée", linkType = com.milan.lnt.beans.LinkTypeEnum.right)
</div>

<section class="top-home-page">
    <div class="left-part">
        <h1>Planifiez à l'avance et <span class="green-bg">préparez-vous</span></h1>
        <p class="subtitle">
            Planifier à l'avance permet de profiter du voyage en toute sécurité tout en
            minimisant l'impact sur
            la nature. Une mauvaise planification peut nuire à l'expérience et à l'environnement.
        </p>
    </div>
    <img class="img-home" src="/images/illu-plan-ahead.svg" alt=""/>
</section>

<section class="contenu">
    <section>
        <h2>Les principes de base</h2>
        <div class="section-content">
            <ul class="list">
                <li>
                    <h3>
                        Renseignez-vous sur les règlements, les dangers
                        et les conditions de la zone à visiter.
                    </h3>
                </li>
                <li>
                    <h3>
                        Emportez les vêtements adaptés, une carte, de
                        la nourriture, et de l'eau.
                    </h3>
                </li>
                <li>
                    <h3>
                        Ayez un plan d'urgence et informez
                        quelqu’un de votre itinéraire.
                    </h3>
                </li>
                <li>
                    <h3>
                        Choisissez des activités et itinéraires qui
                        réduisent votre empreinte écologique.
                    </h3>
                </li>
            </ul>
        </div>
    </section>

    <section>
        <h2>Exemples de mauvaise préparation</h2>
        <div class="section-content">
            <p>Un manque de planification peut entraîner plusieurs erreurs qui impactent l'environnement et la sécurité
                des
                individus. Par exemple, allumer des feux de camp dans des zones interdites augmente les risques
                d’incendie
                et peut endommager des habitats naturels sensibles. Camper dans des endroits non désignés est une autre
                conséquence fréquente, qui peut altérer durablement la végétation et déranger la faune locale.</p>

            <p>En outre, ne pas prévoir assez de nourriture ou d'eau peut conduire à des situations d'urgence, obligeant
                les
                équipes de secours à intervenir et augmentant la pression sur les ressources locales. Ces erreurs,
                souvent
                évitables par une bonne préparation, montrent à quel point il est essentiel de bien planifier pour
                respecter
                la nature et éviter des situations risquées.</p>
        </div>
    </section>

    <section>
        <h2>Conseils pratiques pour une planification efficace</h2>
        <div class="section-content">
            <ul class="list">
                <li>
                    <h3>
                        Avant de partir, informez-vous sur les règles locales et
                        les particularités de la zone.
                    </h3>
                </li>
                <li>
                    <h3>
                        Préparez-vous aux conditions extrêmes pour éviter les imprévus et
                        assurer votre sécurité.
                    </h3>
                </li>
                <li>
                    <h3>
                        Planifiez pour éviter les périodes de forte affluence et
                        contribuer à la tranquillité de la nature.
                    </h3>
                </li>
                <li>
                    <h3>
                        Cela réduit l'impact environnemental. Divisez les groupes
                        plus importants en plusieurs sous-groupes.
                    </h3>
                </li>
                <li><h3>
                        Évitez d’utiliser des marques permanentes (cairns,
                        rubans, peinture) pour limiter votre empreinte.
                    </h3>
                </li>
            </ul>
        </div>
    </section>


    <section>
        <h2>Pour aller plus loin</h2>
        <div class="section-content">
            <p>Pour plus d'informations sur la planification de vos sorties en respectant les principes <strong>Ne
                    Laissez
                    Pas de Traces</strong> :
            </p>
        </div>
    </section>
    @template.components.outside-link(path = "https://lnt.org/why/7-principles/plan-ahead-and-prepare/", textUnderline = "Consultez les ressources", text = "officielles de Leave No Trace", linkType = com.milan.lnt.beans.LinkTypeEnum.right)

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