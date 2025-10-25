package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.AbstractMap;
import java.util.Objects;
/* loaded from: classes.dex */
final class r extends j {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s f7101d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(s sVar) {
        this.f7101d = sVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        i11 = this.f7101d.f7108e;
        b.a(i10, i11, StreamInformation.KEY_INDEX);
        objArr = this.f7101d.f7107d;
        int i12 = i10 + i10;
        Object obj = objArr[i12];
        Objects.requireNonNull(obj);
        objArr2 = this.f7101d.f7107d;
        Object obj2 = objArr2[i12 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.g
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i10;
        i10 = this.f7101d.f7108e;
        return i10;
    }
}
