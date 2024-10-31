
    <nav x-data="{ mobileMenuIsOpen: false }" id="endContainer" class="flex-header"  x-init="setTimeout(() => {
                    document.getElementById('endContainer').scrollIntoView({ behavior: 'smooth' });
                }, 300);">
        <a class="nav-style" hx-get="/" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">
        <img src="/images/logo.svg" alt="logo ne laissez pas de trace" @click="mobileMenuIsOpen = !mobileMenuIsOpen"/>
        </a>

            <!-- Desktop Menu -->
           <ul   class="menu" :class="mobileMenuIsOpen ? '' : 'open'" >
               <li><a class="nav-style underline" @click="mobileMenuIsOpen = !mobileMenuIsOpen" hx-get="/about" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">à propos</a></li>
               <hr class="display-mobile">
               <li><a class="nav-style underline" @click="mobileMenuIsOpen = !mobileMenuIsOpen" hx-get="/ressources" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">ressources</a></li>
               <hr class="display-mobile">
               <li><a class="nav-style underline" @click="mobileMenuIsOpen = !mobileMenuIsOpen" hx-get="/game" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">Le test</a></li>
               <hr class="display-mobile">
           </ul>

            <!-- Mobile Menu Button -->
            <button
                    @click="mobileMenuIsOpen = !mobileMenuIsOpen"
                    type="button"
                    class="mobile"
                  >
                <span class="nav-style">menu</span>
                <img x-cloak x-show="!mobileMenuIsOpen"  src="/images/arrow-down.svg" alt="Flèche pointant vers le bas" />
                <img x-cloak x-show="mobileMenuIsOpen"  src="/images/arrow-up.svg" alt="Flèche pointant vers le haut" />
            </button>

       </nav>
    </nav>
    <hr class="ligne">
