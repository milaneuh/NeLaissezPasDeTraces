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
            return "pages/final-quiz";
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
                        "Quand on se promène en forêt, que doit-on faire de ses déchets ?",
                        List.of(
                                new Choice(1, "Les enterrer.", false),
                                new Choice(2, "Les ramasser et les emporter avec soi.", true),
                                new Choice(3, "Les laisser sur place, car ils sont biodégradables.", false)

                        ),
                        " En emportant vos déchets, vous préservez la nature, protégez la faune et la flore, et donnez l'exemple aux autres. Chaque déchet, même petit, a un impact sur l'environnement."
                ),
                new Question(
                        2,
                        "Pour éviter l’érosion des sols, quelle est la meilleure pratique ?",
                        List.of(
                                new Choice(1, "Rester sur les sentiers balisés.", true),
                                new Choice(2, "Marcher à côté des sentiers pour éviter de les user.", false),
                                new Choice(3, "Créer de nouveaux chemins en fonction de la végétation.", false)
                        ),
                        "Rester sur les sentiers balisés permet de protéger la végétation fragile et de limiter l'érosion des sols."
                ),
                new Question(
                        3,
                        "Comment gérer les restes de nourriture lors d'une sortie en nature ?",
                        List.of(
                                new Choice(1, "Les disperser dans la forêt pour les animaux.", false),
                                new Choice(2, "Les brûler sur place.", false),
                                new Choice(3, "Les emporter avec soi dans un sac à déchets.", true)
                        ),
                        "Les restes de nourriture attirent les animaux et peuvent perturber l'écosystème. Il est important de les emporter dans un sac étanche pour éviter les mauvaises odeurs."
                ),
                new Question(
                        4,
                        "Quelle est la règle concernant les feux de camp ?",
                        List.of(
                                new Choice(1, "Faire un feu de camp uniquement si on ne laisse aucune trace de cendres.", false),
                                new Choice(2, "Éviter les feux de camp sauf en cas d'urgence..", true),
                                new Choice(3, "Faire un feu de camp dès que possible pour se réchauffer.", false)
                        ),
                        " Les feux de camp peuvent provoquer des incendies et laisser des traces durables dans l'environnement. Il est préférable d'utiliser un réchaud de camping."
                ),
                new Question(
                        5,
                        "Comment respecter la faune sauvage ?",
                        List.of(
                                new Choice(1, "Approcher les animaux pour les observer de plus près.", false),
                                new Choice(2, "Les observer de loin et éviter tout contact.", true),
                                new Choice(3, "Leur donner de la nourriture pour les apprivoiser.", false)
                        ),
                        "La faune sauvage est fragile et a besoin de calme pour vivre. En la dérangeant, vous pouvez la stresser et l'éloigner de son habitat naturel."
                ),
                new Question(
                        6,
                        "Si vous devez aller aux toilettes en pleine nature, que devriez-vous faire ?",
                        List.of(
                                new Choice(1, "Faire ses besoins près d'une rivière.", false),
                                new Choice(2, "Creuser un trou à au moins 60 mètres des sources d'eau. ", true),
                                new Choice(3, "Laisser les excréments au sol.", false)
                        ),
                        "Pour protéger les ressources en eau et éviter la propagation de maladies, il est essentiel de s'éloigner des sentiers et des cours d'eau, de creuser un trou d'au moins 15 cm de profondeur et d'enterrer soigneusement ses excréments."
                ),
                new Question(
                        7,
                        "Lors de la cueillette de plantes sauvages, quelle est la meilleure pratique ?",
                        List.of(
                                new Choice(1, " Récolter seulement les plantes qu'on connaît bien et en petite quantité.", true),
                                new Choice(2, "Prendre tout ce qui est comestible pour éviter le gaspillage.", false),
                                new Choice(3, "Utiliser les plantes pour décorer son camp.", false)
                        ),
                        "Certaines plantes sont protégées ou toxiques. Il est important de connaître les règles et de respecter la nature en ne prélevant qu'une petite quantité."
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
                        "Comment réduire son impact sonore en nature ?",
                        List.of(
                                new Choice(1, "Parler doucement et éviter les bruits inutiles.", true),
                                new Choice(2, "Utiliser des haut-parleurs pour la musique.", false),
                                new Choice(3, "Appeler ses amis pour ne pas se perdre.", false)
                        ),
                        "Le bruit dérange la faune et altère le plaisir de la randonnée pour les autres. Il est important de privilégier le silence et de respecter le calme de la nature."
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

