from models import Enneagram

def get(value: int) -> Enneagram:
    return __enneagrams[value]

__one: Enneagram = {'number' : 1, 'name': "The Performer", 'descriptors': ["Rational", "Idealistic", "Principled", "Purposeful", "Self-Controlled", "Perfectionistic"], 
'fear': "Being corrupt/evil, defective", 'desire': "To be good, to have integrity, to be balanced",
'levels': {
    1: "Become extraordinarily wise and discerning. By accepting what is, they become transcendentally realistic, knowing the best action to take in each moment. Humane, inspiring, and hopeful: the truth will be heard.",
    2: "Conscientious with strong personal convictions: they have an intense sense of right and wrong, personal religious and moral values. Wish to be rational, reasonable, self-disciplined, mature, moderate in all things.",
    3: "Extremely principled, always want to be fair, objective, and ethical: truth and justice primary values. Sense of responsibility, personal integrity, and of having a higher purpose often make them teachers and witnesses to the truth.",
    4: "Dissatisfied with reality, they become high-minded idealists, feeling that it is up to them to improve everything: crusaders, advocates, critics. Into \"causes\" and explaining to others how things \"ought\" to be.",
    5: "Afraid of making a mistake: everything must be consistent with their ideals. Become orderly and well-organized, but impersonal, puritanical, emotionally constricted, rigidly keeping their feelings and impulses in check. Often workaholics—\"anal-compulsive,\" punctual, pedantic, and fastidious.",
    6: "Highly critical both of self and others: picky, judgmental, perfectionistic. Very opinionated about everything: correcting people and badgering them to \"do the right thing\"—as they see it. Impatient, never satisfied with anything unless it is done according to their prescriptions. Moralizing, scolding, abrasive, and indignantly angry.",
    7: "Can be highly dogmatic, self-righteous, intolerant, and inflexible. Begin dealing in absolutes: they alone know \"The Truth.\" Everyone else is wrong: very severe in judgments, while rationalizing own actions.",
    8: "Become obsessive about imperfection and the wrongdoing of others, although they may fall into contradictory actions, hypocritically doing the opposite of what they preach.",
    9: "Become condemnatory toward others, punitive and cruel to rid themselves of wrongdoers. Severe depressions, nervous breakdowns, and suicide attempts are likely. Generally corresponds to the Obsessive-Compulsive and Depressive personality disorders."
}
}

__two: Enneagram = {'number': 2, 'name': "The Helper", 'descriptors': ["Caring", "Interpersonal", "Generous", "Demonstrative", "People-Pleasing", "Positive"], 
'fear': "Being unwanted, unworthy of being loved", 'desire': "To feel loved",
'levels': {
    1: "Become deeply unselfish, humble, and altruistic: giving unconditional love to self and others. Feel it is a privilege to be in the lives of others.",
    2: "Empathetic, compassionate, feeling for others. Caring and concerned about their needs. Thoughtful, warm-hearted, forgiving and sincere.",
    3: "Encouraging and appreciative, able to see the good in others. Service is important, but takes care of self too: they are nurturing, generous, and giving—a truly loving person.",
    4: "Want to be closer to others, so start \"people pleasing,\" becoming overly friendly, emotionally demonstrative, and full of \"good intentions\" about everything. Give seductive attention: approval, \"strokes,\" flattery. Love is their supreme value, and they talk about it constantly.",
    5: "Become overly intimate and intrusive: they need to be needed, so they hover, meddle, and control in the name of love. Want others to depend on them: give, but expect a return: send double messages. Enveloping and possessive: the codependent, self-sacrificial person who cannot do enough for others—wearing themselves out for everyone, creating needs for themselves to fulfill.",
    6: "Increasingly self-important and self-satisfied, feel they are indispensable, although they overrate their efforts in others' behalf. Hypochondria, becoming a \"martyr\" for others. Overbearing, patronizing, presumptuous.",
    7: "Can be manipulative and self-serving, instilling guilt by telling others how much they owe them and make them suffer. Abuse food and medication to \"stuff feelings\" and get sympathy. Undermine people, making belittling, disparaging remarks. Extremely self-deceptive about their motives and how aggressive and/or selfish their behavior is.",
    8: "Domineering and coercive: feel entitled to get anything they want from others: the repayment of old debts, money, sexual favors.",
    9: "Able to excuse and rationalize what they do since they feel abused and victimized by others and are bitterly resentful and angry. Somatization of their aggressions results in chronic health problems as they vindicate themselves by \"falling apart\" and burdening others. Generally corresponds to the Histrionic Personality Disorder and Factitious Disorder."
}
}

__three: Enneagram = {'number': 3, 'name': "The Achiever", 'descriptors': ["Success-oriented", "Pragmatic", "Adaptable", "Excelling", "Driven", "Image-Conscious"], 
'fear': "Being worthless", 'desire': "To feel valuable and worthwhile",
'levels': {
    1: "Self-accepting, inner-directed, and authentic, everything they seem to be. Modest and charitable, self-deprecatory humor and a fullness of heart emerge. Gentle and benevolent.",
    2: "Self-assured, energetic, and competent with high self-esteem: they believe in themselves and their own value. Adaptable, desirable, charming, and gracious.",
    3: "Ambitious to improve themselves, to be \"the best they can be\"—often become outstanding, a human ideal, embodying widely admired cultural qualities. Highly effective: others are motivated to be like them in some positive way.",
    4: "Highly concerned with their performance, doing their job well, constantly driving self to achieve goals as if self-worth depends on it. Terrified of failure. Compare self with others in search for status and success. Become careerists, social climbers, invested in exclusivity and being the \"best.\"",
    5: "Become image-conscious, highly concerned with how they are perceived. Begin to package themselves according to the expectations of others and what they need to do to be successful. Pragmatic and efficient, but also premeditated, losing touch with their own feelings beneath a smooth facade. Problems with intimacy, credibility, and \"phoniness\" emerge.",
    6: "Want to impress others with their superiority: constantly promoting themselves, making themselves sound better than they really are. Narcissistic, with grandiose, inflated notions about themselves and their talents. Exhibitionistic and seductive, as if saying \"Look at me!\" Arrogance and contempt for others is a defense against feeling jealous of others and their success.",
    7: "Fearing failure and humiliation, they can be exploitative and opportunistic, covetous of the success of others, and willing to do \"whatever it takes\" to preserve the illusion of their superiority.",
    8: "Devious and deceptive so that their mistakes and wrongdoings will not be exposed. Untrustworthy, maliciously betraying or sabotaging people to triumph over them. Delusionally jealous of others.",
    9: "Become vindictive, attempting to ruin others' happiness. Relentless, obsessive about destroying whatever reminds them of their own shortcomings and failures. Psychopathic behavior. Generally corresponds to the Narcissistic Personality Disorder."
}
}

__four: Enneagram = {'number': 4, 'name': "The Individualist", 'descriptors': ["Sensitive", "Introspective", "Expressive", "Dramatic", "Self-Absorbed", "Temperamental"], 
'fear': "Having no identity or personal significance", 'desire': "To find themselves and their significance (to create an identity)",
'levels': {
    1: "Profoundly creative, expressing the personal and the universal, possibly in a work of art. Inspired, self-renewing and regenerating: able to transform all their experiences into something valuable: self-creative.",
    2: "Self-aware, introspective, on the \"search for self,\" aware of feelings and inner impulses. Sensitive and intuitive both to self and others: gentle, tactful, compassionate.",
    3: "Highly personal, individualistic, \"true to self.\" Self-revealing, emotionally honest, humane. Ironic view of self and life: can be serious and funny, vulnerable and emotionally strong.",
    4: "Take an artistic, romantic orientation to life, creating a beautiful, aesthetic environment to cultivate and prolong personal feelings. Heighten reality through fantasy, passionate feelings, and the imagination.",
    5: "To stay in touch with feelings, they interiorize everything, taking everything personally, but become self-absorbed and introverted, moody and hypersensitive, shy and self-conscious, unable to be spontaneous or to \"get out of themselves.\" Stay withdrawn to protect their self-image and to buy time to sort out feelings.",
    6: "Gradually think that they are different from others, and feel that they are exempt from living as everyone else does. They become melancholy dreamers, disdainful, decadent, and sensual, living in a fantasy world. Self-pity and envy of others leads to self-indulgence, and to becoming increasingly impractical, unproductive, effete, and precious.",
    7: "When dreams fail, become self-inhibiting and angry at self, depressed and alienated from self and others, blocked and emotionally paralyzed. Ashamed of self, fatigued and unable to function.",
    8: "Tormented by delusional self-contempt, self-reproaches, self-hatred, and morbid thoughts: everything is a source of torment. Blaming others, they drive away anyone who tries to help them.",
    9: "Despairing, feel hopeless and become self-destructive, possibly abusing alcohol or drugs to escape. In the extreme: emotional breakdown or suicide is likely. Generally corresponds to the Avoidant, Depressive, and Narcissistic personality disorders."
}
}

__five: Enneagram = {'number': 5, 'name': "The Investigator", 'descriptors': ["Intense", "Cerebral", "Perceptive", "Innovative", "Secretive", "Isolated"], 
'fear': "Being useless, helpless, or incapable", 'desire': "To be capable and competent",
'levels': {
    1: "Become visionaries, broadly comprehending the world while penetrating it profoundly. Open-minded, take things in whole, in their true context. Make pioneering discoveries and find entirely new ways of doing and perceiving things.",
    2: "Observe everything with extraordinary perceptiveness and insight. Most mentally alert, curious, searching intelligence: nothing escapes their notice. Foresight and prediction. Able to concentrate: become engrossed in what has caught their attention.",
    3: "Attain skillful mastery of whatever interests them. Excited by knowledge: often become expert in some field. Innovative and inventive, producing extremely valuable, original works. Highly independent, idiosyncratic, and whimsical.",
    4: "Begin conceptualizing and fine-tuning everything before acting—working things out in their minds: model building, preparing, practicing, and gathering more resources. Studious, acquiring technique. Become specialized, and often \"intellectual,\" often challenging accepted ways of doing things.",
    5: "Increasingly detached as they become involved with complicated ideas or imaginary worlds. Become preoccupied with their visions and interpretations rather than reality. Are fascinated by off-beat, esoteric subjects, even those involving dark and disturbing elements. Detached from the practical world, a \"disembodied mind,\" although high-strung and intense.",
    6: "Begin to take an antagonistic stance toward anything which would interfere with their inner world and personal vision. Become provocative and abrasive, with intentionally extreme and radical views. Cynical and argumentative.",
    7: "Become reclusive and isolated from reality, eccentric and nihilistic. Highly unstable and fearful of aggressions: they reject and repulse others and all social attachments.",
    8: "Get obsessed yet frightened by their threatening ideas, becoming horrified, delirious, and prey to gross distortions and phobias.",
    9: "Seeking oblivion, they may commit suicide or have a psychotic break with reality. Deranged, explosively self-destructive, with schizophrenic overtones. Generally corresponds to the Schizoid Avoidant and Schizotypal personality disorders."
}
}

__six: Enneagram = {'number': 6, 'name': "The Loyalist", 'descriptors': ["Committed", "Security-Oriented", "Engaging", "Responsible", "Anxious", "Suspicious"], 
'fear': "Being without support and guidance", 'desire': "To have security and support",
'levels': {
    1: "Become self-affirming, trusting of self and others, independent yet symbiotically interdependent and cooperative as an equal. Belief in self leads to true courage, positive thinking, leadership, and rich self-expression.",
    2: "Able to elicit strong emotional responses from others: very appealing, endearing, lovable, affectionate. Trust important: bonding with others, forming permanent relationships and alliances.",
    3: "Dedicated to individuals and movements in which they deeply believe. Community builders: responsible, reliable, trustworthy. Hard-working and persevering, sacrificing for others, they create stability and security in their world, bringing a cooperative spirit.",
    4: "Start investing their time and energy into whatever they believe will be safe and stable. Organizing and structuring, they look to alliances and authorities for security and continuity. Constantly vigilant, anticipating problems.",
    5: "To resist having more demands made on them, they react against others passive-aggressively. Become evasive, indecisive, cautious, procrastinating, and ambivalent. Are highly reactive, anxious, and negative, giving contradictory, \"mixed signals.\" Internal confusion makes them react unpredictably.",
    6: "To compensate for insecurities, they become sarcastic and belligerent, blaming others for their problems, taking a tough stance toward \"outsiders.\" Highly reactive and defensive, dividing people into friends and enemies, while looking for threats to their own security. Authoritarian while fearful of authority, highly suspicious, yet, conspiratorial, and fear-instilling to silence their own fears.",
    7: "Fearing that they have ruined their security, they become panicky, volatile, and self-disparaging with acute inferiority feelings. Seeing themselves as defenseless, they seek out a stronger authority or belief to resolve all problems. Highly divisive, disparaging and berating others.",
    8: "Feeling persecuted, that others are \"out to get them,\" they lash-out and act irrationally, bringing about what they fear. Fanaticism, violence.",
    9: "Hysterical, and seeking to escape punishment, they become self-destructive and suicidal. Alcoholism, drug overdoses, self-abasing behavior. Generally corresponds to the Passive-Aggressive and Paranoid personality disorders."
}
}

__seven: Enneagram = {'number': 7, 'name': "The Enthusiast", 'descriptors': ["Busy", "Variety-Seeking", "Spontaneous", "Versatile", "Acquisitive", "Scattered"], 
'fear': "Being deprived and in pain", 'desire': "To be satisfied and content—to have their needs fulfilled",
'levels': {
    1: "Assimilate experiences in depth, making them deeply grateful and appreciative for what they have. Become awed by the simple wonders of life: joyous and ecstatic. Intimations of spiritual reality, of the boundless goodness of life.",
    2: "Highly responsive, excitable, enthusiastic about sensation and experience. Most extroverted type: stimuli bring immediate responses—they find everything invigorating. Lively, vivacious, eager, spontaneous, resilient, cheerful.",
    3: "Easily become accomplished achievers, generalists who do many different things well: multi-talented. Practical, productive, usually prolific, cross-fertilizing areas of interest.",
    4: "As restlessness increases, want to have more options and choices available to them. Become adventurous and \"worldly wise,\" but less focused, constantly seeking new things and experiences: the sophisticate, connoisseur, and consumer. Money, variety, keeping up with the latest trends important.",
    5: "Unable to discriminate what they really need, become hyperactive, unable to say \"no\" to themselves, throwing self into constant activity. Uninhibited, doing and saying whatever comes to mind: storytelling, flamboyant exaggerations, witty wise-cracking, performing. Fear being bored: in perpetual motion, but do too many things—many ideas but little follow through.",
    6: "Get into conspicuous consumption and all forms of excess. Self-centered, materialistic, and greedy, never feeling that they have enough. Demanding and pushy, yet unsatisfied and jaded. Addictive, hardened, and insensitive.",
    7: "Desperate to quell their anxieties, can be impulsive and infantile: do not know when to stop. Addictions and excess take their toll: debauched, depraved, dissipated escapists, offensive and abusive.",
    8: "In flight from self, acting out impulses rather than dealing with anxiety or frustrations: go out of control, into erratic mood swings, and compulsive actions (manias).",
    9: "Finally, their energy and health is completely spent: become claustrophobic and panic-stricken. Often give up on themselves and life: deep depression and despair, self-destructive overdoses, impulsive suicide. Generally corresponds to the Bipolar disorder and Histrionic personality disorder."
}
}

__eight: Enneagram = {'number': 8, 'name': "The Challenger", 'descriptors': ["Powerful", "Dominating", "Self-Confident", "Decisive", "Willful", "Confrontational"], 
'fear': "Being harmed or controlled by others", 'desire': "To protect themselves (to be in control of their own life (and destiny)",
'levels': {
    1: "Become self-restrained and magnanimous, merciful and forbearing, mastering self through their self-surrender to a higher authority. Courageous, willing to put self in serious jeopardy to achieve their vision and have a lasting influence. May achieve true heroism and historical greatness.",
    2: "Self-assertive, self-confident, and strong: have learned to stand up for what they need and want. A resourceful, \"can do\" attitude and passionate inner drive.",
    3: "Decisive, authoritative, and commanding: the natural leader others look up to. Take initiative, make things happen: champion people, provider, protective, and honorable, carrying others with their strength.",
    4: "Self-sufficiency, financial independence, and having enough resources are important concerns: become enterprising, pragmatic, \"rugged individualists,\" wheeler-dealers. Risk-taking, hardworking, denying own emotional needs.",
    5: "Begin to dominate their environment, including others: want to feel that others are behind them, supporting their efforts. Swaggering, boastful, forceful, and expansive: the \"boss\" whose word is law. Proud, egocentric, want to impose their will and vision on everything, not seeing others as equals or treating them with respect.",
    6: "Become highly combative and intimidating to get their way: confrontational, belligerent, creating adversarial relationships. Everything a test of wills, and they will not back down. Use threats and reprisals to get obedience from others, to keep others off balance and insecure. However, unjust treatment makes others fear and resent them, possibly also band together against them.",
    7: "Defying any attempt to control them, become completely ruthless, dictatorial, \"might makes right.\" The criminal and outlaw, renegade, and con-artist. Hard-hearted, immoral and potentially violent.",
    8: "Develop delusional ideas about their power, invincibility, and ability to prevail: megalomania, feeling omnipotent, invulnerable. Recklessly over-extending self.",
    9: "If they get in danger, they may brutally destroy everything that has not conformed to their will rather than surrender to anyone else. Vengeful, barbaric, murderous. Sociopathic tendencies. Generally corresponds to the Antisocial Personality Disorder."
}
}

__nine: Enneagram = {'number': 9, 'name': "The Peacemaker", 'descriptors': ["Easygoing", "Self-Effacing", "Receptive", "Reassuring", "Agreeable", "Complacent"], 
'fear': "Loss and separation", 'desire': "To have inner stability peace of mind",
'levels': {
    1: "Become self-possessed, feeling autonomous and fulfilled: have great equanimity and contentment because they are present to themselves. Paradoxically, at one with self, and thus able to form more profound relationships. Intensely alive, fully connected to self and others.",
    2: "Deeply receptive, accepting, unselfconscious, emotionally stable and serene. Trusting of self and others, at ease with self and life, innocent and simple. Patient, unpretentious, good-natured, genuinely nice people.",
    3: "Optimistic, reassuring, supportive: have a healing and calming influence—harmonizing groups, bringing people together: a good mediator, synthesizer, and communicator.",
    4: "Fear conflicts, so become self-effacing and accommodating, idealizing others and \"going along\" with their wishes, saying \"yes\" to things they do not really want to do. Fall into conventional roles and expectations. Use philosophies and stock sayings to deflect others.",
    5: "Active, but disengaged, unreflective, and inattentive. Do not want to be affected, so become unresponsive and complacent, walking away from problems, and \"sweeping them under the rug.\" Thinking becomes hazy and ruminative, mostly comforting fantasies, as they begin to \"tune out\" reality, becoming oblivious. Emotionally indolent, unwillingness to exert self or to focus on problems: indifference.",
    6: "Begin to minimize problems, to appease others and to have \"peace at any price.\" Stubborn, fatalistic, and resigned, as if nothing could be done to change anything. Into wishful thinking, and magical solutions. Others frustrated and angry by their procrastination and unresponsiveness.",
    7: "Can be highly repressed, undeveloped, and ineffectual. Feel incapable of facing problems: become obstinate, dissociating self from all conflicts. Neglectful and dangerous to others.",
    8: "Wanting to block out of awareness anything that could affect them, they dissociate so much that they eventually cannot function: numb, depersonalized.",
    9: "They finally become severely disoriented and catatonic, abandoning themselves, turning into shattered shells. Multiple personalities possible. Generally corresponds to the Schizoid and Dependent personality disorders."
}
}

__enneagrams: dict[int, Enneagram] = {1: Enneagram(**__one), 2: Enneagram(**__two), 3: Enneagram(**__three), 4: Enneagram(**__four), 5: Enneagram(**__five), 6: Enneagram(**__six), 7: Enneagram(**__seven), 8: Enneagram(**__eight), 9: Enneagram(**__nine)}

