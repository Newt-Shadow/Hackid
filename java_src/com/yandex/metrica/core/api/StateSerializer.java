package com.yandex.metrica.core.api;
/* loaded from: classes.dex */
public interface StateSerializer {
    Object defaultValue();

    byte[] toByteArray(Object obj);

    Object toState(byte[] bArr);
}
