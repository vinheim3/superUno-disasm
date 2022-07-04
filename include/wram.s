.include "includes.s"

.ramsection "WRAM" bank 0 slot 0

w00:
    ds $3f

wRleDecompressPtrToOddOrEvenData: ; $3f
    dl

w42:
    ds $233-$42

wSrcAddrMinus2ForDmaBufferOddData: ; $0233
    dw

wSrcAddrForDmaBufferEvenData: ; $0235
    dw

; 0 - $2000, 1 - $4000 etc until 6 - $e000
wDmaVramDest1000hBlock: ; $0237
    db

w0238:
    ds 9-8

wSrcBankForDmaBufferData: ; $0239
    db

w023a:
    ds $418-$23a

wCurrDmaDest: ; $0418
    dw

w041a:
    ds $2f-$1a

w2ndDmaTransferPending: ; $042f
    db

; 0 - none pending
; 1 - from $7e:3000 to normal dest+$800
; 2 - from $7e:2000 to normal dest
wPendingDmaTransferType: ; $0430
    db

w0431:
    ds 8-1

wDmaBufferDest: ; $0438
    dl

wTileMapBufferSrcAddr: ; $043b
    dw

w043d:
    ds $e-$d

; Counts up from (ctrlByte | $80) until $100
wRleInverseByteCounter: ; $043e
    db

wRleSameByte: ; $043f
    db

w0440:
    ds 4-0

wSrcAddrForInterleavedDmaBufferData: ; $0444
    dl

w0447:
    ds $630-$447

wCurrTileMapTileAttr: ; $0630
    dw

w0631:
    ds 6-2

wTileMapSrcBankOffsFrom0ch: ; $0636
    db

w0637:
    ds $fc-$37

wTileMapCol: ; $06fc
    db

wTileMapRow: ; $06fd
    db

wTileMapSpecIdx: ; $06fe
    dw

w0700:
    ds 1-0

wTileMapCtrlByteLow5bits: ; $0701
    db

w0702:
    ds $e00-$702

wTileMapBufferDestAddr: ; $0e00
    dl

w0e03:
    ds 6-3

wTileMapRomSrc: ; $0e06
    dl

w0e09:
    ds $ff1-$e09

wCurrRleBlockSetIdx: ; $0ff1
    db

wCurrRleIdx: ; $0ff2
    db

wCurrRleVramDest1000hBlock: ; $0ff3
    db

.ends

.ramsection "Bank $7e" bank $7e slot 1

wDmaData: ; $2000
    ds $2000

w7e4000:
    .db

.ends