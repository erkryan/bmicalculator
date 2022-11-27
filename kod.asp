<% @ Language=VBScript %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
    <title>BMI Calculator</title>


		<link href="takvim.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="jquery-1.7.2.min.js" charset="utf-8"></script>




    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" />
<![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="script.js"></script>
    <script src="script.responsive.js"></script>

<script type="text/javascript" src="fn.js"></script>

<%


If Request.ServerVariables("REQUEST_METHOD") = "POST" Then

 if session("gk") = request.form("gk") then

if request.form("s1")=1 then
g1=0.9
g2=0.1
end if

if request.form("s1")=2 then
g1=0.1
g2=0.9
end if

<!--question 2 convert one code data to weight-->

if request.form("s2")=1 then
g3=0.9
g4=0.1
end if

if request.form("s2")=2 then
g3=0.1
g4=0.9
end if

<!--question 3 convert one code data to weight-->

if request.form("s3")=1 then
g5=0.9
g6=0.1
end if

if request.form("s3")=2 then
g5=0.1
g6=0.9
end if

<!--question 4 convert one code data to weight-->

if request.form("s4")=1 then
g7=0.9
g8=0.1
g9=0.1
end if

if request.form("s4")=2 then
g7=0.1
g8=0.9
g9=0.1
end if

if request.form("s4")=3 then
g7=0.1
g8=0.1
g9=0.9
end if

<!--question 5 convert one code data to weight-->

if request.form("s5")=1 then
g10=0.9
g11=0.1
end if

if request.form("s5")=2 then
g10=0.1
g11=0.9
end if

<!--question 6 convert one code data to weight-->

if request.form("s6")=1 then
g12=0.9
g13=0.1
end if

if request.form("s6")=2 then
g12=0.1
g13=0.9
end if

<!--question 7 convert one code data to weight-->

if request.form("s7")=1 then
g14=0.9
g15=0.1
end if

if request.form("s7")=2 then
g14=0.1
g15=0.9
end if

<!--question 8 convert one code data to weight-->

if request.form("s8")=1 then
g16=0.9
g17=0.1
g18=0.1
end if

if request.form("s8")=2 then
g16=0.1
g17=0.9
g18=0.1
end if

if request.form("s8")=3 then
g16=0.1
g17=0.1
g18=0.9
end if

<!--question 9 convert one code data to weight-->

if request.form("s9")=0 then
g19=0.9
g20=0.1
g21=0.1
g22=0.1
end if

if request.form("s9")=1 then
g19=0.1
g20=0.9
g21=0.1
g22=0.1
end if

if request.form("s9")=2 then
g19=0.1
g20=0.1
g21=0.9
g22=0.1
end if

if request.form("s9")=3 then
g19=0.1
g20=0.1
g21=0.1
g22=0.9
end if

<!--question 10 convert one code data to weight-->


if request.form("36")=1 then
siddetlifa=0
else
siddetlifa=request.form("s36_g")*10 + request.form("s37_g")+request.form("s37_s")*60
end if

if request.form("s38")=1 then
ortasiddetlifa=0
else
ortasiddetlifa=request.form("s38_g")*10 + request.form("s39_g")+request.form("s39_s")*60
end if

if request.form("s40")=1 then
dusuksiddetlifa=0
else
dusuksiddetlifa=request.form("s40_g")*10 + request.form("s41_g")+request.form("s41_s")*60
end if

oturaraksiddetlifa=request.form("s42_g")+request.form("s42_s")*60

fiziksela=siddetlifa*8+ortasiddetlifa*4+oturaraksiddetlifa*1.5+dusuksiddetlifa*3.3


if fiziksela <600 then
g23=0.9
g24=0.1
g25=0.1
end if

if fiziksela >600 and fiziksela <1000 then
g23=0.1
g24=0.9
g25=0.1
end if

if fiziksela >=1000 then
g23=0.1
g24=0.1
g25=0.9
end if

if fiziksela >=2000 then
g23=0.1
g24=0.1
g25=0.9
end if

<!--question 11 convert one code data to weight-->

if request.form("s11")=1 then
g26=0.9
g27=0.1
end if

if request.form("s11")=2 then
g26=0.1
g27=0.9
end if

<!--question 12 convert one code data to weight-->

if request.form("s12")=0 then
g28=0.9
g29=0.1
g30=0.1
end if

if request.form("s12")=1 then
g28=0.1
g29=0.9
g30=0.1
end if

if request.form("s12")>=2 then
g28=0.1
g29=0.1
g30=0.9
end if

<!--question 13 convert one code data to weight-->

if request.form("s13")=1 then
g31=0.9
g32=0.1
end if

if request.form("s13")=2 then
g31=0.1
g32=0.9
end if

<!--question 14 convert one code data to weight-->




if request.form("s14_a")=0 then
g33=0.9
g34=0.1
g35=0.1
end if

if  request.form("s14_a")>1 and request.form("s14_a")<4 then
g33=0.1
g34=0.9
g35=0.1
end if

if request.form("s14_a")>3 then
g33=0.1
g34=0.1
g35=0.9
end if

if request.form("s14_a")>4 then
g33=0.1
g34=0.1
g35=0.9
end if

<!--question 15 convert one code data to weight-->

if request.form("s15")=1 then
g36=0.9
g37=0.1
end if

if request.form("s15")=2 then
g36=0.1
g37=0.9
end if

<!--question 16 convert one code data to weight-->

if request.form("s16")=1 then
g38=0.9
g39=0.1
g40=0.1
end if

if request.form("s16")=2 then
g38=0.1
g39=0.9
g40=0.1
end if

if request.form("s16")=3 then
g38=0.1
g39=0.1
g40=0.9
end if

<!--question 17 convert one code data to weight-->

if request.form("s17")=1 then
g41=0.9
g42=0.1
end if

if request.form("s17")=2 then
g41=0.1
g42=0.9
end if

<!--question 18 convert one code data to weight-->

if request.form("s18")=1 then
g43=0.9
g44=0.1
g45=0.1
g46=0.1
g47=0.1
g48=0.1
end if

if request.form("s18")=2 then
g43=0.1
g44=0.9
g45=0.1
g46=0.1
g47=0.1
g48=0.1
end if

if request.form("s18")=3 then
g43=0.1
g44=0.1
g45=0.9
g46=0.1
g47=0.1
g48=0.1
end if

if request.form("s18")=4 then
g43=0.1
g44=0.1
g45=0.1
g46=0.9
g47=0.1
g48=0.1
end if

if request.form("s18")=5 then
g43=0.1
g44=0.1
g45=0.1
g46=0.1
g47=0.9
g48=0.1
end if

if request.form("s18")=6 then
g43=0.1
g44=0.1
g45=0.1
g46=0.1
g47=0.1
g48=0.9
end if

<!--question 19 convert one code data to weight-->

if request.form("s19")=1 then
g49=0.9
g50=0.1
end if

if request.form("s19")=2 then
g49=0.1
g50=0.9
end if

<!--question 20 convert one code data to weight-->

if request.form("s20")=1 then
g51=0.9
g52=0.1
g53=0.1
g54=0.1
g55=0.1
g56=0.1
end if

if request.form("s20")=2 then
g51=0.1
g52=0.9
g53=0.1
g54=0.1
g55=0.1
g56=0.1
end if

if request.form("s20")=3 then
g51=0.1
g52=0.1
g53=0.9
g54=0.1
g55=0.1
g56=0.1
end if

if request.form("s20")=4 then
g51=0.1
g52=0.1
g53=0.1
g54=0.9
g55=0.1
g56=0.1
end if

if request.form("s20")=5 then
g51=0.1
g52=0.1
g53=0.1
g54=0.1
g55=0.9
g56=0.1
end if

if request.form("s20")=6 then
g51=0.1
g52=0.1
g53=0.1
g54=0.1
g55=0.1
g56=0.9
end if

<!--question 21 convert one code data to weight-->

if request.form("s21")=1 then
g57=0.9
g58=0.1
end if

if request.form("s21")=2 then
g57=0.1
g58=0.9
end if

<!--question 22 convert one code data to weight-->

if request.form("s22")=1 then
g59=0.9
g60=0.1
g61=0.1
end if

if request.form("s22")=2 then
g59=0.1
g60=0.9
g61=0.1
end if

if request.form("s22")=3 then
g59=0.1
g60=0.1
g61=0.9
end if

<!--question 23 convert one code data to weight-->

if request.form("s23")=1 then
g62=0.9
g63=0.1
g64=0.1
end if

if request.form("s23")=2 then
g62=0.1
g63=0.9
g64=0.1
end if

if request.form("s23")=3 then
g62=0.1
g63=0.1
g64=0.9
end if

<!--question 24 convert one code data to weight-->

if request.form("s24")=1 then
g65=0.9
g66=0.1
g67=0.1
end if

if request.form("s24")=2 then
g65=0.1
g66=0.9
g67=0.1
end if

if request.form("s24")=3 then
g65=0.1
g66=0.1
g67=0.9
end if

<!--question 25 convert one code data to weight-->

if request.form("s25")=1 then
g68=0.9
g69=0.1
g70=0.1
g71=0.1
g72=0.1
g73=0.1
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=2 then
g68=0.1
g69=0.9
g70=0.1
g71=0.1
g72=0.1
g73=0.1
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=3 then
g68=0.1
g69=0.1
g70=0.9
g71=0.1
g72=0.1
g73=0.1
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=4 then
g68=0.1
g69=0.1
g70=0.1
g71=0.9
g72=0.1
g73=0.1
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=5 then
g68=0.1
g69=0.1
g70=0.1
g71=0.1
g72=0.9
g73=0.1
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=6 then
g68=0.1
g69=0.1
g70=0.1
g71=0.1
g72=0.1
g73=0.9
g74=0.1
g75=0.1
g76=0.1
end if

if request.form("s25")=7 then
g68=0.1
g69=0.1
g70=0.1
g71=0.1
g72=0.1
g73=0.1
g74=0.9
g75=0.1
g76=0.1
end if

if request.form("s25")=8 then
g68=0.1
g69=0.1
g70=0.1
g71=0.1
g72=0.1
g73=0.1
g74=0.1
g75=0.9
g76=0.1
end if

if request.form("s25")=9 then
g68=0.1
g69=0.1
g70=0.1
g71=0.1
g72=0.1
g73=0.1
g74=0.1
g75=0.1
g76=0.9
end if

<!--question 26 convert one code data to weight-->

if request.form("s26")=1 then
g77=0.9
g78=0.1
g79=0.1
g80=0.1
g81=0.1
g82=0.1
g83=0.1
g84=0.1
end if

if request.form("s26")=2 then
g77=0.1
g78=0.9
g79=0.1
g80=0.1
g81=0.1
g82=0.1
g83=0.1
g84=0.1
end if

if request.form("s26")=3 then
g77=0.1
g78=0.1
g79=0.9
g80=0.1
g81=0.1
g82=0.1
g83=0.1
g84=0.1
end if

if request.form("s26")=4 then
g77=0.1
g78=0.1
g79=0.1
g80=0.9
g81=0.1
g82=0.1
g83=0.1
g84=0.1
end if

if request.form("s26")=5 then
g77=0.1
g78=0.1
g79=0.1
g80=0.1
g81=0.9
g82=0.1
g83=0.1
g84=0.1
end if

if request.form("s26")=6 then
g77=0.1
g78=0.1
g79=0.1
g80=0.1
g81=0.1
g82=0.9
g83=0.1
g84=0.1
end if

if request.form("s26")=7 then
g77=0.1
g78=0.1
g79=0.1
g80=0.1
g81=0.1
g82=0.1
g83=0.9
g84=0.1
end if

if request.form("s26")=8 then
g77=0.1
g78=0.1
g79=0.1
g80=0.1
g81=0.1
g82=0.1
g83=0.1
g84=0.9
end if

if request.form("s26")=9 then
g77=0.1
g78=0.1
g79=0.1
g80=0.1
g81=0.1
g82=0.1
g83=0.1
g84=0.1
end if



e1=g1*0.41782+g2*0.10856+g3*0.046569+g4*0.12299+g5*0.047533+g6*0.023374+g7*0.11986+g8*0.10585+g9*0.096955+g10*-0.21739+g11*0.14346+g12*0.21999+g13*0.16684+g14*0.20122+g15*-0.12311+g16*-0.13202+g17*0.10955+g18*0.1394+g19*0.18979+g20*0.17626+g21*-0.13789+g22*-0.083004+g23*-0.14116+g24*-0.14833+g25*-0.080743+g26*-0.21656+g27*0.17968+g28*-0.31021+g29*-0.010053+g30*-0.023901+g31*0.37886+g32*0.11548+g33*-0.044262+g34*-0.28637+g35*0.28508+g36*0.011844+g37*0.019288+g38*0.054539+g39*-0.093734+g40*-0.26001+g41*0.048198+g42*0.047183+g43*0.16074+g44*0.041499+g45*0.25942+g46*-0.1811+g47*-0.040243+g48*-0.2862+g49*-0.24024+g50*0.1247+g51*0.02989+g52*0.026616+g53*0.076879+g54*0.037392+g55*-0.18643+g56*-0.05641+g57*-0.10365+g58*-0.29096+g59*-0.08171+g60*0.068884+g61*-0.25505+g62*0.22248+g63*0.0013984+g64*-0.14691+g65*-0.055486+g66*0.20635+g67*0.36478+g68*0.28833+g69*0.0013725+g70*-0.13472+g71*-0.22036+g72*-0.31908+g73*-0.24941+g74*-0.22712+g75*0.28372+g76*0.21045+g77*0.04031+g78*0.19244+g79*0.0068553+g80*-0.31546+g81*0.056382+g82*0.078615+g83*-0.078785+g84*0.23409+1.4877
e2=g1*-0.1726+g2*-0.048758+g3*0.25448+g4*-0.27395+g5*0.19583+g6*-0.21858+g7*0.13703+g8*-0.19657+g9*0.24591+g10*-0.13212+g11*0.11137+g12*-0.14343+g13*-0.22042+g14*0.13685+g15*0.047937+g16*-0.14279+g17*0.26113+g18*-0.2658+g19*0.11462+g20*-0.073575+g21*-0.087734+g22*0.19254+g23*-0.22231+g24*0.01731+g25*-0.1607+g26*0.036891+g27*0.020129+g28*-0.15241+g29*-0.012583+g30*-0.073675+g31*0.089537+g32*-0.057228+g33*0.11545+g34*0.007657+g35*0.023848+g36*0.24101+g37*-0.24945+g38*-0.21849+g39*0.059216+g40*0.16608+g41*-0.086991+g42*0.15051+g43*0.056864+g44*-0.07301+g45*-0.047011+g46*0.18991+g47*-0.2135+g48*-0.19005+g49*-0.31087+g50*0.031613+g51*0.19746+g52*0.16345+g53*0.2304+g54*-0.26953+g55*-0.064275+g56*0.12097+g57*0.059237+g58*-0.15261+g59*-3.45887+g60*-0.061537+g61*-0.23881+g62*-0.082097+g63*0.17884+g64*-0.22575+g65*-0.05135+g66*-0.083954+g67*-0.15341+g68*-0.12731+g69*0.1434+g70*-0.088603+g71*-0.20645+g72*0.046214+g73*-0.2333+g74*-0.05823+g75*-0.21796+g76*0.11617+g77*0.0060762+g78*0.16279+g79*-0.1412+g80*-0.043979+g81*-0.22803+g82*0.27534+g83*-0.13436+g84*0.13601+1.1382
e3=g1*0.04603+g2*-0.10135+g3*0.17637+g4*0.0073033+g5*0.028619+g6*0.1505+g7*0.074732+g8*-0.05272+g9*-0.30736+g10*-0.14559+g11*-0.18457+g12*-0.085094+g13*0.15418+g14*0.17655+g15*-0.19769+g16*0.33694+g17*-0.14724+g18*0.16768+g19*0.02251+g20*-0.098892+g21*-0.04375+g22*0.21611+g23*0.18335+g24*-0.062827+g25*0.13064+g26*0.30612+g27*0.32198+g28*0.067668+g29*-0.18509+g30*-0.16594+g31*0.058824+g32*0.1139+g33*0.050657+g34*0.061324+g35*0.14345+g36*0.024214+g37*0.11889+g38*0.13336+g39*0.068622+g40*-0.081765+g41*-0.0070033+g42*0.19447+g43*-0.0018822+g44*-0.24319+g45*-0.094093+g46*0.091451+g47*0.15614+g48*0.63368+g49*-0.27109+g50*0.23063+g51*0.10638+g52*-0.22842+g53*0.21589+g54*0.071773+g55*-0.25047+g56*0.055188+g57*-0.004434+g58*-0.17658+g59*3.92744+g60*0.32653+g61*-0.081292+g62*-0.21903+g63*0.033064+g64*0.41187+g65*0.07747+g66*-0.055782+g67*-0.3449+g68*0.058704+g69*0.33011+g70*0.21147+g71*0.4889+g72*0.064538+g73*-0.063913+g74*-0.26523+g75*0.12852+g76*-0.057883+g77*-0.20902+g78*0.30305+g79*-0.27464+g80*-0.046993+g81*0.19089+g82*0.37135+g83*-0.073727+g84*0.090314-0.83956
e4=g1*-0.10868+g2*-0.1697+g3*0.024997+g4*0.13717+g5*0.043376+g6*-0.15636+g7*-0.038922+g8*-0.055489+g9*-0.22116+g10*0.08443+g11*0.17011+g12*0.16079+g13*0.096287+g14*0.070827+g15*-0.19289+g16*-0.13086+g17*-0.095241+g18*-0.29066+g19*0.1932+g20*0.015509+g21*0.11356+g22*0.24885+g23*0.10694+g24*-0.13614+g25*-0.023455+g26*-0.27294+g27*0.13437+g28*-0.081128+g29*-0.021553+g30*0.013809+g31*0.041437+g32*0.0082796+g33*-0.3234+g34*-0.0046096+g35*0.13462+g36*0.032495+g37*0.072116+g38*0.25791+g39*-0.0027382+g40*0.014196+g41*-0.18047+g42*-0.035385+g43*0.088241+g44*0.24569+g45*-0.00086745+g46*-0.26539+g47*-0.26541+g48*0.073587+g49*-0.10597+g50*0.010543+g51*0.14358+g52*-0.22396+g53*0.16415+g54*0.18766+g55*0.11647+g56*0.14636+g57*0.13471+g58*0.17598+g59*-0.22332+g60*-0.10912+g61*0.1578+g62*0.093694+g63*0.1365+g64*0.1326+g65*0.39685+g66*0.45571+g67*0.17306+g68*0.40233+g69*0.28982+g70*-0.031615+g71*-0.056826+g72*-0.38311+g73*-0.45254+g74*0.076922+g75*-0.12158+g76*-0.16607+g77*-0.18376+g78*0.012156+g79*0.066062+g80*0.22129+g81*0.081316+g82*-0.079063+g83*0.09662+g84*0.057433+0.5067
e5=g1*-0.13972+g2*0.22157+g3*-0.089872+g4*-0.14052+g5*-0.19524+g6*0.1364+g7*-0.063804+g8*0.11143+g9*0.26412+g10*-0.095132+g11*-0.10096+g12*0.11951+g13*0.092878+g14*-0.16209+g15*-0.072356+g16*0.11436+g17*0.028152+g18*0.082577+g19*0.01773+g20*-0.14643+g21*0.25568+g22*-0.2557+g23*-0.020408+g24*0.027817+g25*-0.043636+g26*0.033034+g27*-0.062264+g28*0.0028864+g29*-0.12393+g30*-0.094705+g31*-0.22148+g32*-0.11119+g33*0.25116+g34*-0.18224+g35*0.077512+g36*0.075976+g37*-0.061954+g38*-0.49521+g39*0.043275+g40*-0.39426+g41*0.2257+g42*0.1651+g43*0.2712+g44*0.0034324+g45*-0.070247+g46*-0.0025198+g47*-0.19033+g48*0.19054+g49*0.094171+g50*-0.25248+g51*-0.14436+g52*-0.11091+g53*-0.024435+g54*0.039499+g55*-0.26254+g56*-0.10483+g57*-0.27607+g58*4.97701+g59*0.06696+g60*0.24531+g61*-0.11526+g62*0.051502+g63*-0.21546+g64*0.2868+g65*-0.014299+g66*0.52456+g67*0.61413+g68*0.03791+g69*-0.19708+g70*-0.20364+g71*-0.27054+g72*0.21104+g73*-0.63182+g74*-0.25284+g75*0.16529+g76*-0.13543+g77*0.079355+g78*-0.13275+g79*-0.17035+g80*0.22732+g81*0.17764+g82*-0.033064+g83*0.0029766+g84*-0.090021+0.17281
e6=g1*-0.067456+g2*0.027265+g3*0.33589+g4*0.041967+g5*-0.23574+g6*-0.17097+g7*0.027044+g8*0.17542+g9*-0.18338+g10*0.13108+g11*-0.12696+g12*0.08426+g13*0.33799+g14*-0.13116+g15*0.10279+g16*0.221+g17*-0.16997+g18*-0.14175+g19*-0.13322+g20*-0.42588+g21*0.34475+g22*-0.19605+g23*-0.20303+g24*0.065587+g25*0.23892+g26*-0.28425+g27*-0.013515+g28*0.22301+g29*0.29766+g30*0.15679+g31*0.12124+g32*-0.060452+g33*-0.1778+g34*-0.05537+g35*0.14375+g36*0.12839+g37*-0.1243+g38*-0.11406+g39*0.28664+g40*-0.42776+g41*-0.16005+g42*-0.18872+g43*-0.071978+g44*0.088754+g45*-0.099901+g46*0.0797+g47*-0.30237+g48*0.34494+g49*-0.25435+g50*-0.070473+g51*0.10836+g52*-0.19169+g53*-0.0020942+g54*-0.42107+g55*0.00070508+g56*0.1183+g57*0.12899+g58*-0.29726+g59*-0.91659+g60*-0.20827+g61*-0.05174+g62*0.39572+g63*0.28082+g64*-0.47755+g65*0.088504+g66*-0.29171+g67*-0.052053+g68*0.17004+g69*-0.28595+g70*-0.29426+g71*-0.067004+g72*0.41254+g73*0.29558+g74*-0.096516+g75*0.31886+g76*-0.055512+g77*-0.32505+g78*-0.12914+g79*-0.079919+g80*-0.033515+g81*-0.12182+g82*-0.19093+g83*0.34674+g84*0.06772+0.1323
e7=g1*-0.05912+g2*0.083478+g3*-0.023164+g4*-0.11714+g5*0.028629+g6*0.14202+g7*-0.54261+g8*-0.062948+g9*-0.32815+g10*0.20282+g11*0.10558+g12*0.25257+g13*0.14845+g14*-0.35266+g15*-0.0086498+g16*-0.18661+g17*-0.081972+g18*0.053663+g19*-0.12744+g20*-0.19109+g21*-0.10764+g22*-0.12411+g23*0.37198+g24*-0.46447+g25*-0.39664+g26*0.59688+g27*0.17677+g28*0.18738+g29*-0.27852+g30*-0.14131+g31*-0.29756+g32*-0.37427+g33*0.35235+g34*0.4+g35*-0.24709+g36*0.15575+g37*0.030689+g38*-0.25814+g39*0.043492+g40*-0.055314+g41*0.28185+g42*0.0063566+g43*-0.054601+g44*-0.061422+g45*0.18941+g46*0.24923+g47*-0.034205+g48*-0.18215+g49*0.30393+g50*0.097144+g51*0.12255+g52*0.036798+g53*0.27591+g54*-0.075078+g55*0.21778+g56*0.22764+g57*-0.18385+g58*0.02623+g59*3.87109+g60*0.033597+g61*-0.23231+g62*-0.18065+g63*-0.073777+g64*0.047463+g65*-0.21663+g66*0.24795+g67*-0.17535+g68*-0.24977+g69*-0.086558+g70*-0.1758+g71*0.32164+g72*-0.45537+g73*0.11632+g74*-0.052992+g75*0.2408+g76*-0.69723+g77*0.09054+g78*0.33435+g79*0.20276+g80*0.21178+g81*-0.15845+g82*0.040734+g83*-0.067907+g84*-0.25278-0.46323
e8=g1*0.076929+g2*-0.34332+g3*0.29281+g4*-0.04962+g5*-0.3099+g6*0.097102+g7*-0.010981+g8*-0.32268+g9*0.31276+g10*-0.059927+g11*0.12438+g12*-0.21539+g13*0.22175+g14*-0.10311+g15*-0.087927+g16*0.10467+g17*0.05838+g18*0.073855+g19*0.13442+g20*0.19084+g21*-0.32353+g22*-0.32379+g23*-0.023752+g24*-0.27584+g25*-0.005328+g26*0.18993+g27*0.069239+g28*0.1811+g29*-0.14158+g30*0.034162+g31*-0.044311+g32*-0.065126+g33*0.036276+g34*0.00073409+g35*0.066384+g36*-0.082975+g37*0.1031+g38*0.13075+g39*0.29072+g40*-0.4349+g41*-0.044204+g42*-0.22012+g43*-0.21871+g44*0.24151+g45*-0.02292+g46*0.32179+g47*0.36117+g48*-0.37133+g49*-0.012741+g50*0.057908+g51*0.044136+g52*0.15707+g53*-0.0017883+g54*-0.26483+g55*0.037756+g56*-0.31897+g57*0.030824+g58*-0.98378+g59*-0.016219+g60*0.21007+g61*0.27035+g62*0.0083534+g63*0.30199+g64*0.056814+g65*-0.18534+g66*0.25443+g67*0.092001+g68*0.0019296+g69*0.098612+g70*0.42604+g71*-0.17998+g72*-0.33024+g73*0.1364+g74*0.18126+g75*-0.13791+g76*0.37949+g77*0.23582+g78*-0.32562+g79*-0.10115+g80*-0.13988+g81*-0.065757+g82*0.094309+g83*0.24179+g84*-0.1446-0.82102
e9=g1*0.16713+g2*-0.26964+g3*-0.13226+g4*-0.22946+g5*-0.10552+g6*-0.039358+g7*0.027171+g8*-0.10767+g9*-0.34473+g10*0.39806+g11*-0.43884+g12*0.16903+g13*-0.14971+g14*-0.0026349+g15*0.28666+g16*-0.17707+g17*0.032566+g18*0.22377+g19*0.0277+g20*0.22267+g21*-0.080194+g22*-0.052621+g23*-0.26481+g24*-0.23352+g25*0.047328+g26*0.077283+g27*-0.14676+g28*0.061029+g29*0.095006+g30*0.11583+g31*0.31013+g32*-0.37777+g33*0.2005+g34*-0.41036+g35*-0.0081181+g36*0.35393+g37*-0.1086+g38*-0.15241+g39*0.085385+g40*-0.066407+g41*0.073057+g42*-0.056306+g43*-0.20314+g44*0.066234+g45*-0.3738+g46*0.481+g47*0.16672+g48*-0.13918+g49*-0.018478+g50*0.21167+g51*-0.3108+g52*-0.13846+g53*-0.22978+g54*-0.19372+g55*0.25499+g56*0.1161+g57*0.33165+g58*-0.44179+g59*-0.01488+g60*0.097396+g61*-0.25775+g62*-0.13899+g63*0.041217+g64*-0.035499+g65*0.18004+g66*0.03754+g67*0.20713+g68*-0.42629+g69*-0.10605+g70*0.31889+g71*-0.36696+g72*0.065657+g73*0.0034157+g74*0.15474+g75*-0.08219+g76*0.20124+g77*-0.23006+g78*0.18797+g79*0.20664+g80*0.20041+g81*-0.16799+g82*0.32816+g83*-0.12531+g84*-0.011179+1.1503
e10=g1*0.019768+g2*-0.086402+g3*0.28301+g4*-0.025877+g5*0.15962+g6*0.1581+g7*0.051971+g8*0.021956+g9*0.037055+g10*-0.159+g11*-0.23082+g12*-0.16005+g13*-0.059009+g14*0.072975+g15*-0.16046+g16*0.31276+g17*-0.086133+g18*0.13669+g19*-0.15294+g20*-0.12474+g21*0.26208+g22*0.31592+g23*0.18837+g24*0.029131+g25*-0.068122+g26*-0.2275+g27*-0.4604+g28*0.040878+g29*-0.016857+g30*-0.27066+g31*0.42937+g32*0.10929+g33*-0.037216+g34*-0.17633+g35*-0.014701+g36*-0.24786+g37*-0.047222+g38*0.065215+g39*-0.26298+g40*-0.031099+g41*-0.10317+g42*-0.0096097+g43*0.33472+g44*-0.11957+g45*-0.10089+g46*0.09458+g47*0.46934+g48*0.26892+g49*-0.17157+g50*0.11835+g51*0.10723+g52*-0.099081+g53*0.16535+g54*-0.057204+g55*-0.12329+g56*-0.057774+g57*0.077552+g58*-0.13653+g59*-0.0458+g60*-0.20472+g61*0.0272+g62*-0.13322+g63*0.13754+g64*-0.31063+g65*0.32063+g66*-0.035873+g67*0.25231+g68*0.32155+g69*0.19803+g70*0.11935+g71*0.11641+g72*-0.13274+g73*-0.087162+g74*-0.26287+g75*-0.10818+g76*0.17156+g77*-0.0047158+g78*-0.14744+g79*-0.0023502+g80*-0.42901+g81*0.34584+g82*0.095497+g83*-0.16556+g84*0.074587+1.3753



f1=1/(1+Exp(-e1))
f2=1/(1+Exp(-e2))
f3=1/(1+Exp(-e3))
f4=1/(1+Exp(-e4))
f5=1/(1+Exp(-e5))
f6=1/(1+Exp(-e6))
f7=1/(1+Exp(-e7))
f8=1/(1+Exp(-e8))
f9=1/(1+Exp(-e9))
f10=1/(1+Exp(-e10))

ex=f1*-0.51067+f2*0.088672+f3*0.28935+f4*-0.35217+f5*-0.24801+f6*0.13282+f7*-0.12651+f8*-0.10083+f9*-0.13215+f10*-0.28353+0.48736

sonucbmiysa=1/(1+Exp(-ex))
ANNbmi=((sonucbmiysa-0.1)/0.8)*(44.1-16.9)+16.9



        


<!--iw 1.1-->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      -->
<!---0.41782 0.10856 0.046569 0.12299 0.047533 0.023374 0.11986 0.10585 0.096955 -0.21739 0.14346 0.21999 0.16684 0.20122 -0.12311 -0.13202 0.10955 0.1394 0.18979 0.17626 -0.13789 -0.083004 -0.14116 -0.14833 -0.080743 -0.21656 0.17968 -0.31021 -0.010053 -0.023901 0.37886 0.11548 -0.044262 -0.28637 0.28508 0.011844 0.019288 0.054539 -0.093734 -0.26001 0.048198 0.047183 0.16074 0.041499 0.25942 -0.1811 -0.040243 -0.2862 -0.24024 0.1247 0.02989 0.026616 0.076879 0.037392 -0.18643 -0.05641 -0.10365 -0.29096 -0.04171 0.068884 -0.25505 0.22248 0.0013984 -0.14691 -0.055486 0.20635 0.36478 0.28833 0.0013725 -0.13472 -0.22036 -0.31908 -0.24941 -0.22712 0.28372 0.21045 0.04031 0.19244 0.0068553 -0.31546 0.056382 0.078615 -0.078785 0.23409;                                -->
<!---0.1726 -0.048758 0.25448 -0.27395 0.19583 -0.21858 0.13703 -0.19657 0.24591 -0.13212 0.11137 -0.14343 -0.22042 0.13685 0.047937 -0.14279 0.26113 -0.2658 0.11462 -0.073575 -0.087734 0.19254 -0.22231 0.01731 -0.1607 0.036891 0.020129 -0.15241 -0.012583 -0.073675 0.089537 -0.057228 0.11545 0.007657 0.023848 0.24101 -0.24945 -0.21849 0.059216 0.16608 -0.086991 0.15051 0.056864 -0.07301 -0.047011 0.18991 -0.2135 -0.19005 -0.31087 0.031613 0.19746 0.16345 0.2304 -0.26953 -0.064275 0.12097 0.059237 -0.15261 -0.25887 -0.061537 -0.23881 -0.082097 0.17884 -0.22575 -0.05135 -0.083954 -0.15341 -0.12731 0.1434 -0.088603 -0.20645 0.046214 -0.2333 -0.05823 -0.21796 0.11617 0.0060762 0.16279 -0.1412 -0.043979 -0.22803 0.27534 -0.13436 0.13601;                             -->
<!--0.04603 -0.10135 0.17637 0.0073033 0.028619 0.1505 0.074732 -0.05272 -0.30736 -0.14559 -0.18457 -0.085094 0.15418 0.17655 -0.19769 0.33694 -0.14724 0.16768 0.02251 -0.098892 -0.04375 0.21611 0.18335 -0.062827 0.13064 0.30612 0.32198 0.067668 -0.18509 -0.16594 0.058824 0.1139 0.050657 0.061324 0.14345 0.024214 0.11889 0.13336 0.068622 -0.081765 -0.0070033 0.19447 -0.0018822 -0.24319 -0.094093 0.091451 0.15614 0.63368 -0.27109 0.23063 0.10638 -0.22842 0.21589 0.071773 -0.25047 0.055188 -0.004434 -0.17658 0.12744 0.32653 -0.081292 -0.21903 0.033064 0.41187 0.07747 -0.055782 -0.3449 0.058704 0.33011 0.21147 0.4889 0.064538 -0.063913 -0.26523 0.12852 -0.057883 -0.20902 0.30305 -0.27464 -0.046993 0.19089 0.37135 -0.073727 0.090314;                                -->
<!---0.10868 -0.1697 0.024997 0.13717 0.043376 -0.15636 -0.038922 -0.055489 -0.22116 0.08443 0.17011 0.16079 0.096287 0.070827 -0.19289 -0.13086 -0.095241 -0.29066 0.1932 0.015509 0.11356 0.24885 0.10694 -0.13614 -0.023455 -0.27294 0.13437 -0.081128 -0.021553 0.013809 0.041437 0.0082796 -0.3234 -0.0046096 0.13462 0.032495 0.072116 0.25791 -0.0027382 0.014196 -0.18047 -0.035385 0.088241 0.24569 -0.00086745 -0.26539 -0.26541 0.073587 -0.10597 0.010543 0.14358 -0.22396 0.16415 0.18766 0.11647 0.14636 0.13471 0.17598 -0.22332 -0.10912 0.1578 0.093694 0.1365 0.1326 0.39685 0.45571 0.17306 0.40233 0.28982 -0.031615 -0.056826 -0.38311 -0.45254 0.076922 -0.12158 -0.16607 -0.18376 0.012156 0.066062 0.22129 0.081316 -0.079063 0.09662 0.057433;                            -->
<!---0.13972 0.22157 -0.089872 -0.14052 -0.19524 0.1364 -0.063804 0.11143 0.26412 -0.095132 -0.10096 0.11951 0.092878 -0.16209 -0.072356 0.11436 0.028152 0.082577 0.01773 -0.14643 0.25568 -0.2557 -0.020408 0.027817 -0.043636 0.033034 -0.062264 0.0028864 -0.12393 -0.094705 -0.22148 -0.11119 0.25116 -0.18224 0.077512 0.075976 -0.061954 -0.49521 0.043275 -0.39426 0.2257 0.1651 0.2712 0.0034324 -0.070247 -0.0025198 -0.19033 0.19054 0.094171 -0.25248 -0.14436 -0.11091 -0.024435 0.039499 -0.26254 -0.10483 -0.27607 0.27701 0.06696 0.24531 -0.11526 0.051502 -0.21546 0.2868 -0.014299 0.52456 0.61413 0.03791 -0.19708 -0.20364 -0.27054 0.21104 -0.63182 -0.25284 0.16529 -0.13543 0.079355 -0.13275 -0.17035 0.22732 0.17764 -0.033064 0.0029766 -0.090021;                      -->
<!---0.067456 0.027265 0.33589 0.041967 -0.23574 -0.17097 0.027044 0.17542 -0.18338 0.13108 -0.12696 0.08426 0.33799 -0.13116 0.10279 0.221 -0.16997 -0.14175 -0.13322 -0.42588 0.34475 -0.19605 -0.20303 0.065587 0.23892 -0.28425 -0.013515 0.22301 0.29766 0.15679 0.12124 -0.060452 -0.1778 -0.05537 0.14375 0.12839 -0.1243 -0.11406 0.28664 -0.42776 -0.16005 -0.18872 -0.071978 0.088754 -0.099901 0.0797 -0.30237 0.34494 -0.25435 -0.070473 0.10836 -0.19169 -0.0020942 -0.42107 0.00070508 0.1183 0.12899 -0.29726 -0.11659 -0.20827 -0.05174 0.39572 0.28082 -0.47755 0.088504 -0.29171 -0.052053 0.17004 -0.28595 -0.29426 -0.067004 0.41254 0.29558 -0.096516 0.31886 -0.055512 -0.32505 -0.12914 -0.079919 -0.033515 -0.12182 -0.19093 0.34674 0.06772;                              -->
<!---0.05912 0.083478 -0.023164 -0.11714 0.028629 0.14202 -0.54261 -0.062948 -0.32815 0.20282 0.10558 0.25257 0.14845 -0.35266 -0.0086498 -0.18661 -0.081972 0.053663 -0.12744 -0.19109 -0.10764 -0.12411 0.37198 -0.46447 -0.39664 0.59688 0.17677 0.18738 -0.27852 -0.14131 -0.29756 -0.37427 0.35235 0.4 -0.24709 0.15575 0.030689 -0.25814 0.043492 -0.055314 0.28185 0.0063566 -0.054601 -0.061422 0.18941 0.24923 -0.034205 -0.18215 0.30393 0.097144 0.12255 0.036798 0.27591 -0.075078 0.21778 0.22764 -0.18385 0.02623 0.17109 0.033597 -0.23231 -0.18065 -0.073777 0.047463 -0.21663 0.24795 -0.17535 -0.24977 -0.086558 -0.1758 0.32164 -0.45537 0.11632 -0.052992 0.2408 -0.69723 0.09054 0.33435 0.20276 0.21178 -0.15845 0.040734 -0.067907 -0.25278;                                -->
<!--0.076929 -0.34332 0.29281 -0.04962 -0.3099 0.097102 -0.010981 -0.32268 0.31276 -0.059927 0.12438 -0.21539 0.22175 -0.10311 -0.087927 0.10467 0.05838 0.073855 0.13442 0.19084 -0.32353 -0.32379 -0.023752 -0.27584 -0.005328 0.18993 0.069239 0.1811 -0.14158 0.034162 -0.044311 -0.065126 0.036276 0.00073409 0.066384 -0.082975 0.1031 0.13075 0.29072 -0.4349 -0.044204 -0.22012 -0.21871 0.24151 -0.02292 0.32179 0.36117 -0.37133 -0.012741 0.057908 0.044136 0.15707 -0.0017883 -0.26483 0.037756 -0.31897 0.030824 -0.18378 -0.016219 0.21007 0.27035 0.0083534 0.30199 0.056814 -0.18534 0.25443 0.092001 0.0019296 0.098612 0.42604 -0.17998 -0.33024 0.1364 0.18126 -0.13791 0.37949 0.23582 -0.32562 -0.10115 -0.13988 -0.065757 0.094309 0.24179 -0.1446;                          -->
<!--0.16713 -0.26964 -0.13226 -0.22946 -0.10552 -0.039358 0.027171 -0.10767 -0.34473 0.39806 -0.43884 0.16903 -0.14971 -0.0026349 0.28666 -0.17707 0.032566 0.22377 0.0277 0.22267 -0.080194 -0.052621 -0.26481 -0.23352 0.047328 0.077283 -0.14676 0.061029 0.095006 0.11583 0.31013 -0.37777 0.2005 -0.41036 -0.0081181 0.35393 -0.1086 -0.15241 0.085385 -0.066407 0.073057 -0.056306 -0.20314 0.066234 -0.3738 0.481 0.16672 -0.13918 -0.018478 0.21167 -0.3108 -0.13846 -0.22978 -0.19372 0.25499 0.1161 0.33165 -0.44179 -0.01488 0.097396 -0.25775 -0.13899 0.041217 -0.035499 0.18004 0.03754 0.20713 -0.42629 -0.10605 0.31889 -0.36696 0.065657 0.0034157 0.15474 -0.08219 0.20124 -0.23006 0.18797 0.20664 0.20041 -0.16799 0.32816 -0.12531 -0.011179;                                 -->
<!--0.019768 -0.086402 0.28301 -0.025877 0.15962 0.1581 0.051971 0.021956 0.037055 -0.159 -0.23082 -0.16005 -0.059009 0.072975 -0.16046 0.31276 -0.086133 0.13669 -0.15294 -0.12474 0.26208 0.31592 0.18837 0.029131 -0.068122 -0.2275 -0.4604 0.040878 -0.016857 -0.27066 0.42937 0.10929 -0.037216 -0.17633 -0.014701 -0.24786 -0.047222 0.065215 -0.26298 -0.031099 -0.10317 -0.0096097 0.33472 -0.11957 -0.10089 0.09458 0.46934 0.26892 -0.17157 0.11835 0.10723 -0.099081 0.16535 -0.057204 -0.12329 -0.057774 0.077552 -0.13653 -0.0458 -0.20472 0.0272 -0.13322 0.13754 -0.31063 0.32063 -0.035873 0.25231 0.32155 0.19803 0.11935 0.11641 -0.13274 -0.087162 -0.26287 -0.10818 0.17156 -0.0047158 -0.14744 -0.0023502 -0.42901 0.34584 0.095497 -0.16556 0.074587]                        -->


<!--lw 2.1-->
<!---[-0.51067 0.088672 0.28935 -0.35217 -0.24801 0.13282 -0.12651 -0.10083 -0.13215 -0.28353]-->

<!--b1-->
<!---1.4877;         -->
<!---1.1382;         -->
<!----0.83956;       -->
<!---0.5067;         -->
<!---0.17281;        -->
<!---0.1323;         -->
<!----0.46323;       -->
<!----0.82102;       -->
<!---1.1503;         -->
<!---1.3753]         -->
 
<!--b2-->
 <!---[0.48736]-->
 



 

Response.Write "<script>alert('accomplished and BMI="&ANNbmi&"')</script>"
Response.Write "<meta http-equiv='Refresh' content='0; URL=default.asp'>"


else

Response.Write "<script>alert('Güvenlik Kodu Yanlış')</script>"

end if

end if

<!--question 1 convert one code data to weight-->


%>


<script type="text/javascript">
function guvenlikyenile() { document.getElementById('guvenlik').src = 'guvenlik.asp?' + Date(); }
</script>

<form method="post" onsubmit="return kontrolet();"  name="ekle">



<style>.art-content .art-postcontent-0 .layout-item-0 { padding-right: 10px;padding-left: 10px;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

span.apple-converted-space
	{}
 li.MsoNormal
	{mso-style-parent:"";
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
</style></head>
<body>
<div id="art-main">
    <div class="art-sheet clearfix">

<div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader" align="center">Predicting body mass index from self-declared
sociodemographic, psychological, and behavioural data by
using artificial neural networks in primary care<br>
Manuscript No: EJGP-2022-0197 </h2>

                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%" >
	<div align="center">



<table cellpadding="0" cellspacing="0" border="0" width="100%">



	
	<table width="100%">

<tr>
		<td style="text-align: center; vertical-align:middle" colspan="2">
		<p style="text-align: left">
		<font size="4"><b>1) Sex:</b></font></td>
		</tr>
		<tr>
		<td width="26%" style="vertical-align: middle">   
			<p style="text-align: center">Male<br><input type="radio" required="required" value="1" name="s1"></p>
		</td>
		<td width="25%" style="vertical-align: middle">   
			<p style="text-align: center">Female<br><input type="radio" value="2" required="required" name="s1"></td>
</tr>
<tr><td colspan="2"><hr></td></tr>
	</table>

	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4">
		<p style="text-align: left"><font size="4"><b>2) Marital status</b></font><b><font size="4">:</font></b></td>
	</tr>
<tr>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p align="center">Single<br><input type="radio" value="1" name="s2" required="required" >&nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Maried<br><input type="radio" value="2" name="s2" required="required">

</td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Widow/Widower<br><input type="radio" value="1" name="s2" required="required"> </td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Divorced<br><input type="radio" value="1" name="s2" required="required"> </td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Seperated<br><input type="radio" value="1" name="s2" required="required"> </td>
	</tr>
<tr><td colspan="5"><hr></td></tr>	

	</table>
	

	
	<table width="100%">
<tr>
		<td width="100%" style="text-align: right; vertical-align:middle" colspan="3">
		<p align="left"><font size="4"><b>3)  How would you characterize the physical activity level of your occupation?</b></font><p></td>
	</tr>
<tr>
		<td width="33%" style="text-align: right; vertical-align:middle">
		
		
		
 
 <p style="text-align: center">Inactive<br><input type="radio" value="1" required="required" name="s4" ></td>
		<td width="33%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">Limited pyshical activity <br><input type="radio" value="2" name="s4" required="required">

 </td>
		<td width="33%" style="vertical-align: middle">   
		
		
		
 
  <p style="text-align: center"> Moderate pyshical activity<br><input type="radio" value="3" name="s4" required="required">
</td>
	</tr>
<tr><td colspan="3"><hr></td></tr>	

	</table>
	

	
	<table width="100%">
	
<tr>
		<td style="text-align: right; vertical-align:middle" colspan="5">
		<p style="text-align: left"><font size="4"><b>4)
		Education  : &nbsp;</b></b></font></td>
</tr>		
		
<tr> 
<td width="50%" style="text-align: center">High school/lower<br><input type="radio" value="1" required="required" name="s3"></td>
<td width="50%" style="text-align: center">University/higher<br><input type="radio" value="2" required="required" name="s3"></td>

</tr>		
<tr><td colspan="5"><hr></td></tr>	

	</table>
	
	


<table width="100%">
<tr>
		<td width="100%" style="text-align: right; vertical-align:middle" colspan="2">
		<p align="left"><font size="4"><b>5) Do you have an open kitchen in your home?</b></font></td>
	</tr>
<tr>
		<td width="50%" style="text-align: right; vertical-align:middle">
		
		
		
 
 <p style="text-align: center">Yes<br>
	<input type="radio" value="1" name="s5" required="required"></td>
		<td width="50%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">No<br>
	<input type="radio" value="2" required="required" name="s5">

 </td>
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>


<table width="100%">
<tr>
		<td width="100%" style="text-align: right; vertical-align:middle" colspan="2">
		<p align="left"><font size="4"><b>6) Do you have a scale at home?</b></font></td>
	</tr>
<tr>
		<td width="50%" style="text-align: right; vertical-align:middle">
		
		
		
 
 <p style="text-align: center">Yes<br>
	<input type="radio" value="1" name="s6" required="required"></td>
		<td width="50%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">No<br>
	<input type="radio" value="2" required="required" name="s6">

 </td>
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>


<table width="100%">
			
		
<tr>
		<td width="91%" style="vertical-align:middle" height="57" colspan="2">
		<p><font size="4"><b>7) Do you have any chronic diseases?
		</b></font> 
		<p></td>
	</tr>
 <tr>
		<td width="40%" style="text-align: right; vertical-align:middle" height="57">
		<p style="text-align: center">Yes<br><input type="radio" value="1" name="s7" required="required">  
		
		
		
 
</td>
		<td width="51%" style="vertical-align: top" height="57">   
		
		
		
 
 <p style="text-align: center">No<br><input type="radio" value="2" required="required" name="s7"></td>
	</tr>
 <tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>
	
	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4">
		<p style="text-align: left"><font size="4"><b>8)
									How do you define your health status? 
									</b></font></td>
	</tr>
<tr>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-family: 'Times New Roman',serif; font-size: 9pt">
									Very good</span><br>
		<input type="radio" value="1" name="s21" required="required"></td>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
		<span style="font-family: 'Times New Roman',serif; font-size: 9pt">Good</span><br>
		<input type="radio" value="1" name="s21" required="required"></td>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									<span style="font-family: 'Times New Roman',serif; font-size: 9pt">Bad</span><br>
		<input type="radio" value="2" name="s21" required="required"></td>
		<td width="22%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"> <span style="font-family: 'Times New Roman',serif; font-size: 9pt">Very bad</span><br>
		<input type="radio" value="2" name="s21" required="required"></td>
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>


<table width="100%">
<tr>
		<td width="100%" style="text-align: right; vertical-align:middle" colspan="3">
		<p align="left"><font size="4"><b>9) Imagine you decide to diet, someone offers you a plate of food you can not refuse, and you eat only one piece. Would you regret it and eat all the food on the plate?</b></font><p></td>
	</tr>
<tr>
		<td width="33%" style="text-align: right; vertical-align:middle">
		
		
		
 
 <p style="text-align: center">Yes<br>
	<input type="radio" value="1" name="s22" required="required"></td>
		<td width="33%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">No<br>
	<input type="radio" value="2" name="s22" required="required">

 </td>
 
 		<td width="33%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">Sometimes<br>
	<input type="radio" value="3" name="s22" required="required">

 </td>
	</tr>
<tr><td colspan="3"><hr></td></tr>	

	</table>	



<table width="100%">
 <tr>
		                            <td style="text-align: right; vertical-align: middle;" height="23" colspan="10">
									<p style="text-align: left"><font size="4">
									<b>10) Imagine that you notice an increase in your weight. Out of ten, what would be your degree of negative emotion (anxious, unhappy, angry, etc.)? (1: least severe, 10: most severe)
									</b></font> <br> </td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									1</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									2</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									3</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									4</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									5</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									6</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									7</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									8</td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									9</td>
		                            <td style="vertical-align: middle; text-align:center" height="23">
									10</td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="1" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="1" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="1" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s23"required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s23"required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="3" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="3" name="s23" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23">
									<input type="radio" value="3" name="s23" required="required"></td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23" colspan="10"> 
									<hr></td>
	                            </tr>



</table>

	
<table width="100%">
 <tr>
		                            <td style="text-align: right; vertical-align: middle;" height="23" colspan="3">
									<p style="text-align: left"><font size="4">
									<b>11) Eating status during sadness or stress;
									</b></font> </td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									Eat more</td>
		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									Lose appetite</td>
		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									Does not change</td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									<input type="radio" value="1" name="s24" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									<input type="radio" value="2" name="s24" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" width="33%"> 
									<input type="radio" value="3" name="s24" required="required"></td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23" colspan="3"> 
									<hr></td>
	                            </tr>



</table>

<table width="100%">

 <tr>

		                            <td style="vertical-align: middle" height="23" colspan="9"> 
									<p>
									<font size="4"><b>12) Which silhouette do you think is the most similar to your body measurements? <br>
									
									 </b></font></td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k1.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k2.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k3.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k4.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k5.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k6.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k7.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k8.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k9.jpg" width="80"></td>

	                            </tr>
								



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e1.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e2.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e3.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e4.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e5.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e6.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e7.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e8.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e9.jpg" width="80"></td>

	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="1" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="3" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="4" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="5" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="6" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="7" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="8" name="s25" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="9" name="s25" required="required"></td>
	                            </tr>
<tr><td colspan="9" style="text-align: right">
<center>
<font size="1">Stunkard AJ. Use of the Danish Adoption Register for the study of obesity and thinness. Res. Publ. Assoc. Res. Nerv. Ment. Dis.. 1983;60:115-20.</font>
</center><hr size="1" style="color:red;"></td></tr>

</table>

<table width="100%">

 <tr>

		                            <td style="vertical-align: middle" height="23" colspan="9"> 
									<font size="4"><b>13) Could you please indicate which silhouette you would like to be?</b>
									</font></td>
	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k1.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k2.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k3.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k4.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k5.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k6.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k7.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k8.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/k9.jpg" width="80"></td>

	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e1.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e2.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e3.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e4.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e5.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e6.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e7.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e8.jpg" width="80"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<img border="0" src="images/e9.jpg" width="80"></td>

	                            </tr>



 <tr>

		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="1" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="2" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="3" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="4" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="5" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="6" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="7" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="8" name="s26" required="required"></td>
		                            <td style="vertical-align: middle; text-align:center" height="23"> 
									<input type="radio" value="9" name="s26" required="required"></td>
	                            </tr>
<tr><td colspan="9" style="text-align: right"><hr size="1" style="color:red;"></td></tr>

</table>



	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="3">
		<p style="text-align: left"><font size="4"><b>14) Do you smoke?</b></font></td>
	</tr>
<tr>
		<td width="37%" style="text-align: right; vertical-align:top">
		<p align="center">
									Yes<br>
		<input type="radio" value="1" name="s8" required="required"><p align="left"></td>
		<td width="29%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">No<br>
		<input type="radio" value="2" name="s8" required="required"></td>
		<td width="33%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									Quit<br>
		<input type="radio" value="3" name="s8" required="required"><p style="text-align: center"></td>
	</tr>
<tr><td colspan="3"><hr></td></tr>	

	</table>
	

	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4">
		<p style="text-align: left"><font size="4"><b>15) How often do you drink alcohol?</b></font></td>
	</tr>
<tr>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">
									Every day</span><br>
		<input type="radio" value="3" name="s9" required="required"></td>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-family: 'Times New Roman',serif; font-size: 9pt">Sometimes</span><br>
		<input type="radio" value="2" name="s9" required="required"></td>
		<td width="23%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									<span style="font-family: 'Times New Roman',serif; font-size: 9pt">Rarely</span><br>
		<input type="radio" value="1" name="s9" required="required"></td>
		<td width="22%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Never<br>
		<input type="radio" value="0" name="s9" required="required"></td>
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>
	
	<table width="100%">
	 <tr>
		<td width="100%" style="vertical-align:rigth" height="57" colspan="2">
	 <p><font size="4"><b>16)
<center><a name="fizikselaktiviteform"><h1>INTERNATIONAL PHYSICAL ACTIVITY QUESTIONNAIRE </a></h1></center><br><br>
	<p style="text-align: center">We are interested in finding out about the kinds of physical activities that people do as part of their everyday lives.  The questions will ask you about the time you spent being physically active in the <U><b>last 7 days</B></U>.  Please answer each question even if you do not consider yourself to be an active person.  Please think about the activities you do at work, as part of your house and yard work, to get from place to place, and in your spare time for recreation, exercise or sport.  <BR><BR>
	Think about all the <b>vigorous</b> activities that you did in <b>the last 7 days.  Vigorous</b> physical activities refer to activities that take hard physical effort and make you breathe much harder than normal.  Think only about those physical activities that you did for at least 10 minutes at a time</td></tr>

</table><FONT size="1">Craig C, Marshall A, Sjostrom M, Bauman A, Lee P, Macfarlane D, Lam T, Stewart S. International physical activity questionnaire-short form. J Am Coll Health. 2017;65(7):492-501</font>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-1) During the <B>last 7 days</B>, on how many days did you do <B>vigorous</B> physical activities like heavy lifting, digging, aerobics, or fast bicycling?</font></td>
	</tr>
<tr>

		<td width="50%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"><b>days per week</b> 
		<input name="s36_g" type="number" id="s36_g" required="required" min="0" max="7" value="0" size="1" > <br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"> <input type="checkbox" value="1" name="s36" > No vigorous physical activities. <b>(Skip to question 3)</b>
		
		</td>
	</tr>
<tr><td colspan="5"><hr></td></tr>	

	</table>

	<table width="50%">
<tr>
		<td width="60%" style="text-align: right; vertical-align:rigth" colspan="4"><p style="text-align: left"><font size="4">16-2) How much time did you usually spend doing <b>vigorous</b> physical activities on one of those days? </font></td>
	</tr>
<tr>

		
		<td width="33%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"><b>hours per day</b>  
		<input name="s37_s" type="number" id="s37_s" required="required" min="0" max="24" value="0" size="2" > 
		<p style="text-align: center"><b>minutes per day </b>
		<input name="s37_g" type="number" id="s37_g" required="required" min="0" max="1440" value="0" size="4" > 
		<br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"> <input type="checkbox" value="1" name="s37" ><b>Don’t know/Not sure</b> <br>
		
		</td>


		
        
	</tr>
<tr><td colspan="6"><hr></td></tr>	

	</table>

<table width="80%">



<tr><td colspan="10" valign="middle" height="40" align="center">
	<p style="text-align: center">Think about all the <b>moderate</b> activities that you did in the <b>last 7 days.  Moderate</b> activities refer to activities that take moderate physical effort and make you breathe somewhat harder than normal.  Think only about those physical activities that you did for at least 10 minutes at a time.</td></tr>

</table>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-3) <span style="text-align: justify">During the <B>last 7 days</b>, on how many days did you do <B>moderate</B> physical activities like carrying light loads, bicycling at a regular pace, or doubles tennis?  Do not include walking. </span></font></td>
	</tr>
<tr>
		<td width="50%" style="text-align: right; vertical-align:top">
		<p align="center">
									
		
		<p style="text-align: center"><b>days per week</b> 
		<input name="s38_g" type="number" id="s38_g" required="required"  min="0" max="7" value="0" size="1"> <br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"><input type="checkbox" value="1" name="s38" > No moderate physical activities. <B>(Skip to question 5 )</b><br></td>

	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-4) How much time did you usually spend doing <B>moderate</b> physical activities on one of those days?   </font></td>
	</tr>
<tr>

		<td width="33%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"><B>hours per day </b>
		<input name="s39_s" type="number" id="s39_s" value="0"  min="0" max="24"required="required" value="0" size="2" > 
		<p style="text-align: center"><B>minutes per day </b>
		<input name="s39_g" type="number" id="s39_g" value="0"  min="0" max="1440" required="required" value="0" size="4" > <br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"><input type="checkbox" value="1" name="s39" > Don’t know/Not sure<br></td>


		
        
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>

<table width="80%">

<tr><td colspan="10" valign="middle" height="40" align="center">
	<p style="text-align: center">Think about the time you spent <B>walking</b> in the <B>last 7 days</b>.  This includes at work and at home, walking to travel from place to place, and any other walking that you have done solely for recreation, sport, exercise, or leisure.  </td></tr>

</table>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-5) <span style="text-align: justify">During the <B>last 7 days</b>, on how many days did you <B>walk</b> for at least 10 minutes at a time?   </span></font></td>
	</tr>
<tr>

		<td width="50%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"><B>days per week</b>
		<input name="s40_g" type="number" id="s40_g"  min="0" max="7" value="0" required="required" size="5" ><br><br> 
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"><input type="checkbox" value="1" name="s40" > No walking. <b>(Skip to question 7)</b><br></td>
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-6) How much time did you usually spend <B>walking</b> on one of those days?   </font></td>
	</tr>
<tr>

		
		<td width="33%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"><b>hours per day</b>
		<input name="s41_s" type="number" id="s41_s" value="0" min="0" max="24" required="required" value="0" size="2" > 
		
		<p style="text-align: center"><B>minutes per day </b>
		<input name="s41_g" type="number" id="s41_g" value="0" min="0" max="1440" required="required" value="0" size="4"><br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"><input type="checkbox" value="1" name="s41" > Don’t know/Not sure<br>
		</td>


		
        
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>


<table width="80%">

<tr><td colspan="10" valign="middle" height="40" align="center">
	<p style="text-align: center">The last question is about the time you spent <B>sitting</B> on weekdays during <B>the last 7 days</B>.  Include time spent at work, at home, while doing course work and during leisure time.  This may include time spent sitting at a desk, visiting friends, reading, or sitting or lying down to watch television.   </td></tr>

</table>

	<table width="80%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4"><p style="text-align: left"><font size="4">16-7) During the <B>last 7 days</B>, how much time did you spend <B>sitting</B> on a week day?   </font></td>
	</tr>
<tr>

		
		<td width="33%" style="text-align: right; vertical-align:top">

		<p style="text-align: center"> <b>hours per day </b>
		<input name="s42_s" type="number" id="s42_s" value="0" min="0" max="24" required="required" size="4"  > 
		
		<p style="text-align: center"><b>minutes per day</b>
		<input name="s42_g" type="number" id="s42_g" value="0" min="0" max="1440" required="required" size="5" maxlength="50" > <br><br>
		<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"><input type="checkbox" value="1" name="s42" > Don’t know/Not sure<br></td>


		
	</tr>


	</table></<p>
</td>
</tr>
<tr><td colspan="2"><hr></td></tr>	
</table>
	<table width="100%">
<tr>
		<td width="91%" style="vertical-align:middle" height="57" colspan="2">
		<p><font size="4"><b><a name="devam"></a>17) Do you skip breakfast?</b></font><p></td>
	</tr>
 <tr>
		<td width="40%" style="text-align: right; vertical-align:middle" height="57">
		<p style="text-align: center">Yes<br><input type="radio" value="1" name="s11" required="required"></td>
		<td width="51%" style="vertical-align: top" height="57">   
		
		
		
 
 <p style="text-align: center">&nbsp;No<br><input type="radio" value="2" name="s11" required="required"></td>
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>


	<table width="100%">
<tr>
		<td width="91%" style="vertical-align:middle" height="57" colspan="2">
		<p><font size="4"><b>18) If yes how many days do you skip breakfast in a week?</b></font><p></td>
	</tr>

 <tr>
		<td width="40%" style="text-align: right; vertical-align:middle" height="57">
		<p style="text-align: center"> <input type="number" id="s8_a" name="s12" value="0" min="0" max="7" size="15" pattern="[0-9]{1}" required="required" maxlength="50" ><br>   </td> 
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>
	<table width="100%">
			
<tr>
		<td width="91%" style="vertical-align:middle" height="57" colspan="2">
		<font size="4"><b>19) Do you snack after dinner?</b></font></td>
	</tr>
 <tr>
		<td width="40%" style="text-align: right; vertical-align:middle" height="57">
		<p style="text-align: center">Yes<br>
		<input type="radio" value="1" name="s13" required="required"></td>
		<td width="51%" style="vertical-align: top" height="57">   
		
		
		
 
 <p style="text-align: center">No<br>
	<input type="radio" value="2" name="s13" required="required"></td>
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>
	
	<table width="100%">
<tr>
		<td width="91%" style="vertical-align:middle" height="57" colspan="2">
		<p><font size="4"><b>20) If yes how many days do you snack after dinner in a week?</b></font><p></td>
	</tr>

 <tr>
		<td width="40%" style="text-align: right; vertical-align:middle" height="57">
		<p style="text-align: center"> <input type="number" id="s14_a" name="s14_a" value="0" min="0" max="7" size="1" pattern="[0-9]{1}" required="required" maxlength="50" ><br>   </td> 
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>
	<table width="100%">
	

<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="5">
		<p style="text-align: left"><font size="4"><b>21) How often do you eat out?</b></font></td>
	</tr>
<tr>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif; color: black">
									 Everyday </span>
									<br>
		<input type="radio" value="1" name="s15" required="required"></td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif; color: black">
		Few times a week
</span><br>
		<input type="radio" value="1" name="s15" required="required"></td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif; color: black">
		Few times a month
</span><br>
		<input type="radio" value="1" name="s15" required="required"></td>
		<td width="20%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif; color: black">
		Never
</span><br>
		<input type="radio" value="2" name="s15" required="required"></td>

		
	</tr>
<tr><td colspan="5"><hr></td></tr>	

	</table>
	
	
	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="3">
		<p style="text-align: left"><font size="4"><b>22) How would you describe your eating speed?</b></font></td>
	</tr>
<tr>
		<td width="33%" style="text-align: right; vertical-align:top">
		<p align="center">
									Fast<br>
		<input type="radio" value="1" name="s16" required="required"></td>
		<td width="33%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Normal<br>
		<input type="radio" value="2" name="s16" required="required"></td>
		<td width="33%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									Slow<br>
		<input type="radio" value="3" name="s16" required="required"><p style="text-align: center"></td>
	</tr>
<tr><td colspan="3"><hr></td></tr>	

	</table>

	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="4">
		<p style="text-align: left"><font size="4"><b>23) Do you eat the small leftover food on the plate/pot while cleaning the table?</b></font></td>
	</tr>
<tr>
		<td width="50%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">Yes 
									</span><br>
		<input type="radio" value="1" name="s17" required="required"></td>
		<td width="50%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-family: 'Times New Roman',serif; font-size: 9pt">No 
									</span><br>
		<input type="radio" value="2" name="s17" required="required"></td>
		
	</tr>
<tr><td colspan="4"><hr></td></tr>	

	</table>

	
	

	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="5">
		<p style="text-align: left"><font size="4"><b>24) What method do you use to check your weight?</b></font></td>
	</tr>
<tr>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">
									Weighing on a scale</span><br>
		<input type="radio" value="1" name="s18" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Waist Circumference<br>
		<input type="radio" value="2" name="s18" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">Clothing Size 
									</span><br>
		<input type="radio" value="3" name="s18" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-family: 'Times New Roman',serif; font-size: 9pt">Looking in a mirror
</span><span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif"> 
									</span><br>
		<input type="radio" value="4" name="s18" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">All of the above<br>
		<input type="radio" value="5" name="s18" required="required">
		
		</td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Do not control<br>
		<input type="radio" value="6" name="s18" required="required">
		
		</td>
	</tr>
<tr><td colspan="7"><hr></td></tr>	

	</table>
	

	
	<table width="100%">
<tr>
		<td width="100%" style="text-align: right; vertical-align:middle" colspan="2">
		<p align="left"><font size="4"><b>25) How would you characterize your weighing frequency?</b></font></td>
	</tr>
<tr>
		<td width="50%" style="text-align: right; vertical-align:middle">
		
		
		
 
 <p style="text-align: center">Regular<br>
	<input type="radio" value="1" name="s19" required="required"></td>
		<td width="50%" style="vertical-align: middle">   
		
		
		
 
 <p style="text-align: center">Irregular<br>
	<input type="radio" value="2" name="s19" required="required">

 </td>
	</tr>
<tr><td colspan="2"><hr></td></tr>	

	</table>
	

	
	<table width="100%">
<tr>
		<td width="91%" style="text-align: right; vertical-align:middle" colspan="6">
		<p style="text-align: left"><font size="4"><b>26) How often do you weigh yourself?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></font></td>
	</tr>
<tr>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p align="center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">
									>1/day</span><br>
		<input type="radio" value="1" name="s20" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">1/day<br>
		<input type="radio" value="2" name="s20" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">
									<span style="font-size: 9.0pt; line-height: 115%; font-family: 'Times New Roman',serif">
&#8805;1/week</span><br>
		<input type="radio" value="3" name="s20"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center"><span style="font-family: 'Times New Roman',serif; font-size: 9pt">1/week</span><br>
		<input type="radio" value="4" name="s20" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Irregular<br>
		<input type="radio" value="5" name="s20" required="required"></td>
		<td width="15%" style="text-align: right; vertical-align:top">
		<p style="text-align: center">Not weighting at all<br>
		<input type="radio" value="6" name="s20" required="required"></td>
	</tr>
<tr><td colspan="6"><hr></td></tr>	

	</table>
	
	<p style="text-align: center">&nbsp;</p>
	

<table width="100%">
	 <tr>
		                            <td style="text-align: right; vertical-align: middle;" width="50%">Security Code: </td>
		                            <td height="57" width="50%"><img src="guvenlik.asp" alt="Failed to Load Security Code Image" id="guvenlik" />&nbsp;&nbsp;&nbsp;<a href="javascript:guvenlikyenile();"><font color="#FF6600">Change Code</font></a><br />
                                    <input class="oi" type="text" id="gk" name="gk" required="required" tabindex="3" style="width:94;height:23" maxlength="4" size="8"></td>
	                            </tr>

<tr><td colspan="10" valign="middle" height="40" align="center">
	<p style="text-align: center"><input type="submit" class="art-button" id="button-calculate" value="Submit and Calculate"></td></tr>


</table>
<br>

<br><hr><br><br><br>


</form>

</div>


</article>
</div>
    </div>
    </div>
</div>
</div></div>
                    </div>
                </div>
            </div>
					<footer class="art-footer">
					<div style="position:relative;padding-left:10px;padding-right:10px">
						&nbsp;</div>
</footer>

    </div>
    <p class="art-page-footer">

    </p>
</div>


</body></html>
