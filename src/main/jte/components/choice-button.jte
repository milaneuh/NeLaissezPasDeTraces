@param com.milan.lnt.beans.ButtonTypeEnum type
@param String path
@param String title
@param String description

<button hx-get="${path}" hx-push-url="true" hx-trigger="click" hx-target="#root"   hx-swap="innerHTML" class="container-choice ${type.toString()}">
    <span class="title-choice"><slot name="title">${title}</slot></span>
    <slot class="description-choice" name="description">${description}</slot>
    <img class="deco-choicebtn" src="/images/deco-choicebutton.svg" alt="Décoration du bouton" />
</button>
