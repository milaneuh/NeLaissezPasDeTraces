@param String path
@param String textUnderline
@param String text
@param com.milan.lnt.beans.LinkTypeEnum linkType

<a  href="${path}"  class="link containerLink ${linkType}">
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