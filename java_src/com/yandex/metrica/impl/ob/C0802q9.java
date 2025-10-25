package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.StateSerializer;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.q9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0802q9 implements StateSerializer {

    /* renamed from: a  reason: collision with root package name */
    private final StateSerializer f13253a;

    /* renamed from: b  reason: collision with root package name */
    private final C0958wm f13254b;

    public C0802q9(StateSerializer stateSerializer, C0958wm c0958wm) {
        this.f13253a = stateSerializer;
        this.f13254b = c0958wm;
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return this.f13253a.defaultValue();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public byte[] toByteArray(Object obj) {
        try {
            return this.f13254b.a(this.f13253a.toByteArray(obj));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        try {
            C0958wm c0958wm = this.f13254b;
            c0958wm.getClass();
            return this.f13253a.toState(c0958wm.a(bArr, 0, bArr.length));
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
