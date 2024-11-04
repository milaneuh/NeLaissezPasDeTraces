@param com.milan.lnt.Question question
@param boolean presentationMode
@param int points
@param int answerId = 0

<link rel="stylesheet" href="/css/index.css" content="text/css">

<script>
    function selectOption(element, answer) {
        document.querySelectorAll('.card').forEach(option => option.classList.remove('selected'));
        element.classList.add('selected');
        document.getElementById("selectedAnswer").value = answer;
        document.getElementById("validateButton").disabled = false;
    }
</script>

@template.components.header()

<div id="quizContainer" class="quizContainer"
     x-data="{ selectedAnswer: null, showAnswer: false }">

    <h3>Question ${question.index()} / 10</h3>
    <h2 class="quizTitle">${question.question()}</h2>

    <!-- Formulaire pour transmettre les données au back-end -->
    <form hx-post="/game/publish-answer"
          hx-target="#quizContainer"
          hx-swap="afterend"
          @submit.prevent="showAnswer = true">

        <!-- Champs cachés pour envoyer les données -->
        <input type="hidden" name="questionId" value="${question.index()}">
        <input type="hidden" name="answerId" x-bind:value="selectedAnswer">
        <input type="hidden" name="points" value="${points}">

        <section class="choicesContainer">
            @for(com.milan.lnt.Choice choice : question.choices())
                <button
                        type="button"
                        class="card"
                        :class="{
                        'selected': selectedAnswer === ${""+choice.index()} && !showAnswer,
                        'correct': showAnswer && ${choice.isGoodAnswer()} && selectedAnswer === ${""+choice.index()},
                        'incorrect': showAnswer && !${choice.isGoodAnswer()} && selectedAnswer === ${""+choice.index()}
                    }"
                        @click="selectedAnswer = ${"" + choice.index()};"
                        :disabled="showAnswer === true"
                >
                    <template x-cloak
                              x-show="showAnswer && ${choice.isGoodAnswer()} && selectedAnswer === ${""+choice.index()}">
                        <img class="icon-check" src="/images/check.svg" alt="Icon check succès"/>
                    </template>
                    <template x-cloak
                              x-show="showAnswer && !${choice.isGoodAnswer()} && selectedAnswer === ${""+choice.index()}">
                        <img class="icon-cross" src="/images/cross.svg" alt="Icon croix erreur"/>
                    </template>

                    <label style="display: flex; align-items: center;">
                        <h2 class="choiceIndex">${choice.index()}.</h2>
                        <p class="answer">${choice.text()}</p>
                    </label>
                </button>
            @endfor
        </section>

        <button
                type="submit"
                class="main-button-small main-button validateButton"
                :disabled="selectedAnswer === null || showAnswer === true"
                id="validateButton">
            ${presentationMode ? "Voir la réponse" : "Valider"}
        </button>
    </form>
</div>
<style>

    .quizContainer {
        display: flex;
        flex: 1;
        flex-direction: column;
        align-items: center;
        text-align: center;
        padding: 100px 100px 100px;
    }

    .choicesContainer {
        display: flex;
        gap: 10px;
    }

    .quizTitle{
        margin-top: 30px;
        max-width: 60vw;
        margin-bottom: 24px;
    }

    .pointQuiz{
        margin-bottom: 100px;
    }

    .quizContainer .main-button{
        margin-top: 72px;
    }

    .resteMise{
        margin-bottom: 16px;
    }

    .textContainer{
        max-width: 60%;
        line-height: 40px;
    }

    .answerTitle{
        font-family: "DM Sans", sans-serif;
        font-size: 24px;
        font-weight: 600;
    }

    .answerContainer{
        display: flex;
        align-items: center;
        gap: 50px;
        flex-direction: column;
        padding: 100px 0;
    }

    @media screen and (min-width: 0px) and (max-width: 1000px) {
        .quizContainer {
            margin-top: 60px;
        }
        .quizTitle{
            width: 85vw;
            margin-bottom: 32px
        }
        .pointQuiz{
            margin-bottom: 50px;
        }
        .choicesContainer {
            flex-direction: column;
            gap: 10px;
            width: 85vw;
        }
        .answerContainer{
            margin: 50px 0;
            width: 90vw;
        }
        .textContainer{
            max-width: 90vw;
        }
        .textContainer p {
            font-size: 16px;
        }
    }

    .card {
        border: 2px solid transparent; /* Pas de bordure par défaut */
        border-radius: 5px;
        background-color: #f3f1ed;
        cursor: pointer;
        transition: transform 0.3s ease, border-color 0.3s;
    }

    .card label {
        user-select: none;
        font-family: 'DM Sans', sans-serif;
        font-weight: 600;
        position: relative;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 28vw;
        height: 160px;
        font-size: 20px;
        color: var(--black);
        transition: background-color 0.3s ease;
        gap: 12px;
    }

    .card.selected {
        background-color: var(--green-clicked); /* Bordure verte pour la carte sélectionnée */
        transform: scale(1.02); /* Agrandissement léger pour effet de focus */
    }

    .card label.checked {
        background-color: var(--green);
        color: white;
    }

    .card:active {
        transform-origin: 12.5vw;
    }


    @media screen and (min-width: 0px) and (max-width: 1000px) {
        .card label {
            width: 100%;
        }
        .card:active {
            transform-origin: 50%;
        }
    }
    /* Styles pour la carte correcte et incorrecte */
    .correct {
        border: 2px solid var(--green);
        background-color: var(--green);
    }

    .incorrect {
        border: 2px solid #dc3545;
        background-color: #dc3545;
    }

    /* Icônes de validation et d'erreur */
    .icon-check, .icon-cross {
        position: absolute;
        top: 10px;
        left: 10px;
        width: 24px;
        height: 24px;
        fill: white;
    }
</style>