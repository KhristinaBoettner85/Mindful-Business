//Business Consulting Program

import java.util.Scanner

fun main() {
    //Taking user input
    val reader = Scanner(System.`in`)
    println("Welcome to Business Consulting Program. What is your name?")
    val name = reader.nextLine()
    println("Nice to meet you $name!")
    println("Do you have an existing business? (Y/N)")
    val userAnswer = reader.nextLine()
    val hasBusiness = userAnswer.toUpperCase() == "Y"
    if (hasBusiness) {
        println("What challenges you are facing with your business? (Please list a few)")
        val userList = reader.nextLine().split(",")
        for (challenge in userList) {
            val challenge = challenge.trim()
            val steps = when (challenge) {
                "hiring process" -> listOf("Review job descriptions", "Update job postings", "Pre-screen candidates")
                "market research" -> listOf("Understand target market", "Collect customer data", "Analyze competitive landscape")
                "finance" -> listOf("Determine budget", "Check credit score", "Calculate profits")
                else -> emptyList()
            }
            if (steps.isNotEmpty()) {
                println("For the challenge: '$challenge', I would suggest the following steps:")
                steps.forEachIndexed { index, step ->
                    println("${index + 1}. $step")
                }
            } else {
                println("Sorry I didn't recognize the challenge: '$challenge'")
            }
        }
    } else {
        println("What industry are you interested in starting a business in?")
        val industry = reader.nextLine()
        println("What challenges you are likely to face when starting a business in $industry? (Please list a few)")
        val userList2 = reader.nextLine().split(",")
        for (challenge in userList2) {
            val challenge = challenge.trim()
            val steps = when (challenge) {
                "funding" -> listOf("Check local grants", "Research investors", "Build financial models")
                "hiring" -> listOf("Write job postings", "Conduct interviews", "Verify references")
                "marketing" -> listOf("Define target market", "Create website and social media pages", "Develop market strategy")
                else -> emptyList()
            }
            if (steps.isNotEmpty()) {
                println("For the challenge: '$challenge', I would suggest the following steps:")
                steps.forEachIndexed { index, step ->
                    println("${index + 1}. $step")
                }
            } else {
                println("Sorry I didn't recognize the challenge: '$challenge'")
            }
        }
    }
    println("I hope this was helpful. Best of luck as you build your business!")
}