# Presentation Transcript: "Is It Still You?"

**Target duration: 10 minutes (~1,500 words at natural pace)**
**Venue: CHI 2026, Barcelona, Spain**

---

## [Slide 1] Title Slide

Good morning everyone. My name is Guangrui Fan from Taiyuan University of Science and Technology, and I'm presenting joint work with Dandan Liu from Universiti Malaya and Lihu Pan.

Our paper asks a simple but important question: when your romantic partner uses AI to write you a sensitive message, is it still *them*?

---

## [Slide 2] Talk Outline

Here's the roadmap. We'll start with the motivation and research questions, then walk through two coordinated studies --- one on the sender side, one on the receiver side --- followed by cross-study integration, key findings, and design implications.

---

## [Slide 3] Section: Motivation

*(transition slide --- no narration)*

---

## [Slide 4] The AI-Intimacy Paradox

Generative AI is now embedded in everyday messaging. It can make our words clearer, kinder, more polished. But here's the paradox: in intimate relationships, the *process* of writing matters as much as the product. When you apologize or set a boundary, your partner evaluates not just *what* you said, but whether *you* said it --- whether you invested the personal effort, the vulnerability, the "in your own words" labor that signals sincerity.

So our core question is: does AI assistance undermine the very signals it's supposed to enhance? And does it matter whether you disclose that you used it?

---

## [Slide 5] Two Scenarios, Two Levels of Help

We study two speech acts that romantic partners commonly face. First, an **apology** --- high moral stakes, where receivers care most about integrity and personal investment. Second, a **boundary request** --- asking your partner to change a behavior, where clarity and tact matter more.

We compare two levels of AI assistance. **Tone rewrite**, or light help, where the human writes a draft and gets line-level suggestions. And **full draft**, or heavy help, where the AI generates the entire message from bullet points and the human edits it afterward.

---

## [Slide 6] Gaps in Prior Work

Five gaps motivate our work. Prior studies rarely cross help level *and* disclosure in the same design. The sequential mechanism from help to ownership to authenticity to outcomes hasn't been directly tested. Most designs use single stimuli, without linking authoring behavior to receiver judgments. Nobody has measured sender-receiver miscalibration in romantic AI-use contexts. And design levers for voice-preserving tools remain under-specified.

---

## [Slide 7] Research Questions

This gives us four research questions. RQ1 asks how help level and disclosure shift perceived ownership. RQ2 asks about downstream effects on authenticity, trust, and behavioral outcomes. RQ3 tests the sequential mediation mechanism. And RQ4 explores whether senders accurately predict how their AI-assisted messages will be received.

---

## [Slide 8] Section: Study 1

*(transition slide)*

---

## [Slide 9] Study 1 --- Design Overview

Study 1 is the sender side. We recruited 152 adults in romantic relationships from Malaysia. They were randomized to Tone or Full help and wrote messages in both scenarios --- apology and boundary --- while we captured fine-grained telemetry.

---

## [Slide 10] Study 1 --- Key Design Details

Each participant wrote to their actual romantic partner. In the Tone condition, they wrote a full human draft and received line-level suggestions. In the Full condition, they provided bullet points and the AI generated a complete draft that they then edited. We measured felt ownership, anticipated authenticity, disclosure intentions, and behavioral telemetry including edit distance and idiosyncrasy cues --- things like shared memories, nicknames, and specific details.

---

## [Slide 11] Study 1 --- Results

The results are clear. Heavy help significantly reduced felt ownership --- beta of minus 0.78, highly significant. Participants using full drafts also produced fewer idiosyncratic cues and had larger edit distances from the AI output. Critically, these effects were stronger in the apology scenario than in boundary requests, consistent with the higher moral stakes of apologies.

---

## [Slide 12] Study 1 --- Telemetry and Disclosure

Looking at the telemetry, the Human Contribution Ratio was 86% for Tone but only 60% for Full. Disclosure intentions were scenario-sensitive: 57% would disclose in apology but only 28% in boundary. The top reason *to* disclose was integrity and transparency. The top reason *not to* was stigma and the belief that "it's still my words."

We curated 40 messages from this corpus --- 10 per cell --- for the receiver experiment.

---

## [Slide 13] Section: Study 2

*(transition slide)*

---

## [Slide 14] Study 2 --- Design Overview

Study 2 is the receiver side. 704 independent participants --- none from Study 1 --- were randomized into a 2-by-2 between-subjects design crossing Help with Disclosure. Each read one apology and one boundary message and rated them on effort/ownership, authenticity, trust facets, and forgiveness or compliance.

---

## [Slide 15] Study 2 --- Design Details

The disclosure manipulation was a brief sender-voiced postscript: "I used an AI tool to help me phrase this clearly." Appended as the final line, same across all scenarios. We measured five constructs with strong reliability, all above .85 alpha.

---

## [Slide 16] Study 2 --- Results

Here's where it gets interesting. In **apologies**, co-signing a tone rewrite *increased* authenticity by 0.30 and forgiveness by 0.28 --- the disclosure acted as an integrity cue. But co-signing a full draft *decreased* both. The same label had opposite effects depending on help level.

In **boundary requests**, co-signing had small or marginally negative effects regardless of help level.

---

## [Slide 17] Study 2 --- Planned Contrasts

The contrast table makes the pattern stark. Look at C3: going from Tone+CoSign to Full+CoSign in apology, authenticity drops by 0.83 --- a large effect of d equals minus 0.76. Forgiveness drops by 0.63. The disclosure label that *helped* with light assistance actively *hurt* when the AI had done most of the writing.

---

## [Slide 18] The Competence Dissociation

Now, you might ask: doesn't the AI at least make messages *better*? Yes --- Full help did raise competence and clarity ratings. But here's the dissociation: competence had essentially no association with forgiveness once we controlled for authenticity. Beta of 0.06, non-significant. Better-sounding did not mean better-received. Authenticity and integrity drove outcomes; competence was irrelevant.

---

## [Slide 19] Sequential Mediation

The mechanism test confirms the pathway. Help level reduces effort and ownership, which reduces perceived authenticity, which reduces forgiveness. The sequential indirect effect was minus 0.23, with 66% of the total effect mediated through this path. In boundary requests, the same mechanism held but was weaker.

Interestingly, the positive effect of co-signing Tone in apology did *not* go through ownership --- it went directly to authenticity via integrity signaling. The disclosure said "I care enough to be transparent," without implying outsourced authorship.

---

## [Slide 20] Section: Cross-Study Integration

*(transition slide)*

---

## [Slide 21] Authoring Traces Predict Receiver Judgments

Linking the two studies at the stimulus level, we found that concrete authoring behaviors predicted receiver perceptions. Each additional idiosyncrasy cue --- a shared memory, a nickname --- increased perceived ownership and authenticity. Greater edit distance predicted the opposite. Receivers are sensitive to "voice" even in anonymized messages.

---

## [Slide 22] Sender-Receiver Miscalibration

Senders systematically overestimated the benefits of light help, especially for boundary requests --- a delta of plus 0.24 on both authenticity and outcomes. But they were appropriately cautious about heavy help in apologies. This reveals an unsettled "co-sign heuristic": writers assume light help will read as caring and competent, but receivers only endorse this in apologies, not in requests.

---

## [Slide 23] Section: Key Findings

*(transition slide)*

---

## [Slide 24] Three Propositions

We synthesize three empirically supported propositions. P1: heavier drafting reduces ownership, which reduces authenticity and harms outcomes --- 66% mediated. P2: disclosure is a double-edged sword --- it helps light help in apology but hurts heavy help. P3: competence gains do not compensate for authenticity losses. Better-sounding does not equal better-received.

---

## [Slide 25] Summary Table

This table shows the full pattern across scenarios. The key contrast: apologies are highly sensitive to both help level and disclosure, while boundary requests show smaller, more muted effects. Senders are calibrated for apology but overestimate benefits for boundary.

---

## [Slide 26] Five Design Principles

These findings motivate five design principles. First, **preserve voice** --- default to suggestion-level edits. Second, **restore ownership** when help is heavy --- require an in-own-words revision pass. Third, treat **disclosure as interaction**, not a badge --- enable sender-voiced rationales. Fourth, **decompose trust** --- show authors that competence rarely offsets authenticity. Fifth, **respect context and fairness** --- provide scaffolds, not stigmatizing labels.

---

## [Slide 27] Contributions

To summarize our four contributions: scenario-aware causal estimates, an attributional account explaining the competence-integrity dissociation, the first sender-receiver miscalibration data in romantic AI use, and actionable design guidance for intimate AI tools.

---

## [Slide 28] Take-Home Message

Our take-home message is this: **ownership is the proximal currency of authenticity in intimate talk.** AI can make messages sound better, but sounding like *you* matters more than sounding polished. The design objective should expand from facilitating articulation to preserving authorship and authenticity --- the signals on which relational repair depends.

Thank you.

---

## [Slide 29] Thank You / Q&A

I'm happy to take questions. You can reach me at fgr@tyust.edu.cn, and the paper is available at the DOI shown. Thank you.

---

*Total word count: ~1,450 words*
*Estimated delivery time: 9--10 minutes at natural speaking pace (150 wpm)*
