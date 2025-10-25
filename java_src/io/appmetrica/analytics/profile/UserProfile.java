package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.impl.Kn;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class UserProfile {

    /* renamed from: a  reason: collision with root package name */
    private final List f21342a;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedList f21343a;

        /* synthetic */ Builder(int i10) {
            this();
        }

        public Builder apply(UserProfileUpdate<? extends Kn> userProfileUpdate) {
            this.f21343a.add(userProfileUpdate);
            return this;
        }

        public UserProfile build() {
            return new UserProfile(this.f21343a, 0);
        }

        private Builder() {
            this.f21343a = new LinkedList();
        }
    }

    /* synthetic */ UserProfile(LinkedList linkedList, int i10) {
        this(linkedList);
    }

    public static Builder newBuilder() {
        return new Builder(0);
    }

    public List<UserProfileUpdate<? extends Kn>> getUserProfileUpdates() {
        return this.f21342a;
    }

    private UserProfile(LinkedList linkedList) {
        this.f21342a = CollectionUtils.unmodifiableListCopy(linkedList);
    }
}
