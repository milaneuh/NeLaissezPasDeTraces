@param String path
@param String textUnderline
@param String text
@param com.milan.lnt.beans.LinkTypeEnum linkType

<a href="${path}" class="link container ${linkType}">
    <div class="containerText">
        <div>
            <p>${textUnderline}</p>
            <div class="underline"></div>
        </div>
        <div>
            <p class="text">${text}</p>
            <div class="underlineHover"></div>
        </div>
    </div>
    <img src="/images/arrow-right.svg" alt="" />
</a>