package com.milan.lnt;

import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Controller
class LntController {
    private final QuestionsRepository questionsRepository;

    LntController(QuestionsRepository questionsRepository) {
        this.questionsRepository = questionsRepository;
    }

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "pages/about";
    }

    @GetMapping("/ressources")
    public String ressources() {
        return "pages/ressources";
    }

    @GetMapping("/game")
    public String game() {
        return "pages/game";
    }

    @GetMapping("/game/start")
    public String startGame(@RequestParam(required = false, defaultValue = "false") boolean presentationMode, Model model) {
        model.addAttribute("question",questionsRepository.getQuestionById(1));
        model.addAttribute("presentationMode", presentationMode);
        model.addAttribute("points", 0);
        return "pages/quiz";
    }

    @GetMapping("/game/next-question")
    public String nextQuestion(@RequestParam(required = false, defaultValue = "false") boolean presentationMode,@RequestParam int questionId, @RequestParam int points, Model model) {
        model.addAttribute("presentationMode", presentationMode);
        model.addAttribute("points", points);
        if(questionId == 10){
            return "pages/results";
        }else {
            model.addAttribute("question",questionsRepository.getQuestionById(questionId + 1));
            return "pages/quiz";
        }
    }

    @PostMapping("/game/publish-answer")
    public String publishAnswer(@RequestParam(required = false, defaultValue = "false") boolean presentationMode,@RequestParam int questionId, @RequestParam int answerId, @RequestParam int points, Model model) {
        //Gestion des points
        Question question = questionsRepository.getQuestionById(questionId);
        var choice = question.choices().stream().filter(c ->  c.index() == answerId).findFirst().orElseThrow();

        if(choice.isGoodAnswer()) {
            points += 10;
        }

        model.addAttribute("points", points);
        model.addAttribute("question",question);

        return "components/quiz-answer";

    }

    @GetMapping("/plan-ahead")
    public String planAhead(){
        return "pages/ressources/plan-ahead";
    }

}

@Repository
class QuestionsRepository {
    private final List<Question> questions = new ArrayList<>();

    public QuestionsRepository() {}

    public List<Question> getQuestions() {
        return questions;
    }

    public Question getQuestionById(int id) {
        return questions.stream().filter(question -> question.index() == id).findFirst().orElse(null);
    }

    @PostConstruct
    private void init() {
        questions.addAll(List.of(
                new Question(
                        1,
                        "Vous campez en pleine nature et avez besoin de vous laver. Quelle est la meilleure façon de le faire sans nuire à l'environnement ?",
                        List.of(
                                new Choice(1, "Utiliser du savon biodégradable directement dans une rivière.", false),
                                new Choice(2, "S'éloigner des sources d'eau d'au moins 60 mètres et utiliser un récipient pour se laver.", true),
                                new Choice(3, "Utiliser n'importe quel savon à proximité d'un cours d'eau.", false)

                        ),
                        "Même les savons biodégradables peuvent être nuisibles pour les écosystèmes aquatiques. Il est important de s'éloigner des sources d'eau d'au moins 60 mètres et de se laver avec un récipient pour éviter la contamination des cours d'eau."
                ),
                new Question(
                        2,
                        "Vous traversez une zone fragile avec une végétation rare. Quelle est la meilleure attitude à adopter ?",
                        List.of(
                                new Choice(1, "Marcher directement sur les plantes pour gagner du temps.", false),
                                new Choice(2, "Créer un nouveau chemin pour éviter de déranger les autres randonneurs.", false),
                                new Choice(3, "Suivre les sentiers balisés ou marcher sur des surfaces dures comme les rochers.", true)
                        ),
                        "Suivre les sentiers balisés ou marcher sur des surfaces dures aide à protéger la végétation fragile en évitant de la piétiner. La création de nouveaux chemins contribue à la destruction des habitats naturels."
                ),
                new Question(
                        3,
                        "Vous souhaitez installer un campement pour la nuit en pleine nature. Quel est le meilleur endroit pour minimiser votre impact ?",
                        List.of(
                                new Choice(1, "Choisir un site déjà impacté, comme un espace où la végétation est absente.", true),
                                new Choice(2, "Installer la tente près d'une source d'eau pour avoir un accès facile.", false),
                                new Choice(3, "Créer un nouvel emplacement en dégageant la végétation.", true)
                        ),
                        "Utiliser un site déjà impacté permet de minimiser l'empreinte écologique de votre campement. Il est essentiel de ne pas perturber davantage la végétation et de rester à au moins 60 mètres des sources d'eau pour protéger les habitats aquatiques."
                ),
                new Question(
                        4,
                        "Vous avez préparé un repas en pleine nature et il reste de l'huile de cuisson. Comment devez-vous la gérer ?",
                        List.of(
                                new Choice(1, " La verser sur le sol, car elle est biodégradable.", false),
                                new Choice(2, "La collecter dans un récipient et la ramener chez vous.", true),
                                new Choice(3, "La disperser loin du camp pour éviter d'attirer les animaux.", false)
                        ),
                        "L'huile de cuisson peut attirer les animaux et contaminer le sol. Il est important de la collecter et de la ramener chez soi pour une élimination appropriée afin de minimiser son impact sur l'environnement."
                ),
                new Question(
                        5,
                        "En chemin, vous trouvez un arbre tombé qui bloque le sentier. Quelle est la meilleure action à entreprendre ?",
                        List.of(
                                new Choice(1, "Contourner l'arbre en marchant sur la végétation environnante.", false),
                                new Choice(2, "Faire demi-tour et chercher un autre chemin.", false),
                                new Choice(3, "Signaler l'arbre tombé aux autorités compétentes si possible et passer par-dessus en limitant l'impact sur les alentours.", true)
                        ),
                        "Signaler l'obstacle aux autorités compétentes est idéal pour qu'ils puissent gérer la situation. En attendant, il est préférable de passer par-dessus l'arbre en minimisant l'impact sur la végétation environnante."
                ),
                new Question(
                        6,
                        "Vous traversez une zone où vivent de nombreux oiseaux en période de nidification. Quelle est la meilleure façon de les respecter ?",
                        List.of(
                                new Choice(1, "Approcher doucement les nids pour observer les oiseaux de plus près.", false),
                                new Choice(2, "Rester à distance et éviter de faire du bruit pour ne pas les perturber.", true),
                                new Choice(3, "Marquer les emplacements des nids pour que les autres randonneurs puissent les voir.", false)
                        ),
                        " La période de nidification est très sensible pour les oiseaux. Les approcher ou faire du bruit peut provoquer du stress et mettre en danger leur reproduction. Il est essentiel de garder ses distances et de rester silencieux pour ne pas perturber leur habitat."
                ),
                new Question(
                        7,
                        "Vous voyez un groupe de randonneurs qui nourrissent des animaux sauvages. Que devez-vous faire ?",
                        List.of(
                                new Choice(1, "Les rejoindre et nourrir les animaux avec eux.", false),
                                new Choice(2, "Ignorer la situation et continuer votre chemin.", false),
                                new Choice(3, "Leur expliquer calmement pourquoi il est dangereux de nourrir les animaux sauvages.", true)
                        ),
                        "Nourrir les animaux sauvages peut les rendre dépendants des humains, altérer leur régime alimentaire naturel et les exposer à des dangers. En expliquant calmement les raisons pour lesquelles il ne faut pas nourrir la faune, vous contribuez à l'éducation des autres et à la protection des animaux."
                ),
                new Question(
                        8,
                        "Que faire si vous trouvez des objets ou des pierres intéressants en randonnée ?",
                        List.of(
                                new Choice(1, "Les ramener pour garder un souvenir.", false),
                                new Choice(2, "Les laisser sur place pour préserver l'environnement.", true),
                                new Choice(3, "Les empiler pour marquer son passage.", false)
                        ),
                        "Chaque élément joue un rôle dans l'écosystème. En emportant des objets, vous déséquilibrez l'environnement et privez d'autres personnes de la joie de les découvrir."
                ),
                new Question(
                        9,
                        "Pourquoi est-il important de planifier et de préparer sa sortie en nature ?",
                        List.of(
                                new Choice(1, "Pour éviter toute situation imprévue qui pourrait mettre en danger la sécurité ou l'environnement.", true),
                                new Choice(2, "Pour impressionner les autres randonneurs avec votre équipement.", false),
                                new Choice(3, "Pour avoir une excuse pour acheter du matériel de randonnée.", false)
                        ),
                        "La planification est essentielle pour assurer la sécurité et minimiser l'impact sur l'environnement. En connaissant les réglementations locales, les conditions météorologiques et les particularités des lieux, vous pouvez éviter les risques et respecter au mieux les principes \"Leave No Trace\"."
                ),
                new Question(
                        10,
                        "Pourquoi est-il important de respecter les panneaux et les interdictions dans les espaces naturels ?",
                        List.of(
                                new Choice(1, "Parce que cela permet de protéger la nature et les visiteurs.", true),
                                new Choice(2, "Parce que c'est seulement une formalité.", false),
                                new Choice(3, "Parce que cela donne une bonne image aux autres.", false)
                        ),
                        "Les panneaux signalent des dangers, des zones sensibles ou des règles à respecter pour préserver l'environnement. En les ignorant, vous mettez en danger la nature et les autres visiteurs."
                )
        ));
    }

}

