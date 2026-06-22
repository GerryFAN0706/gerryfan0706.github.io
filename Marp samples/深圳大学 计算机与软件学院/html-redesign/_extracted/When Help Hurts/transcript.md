# Presentation Transcript: "When Help Hurts"

**Target duration: 10 minutes (~1,500 words at natural pace)**
**Venue: CHI 2026, Barcelona, Spain**

---

## [Slide 1] Title Slide

Good morning everyone. My name is Guangrui Fan from Taiyuan University of Science and Technology, and I'm presenting joint work with Dandan Liu from Universiti Malaya, Lihu Pan, and Rui Zhang.

Our paper asks: when your AI coding assistant generates fluent code, how much effort do you spend *checking* it --- and does the *interface* change that balance?

---

## [Slide 2] Section: Motivation

*(transition slide --- no narration)*

---

## [Slide 3] Three Interaction Modes

We compare three ways developers interact with the same AI backend. Inline delivers ghost-text completions directly in the editor --- low friction, high speed, but risks uncritical acceptance. Chat enables conversational turns with copyable code blocks, letting you plan before implementing. Structured uses a form schema --- function signatures, pre/post-conditions, edge cases --- that scaffolds reasoning before generating code.

Critically, all three use the exact same LLM backend with identical settings. Any differences we observe are purely interface-driven.

---

## [Slide 4] Gaps & Research Questions

Three gaps motivate our work. First, most evaluations vary the model or study a single interface, confounding model power with interaction design. Second, verification effort is never captured as a portable, cross-mode behavioral construct. Third, we rarely know where along a complexity continuum one mode begins to dominate another.

This gives us three research questions. RQ1: how does interaction mode affect workload, time, and correctness? RQ2: how do stress and fatigue evolve, and does verification-load mediate? RQ3: how do expertise and complexity moderate mode effects, and where are the crossovers?

---

## [Slide 5] Section: Study Design

*(transition slide)*

---

## [Slide 6] Study Design Overview

We recruited sixty developers. Thirty-six formed the AI cohort in a counterbalanced, within-subjects design --- each completed all three Python tasks in all three modes across nine balanced sequences. Twenty-four formed a matched no-AI control. Participants were stratified by experience and AI familiarity.

The three tasks increase in complexity: Task A is CSV/JSON parsing, Task B is debugging an authentication module, and Task C involves building a batch REST client with rate limiting and exponential backoff.

---

## [Slide 7] Measures & Verification-Load Index

Our measurement protocol captures both outcomes and process. Each task session includes pre-task fatigue and stress measures, the running task with behavioral telemetry, and post-task workload, stress, trust, and usability ratings.

The core innovation is V-core --- a mode-agnostic verification-load index combining five behavioral signals: compile/test failures, time-to-first-compile, normalized code churn, cumulative pause time, and context switches. Cronbach's alpha is 0.80 and the first principal component explains 52 percent of variance.

---

## [Slide 8] Section: RQ1

*(transition slide)*

---

## [Slide 9] RQ1 --- NASA-TLX & Completion Time

Looking at workload and speed across tasks and modes. On low-complexity Task A, Inline delivers the lowest workload and fastest completion. As complexity rises to Task C, the modes converge on speed --- Chat matches Inline at about 27 minutes --- while Structured consistently shows the highest workload.

Pooled across all modes, AI reduces workload by 18.2 TLX points, speeds completion by 22 percent, and improves correctness with an odds ratio of 1.71.

---

## [Slide 10] RQ1 --- Correctness & Acceptance

On correctness, Chat excels at high complexity: 8.0 out of 10 versus 7.3 for Inline and 7.1 for Structured. Both contrasts are significant.

There's also a nuance within Inline. We found a quadratic relationship between acceptance rate and correctness. The optimal acceptance rate is about 48 percent. Both very low acceptance --- under-use --- and very high acceptance --- over-reliance --- hurt correctness. Trust calibration matters.

---

## [Slide 11] Section: RQ2

*(transition slide)*

---

## [Slide 12] RQ2 --- Fatigue & Stress Trajectories

Both cohorts fatigued over three tasks, but AI users showed a steeper KSS slope: plus 0.70 per task compared to plus 0.48 for controls. Stress followed a similar pattern.

The key mechanistic finding: V-core mediates approximately 26 percent of the fatigue increase and 24 percent of the stress increase. Rising verification load --- failures, compile delays, churn, pauses, and context switches --- accounts for roughly a quarter of the growing burden across repeated AI-assisted tasks.

---

## [Slide 13] Section: RQ3

*(transition slide)*

---

## [Slide 14] RQ3 --- Expertise Moderation

The pattern differs by expertise level. Looking at workload, speed, and correctness across novice, intermediate, and experienced developers: novices benefit from Structured scaffolding at moderate complexity --- 6.2 fewer TLX points than Inline. Intermediate developers see narrower differences. Experienced developers dominate with Inline on simple tasks but switch to Chat for complex ones, achieving 8.4 correctness versus 7.6 for Inline.

This is a classic expertise reversal effect.

---

## [Slide 15] RQ3 --- Verification-Load Heatmap

The heatmap makes the pattern concrete. At low complexity, Inline has the lowest V-core. But at high complexity, Chat's verification load drops while Inline and Structured rise. The bar chart shows which components drive the load, and the correlation matrix confirms these verification frictions co-occur.

Chat at high complexity is 0.40 below Inline --- highly significant. Chat dampens verification burden precisely when tasks are hardest.

---

## [Slide 16] Section: Design Implications

*(transition slide)*

---

## [Slide 17] Four Design Principles

We translate these findings into four principles. First, adaptive mode orchestration: when V-core rises, suggest switching from Inline to Chat. Second, transparency on demand: micro-rationales at the line/diff level for risky edits, not always-on global confidences. Third, scaffolded authoring: Structured prompts for novices and ambiguous requirements. Fourth, verification-aware packaging: batch suggestions into testable chunks with a try-run sandbox.

---

## [Slide 18] Contributions

Four contributions. C1: backend-parity comparison --- three modes, one LLM, effects attributed to interface. C2: V-core, a portable mode-agnostic verification-load index with alpha 0.80. C3: Johnson-Neyman crossover thresholds showing where Chat surpasses Inline. C4: an actionable design recipe with a recommendation to report V-core alongside outcomes as models evolve.

---

## [Slide 19] Take-Home Message

Our take-home message: **the interface is the intervention, not just the model.** AI coding assistants help, but *how* help is delivered shapes verification burden, fatigue, and correctness. Design for adaptive mode orchestration and measure verification load, not just outcomes.

Thank you.

---

## [Slide 20] Thank You / Q&A

I'm happy to take questions. You can reach me at fgr@tyust.edu.cn, and the paper is available at the DOI shown. Thank you.

---

*Total word count: ~1,420 words*
*Estimated delivery time: 9--10 minutes at natural speaking pace (150 wpm)*
