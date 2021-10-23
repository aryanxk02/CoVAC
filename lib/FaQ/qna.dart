// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/FaQ/answers.dart';

class QnA extends StatefulWidget {
  @override
  _QnAState createState() => _QnAState();
}

class _QnAState extends State<QnA> {
  List<Map<String, String>> _questionsAndAnswers = [
    {
      'question': "How does Covid 19 spread between people?",
      'answer':
          "We know that the disease is caused by the SARS-CoV-2 virus, which spreads between people in several different ways. The virus can spread from an infected person’s mouth or nose in small liquid particles when they cough, sneeze, speak, sing or breathe. These particles range from larger respiratory droplets to smaller aerosols. rCurrent evidence suggests that the virus spreads mainly between people who are in close contact with each other, typically within 1 metre (short-range). A person can be infected when aerosols or droplets containing the virus are inhaled or come directly into contact with the eyes, nose, or mouth. The virus can also spread in poorly ventilated and/or crowded indoor settings, where people tend to spend longer periods of time. This is because aerosols remain suspended in the air or travel farther than 1 metre (long-range). People may also become infected by touching surfaces that have been contaminated by the virus when touching their eyes, nose or mouth without cleaning their hands. Further research is ongoing to better understand the spread of the virus and which settings are most risky and why. Research is also under way to study virus variants that are emerging and why some are more transmissible. For updated information on SARS-CoV-2 variants, please read the weekly epidemiologic updates",
    },
    {
      'question': "When do infected people transmit the virus?",
      'answer':
          "Whether or not they have symptoms, infected people can be contagious and the virus can spread from them to other people. Laboratory data suggests that infected people appear to be most infectious just before they develop symptoms (namely 2 days before they develop symptoms) and early in their illness.<br> People who develop severe disease can be infectious for longer. While someone who never develops symptoms can pass the virus to others, it is still not clear how frequently this occurs and more research is needed in this area.",
    },
    {
      'question': "How can I reduce my risk of getting Covid 19?",
      'answer':
          "There are many things you can do to keep yourself and your loved ones safe from COVID-19. Know your risks to lower risks. Follow these basic precautions: Follow local guidance: Check to see what national, regional and local authorities are advising so you have the most relevant information for where you are. Keep your distance: Stay at least 1 metre away from others, even if they don’t appear to be sick, since people can have the virus without having symptoms. Wear a mask:  Wear a well-fitting three-layer mask, especially when you can’t physically distance, or if you’re indoors. Clean your hands before putting on and taking off a mask. Read our Masks and COVID-19 Q&A and watch our videos on how to wear and make masks. Avoid crowded places, poorly ventilated, indoor locations and avoid prolonged contact with others. Spend more time outdoors than indoors. Ventilation is important: Open windows when indoors to increase the amount of outdoor air. Avoid touching surfaces, especially in public settings or health facilities, in case people infected with COVID-19 have touched them. Clean surfaces regularly with standard disinfectants. Frequently clean your hands with soap and water, or an alcohol-based hand rub. If you can, carry alcohol-based rub with you and use it often. Cover your coughs and sneezes with a bent elbow or tissue, throwing used tissues into a closed bin right away. Then wash your hands or use an alcohol-based hand rub. Get vaccinated: When it’s your turn, get vaccinated. Follow local guidance and recommendations about vaccination.",
    },
    {
      'question':
          "Are there any certain ways where Covid 19 can spread more easily?",
      'answer':
          'Yes, any situation in which people are in close proximity to one another for long periods of time increases the risk of transmission. Indoor locations, especially settings where there is poor ventilation, are riskier than outdoor locations. Activities where more particles are expelled from the mouth, such as singing or breathing heavily during exercise, also increase the risk of transmission. The “Three C’s” are a useful way to think about this. They describe settings where transmission of the COVID-19 virus spreads more easily: Crowded places; Close-contact settings, especially where people have conversations very near each other; Confined and enclosed spaces with poor ventilation. The risk of COVID-19 spreading is especially high in places where these “3Cs” overlap.',
    },
    {
      'question': 'Are there long term effects of Covid 19?',
      'answer':
          'Some people who have had COVID-19, whether they have needed hospitalization or not, continue to experience symptoms, including fatigue, respiratory and neurological symptoms. WHO is working with our Global Technical Network for Clinical Management of COVID-19, researchers and patient groups around the world to design and carry out studies of patients beyond the initial acute course of illness to understand the proportion of patients who have long term effects, how long they persist, and why they occur.  These studies will be used to develop further guidance for patient care.'
    },
    {
      'question': 'When should I get a test for Covid 19?',
      'answer':
          'Anyone with symptoms should be tested, wherever possible. People who do not have symptoms but have had close contact with someone who is, or may be, infected may also consider testing – contact your local health guidelines and follow their guidance. While a person is waiting for test results, they should remain isolated from others. Where testing capacity is limited, tests should first be done for those at higher risk of infection, such as health workers, and those at higher risk of severe illness such as older people, especially those living in seniors’ residences or long-term care facilities.'
    },
    {
      'question': 'What is the difference between isolation and quarantine?',
      'answer':
          'Both isolation and quarantine are methods of preventing the spread of COVID-19. Quarantine is used for anyone who is a contact of someone infected with the SARS-CoV-2 virus, which causes COVID-19, whether the infected person has symptoms or not. Quarantine means that you remain separated from others because you have been exposed to the virus and you may be infected and can take place in a designated facility or at home. For COVID-19, this means staying in the facility or at home for 14 days. Isolation is used for people with COVID-19 symptoms or who have tested positive for the virus. Being in isolation means being separated from other people, ideally in a medically facility where you can receive clinical care.  If isolation in a medical facility is not possible and you are not in a high risk group of developing severe disease, isolation can take place at home. If you have symptoms, you should remain in isolation for at least 10 days plus an additional 3 days without symptoms. If you are infected and do not develop symptoms, you should remain in isolation for 10 days from the time you test positive.'
    },
    {
      'question': 'How long does it take to develop symptoms?',
      'answer':
          'The time from exposure to COVID-19 to the moment when symptoms begin is, on average, 5-6 days and can range from 1-14 days. This is why people who have been exposed to the virus are advised to remain at home and stay away from others, for 14 days, in order to prevent the spread of the virus, especially where testing is not easily available.'
    },
    {
      'question':
          'Are anti-biotics effective in preventing or treating Covid 19?',
      'answer':
          'Antibiotics do not work against viruses; they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. In hospitals, physicians will sometimes use antibiotics to prevent or treat secondary bacterial infections which can be a complication of COVID-19 in severely ill patients. They should only be used as directed by a physician to treat a bacterial infection.'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFF9AD),
                gradient: LinearGradient(
                  colors: [Color(0xFF6B41B4), Color(0xFFD43DDD)],
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      // color: Color(0xFFFFF9AD),
                      image: DecorationImage(
                        image: AssetImage("assets/faq.png"),
                        fit: BoxFit.fill,
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xFF6B41B4), Color(0xFFD43DDD)],
                      ),
                    ),
                  ),
                  Container(
                    // clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 250,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEF0F6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(55),
                        topRight: Radius.circular(55),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          child: Text(
                            "Frequently Asked Questions",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _questionsAndAnswers.length,
                            itemBuilder: (context, index) => Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20),
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              // height: 110,
                              child: InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  child: Text(
                                    _questionsAndAnswers[index]['question']!,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AnswerOne(
                                        answer: _questionsAndAnswers[index]
                                            ['answer']!,
                                        question: _questionsAndAnswers[index]
                                            ['question']!,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
