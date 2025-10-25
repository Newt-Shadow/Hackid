package com.google.gson;

import java.lang.reflect.Field;
import java.util.Objects;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Field f9098a;

    public a(Field field) {
        Objects.requireNonNull(field);
        this.f9098a = field;
    }

    public String toString() {
        return this.f9098a.toString();
    }
}
