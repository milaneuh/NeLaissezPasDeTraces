@param com.milan.lnt.Question question
@param boolean presentationMode
@param int points
@param int answerId = 0

<script>
    function selectOption(element, answer) {
        document.querySelectorAll('.card').forEach(option => option.classList.remove('selected'));
        element.classList.add('selected');
        document.getElementById("selectedAnswer").value = answer;
        document.getElementById("validateButton").disabled = false;
    }
</script>

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

