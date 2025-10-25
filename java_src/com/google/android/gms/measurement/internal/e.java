package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e extends ad {

    /* renamed from: d  reason: collision with root package name */
    private String f7462d;

    /* renamed from: e  reason: collision with root package name */
    private Set f7463e;

    /* renamed from: f  reason: collision with root package name */
    private Map f7464f;

    /* renamed from: g  reason: collision with root package name */
    private Long f7465g;

    /* renamed from: h  reason: collision with root package name */
    private Long f7466h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(pd pdVar) {
        super(pdVar);
    }

    private final he n(Integer num) {
        if (this.f7464f.containsKey(num)) {
            return (he) this.f7464f.get(num);
        }
        he heVar = new he(this, this.f7462d, null);
        this.f7464f.put(num, heVar);
        return heVar;
    }

    private final boolean o(int i10, int i11) {
        he heVar = (he) this.f7464f.get(Integer.valueOf(i10));
        if (heVar == null) {
            return false;
        }
        return heVar.c().get(i11);
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:277:0x06be
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    final java.util.List m(java.lang.String r30, java.util.List r31, java.util.List r32, java.lang.Long r33, java.lang.Long r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.m(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long, boolean):java.util.List");
    }
}
