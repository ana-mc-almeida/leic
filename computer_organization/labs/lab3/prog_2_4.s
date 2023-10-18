                .data
A:              .word   1, 3, 1, 6, 4
                .word   2, 4, 3, 9, 5
mult:   .word   0

        .code
        daddi   $1, $0, A      ; *A[0]
        daddi   $5, $0, 1      ; $5 = 1 ;; i    
        daddi   $6, $0, 10      ; $6 = N ;; N = 10

        lw      $9, 0($1)      ; $9 = A[0]  ;; mult
        lw      $10, 8($1)     ; $10 = A[1]
        lw      $11, 16($1)    ; $11 = A[2]
        lw      $14, 24($1)    ; $13 = A[3]

loop:   dmul    $12, $10, $9   ; $12 = A[0/4]*A[1/]
        daddi   $1, $1, 24     ; 
        lw      $10, 8($1)     ; $10 = A[4/7]  ;; mult
        dadd    $9, $9, $12    ; $9 = $9 + $12  ;; mult = mult + A[i]*mult

        dmul    $13, $11, $9   ; $13 = $11*$9 ;; $13 = A[i]*mult
        lw      $11, 16($1)     ; $11 = A[5/8]
        dadd    $9, $9, $13    ; $9 = $9 + $13  ;; mult = mult + A[i]*mult

        dmul    $15, $14, $9   ; $15 = $14*$9 ;; $13 = A[i]*mult
        lw      $14, 24($1)    ; $14 = A[6/9]
        daddi   $5, $5, 3      ; i++
        dadd    $9, $9, $15    ; $9 = $9 + $13  ;; mult = mult + A[i]*mult

        bne     $6, $5, loop   ; Exit loop if i == N
        
        sw      $9, mult($0)   ; Store result
        halt

;; Expected result: mult = f6180 (hex), 1008000 (dec)