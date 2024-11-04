@template.components.header()
<link rel="stylesheet" href="/css/index.css" content="text/css">

<section class="content">
    <h1 id="title">Teste tes <span class="green-bg">connaissances</span></h1>
    <p class="intro-jeu">Tu veux évaluer ta culture sur le thème de l'éthique en milieu naturel ? Démarre le jeu et
        remporte le plus de points !</p>
    <ul class="instruction">
        <li><span class="ligne-instruction">1. Tu démarres avec 0 point.</span></li>
        <li>
            <span class="ligne-instruction">2. À chaque question, tu gagnes 10 points pour chaque bonnes réponses.</span>
        </li>
        <li><span class="ligne-instruction">3. Aie le plus haut score possible à la fin des dix questions !</span></li>
    </ul>

    <button
            hx-get="/game/start" hx-push-url="true" hx-trigger="click" hx-target="body"
            class="main-button-small main-button validateButton"
            id="validateButton">
        Lancer le jeu
    </button>

</section>
<style>
    .content{
        display: flex;
        flex-direction: column;
        margin: 100px 20px;
        gap: 50px;
        justify-content: center;
        align-items: center;
        font-family: 'DM Sans', sans-serif;
    }

    .intro-jeu{
        text-align: center;
        line-height: 100%;
        font-weight: 600;
        font-size: clamp(16px, 3vw, 28px);
        max-width: 500px;
        line-height: 1.5;
    }

    .instruction li{
        display: flex;
        flex-direction: row;
        align-items: center;
        font-size: clamp(12px, 3vw, 18px);
        gap: 15px;
        margin: 25px 0;
        font-family: 'DM Sans', sans-serif;
    }

    .ligne-instruction{
        max-width: clamp(200px, 50vw, 650px);
    }


</style>