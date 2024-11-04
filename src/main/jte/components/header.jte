<link rel="stylesheet" href="/css/index.css" content="text/css">

<header x-init="setTimeout(() => { window.scrollTo({top: 0})},20)">
    <nav x-data="{ mobileMenuIsOpen: false }" id="endContainer" class="flex-header" x-init="setTimeout(() => {
                    document.getElementById('endContainer').scrollIntoView({ behavior: 'smooth' });
                }, 300);">

        <a class="nav-style" hx-boost="true" href="/">
            <img src="/images/logo.svg" alt="Ne laissez pas de trace"/>
        </a>

        <!-- Desktop Menu -->
        <ul class="menu" hx-boost="true" :class="{ 'open': mobileMenuIsOpen }">
            <li><a class="nav-style underline" @click="mobileMenuIsOpen = false" href="/about">à propos</a></li>
            <hr class="display-mobile">
            <li><a class="nav-style underline" @click="mobileMenuIsOpen = false" href="/ressources">ressources</a></li>
            <hr class="display-mobile">
            <li><a class="nav-style underline" @click="mobileMenuIsOpen = false" href="/game">Le test</a></li>
            <hr class="display-mobile">
        </ul>

        <!-- Mobile Menu Button -->
        <button
                @click="mobileMenuIsOpen = !mobileMenuIsOpen"
                type="button"
                class="mobile"
        >
            <span class="nav-style">menu</span>
            <img x-cloak x-show="!mobileMenuIsOpen" src="/images/arrow-down.svg" alt="Flèche pointant vers le bas"/>
            <img x-cloak x-show="mobileMenuIsOpen" src="/images/arrow-up.svg" alt="Flèche pointant vers le haut"/>
        </button>

    </nav>
    <hr class="ligne">
</header>
<style>
    a {
        text-decoration: none; /* no underline */
    }
     header{
         position: fixed;
         top:0;
         width: 100%;
         z-index: 999;
    }
     .display-mobile{
         display: none;
    }
     .flex-header {
         background-color: var(--white);
         display: flex;
         justify-content: space-between;
         align-items: center;
         padding: 20px 5vw;
    }
     .menu{
         display: flex;
         gap: 24px;
         align-items: center;
    }
     .ligne {
         width: 90%;
         border: 1px solid var(--black);
         margin: 0 auto 0 auto;
    }
     .nav-style {
         background: none;
         border: none;
         line-height: 100%;
         font-family: 'DM Sans', sans-serif;
         font-weight: 500;
         color: var(--black);
         font-size: 16px;
         text-transform: uppercase;
         position: relative;
         cursor: pointer;
    }
     .underline::after {
         content: '';
         position: absolute;
         left: 0;
         bottom: -8px;
         width: 100%;
         height: 3px;
         transition: background-color 0.3s ease;
    }
     .underline:hover::after {
         background-color: var(--yellow);
    }
     .mobile {
         display: none;
    }
     @media screen and (max-width: 1000px) {
         .menu {
             padding-left: 0;
             display: flex;
             flex-direction: column;
             gap: 24px;
             align-items: center;
             position: fixed;
             top: -100%;
            /* Positionnez le menu sous le header par défaut */
             left: 0;
             width: 100%;
             background-color: var(--white);
             transition: top 0.5s ease;
             z-index: -1;
             height: 100%;
             padding-top: 32px;
        }
         .menu.open {
             top: 40px;
             z-index: -1;
        }
         .underline::after {
             display: none;
        }
         .mobile {
             display: flex;
             align-items: center;
             gap: 6px;
             background: none;
             border: none;
             font-family: 'DM-Sans', sans-serif;
             font-weight: 600;
             color: var(--black);
             font-size: 16px;
             text-transform: uppercase;
        }
         hr {
             width: 80%;
             border: 1px solid var(--black);
        }
         .display-mobile{
             display: block;
        }
    }
</style>
