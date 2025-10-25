package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class UserProfile {

    /* renamed from: a  reason: collision with root package name */
    private final List f14263a;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedList f14264a = new LinkedList();

        Builder() {
        }

        public Builder apply(UserProfileUpdate<? extends InterfaceC0435bf> userProfileUpdate) {
            this.f14264a.add(userProfileUpdate);
            return this;
        }

        public UserProfile build() {
            return new UserProfile(this.f14264a);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public List<UserProfileUpdate<? extends InterfaceC0435bf>> getUserProfileUpdates() {
        return this.f14263a;
    }

    private UserProfile(List list) {
        this.f14263a = A2.c(list);
    }
}
