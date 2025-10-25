package io.appmetrica.analytics.coreapi.internal.data;
/* loaded from: classes2.dex */
public interface StateSerializer<T> {
    T defaultValue();

    byte[] toByteArray(T t10);

    T toState(byte[] bArr);
}
