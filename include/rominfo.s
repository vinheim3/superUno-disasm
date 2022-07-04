.memorymap
	defaultslot 2

	slotsize $2000
	slot 0 $0000

	slotsize $e000
	slot 1 $2000

	slotsize $8000
	slot 2 $8000
.endme

.banksize $8000
.rombanks 32

.asciitable
.enda

.emptyfill $ff

.snesheader
	name "SUPER-UNO            "
	slowrom
	lorom
	cartridgetype $00
	romsize $0a
	sramsize $00
	country $00
	version $01
.endsnes

.snesnativevector
	COP    $ffff
	BRK    $ffff
	ABORT  $ffff
	NMI    NmiVector
	UNUSED MiscVector
	IRQ    IrqVector
.endnativevector

.snesemuvector
	COP    MiscVector
	UNUSED MiscVector
	ABORT  MiscVector
	NMI    NmiVector
	RESET  ResetVector
	IRQBRK IrqVector
.endemuvector