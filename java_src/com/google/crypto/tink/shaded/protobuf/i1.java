package com.google.crypto.tink.shaded.protobuf;

import java.util.List;
/* loaded from: classes.dex */
public class i1 extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List f8482a;

    public i1(o0 o0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f8482a = null;
    }

    public a0 a() {
        return new a0(getMessage());
    }
}
