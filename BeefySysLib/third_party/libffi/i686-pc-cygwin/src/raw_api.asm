; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.20617.1 

	TITLE	C:\Beefy\BeefySysLib\third_party\libffi\src\raw_api.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	_ffi_ptrarray_to_raw
PUBLIC	_ffi_raw_to_ptrarray
PUBLIC	_ffi_raw_size
PUBLIC	_ffi_prep_raw_closure
EXTRN	_ffi_prep_raw_closure_loc:PROC
EXTRN	_memcpy:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_cl$ = 8						; size = 4
_cif$ = 12						; size = 4
_fun$ = 16						; size = 4
_user_data$ = 20					; size = 4
_ffi_prep_raw_closure PROC
; File c:\beefy\beefysyslib\third_party\libffi\src\raw_api.c
; Line 248
	push	ebp
	mov	ebp, esp
; Line 249
	mov	eax, DWORD PTR _cl$[ebp]
	push	eax
	mov	ecx, DWORD PTR _user_data$[ebp]
	push	ecx
	mov	edx, DWORD PTR _fun$[ebp]
	push	edx
	mov	eax, DWORD PTR _cif$[ebp]
	push	eax
	mov	ecx, DWORD PTR _cl$[ebp]
	push	ecx
	call	_ffi_prep_raw_closure_loc
	add	esp, 20					; 00000014H
; Line 250
	pop	ebp
	ret	0
_ffi_prep_raw_closure ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = -12						; size = 4
_at$ = -8						; size = 4
_result$ = -4						; size = 4
_cif$ = 8						; size = 4
_ffi_raw_size PROC
; File c:\beefy\beefysyslib\third_party\libffi\src\raw_api.c
; Line 36
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 37
	mov	DWORD PTR _result$[ebp], 0
; Line 40
	mov	eax, DWORD PTR _cif$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _at$[ebp], ecx
; Line 42
	mov	edx, DWORD PTR _cif$[ebp]
	mov	eax, DWORD PTR [edx+4]
	sub	eax, 1
	mov	DWORD PTR _i$[ebp], eax
	jmp	SHORT $LN5@ffi_raw_si
$LN4@ffi_raw_si:
	mov	ecx, DWORD PTR _i$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
	mov	edx, DWORD PTR _at$[ebp]
	add	edx, 4
	mov	DWORD PTR _at$[ebp], edx
$LN5@ffi_raw_si:
	cmp	DWORD PTR _i$[ebp], 0
	jl	SHORT $LN3@ffi_raw_si
; Line 45
	mov	eax, DWORD PTR _at$[ebp]
	mov	ecx, DWORD PTR [eax]
	movzx	edx, WORD PTR [ecx+6]
	cmp	edx, 13					; 0000000dH
	jne	SHORT $LN2@ffi_raw_si
; Line 46
	mov	eax, DWORD PTR _result$[ebp]
	add	eax, 4
	mov	DWORD PTR _result$[ebp], eax
; Line 47
	jmp	SHORT $LN1@ffi_raw_si
$LN2@ffi_raw_si:
; Line 49
	mov	ecx, DWORD PTR _at$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR [edx]
	sub	eax, 1
	or	eax, 3
	mov	ecx, DWORD PTR _result$[ebp]
	lea	edx, DWORD PTR [ecx+eax+1]
	mov	DWORD PTR _result$[ebp], edx
$LN1@ffi_raw_si:
; Line 50
	jmp	SHORT $LN4@ffi_raw_si
$LN3@ffi_raw_si:
; Line 52
	mov	eax, DWORD PTR _result$[ebp]
; Line 53
	mov	esp, ebp
	pop	ebp
	ret	0
_ffi_raw_size ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = -12						; size = 4
_tp$ = -8						; size = 4
tv72 = -4						; size = 4
_cif$ = 8						; size = 4
_raw$ = 12						; size = 4
_args$ = 16						; size = 4
_ffi_raw_to_ptrarray PROC
; File c:\beefy\beefysyslib\third_party\libffi\src\raw_api.c
; Line 58
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 60
	mov	eax, DWORD PTR _cif$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _tp$[ebp], ecx
; Line 64
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN11@ffi_raw_to
$LN10@ffi_raw_to:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
	mov	eax, DWORD PTR _tp$[ebp]
	add	eax, 4
	mov	DWORD PTR _tp$[ebp], eax
	mov	ecx, DWORD PTR _args$[ebp]
	add	ecx, 4
	mov	DWORD PTR _args$[ebp], ecx
$LN11@ffi_raw_to:
	mov	edx, DWORD PTR _cif$[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR [edx+4]
	jae	$LN12@ffi_raw_to
; Line 66
	mov	ecx, DWORD PTR _tp$[ebp]
	mov	edx, DWORD PTR [ecx]
	movzx	eax, WORD PTR [edx+6]
	mov	DWORD PTR tv72[ebp], eax
	mov	ecx, DWORD PTR tv72[ebp]
	sub	ecx, 5
	mov	DWORD PTR tv72[ebp], ecx
	cmp	DWORD PTR tv72[ebp], 9
	ja	SHORT $LN1@ffi_raw_to
	mov	edx, DWORD PTR tv72[ebp]
	jmp	DWORD PTR $LN14@ffi_raw_to[edx*4]
$LN6@ffi_raw_to:
; Line 70
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 3
	mov	ecx, DWORD PTR _args$[ebp]
	mov	DWORD PTR [ecx], eax
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 71
	jmp	SHORT $LN7@ffi_raw_to
$LN5@ffi_raw_to:
; Line 75
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 2
	mov	ecx, DWORD PTR _args$[ebp]
	mov	DWORD PTR [ecx], eax
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 76
	jmp	SHORT $LN7@ffi_raw_to
$LN4@ffi_raw_to:
; Line 81
	mov	eax, DWORD PTR _raw$[ebp]
	mov	ecx, DWORD PTR _args$[ebp]
	mov	DWORD PTR [ecx], eax
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 82
	jmp	SHORT $LN7@ffi_raw_to
$LN3@ffi_raw_to:
; Line 87
	mov	eax, DWORD PTR _args$[ebp]
	mov	ecx, DWORD PTR _raw$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 4
	mov	DWORD PTR _raw$[ebp], eax
; Line 88
	jmp	SHORT $LN7@ffi_raw_to
$LN2@ffi_raw_to:
; Line 92
	mov	ecx, DWORD PTR _raw$[ebp]
	mov	edx, DWORD PTR _args$[ebp]
	mov	DWORD PTR [edx], ecx
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 4
	mov	DWORD PTR _raw$[ebp], eax
; Line 93
	jmp	SHORT $LN7@ffi_raw_to
$LN1@ffi_raw_to:
; Line 96
	mov	ecx, DWORD PTR _args$[ebp]
	mov	edx, DWORD PTR _raw$[ebp]
	mov	DWORD PTR [ecx], edx
; Line 97
	mov	eax, DWORD PTR _tp$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx]
	sub	edx, 1
	or	edx, 3
	add	edx, 1
	shr	edx, 2
	mov	eax, DWORD PTR _raw$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _raw$[ebp], ecx
$LN7@ffi_raw_to:
; Line 99
	jmp	$LN10@ffi_raw_to
$LN12@ffi_raw_to:
; Line 126
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN14@ffi_raw_to:
	DD	$LN6@ffi_raw_to
	DD	$LN6@ffi_raw_to
	DD	$LN5@ffi_raw_to
	DD	$LN5@ffi_raw_to
	DD	$LN4@ffi_raw_to
	DD	$LN4@ffi_raw_to
	DD	$LN1@ffi_raw_to
	DD	$LN1@ffi_raw_to
	DD	$LN3@ffi_raw_to
	DD	$LN2@ffi_raw_to
_ffi_raw_to_ptrarray ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$ = -12						; size = 4
tv72 = -8						; size = 4
_tp$ = -4						; size = 4
_cif$ = 8						; size = 4
_args$ = 12						; size = 4
_raw$ = 16						; size = 4
_ffi_ptrarray_to_raw PROC
; File c:\beefy\beefysyslib\third_party\libffi\src\raw_api.c
; Line 130
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 132
	mov	eax, DWORD PTR _cif$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _tp$[ebp], ecx
; Line 134
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN14@ffi_ptrarr
$LN13@ffi_ptrarr:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
	mov	eax, DWORD PTR _tp$[ebp]
	add	eax, 4
	mov	DWORD PTR _tp$[ebp], eax
	mov	ecx, DWORD PTR _args$[ebp]
	add	ecx, 4
	mov	DWORD PTR _args$[ebp], ecx
$LN14@ffi_ptrarr:
	mov	edx, DWORD PTR _cif$[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR [edx+4]
	jae	$LN15@ffi_ptrarr
; Line 136
	mov	ecx, DWORD PTR _tp$[ebp]
	mov	edx, DWORD PTR [ecx]
	movzx	eax, WORD PTR [edx+6]
	mov	DWORD PTR tv72[ebp], eax
	mov	ecx, DWORD PTR tv72[ebp]
	sub	ecx, 5
	mov	DWORD PTR tv72[ebp], ecx
	cmp	DWORD PTR tv72[ebp], 9
	ja	$LN1@ffi_ptrarr
	mov	edx, DWORD PTR tv72[ebp]
	jmp	DWORD PTR $LN17@ffi_ptrarr[edx*4]
$LN9@ffi_ptrarr:
; Line 139
	mov	eax, DWORD PTR _args$[ebp]
	mov	ecx, DWORD PTR [eax]
	movzx	edx, BYTE PTR [ecx]
	mov	eax, DWORD PTR _raw$[ebp]
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR _raw$[ebp]
	add	ecx, 4
	mov	DWORD PTR _raw$[ebp], ecx
; Line 140
	jmp	$LN10@ffi_ptrarr
$LN8@ffi_ptrarr:
; Line 143
	mov	edx, DWORD PTR _args$[ebp]
	mov	eax, DWORD PTR [edx]
	movsx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _raw$[ebp]
	mov	DWORD PTR [edx], ecx
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 4
	mov	DWORD PTR _raw$[ebp], eax
; Line 144
	jmp	$LN10@ffi_ptrarr
$LN7@ffi_ptrarr:
; Line 147
	mov	ecx, DWORD PTR _args$[ebp]
	mov	edx, DWORD PTR [ecx]
	movzx	eax, WORD PTR [edx]
	mov	ecx, DWORD PTR _raw$[ebp]
	mov	DWORD PTR [ecx], eax
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 148
	jmp	$LN10@ffi_ptrarr
$LN6@ffi_ptrarr:
; Line 151
	mov	eax, DWORD PTR _args$[ebp]
	mov	ecx, DWORD PTR [eax]
	movsx	edx, WORD PTR [ecx]
	mov	eax, DWORD PTR _raw$[ebp]
	mov	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR _raw$[ebp]
	add	ecx, 4
	mov	DWORD PTR _raw$[ebp], ecx
; Line 152
	jmp	$LN10@ffi_ptrarr
$LN5@ffi_ptrarr:
; Line 156
	mov	edx, DWORD PTR _args$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _raw$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 4
	mov	DWORD PTR _raw$[ebp], eax
; Line 157
	jmp	SHORT $LN10@ffi_ptrarr
$LN4@ffi_ptrarr:
; Line 160
	mov	ecx, DWORD PTR _args$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR _raw$[ebp]
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 161
	jmp	SHORT $LN10@ffi_ptrarr
$LN3@ffi_ptrarr:
; Line 166
	mov	eax, DWORD PTR _raw$[ebp]
	mov	ecx, DWORD PTR _args$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR _raw$[ebp]
	add	eax, 4
	mov	DWORD PTR _raw$[ebp], eax
; Line 167
	jmp	SHORT $LN10@ffi_ptrarr
$LN2@ffi_ptrarr:
; Line 171
	mov	ecx, DWORD PTR _args$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR _raw$[ebp]
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _raw$[ebp]
	add	edx, 4
	mov	DWORD PTR _raw$[ebp], edx
; Line 172
	jmp	SHORT $LN10@ffi_ptrarr
$LN1@ffi_ptrarr:
; Line 175
	mov	eax, DWORD PTR _tp$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx]
	push	edx
	mov	eax, DWORD PTR _args$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _raw$[ebp]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 176
	mov	eax, DWORD PTR _tp$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ecx]
	sub	edx, 1
	or	edx, 3
	add	edx, 1
	shr	edx, 2
	mov	eax, DWORD PTR _raw$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _raw$[ebp], ecx
$LN10@ffi_ptrarr:
; Line 178
	jmp	$LN13@ffi_ptrarr
$LN15@ffi_ptrarr:
; Line 179
	mov	esp, ebp
	pop	ebp
	ret	0
$LN17@ffi_ptrarr:
	DD	$LN9@ffi_ptrarr
	DD	$LN8@ffi_ptrarr
	DD	$LN7@ffi_ptrarr
	DD	$LN6@ffi_ptrarr
	DD	$LN5@ffi_ptrarr
	DD	$LN4@ffi_ptrarr
	DD	$LN1@ffi_ptrarr
	DD	$LN1@ffi_ptrarr
	DD	$LN3@ffi_ptrarr
	DD	$LN2@ffi_ptrarr
_ffi_ptrarray_to_raw ENDP
_TEXT	ENDS
END
