<link rel="stylesheet" href="/css/index.css" content="text/css">

@template.components.header()

<section  class="contentAbout">
    <h1 id="a_propos">À <span class="green-bg">propos</span></h1>
    <div class="paragrapheAbout">
        <h2>Le but de ce site</h2>
        <p>
            J'ai conçu ce site pour initier les jeunes aux principes de Leave No Trace (Ne laissez pas de traces), en
            vulgarisant et rendant accessibles des pratiques essentielles pour respecter notre environnement. Je
            souhaite sensibiliser de manière interactive et ludique, en proposant des conseils pratiques et des
            activités de réflexion. En testant leurs connaissances, j'encourage les jeunes à adopter des gestes
            responsables dans la nature et à devenir des acteurs de sa préservation. Ne laissez pas de traces est bien
            plus qu'un slogan : c'est une invitation à se connecter avec la nature de manière durable et respectueuse.
        </p>
    </div>
    <div class="paragrapheAbout">
        <h2>Qui suis-je ?</h2>
        <p>
            Je m'appelle Milan Rougemont, j'ai 22 ans et je suis originaire de Toulouse. Actuellement en master
            d'architecture logicielle au CESI, j'ai eu l'opportunité de travailler au sein d'entreprises comme CGI, où
            j'ai développé un logiciel pour EDF, et Capgemini, où je participe aujourd'hui à un projet pour Dassault.

            Grand passionné de nature, j'aime explorer les Pyrénées, que ce soit à pied en randonnée minimaliste ou à
            vélo en bikepacking. Sensible aux questions environnementales, je suis convaincu que chacun de nous peut
            adopter des gestes pour préserver notre planète. Ce site est pour moi une façon de partager mes valeurs et
            d'encourager les jeunes à respecter et protéger la nature.
        </p>
    </div>
</section>
<style>

    .contentAbout {
        max-width: 60vw;
        margin: auto;
        margin-top: 80px;
        display: flex;
        flex-direction: column;
        gap: 40px;
    }
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
    .paragrapheAbout p {
        line-height: 140%;
    }

    .paragrapheAbout {
        display: flex;
        flex-direction: column;
        gap: 20px;
        max-width: 40vw;
    }

    @media screen and (max-width: 1000px) {
        .contentAbout{
            max-width: 70vw;
        }

        .paragrapheAbout {
            max-width: 80vw;
        }
    }

</style>