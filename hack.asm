.memorymap
defaultslot 0
slotsize $4000
slot 0 $8000
slot 1 $c000
.endme

.rombankmap
bankstotal 7
banksize $10
banks 1
banksize $4000
banks 2
banksize $1000
banks 4
.endro

.background "tetris.nes"

.equ NUM_LINES_CLEARED $56
.equ GAMEOVER          $99a7

.bank 1 slot 0
.orga $9af0
        jmp     negate_tetris_and_lose

.bank 2 slot 1
.orga $ff80
negate_tetris_and_lose:
        lda     #0
        sta     NUM_LINES_CLEARED
        jmp     GAMEOVER
