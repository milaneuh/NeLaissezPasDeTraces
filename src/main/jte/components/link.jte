@param String path
@param String textUnderline
@param String text
@param com.milan.lnt.beans.LinkTypeEnum linkType

<a hx-boost="true" href="${path}" h class="link containerLink ${linkType}">
    <div class="containerLinkText">
        <div>
            <p>${textUnderline}</p>
            <div class="underlineLink"></div>
        </div>
        <div>
            <p class="text">${text}</p>
            <div class="underlineHoverLink"></div>
        </div>
    </div>
    <img src="/images/arrow-right.svg" alt="" />
</a>

<style>
    .containerLink {
     display: inline-flex;
     align-items: center;
     gap: 8px;
     cursor: pointer;
 }

 .containerLink.left img {
     transform: rotate(180deg); /* Inverse la direction de l'image */
 }

 .containerLink.left {
     flex-direction: row-reverse;
 }

 .containerLinkText {
     display: flex;
 }

 .text {
     padding-left: 5px;
 }

 .link {
     text-decoration: none;
 }

 .underlineLink {
     height: 3px;
     background-color: var(--green);
     width: 100%;
 }

 .underlineHoverLink {
     height: 3px;
     background-color: var(--green);
     width: 0;
     transition: width 0.3s;
 }

 .containerLink:hover .underlineHoverLink {
     width: 100%;
 }

 /* Animation de l'icône avec une marge conditionnelle */
 .containerLink img {
     transition: margin 0.3s;
 }

 .containerLink:not(.left):hover img {
     margin-left: 5px;
 }

 .containerLink.left:hover img {
     margin-right: 5px;
     margin-left: 0; /* Annule la marge gauche pour .left */
 }

</style>