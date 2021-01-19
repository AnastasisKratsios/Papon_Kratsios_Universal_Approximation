\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colt2021}[2021/02/01 v1.0 COLT 2021 Proceedings]
\newcommand{\todo}{\color{red}}

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\@ifundefined{ifpreprint}{
  \newif\ifpreprint
  \preprintfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\DeclareOption{preprint}{\preprinttrue}
\ProcessOptions\relax

\LoadClass[pmlr]{jmlr}

\ifpreprint
	\jmlrvolume{}
	\jmlryear{}
	\jmlrproceedings{}{}
	\jmlrpages{}
\else
	\jmlrvolume{vol {134}}
	\jmlryear{2021}
	\jmlrproceedings{PMLR}{Proceedings of Machine Learning Research}
\fi

\ifanonsubmission
 \newcommand{\coltauthor}[1]{}
 \author{author names withheld}
 \editor{Under Review for COLT 2021}
 \jmlrworkshop{34th Annual Conference on Learning Theory}
 \renewcommand{\acks}[1]{}
\else
 \newcommand{\coltauthor}[1]{\author{#1}}
 \iffinalsubmission
  \editors{Mikhail Belkin and Samory Kpotufe}
  \jmlrworkshop{34th Annual Conference on Learning Theory}
 \fi
\fi


