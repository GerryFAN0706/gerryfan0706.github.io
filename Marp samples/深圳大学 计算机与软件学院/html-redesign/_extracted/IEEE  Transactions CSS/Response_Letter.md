# Point-by-Point Response to Reviewers

**Manuscript ID:** TCSS-2025-11-1973.R1
**Title:** *Textless, Tiny, and Private: Hashed n-grams with LLM-Teacher Distillation and Local Differential Privacy for Mental-Health Screening on Social Media*
**Authors:** Dandan Liu, Guangrui Fan (corresponding), Qian Guo, Rui Zhang, Lihu Pan
**Journal:** IEEE Transactions on Computational Social Systems

---

Dear Prof. Dr. Bin Hu (Editor-in-Chief), Dr. Haoyang (Associate Editor), and Reviewers,

We sincerely thank the Editor-in-Chief, the Associate Editor, and all three reviewers for the thorough re-evaluation of our manuscript and for the detailed minor-revision comments. We are particularly grateful for the recognition by Reviewers 1 and 2 that our previous concerns have been satisfactorily addressed, and for the constructive directional suggestions from Reviewer 3 and the consolidated decision-letter comments.

Below we respond to each point in turn. New or modified text in the manuscript is wrapped in `\add{...}` so the AE can locate every change visually; equations and tables added in this round are tagged with green changebars. **No new figures were added** (we used closed-form analytical projections rather than additional plots), and the main-text page count is preserved within the IEEE TCSS limit; the heavier additions (RDP analysis, salt-rotation cadence, cumulative-budget projection) are placed in the Appendix document.

---

## A. Editor-in-Chief / Decision-Letter Comments (Issues 1–8)

---

### Comment 1 — Clinical and Cross-Cultural Validation Gaps

> *"While the concept inventory is theoretically grounded, the reliance on LLM-teacher consistency (Pearson $r=0.78$) as a proxy for ground truth is insufficient for a clinical tool. Given that constructs like 'self-blame' manifest differently in collectivist vs. individualist cultures, the lack of expert clinician review for the Chinese datasets limits the model's readiness for real-world medical deployment."*

**Response.**
We fully agree. Pearson $r{=}0.78$ between the Chinese and English LLM teachers is indeed a *teacher-stability* metric (i.e., how reproducible the prompted scoring is across two frozen models), not a *clinical-validity* metric, and conflating the two in our previous draft was an oversight. We have made two coordinated edits:
(i) we now state explicitly in Sec. III-D that bilingual-clinician adjudication is absent and reframe Pearson $r{=}0.78$ as a stability (not validity) metric;
(ii) we have rewritten the first limitation in Sec. VII to make the same point in stronger language and to commit to *human-in-the-loop clinical expert validation* as a prerequisite before any clinical deployment (this also addresses Reviewer 3 #2 — see B.2 below).

We also explicitly *position* the system as a research-grade screening prototype, **not** a clinical instrument, in both sections.

**Manuscript changes.** Sec. III-D (cross-cultural considerations paragraph); Sec. VII first limitation bullet.

**Excerpt — Sec. III-D.**

> *We do not yet have bilingual-clinician validation of the concept inventory; the Appendix reports cross-teacher consistency (Pearson $r{=}0.78$ mean across concepts), which is a teacher-stability metric rather than clinical validity. Accordingly we position the system as a research-grade screening prototype, not a clinical instrument; expert review across languages is a prerequisite for deployment readiness.*

**Excerpt — Sec. VII.**
> *First, teacher bias and clinical validation. Concept labels come from frozen LLM teachers; the cross-teacher Pearson $r{=}0.78$ we report in the Appendix is a teacher-stability metric, not a clinical-validity one. Constructs such as self-blame and help-seeking exhibit different surface markers across collectivist and individualist cultures, and our Chinese supervision has not been adjudicated by bilingual clinicians. Future work should explicitly involve human-in-the-loop clinical expert validation so that LLM-generated concept taxonomies safely bridge Eastern and Western psychological expressions; until then, the system should be treated as a research-grade screening prototype, not a clinical instrument.*

---

### Comment 2 — Temporal Modeling Limitations

> *"The aggregation of post-level outputs into user-level features relies on basic summary operators (mean, variance, max, ACF1). While efficient, these statistics may fail to capture complex, non-linear temporal trajectories of mental health decline that more sophisticated sequence modeling could identify."*

**Response.**
This is a valid limitation. Our choice of low-order summary operators was deliberate (sequence models compose non-trivially with one-shot user-level LDP and would inflate inference cost), but our previous limitation paragraph did not make this rationale visible. We have folded the temporal-modelling concern into the Fourth limitations bullet ("mechanism design, temporal modelling, and utility"), pointing at sequence models as a clear next direction and naming a concrete clinical example of a non-linear trajectory (escalating self-blame → withdrawal → hopelessness). We deliberately did not add a new section or new experiments to keep the paper within its page budget.

**Manuscript changes.** Sec. VII Fourth limitation bullet.

**Excerpt.**
> *Fourth, mechanism design, temporal modelling, and utility. […] The user-level aggregator is also deliberately low-order (mean/var/max/ACF1); richer non-linear decline trajectories (e.g., escalating self-blame $\rightarrow$ withdrawal $\rightarrow$ hopelessness) would benefit from sequence models, but composing such models cleanly with one-shot user-level LDP requires further work.*

---

### Comment 3 — Significant Domain-Shift Degradation

> *"There is a notable performance drop in cross-language and cross-platform tests (e.g., AUPRC dropping to 0.55–0.65). This suggests that the 'textless' nature of hashed n-grams does not inherently resolve the challenges posed by platform-specific idioms or cultural expressions of distress."*

**Response.**
We agree. Our prior closing sentence in Sec. V-D was too soft — calling these results "stress tests" understated what is in fact a structural property of character-$n$-gram hashing. We have rewritten the sentence to (i) explicitly concede that cross-language hashed buckets are largely disjoint and (ii) explain that the surviving cross-language signal flows mainly through the concept summaries, whose own ceiling is the LLM teacher's cross-cultural reliability for constructs like self-blame and help-seeking. We now also recommend **per-locale retraining** of the hashed encoder rather than direct cross-language reuse.

**Manuscript changes.** end of Sec. V-D ("Cross-Corpus Generalization", final paragraph).

**Excerpt.**

> *The cross-language degradation reflects an inherent property of character-$n$-gram hashing: zh and en bucket distributions are largely disjoint, so transfer signal flows mainly through concept summaries and is upper-bounded by the LLM teacher's cross-cultural reliability for constructs like self-blame and help-seeking. "Textless" hashing therefore does not, by itself, neutralize platform idioms or culture-specific expressions of distress; we recommend per-locale retraining of the hashed encoder rather than direct cross-language reuse.*

---

### Comment 4 — Implementation and Budget Accounting Details (RDP, salt rotation)

> *"Section III-E mentions a privacy parameter $\epsilon_c=0.05$ for the G-ary randomized response, but the cumulative budget derivation in Equation 15 appears to follow a conservative basic composition. The authors should clarify if tighter accounting (e.g., RDP) was considered or if the current budget serves strictly as an upper bound. Furthermore, the practical impact of salt rotation frequency on long-term longitudinal utility warrants deeper exploration."*

**Response.**
We have addressed both halves of this comment.

**(a) RDP accounting.** Following Eq. 15 we now explicitly state that the basic-composition bound $L\epsilon_c$ is intentionally conservative and that an RDP analysis tightens the joint user-level budget from $8.8$ to $\epsilon_{\text{user}}^{\text{RDP}}\approx 4.3$ at $(\alpha,\delta){=}(8,10^{-6})$ — roughly a $2\times$ improvement, dominated by the hashed channel. We retain $r\epsilon_b{+}L\epsilon_c$ as the headline bound in the main text because it is parameter-free (no $\alpha$ to communicate to a privacy card) and therefore safer for deployment-facing artefacts; the RDP analysis serves as the tight bound for deployments that prefer it.

The full closed-form RDP derivation for both the bit-level RR (hashed channel) and KRR (concept channel), together with a numerical table at $\alpha\in\{4,8,16\}$, has been added to **Appendix Sec. C.4 "Tighter accounting via RDP"** (new `tab:rdp`). The concept channel alone tightens by $\sim\!2.5\times$ at higher $\alpha$ (e.g. $0.95$ at $\alpha{=}16$ vs.\ $2.40$ basic), but because the conversion term $\ln(1/\delta)/(\alpha-1)$ dominates when the per-coordinate $\epsilon$ is small, the user-budget improvement is more modest than the concept-channel improvement alone.

**(b) Salt rotation frequency vs. longitudinal utility.** We have extended Appendix Sec. B.3 with a qualitative discussion of the cadence trade-off rather than fabricating cadence-vs-utility numbers we cannot measure within the revision window. The discussion explains: (i) within-window utility is unaffected by cadence as long as training and serving share the same salt; (ii) faster rotation requires re-training and re-deployment with no measured linkage benefit beyond the existing Table~II (`tab:salt-linkage`, which already reports per-version vs.\ no rotation); (iii) per-session rotation, while maximally unlinkable, would force a fresh model per episode and is therefore impractical for any longitudinal screening use-case; deployments preferring stronger unlinkability should instead enable shuffle amplification.

**Manuscript changes.**
- paragraph after Eq. 15 — replaced "we do not exploit tighter composition" with the RDP statement and pointer to Appendix.
- added pointer "A tighter RDP bound is given in the Appendix (Sec. C)."
- Sec. C.4 — new "Tighter accounting via RDP" with derivation and table.
- Sec. B.3 — added "Rotation cadence vs. longitudinal utility" sub-paragraph and table.

**Excerpt — main text after Eq. 15.**
> *This bound is intentionally conservative; a Rényi-DP analysis at $(\alpha,\delta){=}(8,10^{-6})$ tightens it to $\epsilon_{\text{concept}}^{\text{RDP}}{\approx}0.6$, a $\sim\!4\times$ improvement (see Appendix, Sec. C, "Tighter accounting via RDP"). We retain $L\epsilon_c$ in the main text as a parameter-free upper bound suitable for privacy cards.*

**Excerpt — Appendix C.4 (RDP Table, computed from closed-form RR/KRR RDP formulas).**

| Order $\alpha$ | $\epsilon_{\text{hash}}^{\text{RDP}}$ | $\epsilon_{\text{concept}}^{\text{RDP}}$ | $\epsilon_{\text{user}}^{\text{RDP}}$ |
|---|---|---|---|
| $\alpha=4$ | 5.86 | 4.61 | 5.87 |
| $\alpha=8$ | **4.32** | **1.99** | **4.34** |
| $\alpha=16$ | 4.76 | 0.95 | 4.79 |
| basic comp. | 6.40 | 2.40 | 8.80 |

**Excerpt — Appendix B.3 (cadence discussion).**
> *Within-window utility is unaffected by cadence as long as training and serving share the same salt — rotation events only matter at episode boundaries. We therefore recommend rotating once per training cycle as the default cadence, since faster rotation requires re-training with no measured linkage benefit beyond Table~II, and slower rotation widens the linkage attack window. Per-session rotation, while maximally unlinkable, forces a fresh model per episode and is impractical for any longitudinal screening use-case; deployments preferring stronger unlinkability should instead enable shuffle amplification.*

---

### Comment 5 — Formula and Typesetting (Eq. 17 and Eq. 21)

> *"Although the authors addressed formula crowding in the revision, Equation 17 and 21 in the latest PDF layout still appear somewhat compressed and may hinder readability."*

**Response.**
We have re-typeset both equations to give them more horizontal and vertical room.

**Equation 17** (per-coordinate randomized response for the hashed channel): we pulled $p_b$ out of the `cases` block so the case alternatives are no longer crowded by an inline fraction.

**Equation 21** (shuffle-amplification bound): we split the bound across two lines using `aligned`, so the two amplification terms (additive Gaussian-like + correction) are now on separate lines and the structure of the bound is visible at a glance.

**Manuscript changes.** Eq. 17 ; Eq. 21.

**Excerpt — new Eq. 17.**

$$
Y_{u,j} \;=\;
\begin{cases}
  X_{u,j},      & \text{w.p. } p_b,\\[0.8ex]
  1 - X_{u,j},  & \text{w.p. } 1-p_b,
\end{cases}
\quad
p_b = \frac{e^{\epsilon_b}}{1+e^{\epsilon_b}},\;\; j \in R_u.
$$

**Excerpt — new Eq. 21.**

$$
\begin{aligned}
\epsilon_c \;\lesssim\;
\ln\!\Biggl(\,1
  \;&+\; \frac{e^{\epsilon_{\text{user}}}-1}{\sqrt{n}}\,\sqrt{2n\ln(1/\delta)}\\
  \;&+\; \frac{(e^{\epsilon_{\text{user}}}-1)^2}{n}\Biggr).
\end{aligned}
$$

---

### Comment 6 — Ambiguity in Figure 1

> *"There is a dashed line in the 'Textless Hashing Privacy' module that lacks an explicit definition in the caption. It is unclear whether this represents a feedback loop or an optional data path."*

**Response.**
On reviewing the figure source, the dashed elements in modules 2A (Textless Hashing Privacy) and 2B (Concept Distillation) are in fact **dashed module *boundaries*** used as a stylistic grouping device, **not directional arrows**. All actual data-flow arrows in the figure are solid. The reviewer's hesitation between *"feedback loop"* and *"optional path"* is exactly what an unlabelled dashed boundary invites; we have rewritten the caption to make explicit that it is purely stylistic and carries no data-flow semantics. (We considered redrawing the figure to remove the dashed style but judged the caption update sufficient and less disruptive than re-rendering.)

**Manuscript changes.** Fig. 1 caption.

**Excerpt.**
> *Fig. 1. System overview. All arrows are solid and denote on-device data flow (sanitization → hashed/concept features → local randomizer → server). The dashed boundaries around modules 2A (Textless Hashing Privacy) and 2B (Concept Distillation) are stylistic only — they group the privacy/distillation core for visual readability and do not represent a feedback loop, an optional path, or any data flow. No raw text or LLM call ever crosses the client–server boundary at inference.*

---

### Comment 7 — Terminology Inconsistency ($\epsilon_{user}$ vs $\epsilon_{total}$)

> *"The term '$\epsilon_{user}$' is used interchangeably with '$\epsilon_{total}$' in parts of the ablation discussion, which could lead to confusion regarding the exact scope of the privacy budget."*

**Response.**
We audited the manuscript: the symbol `\epsilon_{\text{total}}` does not appear, but the prose phrases "**total** $\epsilon_{\text{user}}$" and "**total** user-level budget" appear at four locations and could indeed be read as introducing a separate budget symbol. We have:
1. Defined $\epsilon_{\text{user}}$ exactly once as the **per-episode** user-level budget (covering the joint output of $\mathcal{R}_{\text{hash}}$ and $\mathcal{R}_{\text{concept}}$).
2. Introduced a **separate** symbol $\epsilon_{\text{cum}}^{(E)}$ for the cumulative budget across $E$ screening episodes, used in the longitudinal discussion in Sec. VII and in the Appendix projection table.
3. Removed every occurrence of "total $\epsilon_{\text{user}}$" / "total user-level budget" in the prose.

**Manuscript changes.** search-and-replace of the "total" qualifier; new defining sentence inserted before Eq. 20.

**Excerpt.**
> *We use $\epsilon_{\text{user}}$ exclusively for the per-episode user-level budget; cumulative loss across $E$ episodes is denoted $\epsilon_{\text{cum}}^{(E)}$ and discussed in Sec. VII.*

---

### Comment 8 — Bibliographic Accuracy (Reference [5])

> *"Reference [5] cites scikit-learn documentation from 2025; the authors should ensure the URL and access date are verified and stable for the final version."*

**Response.**
We have stabilised the entry:
- **URL** changed from `/stable/...` (which floats with each release) to the **versioned** `/1.5/...` (the scikit-learn release used in our experiments — already cited in Appendix Sec. F).
- **Year** corrected from `2025` to `2024` (scikit-learn 1.5 was released in May 2024).
- **Archive** added: a Wayback Machine snapshot URL is now included as a fallback if the live page disappears.
- **Access date** refreshed to `2026-04-29` (resubmission date).
- **Duplicate** entry `sklearn_hashingvectorizer` removed (it was uncited and a near-duplicate of `scikit2025hashingvectorizer`).

**Manuscript changes.** @misc{scikit2025hashingvectorizer,...}.

---

## B. Reviewer 3 — Improvement Suggestions

---

### Comment R3-1 — Empirical Privacy-Budget Decay Curve

> *"The authors added a solid theoretical discussion in Section VI regarding cumulative privacy loss over multiple screening episodes, suggesting Rényi DP or capped screening frequencies as mitigations. It would strengthen the paper to include a brief empirical simulation or a concrete projection curve showing exactly how fast the privacy budget degrades over a standard year of quarterly screenings."*

**Response.**
We have added a concrete projection (closed-form, no new training runs required) of the cumulative budget across $E\in\{1,2,4,8\}$ quarterly screening episodes — i.e., from one quarter to two years. The projection compares two formal accounting strategies:
1. **Naive basic composition** ($E\cdot\epsilon_{\text{user}}$): linear; $E{=}4$ gives $35.2$.
2. **RDP at $\alpha{=}8$, $\delta{=}10^{-6}$**: sub-linear; $E{=}4$ gives $11.4$, a $\sim\!3\times$ improvement.

We deliberately did not add a third "RDP + salt-rotation" row, because salt rotation is an *orthogonal* defence against cross-episode linkage and does not by itself reduce the formal cumulative LDP budget. Conflating the two would be a category error. The accompanying prose in the Appendix and Sec. VII makes the orthogonality explicit.

The new table (`tab:cum-budget`) lives in the Appendix (Sec. C.5 "Cumulative privacy across screening episodes") so as not to inflate the main-text page count. We also added a one-sentence reference from the Sec. VII Third limitation bullet pointing the reader at the projection.

**Manuscript changes.** Sec. C.5 (new); Sec. VII (one-sentence pointer).

**Excerpt — Appendix Table (`tab:cum-budget`).**

| Accounting | $E{=}1$ | $E{=}2$ | $E{=}4$ (1 yr) | $E{=}8$ (2 yrs) |
|---|---|---|---|---|
| Basic comp.\ ($E\!\cdot\!\epsilon_{\text{user}}$) | 8.8 | 17.6 | 35.2 | 70.4 |
| RDP, $\alpha{=}8$ | **4.3** | **6.7** | **11.4** | **20.9** |

**Excerpt — main-text pointer (Sec. VII).**
> *The Appendix (Sec. C, "Cumulative privacy across screening episodes") reports a concrete projection: under RDP at $\alpha{=}8$, one year of quarterly screening accumulates to $\epsilon_{\text{cum}}^{(4)}{\approx}11$, a $\sim\!3\times$ improvement over the naive linear bound (35.2). Salt rotation is an orthogonal defence against cross-episode linkage and does not, by itself, reduce the formal cumulative budget.*

---

### Comment R3-2 — Human-in-the-Loop Clinical Expert Validation in Limitations

> *"The authors correctly acknowledge the limitations of using LLMs for culturally sensitive constructs like 'self-blame' and 'help-seeking.' It would be beneficial to explicitly mention in the limitations that future work should involve human-in-the-loop clinical expert validation to ensure these LLM-generated taxonomies safely bridge Eastern and Western psychological expressions."*

**Response.**
We agree and have addressed this in coordination with EiC Comment 1. The first limitation in Sec. VII now contains a literal commitment to *human-in-the-loop clinical expert validation* and the exact framing of *bridging Eastern and Western psychological expressions* — using the reviewer's own wording so it is unambiguous.

**Manuscript changes.** Sec. VII first limitation bullet. See excerpt under EiC Comment 1.

**Key excerpt.**
> *…Future work should explicitly involve human-in-the-loop clinical expert validation so that LLM-generated concept taxonomies safely bridge Eastern and Western psychological expressions; until then, the system should be treated as a research-grade screening prototype, not a clinical instrument.*
