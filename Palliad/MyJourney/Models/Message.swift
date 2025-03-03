import Foundation

struct Message: Hashable {

    var id = UUID()
    var content: String
    var isCurrentUser: Bool
}

struct DataSource {

    static let messages1 = [
        Message(
            content:
                "Guess what? Tomorrow is a big day! We’re going to do your special exercises together. I’ll be right here cheering you on. Do you know what happens when you complete it? You level up in our adventure!",
            isCurrentUser: false),
        Message(content: "What adventure?", isCurrentUser: true),
        Message(
            content:
                "Our 'Healthy Hero Quest'! Every milestone you hit brings us closer to finding the treasure — a big pile of golden teddy coins!",
            isCurrentUser: false),

    ]
    static let messages2 = [
        Message(
            content:
                "Hey, superstar! I saw you drank all your water today. High paw! Staying hydrated is like giving your body a big bear hug—it’s super important. I’m so proud of you!",
            isCurrentUser: false),
        Message(
            content: "Thanks, Teddy! Do I get a sticker?", isCurrentUser: true),
        Message(
            content:
                "Hey, superstar! I saw you drank all your water today. High paw! Staying hydrated is like giving your body a big bear hug — it’s super important. I’m so proud of you!",
            isCurrentUser: false),

    ]
    static let messages3 = [
        Message(
            content:
                "Hey there, pal. You seemed a little quiet earlier. Want to tell me what’s on your mind? I’m here to listen.",
            isCurrentUser: false),
        Message(
            content: "didn’t feel like eating my lunch. It hurts to eat.",
            isCurrentUser: true),
        Message(
            content:
                "I’m sorry it hurts, buddy. That’s tough. You’re so brave for telling me! Maybe we can talk to your doctor about it together. Until then, how about we pretend your spoon is a spaceship and we’re on a mission?",
            isCurrentUser: false),

    ]
    static let messages4 = [
        Message(
            content: "Hiya! What was the best part of your day today?",
            isCurrentUser: false),
        Message(content: "I played with my Legos!", isCurrentUser: true),
        Message(
            content:
                "Wow, I bet you built something amazing! Was it a castle, a spaceship, or maybe a super-secret teddy bear headquarters?",
            isCurrentUser: false),
        Message(
            content:
                "Vroom vroom! Can you imagine us going on a road trip together in your car? Where would we go?",
            isCurrentUser: true),

    ]

}
