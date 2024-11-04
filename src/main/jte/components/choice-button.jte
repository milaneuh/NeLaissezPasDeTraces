@param com.milan.lnt.beans.ButtonTypeEnum type
@param String path
@param String title
@param String description

<button hx-get="${path}" hx-push-url="true" hx-trigger="click" hx-target="#root"   hx-swap="innerHTML" class="container-choice ${type.toString()}">
    <span class="title-choice"><slot name="title">${title}</slot></span>
    <slot class="description-choice" name="description">${description}</slot>
    <img class="deco-choicebtn" src="/images/deco-choicebutton.svg" alt="Décoration du bouton" />
</button>
<style>

    .deco-choicebtn {
        position: absolute;
        left: -15px;
        bottom: -15px;
        width: 150px;
        height: 150px;
    }

    @media screen and (max-width:800px) {
        .deco-choicebtn {
            width: 120px;
            height: 120px;
            left: -10px;
            bottom: -10px;
        }
    }

    .container-choice.main {
        background-color: var(--green);
    }

    .container-choice.main:hover {
        background-color: var(--green-hover);
    }

    .container-choice.main:active {
        background-color: var(--green-clicked);
    }

    .container-choice.secondary {
        background-color: var(--beige);
    }

    .container-choice.secondary:hover {
        background-color: var(--beige-hover);
    }

    .container-choice.secondary:active {
        background-color: var(--white);
    }

    .container-choice {
        position: relative;
        width: 100%;
        height: 150px;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        /* Ajustez l'alignement du texte selon vos besoins */
        text-decoration: none;
    }

    .title-choice {
        font-size: 20px;
        font-weight: 600;
        color: var(--black);
        margin-bottom: 8px;
    }

    .description-choice {
        font-size: 16px;
        font-weight: 400;
        color: var(--black);
    }

</style>