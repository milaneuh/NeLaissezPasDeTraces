@param com.milan.lnt.Question question
@param boolean presentationMode
@param int points
@param boolean showAnswer = false

<div class="quizContainer" id="container">
    <h3>Question ${question.index()} / 10</h3>
    <h2 class="quizTitle">${question.question()}</h2>

    @if(!presentationMode)
        <div class="choicesContainer">
            @for(com.milan.lnt.Choice choice : question.choices())
                <article class="card">
                    @template.components.quiz-button(checked = (showAnswer && choice.isGoodAnswer()), error = (showAnswer && !choice.isGoodAnswer()), choice = choice)
                </article>
            @endfor
        </div>
    @endif

    <!-- TODO Btn
    <MainButton
            onClick={() => {
    showAnswer = true;
    scrollToView()
    }}
    disabled={leftPointToBet > 0 && !isPresentation}
    >
    </MainButton> -->

    <button class="main-button-small main-button" type="button">
        ${presentationMode ? "Voir la réponse" : "Valider"}
    </button>


    @if(showAnswer)
        <div class="answerContainer" id="top">
            <p class="answerTitle">Réponse</p>
            <div class="textContainer">
                <p class="bigText">${question.answer()}</p>
            </div>
            <button class="main-button-small main-button" type="button">
                ${question.index() == 10 ? "Terminer" : "Question suivante"}
            </button>
        </div>
    @endif
</div>
