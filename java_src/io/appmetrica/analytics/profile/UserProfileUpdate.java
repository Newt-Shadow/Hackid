package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.Gd;
import io.appmetrica.analytics.impl.Kn;
/* loaded from: classes2.dex */
public class UserProfileUpdate<T extends Kn> {

    /* renamed from: a  reason: collision with root package name */
    private final Kn f21344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserProfileUpdate(Gd gd2) {
        this.f21344a = gd2;
    }

    public T getUserProfileUpdatePatcher() {
        return (T) this.f21344a;
    }
}
