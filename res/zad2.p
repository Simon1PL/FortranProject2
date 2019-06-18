unset grid
set terminal pdf
set output "cosinus.pdf"
set key box top left
set multi
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "cosinus" title "cosinus"
unset multi

unset grid
set terminal pdf
set output "transformataCosinus.pdf"
set key box top left
set multi
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "transformataCosinus" title "transformataCosinus"
unset multi

unset grid
set terminal pdf
set output "transformataCosinusRandom.pdf"
set key box top left
set multi
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "transformataCosinusRandom" title "transformataCosinusRandom"
unset multi

unset grid
set terminal pdf
set output "cosinusRandom.pdf"
set key box top left
set multi
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "cosinusRandom" title "cosinusRandom"
unset multi

unset grid
set terminal pdf
set output "afterAll.pdf"
set key box top left
set multi
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'x' font 'Arial,14'
set ylabel 'y' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "afterAll" title "afterAll"
unset multi