@param int points

<link rel="stylesheet" href="/css/index.css" content="text/css">
<header>
    @template.components.navbar()
</header>

<div class="container"  x-init="window.scrollTo(0,0);">
    <h3><span>${points}</span>/100</h3>
    <h1>Vous avez terminé !</h1>
    <div class="textContainer">
        @if(points <= 20)
            <p class="bigText">Ouch ! J’espère que tu as pu en apprendre un peu plus sur l’alcool. N’abandonne pas, tu peux toujours réessayer !</p>
            @elseif(points > 20 && points <= 50)
                <p class="bigText">C’est un bon début ! Tu peux réessayer pour améliorer ton score, montre nous ce que tu as retenu !</p>
            @elseif(points > 50 && points <= 70)
                <p class="bigText">Pas mal du tout ! Tu peux aller dans les ressources si tu veux d’autres informations complémentaires.</p>
            @else
                 <p class="bigText">Bravo, tu es plutôt calé(e) sur le sujet ! N’hésite pas à checker les ressources pour en savoir encore plus !</p>
        @endif
    </div>
    <div class="linkContainer">
        @template.components.link(path = "/ressources", textUnderline = "Accéder", text = "aux ressources" , linkType = com.milan.lnt.beans.LinkTypeEnum.right)
        @template.components.link(path = "/game", textUnderline = "Refaire", text = "le test" , linkType = com.milan.lnt.beans.LinkTypeEnum.right)
    </div>
</div>

<style>
    h1{
        color: var(--black)
    }
    .container{
        display: flex;
        flex: 1;
        text-align: center;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 50px;
        margin-top: 100px;
    }
    .linkContainer{
        margin-top: 100px;
        display: flex;
        flex-direction: column;
        gap: 20px
    }
    .textContainer{
        max-width: 60%;
    }
</style>