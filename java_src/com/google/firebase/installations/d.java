package com.google.firebase.installations;

import h7.l;
/* loaded from: classes.dex */
public class d extends l {

    /* renamed from: a  reason: collision with root package name */
    private final a f8792a;

    /* loaded from: classes.dex */
    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public d(a aVar) {
        this.f8792a = aVar;
    }

    public d(String str, a aVar) {
        super(str);
        this.f8792a = aVar;
    }
}
