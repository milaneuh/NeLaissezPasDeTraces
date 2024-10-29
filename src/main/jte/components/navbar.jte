
    <div class="flex-header">
        <button class="nav-style" hx-get="/" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">
        <img src="/images/logo.svg" alt="logo ne laissez pas de trace" />
        </button>
       <nav x-data="{ mobileMenuIsOpen: false }" >
            <!-- Desktop Menu -->
           <ul class="menu" :class="mobileMenuIsOpen ? '' : 'open'" >
               <li><button class="nav-style underline" hx-get="/about" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">à propos</button></li>
               <hr class="display-mobile">
               <li><button class="nav-style underline"  hx-get="/ressources" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">ressources</button></li>
               <hr class="display-mobile">
               <li><button class="nav-style underline"  hx-get="/game" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">Le test</button></li>
               <hr class="display-mobile">
               <li><button class="nav-style underline"  hx-get="/guideAtelier" hx-push-url="true" hx-trigger="click" hx-target="#root" hx-swap="innerHTML">organiser un atelier</button></li>
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
    </div>
    <hr class="ligne">
