; Sound effects, AKG format, v1.0.

; Generated by Arkos Tracker 2.

Soundeffects_Start:
Soundeffects_StartDisarkGenerateExternalLabel:

Soundeffects_DisarkByteRegionStart0:
	.db 65, 84, 50, 48 ; AT20
Soundeffects_DisarkPointerRegionStart1:
	.dw Soundeffects_ArpeggioTable	; The address of the Arpeggio table.
	.dw Soundeffects_PitchTable	; The address of the Pitch table.
	.dw Soundeffects_InstrumentTable	; The address of the Instrument table.
	.dw Soundeffects_EffectBlockTable	; The address of the Effect Block table.
Soundeffects_DisarkPointerRegionEnd1:


; The addresses of each Subsong:
Soundeffects_DisarkPointerRegionStart2:
	.dw Soundeffects_Subsong0_Start
Soundeffects_DisarkPointerRegionEnd2:

; Declares all the Arpeggios.
Soundeffects_ArpeggioTable:
Soundeffects_DisarkPointerRegionStart3:
Soundeffects_DisarkPointerRegionEnd3:

; Declares all the Pitches.
Soundeffects_PitchTable:
Soundeffects_DisarkPointerRegionStart4:
Soundeffects_DisarkPointerRegionEnd4:

; Declares all the Instruments.
Soundeffects_InstrumentTable:
Soundeffects_DisarkPointerRegionStart5:
	.dw Soundeffects_EmptyInstrument
	.dw Soundeffects_Instrument1
	.dw Soundeffects_Instrument2
	.dw Soundeffects_Instrument3
	.dw Soundeffects_Instrument4
	.dw Soundeffects_Instrument5
Soundeffects_DisarkPointerRegionEnd5:

Soundeffects_EmptyInstrument:
	.db 0	; The speed (>0, 0 for 256).
Soundeffects_EmptyInstrument_Loop:	.db 0	; No Soft no Hard. Volume: 0. Noise? false.

	.db 6	; Loop to silence.

Soundeffects_Instrument1:
	.db 1	; The speed (>0, 0 for 256).
	.db 121	; Soft only. Volume: 15.
	.db 1	; Additional data. Noise: 1. Pitch? false. Arp? false. Period? false.

	.db 121	; Soft only. Volume: 15.
	.db 33	; Additional data. Noise: 1. Pitch? true. Arp? false. Period? false.
	.dw 4	; Pitch.

	.db 97	; Soft only. Volume: 12.
	.db 33	; Additional data. Noise: 1. Pitch? true. Arp? false. Period? false.
	.dw 7	; Pitch.

	.db 89	; Soft only. Volume: 11.
	.db 33	; Additional data. Noise: 1. Pitch? true. Arp? false. Period? false.
	.dw 11	; Pitch.

	.db 6	; Loop to silence.

Soundeffects_Instrument2:
	.db 2	; The speed (>0, 0 for 256).
	.db 121	; Soft only. Volume: 15.
	.db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	.db -16	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 72	; Additional data. Noise: 8. Pitch? false. Arp? true. Period? false.
	.db -17	; Arpeggio.

	.db 113	; Soft only. Volume: 14.
	.db 66	; Additional data. Noise: 2. Pitch? false. Arp? true. Period? false.
	.db -21	; Arpeggio.

	.db 105	; Soft only. Volume: 13.
	.db 80	; Additional data. Noise: 16. Pitch? false. Arp? true. Period? false.
	.db -10	; Arpeggio.

	.db 97	; Soft only. Volume: 12.
	.db 66	; Additional data. Noise: 2. Pitch? false. Arp? true. Period? false.
	.db -11	; Arpeggio.

	.db 89	; Soft only. Volume: 11.
	.db 66	; Additional data. Noise: 2. Pitch? false. Arp? true. Period? false.
	.db -12	; Arpeggio.

	.db 73	; Soft only. Volume: 9.
	.db 80	; Additional data. Noise: 16. Pitch? false. Arp? true. Period? false.
	.db -19	; Arpeggio.

	.db 57	; Soft only. Volume: 7.
	.db 31	; Additional data. Noise: 31. Pitch? false. Arp? false. Period? false.

	.db 49	; Soft only. Volume: 6.
	.db 71	; Additional data. Noise: 7. Pitch? false. Arp? true. Period? false.
	.db 7	; Arpeggio.

	.db 6	; Loop to silence.

Soundeffects_Instrument3:
	.db 2	; The speed (>0, 0 for 256).
	.db 121	; Soft only. Volume: 15.
	.db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	.db 12	; Arpeggio.

	.db 113	; Soft only. Volume: 14.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 24	; Arpeggio.

	.db 105	; Soft only. Volume: 13.
	.db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	.db 16	; Arpeggio.

	.db 97	; Soft only. Volume: 12.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 28	; Arpeggio.

	.db 113	; Soft only. Volume: 14.
	.db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	.db 19	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 31	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 34	; Complex case. Ratio: 5
	.db -12	; Arpeggio.

	.db 249	; Soft only. Volume: 15. Volume only.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 34	; Complex case. Ratio: 5
	.db -12	; Arpeggio.

	.db 249	; Soft only. Volume: 15. Volume only.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 34	; Complex case. Ratio: 5
	.db -12	; Arpeggio.

	.db 249	; Soft only. Volume: 15. Volume only.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 34	; Complex case. Ratio: 5
	.db -24	; Arpeggio.

	.db 249	; Soft only. Volume: 15. Volume only.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 34	; Complex case. Ratio: 5
	.db -24	; Arpeggio.

	.db 249	; Soft only. Volume: 15. Volume only.

	.db 6	; Loop to silence.

Soundeffects_Instrument4:
	.db 2	; The speed (>0, 0 for 256).
	.db 121	; Soft only. Volume: 15.
	.db 1	; Additional data. Noise: 1. Pitch? false. Arp? false. Period? false.

	.db 121	; Soft only. Volume: 15.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 13	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	.db 2	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 14	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 3	; Arpeggio.

	.db 121	; Soft only. Volume: 15.
	.db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	.db 15	; Arpeggio.

	.db 6	; Loop to silence.

Soundeffects_Instrument5:
	.db 2	; The speed (>0, 0 for 256).
	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 38	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 28	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 36	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 20	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 28	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 12	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 20	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 4	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 12	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db -4	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db 4	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db -14	; Arpeggio.

	.db 2	; Soft to Hard. Envelope: 8. Retrig ? false. Noise ? false.
	.db 35	; Complex case. Ratio: 4
	.db -21	; Arpeggio.

	.db 6	; Loop to silence.


; The indexes of the effect blocks used by this song.
Soundeffects_EffectBlockTable:

Soundeffects_DisarkByteRegionEnd0:

; Subsong 0
; ----------------------
Soundeffects_Subsong0_DisarkByteRegionStart0:
Soundeffects_Subsong0_Start:
	.db 2	; ReplayFrequency (0=12.5hz, 1=25, 2=50, 3=100, 4=150, 5=300).
	.db 0	; Digichannel (0-2).
	.db 1	; PSG count (>0).
	.db 0	; Loop start index (>=0).
	.db 0	; End index (>=0).
	.db 12	; Initial speed (>=0).
	.db 9	; Base note index (>=0).

Soundeffects_Subsong0_Linker:
Soundeffects_Subsong0_DisarkPointerRegionStart1:
; Position 0
Soundeffects_Subsong0_Linker_Loop:
	.dw Soundeffects_Subsong0_Track0
	.dw Soundeffects_Subsong0_Track1
	.dw Soundeffects_Subsong0_Track1
	.dw Soundeffects_Subsong0_LinkerBlock0

Soundeffects_Subsong0_DisarkPointerRegionEnd1:
	.dw 0	; Loop.
Soundeffects_Subsong0_DisarkWordForceReference2:
	.dw Soundeffects_Subsong0_Linker_Loop

Soundeffects_Subsong0_LinkerBlock0:
	.db 38	; Height.
	.db 0	; Transposition 0.
	.db 0	; Transposition 1.
	.db 0	; Transposition 2.
Soundeffects_Subsong0_DisarkWordForceReference3:
	.dw Soundeffects_Subsong0_SpeedTrack0	; SpeedTrack address.
Soundeffects_Subsong0_DisarkWordForceReference4:
	.dw Soundeffects_Subsong0_EventTrack0	; EventTrack address.

Soundeffects_Subsong0_Track0:
	.db 183
	.db 1	; New Instrument (1).
	.db 60	; Waits for 1 line.

	.db 55
	.db 55
	.db 60	; Waits for 1 line.

	.db 55
	.db 55
	.db 60	; Waits for 1 line.

	.db 179
	.db 2	; New Instrument (2).
	.db 60	; Waits for 1 line.

	.db 51
	.db 51
	.db 51
	.db 60	; Waits for 1 line.

	.db 51
	.db 60	; Waits for 1 line.

	.db 167
	.db 3	; New Instrument (3).
	.db 62 + 0 * 64	; Optimized wait for 2 lines.

	.db 39
	.db 62 + 1 * 64	; Optimized wait for 3 lines.

	.db 179
	.db 4	; New Instrument (4).
	.db 62 + 0 * 64	; Optimized wait for 2 lines.

	.db 51
	.db 62 + 0 * 64	; Optimized wait for 2 lines.

	.db 51
	.db 62 + 0 * 64	; Optimized wait for 2 lines.

	.db 167
	.db 5	; New Instrument (5).
	.db 62 + 0 * 64	; Optimized wait for 2 lines.

	.db 39
	.db 61, 127	; Waits for 128 lines.


Soundeffects_Subsong0_Track1:
	.db 61, 127	; Waits for 128 lines.


; The speed tracks
Soundeffects_Subsong0_SpeedTrack0:
	.db 255	; Wait for 128 lines.

; The event tracks
Soundeffects_Subsong0_EventTrack0:
	.db 255	; Wait for 128 lines.

Soundeffects_Subsong0_DisarkByteRegionEnd0:
