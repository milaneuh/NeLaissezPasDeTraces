@param String path
@param String textUnderline
@param String text
@param com.milan.lnt.beans.LinkTypeEnum linkType

<section  hx-get="${path}" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML scroll:top"  class="link containerLink ${linkType}">
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
</section>

<style>
    .containerLink.left img {
        transform: rotate(180deg);
    }

    .left {
        flex-direction: row-reverse;
    }

    .containerLink {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        cursor: pointer;
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
        transition: 0.3s;
    }

    .containerLink:hover .underlineHoverLink {
        width: 100%;
    }

    .containerLink img {
        margin-left: 0;
        transition: 0.3s;
    }

    .containerLink:hover img {
        margin-left: 5px;
    }
</style>