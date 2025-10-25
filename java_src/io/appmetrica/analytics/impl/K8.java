package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.StateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.IOException;
/* loaded from: classes2.dex */
public class K8 implements StateSerializer {

    /* renamed from: a  reason: collision with root package name */
    public final StateSerializer f18480a;

    /* renamed from: b  reason: collision with root package name */
    public final AESEncrypter f18481b;

    public K8(StateSerializer<Object> stateSerializer, AESEncrypter aESEncrypter) {
        this.f18480a = stateSerializer;
        this.f18481b = aESEncrypter;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object defaultValue() {
        return this.f18480a.defaultValue();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final byte[] toByteArray(Object obj) {
        try {
            return this.f18481b.encrypt(this.f18480a.toByteArray(obj));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.StateSerializer
    public final Object toState(byte[] bArr) {
        try {
            return this.f18480a.toState(this.f18481b.decrypt(bArr));
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
