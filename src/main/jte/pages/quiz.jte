@param com.milan.lnt.Question question
@param boolean presentationMode
@param int points
@param boolean showAnswer = false

<script>
    function selectOption(element, answer) {
        document.querySelectorAll('.card').forEach(option => option.classList.remove('selected'));
        element.classList.add('selected');
        document.getElementById("selectedAnswer").value = answer;
        document.getElementById("validateButton").disabled = false;
    }
</script>

<div class="quizContainer" x-data="{ selectedAnswer: null, showAnswer: false }" x-init="
    $watch('showAnswer', value => {
        if (value) {
            setTimeout(() => {
                document.getElementById('answerContainer').scrollIntoView({ behavior: 'smooth' });
            }, 300);
        }
    });
">
    <h3>Question ${question.index()} / 10</h3>
    <h2 class="quizTitle">${question.question()}</h2>
    <form hx-post="/quiz/answer" hx-target=".quiz-container" class="choicesContainer">
        <input type="hidden" name="selectedAnswer" x-bind:value="selectedAnswer">

        @for(com.milan.lnt.Choice choice : question.choices())
            <div
                    class="card"
                    :class="{ 'selected': selectedAnswer === ${""+choice.index()} }"
                    @click="selectedAnswer = ${""+choice.index()}"
            >
                <label style="display: flex; align-items: center;">
                    <h2 class="choiceIndex">${choice.index()}.</h2>
                    <p class="answer">${choice.text()}</p>
                </label>
            </div>
        @endfor
    </form>

    <button
            type="submit"
            @click="showAnswer = true"
            class="main-button-small main-button validateButton"
            :disabled="selectedAnswer === null || showAnswer === true"
            id="validateButton">
        ${presentationMode ? "Voir la réponse" : "Valider"}
    </button>

    <div x-cloak x-show="showAnswer" x-transition class="answerContainer" id="answerContainer">
        <p class="answerTitle">Réponse</p>
        <div class="textContainer">
            <p class="bigText">${question.answer()}</p>
        </div>
        <button class="main-button-small main-button" type="button">
            ${question.index() == 10 ? "Terminer" : "Question suivante"}
        </button>
    </div>
</div>