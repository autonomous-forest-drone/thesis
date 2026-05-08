#!/bin/bash
# Generates components/wordcounts.tex with word count commands for each section.
# Called automatically during LaTeX compilation via \write18.

DIR="$(cd "$(dirname "$0")/.." && pwd)/components"

count() {
    texcount -1 -sum -q "$DIR/$1" 2>/dev/null | tr -d '[:space:]'
}

WC_ABSTRACT=$(count abstract.tex)
WC_INTRO=$(count 1_introduction.tex)
WC_METHOD=$(count 2_method.tex)
WC_RESULT=$(count 3_result.tex)
WC_DISCUSSION=$(count 4_discussion.tex)
WC_CONCLUSION=$(count 5_conclusion.tex)
WC_TOTAL=$((WC_ABSTRACT + WC_INTRO + WC_METHOD + WC_RESULT + WC_DISCUSSION + WC_CONCLUSION))

cat > "$DIR/wordcounts.tex" << EOF
\newcommand{\wcAbstract}{$WC_ABSTRACT}
\newcommand{\wcIntro}{$WC_INTRO}
\newcommand{\wcMethod}{$WC_METHOD}
\newcommand{\wcResult}{$WC_RESULT}
\newcommand{\wcDiscussion}{$WC_DISCUSSION}
\newcommand{\wcConclusion}{$WC_CONCLUSION}
\newcommand{\wcTotal}{$WC_TOTAL}
EOF
