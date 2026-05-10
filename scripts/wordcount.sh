#!/bin/bash
# Generates components/wordcounts.tex with word count commands for each section.
# Called automatically during LaTeX compilation via \write18.

DIR="$(cd "$(dirname "$0")/.." && pwd)/components"

count() {
    texcount -1 -sum -q "$DIR/$1" 2>/dev/null | tr -d '[:space:]'
}

WC_ABSTRACT=$(count abstract.tex)
WC_INTRO=$(count 1_introduction.tex)
WC_RELATED=$(count 2_related_work.tex)
WC_METHOD=$(count 3_design_methods.tex)
WC_METHODOLOGY=$(count 4_experimental_setup.tex)
WC_RESULT=$(count 5_result.tex)
WC_DISCUSSION=$(count 6_discussion.tex)
WC_CONCLUSION=$(count 7_conclusion.tex)
WC_FUTURE=$(count 8_future_work.tex)
WC_TOTAL=$((WC_ABSTRACT + WC_INTRO + WC_RELATED + WC_METHOD + WC_METHODOLOGY + WC_RESULT + WC_DISCUSSION + WC_CONCLUSION + WC_FUTURE))

cat > "$DIR/wordcounts.tex" << EOF
\newcommand{\wcAbstract}{$WC_ABSTRACT}
\newcommand{\wcIntro}{$WC_INTRO}
\newcommand{\wcRelated}{$WC_RELATED}
\newcommand{\wcMethod}{$WC_METHOD}
\newcommand{\wcMethodology}{$WC_METHODOLOGY}
\newcommand{\wcResult}{$WC_RESULT}
\newcommand{\wcDiscussion}{$WC_DISCUSSION}
\newcommand{\wcConclusion}{$WC_CONCLUSION}
\newcommand{\wcFuture}{$WC_FUTURE}
\newcommand{\wcTotal}{$WC_TOTAL}
EOF
