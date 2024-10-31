@param com.milan.lnt.Question question
@param int points

<form
        x-init="setTimeout(() => {
                    document.getElementById('answerContainer').scrollIntoView({ behavior: 'smooth' });
                }, 300);"
        x-transition
        class="answerContainer"
        id="answerContainer"
        hx-get="/game/next-question"
        hx-target="#root"
        hx-swap="innerHTML">
    <!-- Champs cachés pour envoyer les données -->
    <input type="hidden" name="questionId" value="${question.index()}">
    <input type="hidden" name="points" value="${points}">

    <p class="answerTitle">Réponse</p>
    <div class="textContainer">
        <p class="bigText">${question.answer()}</p>
    </div>
    <button
            type="submit"
            class="main-button-small main-button">
        ${question.index() == 10 ? "Terminer" : "Question suivante"}
    </button>
</form>