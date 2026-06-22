# Presentation Transcript: "Co-Adaptive Eco-Nudging"

**Target duration: 10 minutes (~1,500 words at natural pace)**
**Venue: CHI 2026, Barcelona, Spain**

---

## [Slide 1] Title Slide

Good morning everyone. My name is Guangrui Fan from Taiyuan University of Science and Technology, and I'm presenting joint work with Dandan Liu from Universiti Malaya and Lihu Pan.

Our paper asks: can digital eco-nudges be both effective *and* respectful of user autonomy --- and is the net environmental benefit actually positive once we account for the system's own overhead?

---

## [Slide 2] Section: Motivation

*(transition slide --- no narration)*

---

## [Slide 3] Gaps & Research Questions

Three gaps persist. G1: nudging evaluations rarely enforce parity --- message content, length, and delivery budgets differ across arms, and they don't include all detected opportunities in denominators. G2: personalization is typically server-based and opaque, lacking a DoNothing action, explicit feedback, or user-governed constraints. G3: evaluations don't characterize autonomy-compliance trade-offs, test persistence, or report net energy benefit.

These gaps give us four research questions: RQ1 on efficacy under constraints, RQ2 on the Ethical-Efficacy Frontier, RQ3 on persistence, and RQ4 on net Energy ROI.

---

## [Slide 4] Section: System Design

*(transition slide)*

---

## [Slide 5] Pipeline Architecture

Our system is a browser extension with three phases. Phase 1 is user-initiated onboarding: you select sustainability goals, a persuasion style --- analyst, coach, or pragmatist --- and set autonomy constraints including quiet hours and a daily prompt budget from zero to four. All stored locally; no server profile.

Phase 2 is the adaptive engine: a constrained contextual bandit using Thompson sampling. It observes context --- tab count, streaming state, device metrics, feedback history --- and selects from thirteen actions: four behavior targets times three styles, plus DoNothing as a first-class action. The constrained objective maximizes reward subject to the user's budget and quiet hours.

Phase 3 closes the feedback loop. Each nudge includes a "Why this?" explanation citing the user's goals and triggering context. One-tap feedback --- Helpful, Annoying, or Wrong time --- directly shapes the reward signal.

A key result: DoNothing selection grew from 38 to 68 percent over the study period. The system genuinely learned restraint.

---

## [Slide 6] Section: Study 1

*(transition slide)*

---

## [Slide 7] Study 1 --- Daily Compliance

Study 1 tests whether minimal factual tailoring improves compliance under strict parity controls. 178 adults used our extension for two weeks, randomized to Control, Generic, or Context-Tailored arms. All templates were ablation-matched: same length, reading level, and valence.

The four panels show daily compliance for Streaming, Tabs, Printing, and Large Transfers. Context-Tailored nudges --- shown in the blue-green line --- consistently outperform Generic and Control for the high-frequency behaviors. Specifically, Streaming improved by 8.0 percentage points over Generic, significant at p equals .002, and Tabs by 7.7 percentage points at p equals .003.

Critically, perceived autonomy decreased with prompt *intensity* but not with tailoring per se. Making messages contextually relevant didn't cost extra autonomy.

---

## [Slide 8] Section: Study 2

*(transition slide)*

---

## [Slide 9] Study 2 --- ABA(W) Timeline

Study 2 asks whether a co-adaptive bandit outperforms the rule-based tailored policy. 54 adults were randomized to Bandit or Rule arms with a baseline, two-week intervention, two-week withdrawal, and week-five follow-up.

The timeline shows daily compliance averaged across Streaming and Tabs. The Bandit --- the green line --- rises faster during intervention and decays more slowly during withdrawal. Bandit improved compliance over Rule by 6.9 percentage points for Streaming and 7.2 for Tabs, both significant. In behavior-level terms, Bandit participants reduced HD streaming by 18.5 minutes per day compared to 11.2 for Rule.

The mechanism was learned restraint. DoNothing selections grew from 38 to 68 percent. Wrong-time votes dropped from 32 to 14 percent. The system learned *when* to nudge, not just *what* to nudge.

---

## [Slide 10] Section: New Lenses

*(transition slide)*

---

## [Slide 11] Ethical-Efficacy Frontier

This is our key conceptual contribution. The EEF is a Pareto frontier plotting compliance against perceived autonomy across realized prompt intensities. The leftmost panel shows the frontier curves --- the Bandit's frontier shifts outward, meaning higher compliance at the same autonomy or higher autonomy at the same compliance.

The normalized area under the EEF is 0.271 for Bandit versus 0.226 for Rule --- a significant difference at p equals .003. Endpoint autonomy was also higher for Bandit: 4.82 versus 4.63.

This lens makes the autonomy-compliance trade-off visible and actionable, rather than hidden behind average treatment effects.

---

## [Slide 12] Persistence During Withdrawal

During the two-week withdrawal, effects partially persisted. The top and bottom left panels show Streaming and Tabs compliance trajectories across all three phases. The right panel reports Partial Persistence Indices: 0.55 for Streaming and 0.47 for Tabs --- roughly half the intervention gain retained.

At the week-five follow-up, residual benefits remained: plus 4.2 percentage points for Streaming and plus 4.6 for Tabs. High-frequency behaviors showed the strongest persistence. Bandit maintained advantages throughout.

---

## [Slide 13] Section: Contributions

*(transition slide)*

---

## [Slide 14] Four Contributions

Four contributions. C1: evaluation rigor through parity controls and opportunity denominators. C2: human-centered on-device learning with DoNothing, user-governed constraints, and explicit feedback. C3: two new reporting lenses --- the Ethical-Efficacy Frontier and Energy ROI with sensitivity bands. C4: field evidence on four routine digital behaviors with withdrawal and follow-up data.

---

## [Slide 15] Five Design Principles

Five design principles. First, govern intensity --- quiet hours and budgets as first-class constraints. Second, make targeting legible with "Why this?" explanations. Third, minimize data and keep learning local --- personalization without profiling. Fourth, learn restraint --- DoNothing as a first-class action. Fifth, report net impact --- Energy ROI with assumptions and sensitivity bands.

---

## [Slide 16] Take-Home Message

Our take-home message: **personalization without profiling is effective, respectful, and net-positive.** Keep learning on-device. Let users govern their attention budgets. Teach your system when *not* to act. And make autonomy-compliance trade-offs and energy costs visible, not hidden behind average treatment effects.

Thank you.

---

## [Slide 17] Thank You / Q&A

I'm happy to take questions. You can reach me at fgr@tyust.edu.cn, and the paper is available at the DOI shown. Thank you.

---

*Total word count: ~1,430 words*
*Estimated delivery time: 9--10 minutes at natural speaking pace (150 wpm)*
