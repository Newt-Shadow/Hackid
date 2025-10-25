package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.impl.ob.C0837rl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.vk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0932vk {

    /* renamed from: a  reason: collision with root package name */
    private final C0791pm<C0956wk, Pair<Boolean, C0837rl.b>> f13839a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13840b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0932vk(int i10, int i11) {
        this.f13839a = new C0980xk(i10);
        this.f13840b = i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10, String str, boolean z10, C0837rl.b bVar) {
        if (str.length() <= this.f13840b) {
            this.f13839a.a(new C0956wk(i10, str), new Pair<>(Boolean.valueOf(z10), bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<Boolean, C0837rl.b> a(int i10, String str) {
        if (str.length() > this.f13840b) {
            return null;
        }
        return this.f13839a.a((C0791pm<C0956wk, Pair<Boolean, C0837rl.b>>) new C0956wk(i10, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f13839a.a();
    }
}
