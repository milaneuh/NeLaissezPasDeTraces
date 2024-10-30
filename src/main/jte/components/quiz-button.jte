@param boolean checked
@param boolean error
@param com.milan.lnt.Choice choice

    <label style="display: flex; align-items: center;">
        <input type="checkbox"  style="display: none;"/>
        <h2 class="choiceIndex">${choice.index()}.</h2>
        <p class="answer">${choice.text()}</p>
        @if(checked)
        <div class="checkmark">
            <svg
                    width="20"
                    height="17"
                    viewBox="0 0 20 17"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
            >
                <path
                        d="M7.00004 16.42L0.790039 10.21L3.62004 7.38L7.00004 10.77L16.88 0.880005L19.71 3.71L7.00004 16.42Z"
                        fill="#1A1A1A"
                />
            </svg>
        </div>
        @endif
    </label>
